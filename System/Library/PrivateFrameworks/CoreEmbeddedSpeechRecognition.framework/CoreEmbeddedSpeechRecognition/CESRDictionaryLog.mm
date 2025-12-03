@interface CESRDictionaryLog
- (BOOL)_loadLogOrCreate:(BOOL)create readOnly:(BOOL)only error:(id *)error;
- (BOOL)clear:(id *)clear;
- (BOOL)clearObjectForKey:(id)key error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDictionaryLog:(id)log;
- (BOOL)isReadOnly;
- (BOOL)writeUpdatedObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)writeUpdatedObjects:(id)objects forKeys:(id)keys error:(id *)error;
- (CESRDictionaryLog)init;
- (id)description;
- (id)mutableDictionaryForKey:(id)key error:(id *)error;
- (id)objectForKey:(id)key;
- (unint64_t)hash;
@end

@implementation CESRDictionaryLog

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_logFileURL hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_protectionClass];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSDictionary *)self->_log hash];

  return v5 ^ v6;
}

- (BOOL)isEqualToDictionaryLog:(id)log
{
  logCopy = log;
  if ([(NSURL *)self->_logFileURL isEqual:logCopy[1]]&& self->_protectionClass == *(logCopy + 6))
  {
    v5 = [(NSDictionary *)self->_log isEqual:logCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRDictionaryLog *)self isEqualToDictionaryLog:equalCopy];

  return v5;
}

- (BOOL)clear:(id *)clear
{
  v27[1] = *MEMORY[0x277D85DE8];
  if ([(CESRDictionaryLog *)self isReadOnly])
  {
    v5 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"instance: %@ is read only.", self];
    v27[0] = v6;
    defaultManager = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v8 = [v5 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:3 userInfo:defaultManager];
    path = v8;
    v10 = 0;
    if (clear && v8)
    {
      v11 = v8;
      v10 = 0;
      *clear = path;
    }

    goto LABEL_18;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_logFileURL path];
  if (!path || ![defaultManager fileExistsAtPath:path])
  {
    v14 = 0;
    goto LABEL_17;
  }

  logFileURL = self->_logFileURL;
  v21 = 0;
  v13 = [defaultManager removeItemAtURL:logFileURL error:&v21];
  v14 = v21;
  if (v13)
  {
LABEL_17:
    [(NSDictionary *)self->_log removeAllObjects];
    v10 = 1;
    v6 = v14;
    goto LABEL_18;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove log file at path: %@", path];
  [v15 setObject:v16 forKey:*MEMORY[0x277CCA450]];

  if (v14)
  {
    [v15 setObject:v14 forKey:*MEMORY[0x277CCA7E8]];
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:8 userInfo:v15];

  if (clear && v6)
  {
    v17 = v6;
    *clear = v6;
  }

  v18 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "[CESRDictionaryLog clear:]";
    v24 = 2112;
    v25 = v6;
    _os_log_error_impl(&dword_225EEB000, v18, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)clearObjectForKey:(id)key error:(id *)error
{
  v38[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(CESRDictionaryLog *)self isReadOnly])
  {
    v7 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"instance: %@ is read only.", self];
    v38[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v10 = v7;
    v11 = 3;
    goto LABEL_10;
  }

  if (!keyCopy)
  {
    v20 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid key: %@", 0];
    v36 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v10 = v20;
    v11 = 1;
LABEL_10:
    v21 = [v10 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:v11 userInfo:v9];
    if (error && v21)
    {
      v21 = v21;
      *error = v21;
    }

    v16 = 0;
    goto LABEL_26;
  }

  v12 = [(NSDictionary *)self->_log objectForKey:keyCopy];
  if (v12)
  {
    v8 = v12;
    [(NSDictionary *)self->_log removeObjectForKey:keyCopy];
    logFileURL = self->_logFileURL;
    log = self->_log;
    protectionClass = self->_protectionClass;
    v16 = SFWritePropertyList();
    v17 = 0;
    if (v16)
    {
      v18 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v30 = "[CESRDictionaryLog clearObjectForKey:error:]";
        v31 = 2112;
        v32 = v8;
        v33 = 2112;
        v34 = keyCopy;
        _os_log_debug_impl(&dword_225EEB000, v18, OS_LOG_TYPE_DEBUG, "%s Removed object: %@ for key: %@", buf, 0x20u);
      }

      v19 = v17;
    }

    else
    {
      [(NSDictionary *)self->_log setObject:v8 forKey:keyCopy];
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write removal for key: %@ reverting to prior object: %@", keyCopy, v8];
      [v23 setObject:v24 forKey:*MEMORY[0x277CCA450]];

      if (v17)
      {
        [v23 setObject:v17 forKey:*MEMORY[0x277CCA7E8]];
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:8 userInfo:v23];

      if (error && v19)
      {
        v25 = v19;
        *error = v19;
      }

      v26 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[CESRDictionaryLog clearObjectForKey:error:]";
        v31 = 2112;
        v32 = v19;
        _os_log_error_impl(&dword_225EEB000, v26, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v22 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "[CESRDictionaryLog clearObjectForKey:error:]";
      v31 = 2112;
      v32 = keyCopy;
      _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, "%s No object exists for key: %@", buf, 0x16u);
    }

    v8 = 0;
    v16 = 1;
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)writeUpdatedObjects:(id)objects forKeys:(id)keys error:(id *)error
{
  v66[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  keysCopy = keys;
  if ([(CESRDictionaryLog *)self isReadOnly])
  {
    v10 = MEMORY[0x277CCA9B8];
    v65 = *MEMORY[0x277CCA450];
    keysCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"instance: %@ is read only.", self];
    v66[0] = keysCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v13 = v10;
    v14 = 3;
    goto LABEL_18;
  }

  v15 = [objectsCopy count];
  if (v15 != [keysCopy count])
  {
    v23 = MEMORY[0x277CCA9B8];
    v63 = *MEMORY[0x277CCA450];
    keysCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected number of objects: %@ for keys: %@", objectsCopy, keysCopy];
    v64 = keysCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v13 = v23;
    v14 = 1;
LABEL_18:
    v24 = [v13 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:v14 userInfo:v12];
    if (error && v24)
    {
      v24 = v24;
      *error = v24;
    }

    goto LABEL_22;
  }

  errorCopy = error;
  keysCopy = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v16 = [objectsCopy count];
  if ([objectsCopy count])
  {
    for (i = 0; i < [objectsCopy count]; ++i)
    {
      v18 = [objectsCopy objectAtIndex:i];
      v19 = [keysCopy objectAtIndex:i];
      v20 = [keysCopy objectForKey:v19];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = [(NSDictionary *)self->_log objectForKey:v19];
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      if ([v21 isEqual:v18])
      {
        v22 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v55 = "[CESRDictionaryLog writeUpdatedObjects:forKeys:error:]";
          v56 = 2112;
          v57 = v18;
          v58 = 2112;
          v59 = v19;
          _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, "%s object: %@ is already recorded for key: %@", buf, 0x20u);
        }

        --v16;
        goto LABEL_15;
      }

      [keysCopy setObject:v21 forKey:v19];
LABEL_14:
      [(NSDictionary *)self->_log setObject:v18 forKey:v19];
LABEL_15:
    }
  }

  if (!v16)
  {
    v25 = 1;
    goto LABEL_24;
  }

  logFileURL = self->_logFileURL;
  log = self->_log;
  protectionClass = self->_protectionClass;
  v53 = 0;
  v31 = SFWritePropertyList();
  v32 = 0;
  v33 = v32;
  if (v31)
  {
    v34 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v55 = "[CESRDictionaryLog writeUpdatedObjects:forKeys:error:]";
      v56 = 2112;
      v57 = objectsCopy;
      v58 = 2112;
      v59 = keysCopy;
      v60 = 2112;
      v61 = keysCopy;
      _os_log_debug_impl(&dword_225EEB000, v34, OS_LOG_TYPE_DEBUG, "%s Updated object(s): %@ for key(s): %@ replacing prior object(s): %@", buf, 0x2Au);
    }

    v25 = 1;
    v12 = v33;
    goto LABEL_23;
  }

  v47 = v32;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = keysCopy;
  v36 = [v35 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v50;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v49 + 1) + 8 * j);
        v41 = [keysCopy objectForKey:v40];
        v42 = self->_log;
        if (v41)
        {
          [(NSDictionary *)v42 setObject:v41 forKey:v40];
        }

        else
        {
          [(NSDictionary *)v42 removeObjectForKey:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v37);
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write updated object(s): %@ for key(s): %@ reverting to prior object(s): %@", objectsCopy, v35, keysCopy];
  [v43 setObject:v44 forKey:*MEMORY[0x277CCA450]];

  if (v47)
  {
    [v43 setObject:v47 forKey:*MEMORY[0x277CCA7E8]];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:8 userInfo:v43];

  if (errorCopy && v12)
  {
    v45 = v12;
    *errorCopy = v12;
  }

  v46 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v55 = "[CESRDictionaryLog writeUpdatedObjects:forKeys:error:]";
    v56 = 2112;
    v57 = v12;
    _os_log_error_impl(&dword_225EEB000, v46, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

LABEL_22:
  v25 = 0;
LABEL_23:

LABEL_24:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)writeUpdatedObject:(id)object forKey:(id)key error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (object && key)
  {
    objectCopy = object;
    v8 = MEMORY[0x277CBEA60];
    keyCopy = key;
    objectCopy2 = object;
    keyCopy2 = [v8 arrayWithObjects:&objectCopy count:1];
    v22 = keyCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

    v13 = [(CESRDictionaryLog *)self writeUpdatedObjects:keyCopy2 forKeys:v12 error:error];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = MEMORY[0x277CCACA8];
    keyCopy2 = key;
    objectCopy3 = object;
    keyCopy2 = [v15 stringWithFormat:@"Invalid {object: %@ key: %@}", objectCopy3, keyCopy2];
    v25[0] = keyCopy2;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v18 = [v14 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:1 userInfo:v12];

    if (error && v18)
    {
      v19 = v18;
      *error = v18;
    }

    v13 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)mutableDictionaryForKey:(id)key error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = [(CESRDictionaryLog *)self objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_13:
    v18 = v8;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 mutableCopy];
    goto LABEL_13;
  }

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_13;
  }

  v9 = MEMORY[0x277CCA9B8];
  v25 = *MEMORY[0x277CCA450];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Unexpected object: %@ for key: %@ expected: %@", v7, keyCopy, v12];
  v26[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v15 = [v9 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:4 userInfo:v14];

  if (error && v15)
  {
    v16 = v15;
    *error = v15;
  }

  v17 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "[CESRDictionaryLog mutableDictionaryForKey:error:]";
    v23 = 2112;
    v24 = v15;
    _os_log_error_impl(&dword_225EEB000, v17, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v18 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)objectForKey:(id)key
{
  v3 = [(NSDictionary *)self->_log objectForKey:key];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)isReadOnly
{
  log = self->_log;
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) == 0;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CESRDictionaryLog;
  v3 = [(CESRDictionaryLog *)&v7 description];
  path = [(NSURL *)self->_logFileURL path];
  v5 = [v3 stringByAppendingFormat:@" logFile: %@", path];

  return v5;
}

- (BOOL)_loadLogOrCreate:(BOOL)create readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v62[1] = *MEMORY[0x277D85DE8];
  path = [(NSURL *)self->_logFileURL path];
  logFileURL = self->_logFileURL;
  v11 = SFReadPropertyList();
  v12 = 0;
  log = self->_log;
  self->_log = v11;

  if (!self->_log)
  {
    code = [v12 code];
    v25 = *MEMORY[0x277CEF0E8];
    if (code == 260)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v52 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
        v53 = 2112;
        v54 = path;
        _os_log_debug_impl(&dword_225EEB000, v25, OS_LOG_TYPE_DEBUG, "%s No prior log found at path: %@", buf, 0x16u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277CCA7E8];
      v58 = v12;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v28 = v26;
      v29 = 6;
LABEL_26:
      v43 = [v28 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:v29 userInfo:v27];

      v12 = v43;
      if (create)
      {
        goto LABEL_14;
      }

LABEL_27:
      v36 = 0;
      if (error && v12)
      {
        v44 = v12;
        v36 = 0;
        *error = v12;
      }

      goto LABEL_30;
    }

    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v52 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
      v53 = 2112;
      v54 = path;
      v55 = 2112;
      v56 = v12;
      _os_log_error_impl(&dword_225EEB000, v25, OS_LOG_TYPE_ERROR, "%s Failed to read prior log file at path: %@ error: %@", buf, 0x20u);
      if (v12)
      {
        goto LABEL_22;
      }
    }

    else if (v12)
    {
LABEL_22:
      v49 = *MEMORY[0x277CCA7E8];
      v50 = v12;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
LABEL_25:
      v28 = MEMORY[0x277CCA9B8];
      v29 = 7;
      goto LABEL_26;
    }

    v27 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (onlyCopy)
    {
      goto LABEL_16;
    }

    v14 = self->_log;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    errorCopy2 = error;
    v47 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277CCA450];
    v15 = MEMORY[0x277CCACA8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = self->_log;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v15 stringWithFormat:@"Expected mutable plist class (%@) but received class (%@) for object: %@ at path: %@", v17, v20, self->_log, path];
    v62[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v23 = [v47 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:5 userInfo:v22];

    v12 = v22;
  }

  else
  {
    errorCopy2 = error;
    v30 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    v31 = MEMORY[0x277CCACA8];
    v32 = self->_log;
    v33 = objc_opt_class();
    v17 = NSStringFromClass(v33);
    v20 = [v31 stringWithFormat:@"Unexpected plist class (%@) of object: %@ at path: %@", v17, self->_log, path];
    v60 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v23 = [v30 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:5 userInfo:v21];
  }

  v34 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
    v53 = 2112;
    v54 = v23;
    _os_log_error_impl(&dword_225EEB000, v34, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v12 = v23;
  error = errorCopy2;
  if (!create)
  {
    goto LABEL_27;
  }

LABEL_14:
  if (onlyCopy)
  {
    v35 = self->_log;
    self->_log = MEMORY[0x277CBEC10];

LABEL_16:
    v36 = 1;
    goto LABEL_30;
  }

  v37 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v52 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
    v53 = 2112;
    v54 = path;
    _os_log_impl(&dword_225EEB000, v37, OS_LOG_TYPE_INFO, "%s Initializing empty log file at path: %@", buf, 0x16u);
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = self->_log;
  self->_log = v38;

  v41 = self->_logFileURL;
  v40 = self->_log;
  protectionClass = self->_protectionClass;
  v36 = SFWritePropertyList();
LABEL_30:

  v45 = *MEMORY[0x277D85DE8];
  return v36;
}

- (CESRDictionaryLog)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end