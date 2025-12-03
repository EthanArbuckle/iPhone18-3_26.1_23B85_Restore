@interface _DPDatabaseRecorder
- (BOOL)isMetadataValid:(id)valid;
- (_DPDatabaseRecorder)initWithKey:(id)key storage:(id)storage;
- (_DPDatabaseRecorder)initWithKey:(id)key storage:(id)storage systemBlacklistPath:(id)path runtimeBlacklistPath:(id)blacklistPath;
- (id)description;
- (void)directUploadRecords:(id)records forKey:(id)key;
- (void)recordBitValues:(id)values metadata:(id)metadata;
- (void)recordBitVectors:(id)vectors metadata:(id)metadata;
- (void)recordFloatVectors:(id)vectors metadata:(id)metadata;
- (void)recordNumbers:(id)numbers metadata:(id)metadata;
- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata;
- (void)recordStrings:(id)strings metadata:(id)metadata;
- (void)recordWords:(id)words;
@end

@implementation _DPDatabaseRecorder

- (_DPDatabaseRecorder)initWithKey:(id)key storage:(id)storage
{
  storageCopy = storage;
  keyCopy = key;
  v8 = +[_DPStrings systemBlacklistDirectoryPath];
  v9 = +[_DPStrings runtimeBlacklistDirectoryPath];
  v10 = [(_DPDatabaseRecorder *)self initWithKey:keyCopy storage:storageCopy systemBlacklistPath:v8 runtimeBlacklistPath:v9];

  return v10;
}

- (_DPDatabaseRecorder)initWithKey:(id)key storage:(id)storage systemBlacklistPath:(id)path runtimeBlacklistPath:(id)blacklistPath
{
  keyCopy = key;
  storageCopy = storage;
  pathCopy = path;
  blacklistPathCopy = blacklistPath;
  v21.receiver = self;
  v21.super_class = _DPDatabaseRecorder;
  v14 = [(_DPDataRecorder *)&v21 initWithKey:keyCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_db, storage);
    if (!v15->_db)
    {
      v19 = 0;
      goto LABEL_6;
    }

    v16 = [_DPBlacklist blacklistForKey:keyCopy systemBlacklistDirectory:pathCopy runtimeBlacklistDirectory:blacklistPathCopy];
    blacklist = [v16 blacklist];
    blacklistSet = v15->_blacklistSet;
    v15->_blacklistSet = blacklist;
  }

  v19 = v15;
LABEL_6:

  return v19;
}

- (void)recordNumbers:(id)numbers metadata:(id)metadata
{
  v40 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  metadataCopy = metadata;
  v9 = objc_autoreleasePoolPush();
  v35.receiver = self;
  v35.super_class = _DPDatabaseRecorder;
  randomizer = [(_DPDataRecorder *)&v35 randomizer];
  v10Randomizer = [randomizer randomizer];

  if (v10Randomizer)
  {
    v28 = v9;
    v34.receiver = self;
    v34.super_class = _DPDatabaseRecorder;
    keyName = [(_DPDataRecorder *)&v34 keyName];
    v13 = +[_DPSubmissionRateLimiter sharedInstance];
    v14 = [v13 debit:objc_msgSend(numbersCopy forKey:{"count"), keyName}];
    keyName2 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName2, 0, 202, [numbersCopy count] - v14);

    if (!v14)
    {
      keyName5 = +[_DPLog framework];
      if (os_log_type_enabled(keyName5, OS_LOG_TYPE_DEBUG))
      {
        [_DPDatabaseRecorder recordNumbers:metadata:];
      }

      v16 = numbersCopy;
      goto LABEL_25;
    }

    v16 = [numbersCopy subarrayWithRange:{0, v14}];

    if (metadataCopy)
    {
      if ([(_DPDatabaseRecorder *)self isMetadataValid:metadataCopy])
      {
        if (objc_opt_respondsToSelector())
        {
          aSelector = a2;
          v17 = [v10Randomizer randomizeNumbers:v16 metadata:metadataCopy forKey:keyName];
          goto LABEL_13;
        }

        v24 = +[_DPLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordNumbers:a2 metadata:?];
        }
      }

      else
      {
        v24 = +[_DPLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordNumbers:metadata:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        aSelector = a2;
        v17 = [v10Randomizer randomizeNumbers:v16 forKey:keyName];
LABEL_13:
        keyName5 = v17;
        keyName3 = [(_DPDataRecorder *)self keyName];
        -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName3, 0, 208, [v16 count] - -[NSObject count](keyName5, "count"));

        keyName4 = [(_DPDataRecorder *)self keyName];
        [(_DPDatabaseRecorder *)self donateRandomizationEventToBitacoraForKey:keyName4 succeeded:1 errorCode:200 count:[keyName5 count]];

        if ([(_DPDataRecorder *)self directUpload])
        {
          v21 = +[_DPLog framework];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = NSStringFromSelector(aSelector);
            v23 = [keyName5 count];
            *buf = 138412546;
            v37 = v22;
            v38 = 2048;
            v39 = v23;
            _os_log_impl(&dword_22622D000, v21, OS_LOG_TYPE_INFO, "%@: performing direct upload, count: %ld", buf, 0x16u);
          }

          [(_DPDatabaseRecorder *)self directUploadRecords:keyName5 forKey:keyName];
        }

        else
        {
          db = self->_db;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __46___DPDatabaseRecorder_recordNumbers_metadata___block_invoke;
          v29[3] = &unk_27858B1C0;
          v32 = aSelector;
          v30 = v13;
          v31 = keyName;
          v33 = v14;
          [(_DPStorage *)db saveRecords:keyName5 withCompletion:v29];
        }

        goto LABEL_25;
      }

      v24 = +[_DPLog framework];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordNumbers:a2 metadata:?];
      }
    }

    keyName5 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName5, 0, 203, [v16 count]);
LABEL_25:

    numbersCopy = v16;
    v9 = v28;
    goto LABEL_26;
  }

  keyName = [(_DPDataRecorder *)self keyName];
  -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName, 0, 201, [numbersCopy count]);
LABEL_26:

  objc_autoreleasePoolPop(v9);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata
{
  v40 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  v9 = objc_autoreleasePoolPush();
  v35.receiver = self;
  v35.super_class = _DPDatabaseRecorder;
  randomizer = [(_DPDataRecorder *)&v35 randomizer];
  v10Randomizer = [randomizer randomizer];

  if (v10Randomizer)
  {
    v28 = v9;
    v34.receiver = self;
    v34.super_class = _DPDatabaseRecorder;
    keyName = [(_DPDataRecorder *)&v34 keyName];
    v13 = +[_DPSubmissionRateLimiter sharedInstance];
    v14 = [v13 debit:objc_msgSend(vectorsCopy forKey:{"count"), keyName}];
    keyName2 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName2, 0, 202, [vectorsCopy count] - v14);

    if (!v14)
    {
      keyName5 = +[_DPLog framework];
      if (os_log_type_enabled(keyName5, OS_LOG_TYPE_DEBUG))
      {
        [_DPDatabaseRecorder recordNumbers:metadata:];
      }

      v16 = vectorsCopy;
      goto LABEL_25;
    }

    v16 = [vectorsCopy subarrayWithRange:{0, v14}];

    if (metadataCopy)
    {
      if ([(_DPDatabaseRecorder *)self isMetadataValid:metadataCopy])
      {
        if (objc_opt_respondsToSelector())
        {
          aSelector = a2;
          v17 = [v10Randomizer randomizeNumbersVectors:v16 metadata:metadataCopy forKey:keyName];
          goto LABEL_13;
        }

        v24 = +[_DPLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordNumbers:a2 metadata:?];
        }
      }

      else
      {
        v24 = +[_DPLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordNumbersVectors:metadata:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        aSelector = a2;
        v17 = [v10Randomizer randomizeNumbersVectors:v16 forKey:keyName];
LABEL_13:
        keyName5 = v17;
        keyName3 = [(_DPDataRecorder *)self keyName];
        -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName3, 0, 208, [v16 count] - -[NSObject count](keyName5, "count"));

        keyName4 = [(_DPDataRecorder *)self keyName];
        [(_DPDatabaseRecorder *)self donateRandomizationEventToBitacoraForKey:keyName4 succeeded:1 errorCode:200 count:[keyName5 count]];

        if ([(_DPDataRecorder *)self directUpload])
        {
          v21 = +[_DPLog framework];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = NSStringFromSelector(aSelector);
            v23 = [keyName5 count];
            *buf = 138412546;
            v37 = v22;
            v38 = 2048;
            v39 = v23;
            _os_log_impl(&dword_22622D000, v21, OS_LOG_TYPE_INFO, "%@: performing direct upload, count: %ld", buf, 0x16u);
          }

          [(_DPDatabaseRecorder *)self directUploadRecords:keyName5 forKey:keyName];
        }

        else
        {
          db = self->_db;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __53___DPDatabaseRecorder_recordNumbersVectors_metadata___block_invoke;
          v29[3] = &unk_27858B1C0;
          v32 = aSelector;
          v30 = v13;
          v31 = keyName;
          v33 = v14;
          [(_DPStorage *)db saveRecords:keyName5 withCompletion:v29];
        }

        goto LABEL_25;
      }

      v24 = +[_DPLog framework];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordNumbers:a2 metadata:?];
      }
    }

    keyName5 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName5, 0, 203, [v16 count]);
LABEL_25:

    vectorsCopy = v16;
    v9 = v28;
    goto LABEL_26;
  }

  keyName = [(_DPDataRecorder *)self keyName];
  -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName, 0, 201, [vectorsCopy count]);
LABEL_26:

  objc_autoreleasePoolPop(v9);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordBitValues:(id)values metadata:(id)metadata
{
  v42 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  metadataCopy = metadata;
  v9 = objc_autoreleasePoolPush();
  v37.receiver = self;
  v37.super_class = _DPDatabaseRecorder;
  randomizer = [(_DPDataRecorder *)&v37 randomizer];
  v10Randomizer = [randomizer randomizer];

  if (v10Randomizer)
  {
    v30 = v9;
    v36.receiver = self;
    v36.super_class = _DPDatabaseRecorder;
    keyName = [(_DPDataRecorder *)&v36 keyName];
    v13 = +[_DPSubmissionRateLimiter sharedInstance];
    v14 = [v13 debit:objc_msgSend(valuesCopy forKey:{"count"), keyName}];
    keyName2 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName2, 0, 202, [valuesCopy count] - v14);

    if (!v14)
    {
      keyName6 = +[_DPLog framework];
      if (os_log_type_enabled(keyName6, OS_LOG_TYPE_DEBUG))
      {
        [_DPDatabaseRecorder recordNumbers:metadata:];
      }

      v16 = valuesCopy;
      goto LABEL_26;
    }

    v16 = [valuesCopy subarrayWithRange:{0, v14}];

    if (metadataCopy)
    {
      if (![(_DPDatabaseRecorder *)self isMetadataValid:metadataCopy])
      {
        keyName3 = [(_DPDataRecorder *)self keyName];
        -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName3, 0, 203, [v16 count]);

        keyName6 = +[_DPLog framework];
        if (os_log_type_enabled(keyName6, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordBitValues:metadata:];
        }

        goto LABEL_26;
      }

      if (objc_opt_respondsToSelector())
      {
        aSelector = a2;
        v17 = [v10Randomizer randomizeBitValues:v16 metadata:metadataCopy forKey:keyName];
        goto LABEL_14;
      }

      v26 = +[_DPLog framework];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordNumbers:a2 metadata:?];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        aSelector = a2;
        v17 = [v10Randomizer randomizeBitValues:v16 forKey:keyName];
LABEL_14:
        keyName6 = v17;
        keyName4 = [(_DPDataRecorder *)self keyName];
        -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName4, 0, 208, [v16 count] - -[NSObject count](keyName6, "count"));

        keyName5 = [(_DPDataRecorder *)self keyName];
        [(_DPDatabaseRecorder *)self donateRandomizationEventToBitacoraForKey:keyName5 succeeded:1 errorCode:200 count:[keyName6 count]];

        if ([(_DPDataRecorder *)self directUpload])
        {
          v22 = +[_DPLog framework];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = NSStringFromSelector(aSelector);
            v24 = [keyName6 count];
            *buf = 138412546;
            v39 = v23;
            v40 = 2048;
            v41 = v24;
            _os_log_impl(&dword_22622D000, v22, OS_LOG_TYPE_INFO, "%@: performing direct upload, count: %ld", buf, 0x16u);
          }

          [(_DPDatabaseRecorder *)self directUploadRecords:keyName6 forKey:keyName];
        }

        else
        {
          db = self->_db;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __48___DPDatabaseRecorder_recordBitValues_metadata___block_invoke;
          v31[3] = &unk_27858B1C0;
          v34 = aSelector;
          v32 = v13;
          v33 = keyName;
          v35 = v14;
          [(_DPStorage *)db saveRecords:keyName6 withCompletion:v31];
        }

        goto LABEL_26;
      }

      v26 = +[_DPLog framework];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordBitValues:a2 metadata:?];
      }
    }

    keyName6 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName6, 0, 207, [v16 count]);
LABEL_26:

    valuesCopy = v16;
    v9 = v30;
    goto LABEL_27;
  }

  keyName7 = [(_DPDataRecorder *)self keyName];
  -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName7, 0, 201, [valuesCopy count]);

  keyName = +[_DPLog daemon];
  if (os_log_type_enabled(keyName, OS_LOG_TYPE_ERROR))
  {
    [_DPDatabaseRecorder recordBitValues:keyName metadata:?];
  }

LABEL_27:

  objc_autoreleasePoolPop(v9);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)recordBitVectors:(id)vectors metadata:(id)metadata
{
  v47 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  v9 = objc_autoreleasePoolPush();
  v42.receiver = self;
  v42.super_class = _DPDatabaseRecorder;
  randomizer = [(_DPDataRecorder *)&v42 randomizer];
  v10Randomizer = [randomizer randomizer];

  if (v10Randomizer)
  {
    v35 = v9;
    v41.receiver = self;
    v41.super_class = _DPDatabaseRecorder;
    keyName = [(_DPDataRecorder *)&v41 keyName];
    v13 = +[_DPSubmissionRateLimiter sharedInstance];
    v14 = [v13 debit:objc_msgSend(vectorsCopy forKey:{"count"), keyName}];
    keyName2 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName2, 0, 202, [vectorsCopy count] - v14);

    if (!v14)
    {
      keyName3 = +[_DPLog framework];
      if (os_log_type_enabled(keyName3, OS_LOG_TYPE_DEBUG))
      {
        [_DPDatabaseRecorder recordNumbers:metadata:];
      }

      v16 = vectorsCopy;
      goto LABEL_29;
    }

    v16 = [vectorsCopy subarrayWithRange:{0, v14}];

    if (metadataCopy)
    {
      if (![(_DPDatabaseRecorder *)self isMetadataValid:metadataCopy])
      {
        v24 = +[_DPLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordBitValues:metadata:];
        }

        keyName3 = [(_DPDataRecorder *)self keyName];
        v25 = [v16 count];
        selfCopy2 = self;
        v27 = keyName3;
        v28 = 203;
        goto LABEL_28;
      }

      if (objc_opt_respondsToSelector())
      {
        aSelector = a2;
        v17 = [v10Randomizer randomizeBitVectors:v16 metadata:metadataCopy forKey:keyName];
        goto LABEL_13;
      }

      v31 = +[_DPLog framework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordNumbers:a2 metadata:?];
      }
    }

    else
    {
      aSelector = a2;
      if (objc_opt_respondsToSelector())
      {
        v17 = [v10Randomizer randomizeBitVectors:v16 forKey:keyName];
LABEL_13:
        keyName3 = v17;
        keyName4 = [(_DPDataRecorder *)self keyName];
        -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName4, 0, 208, [v16 count] - -[NSObject count](keyName3, "count"));

        keyName5 = [(_DPDataRecorder *)self keyName];
        [(_DPDatabaseRecorder *)self donateRandomizationEventToBitacoraForKey:keyName5 succeeded:1 errorCode:200 count:[keyName3 count]];

        if ([(_DPDataRecorder *)self directUpload])
        {
          v21 = +[_DPLog framework];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = NSStringFromSelector(aSelectora);
            v23 = [keyName3 count];
            *buf = 138412546;
            v44 = v22;
            v45 = 2048;
            v46 = v23;
            _os_log_impl(&dword_22622D000, v21, OS_LOG_TYPE_INFO, "%@: performing direct upload, count: %ld", buf, 0x16u);
          }

          [(_DPDatabaseRecorder *)self directUploadRecords:keyName3 forKey:keyName];
        }

        else
        {
          db = self->_db;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __49___DPDatabaseRecorder_recordBitVectors_metadata___block_invoke;
          v36[3] = &unk_27858B1C0;
          v39 = aSelectora;
          v37 = v13;
          v38 = keyName;
          v40 = v14;
          [(_DPStorage *)db saveRecords:keyName3 withCompletion:v36];
        }

        goto LABEL_29;
      }

      v29 = +[_DPLog framework];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordBitVectors:metadata:];
      }
    }

    keyName3 = [(_DPDataRecorder *)self keyName];
    v25 = [v16 count];
    selfCopy2 = self;
    v27 = keyName3;
    v28 = 207;
LABEL_28:
    [(_DPDatabaseRecorder *)selfCopy2 donateRandomizationEventToBitacoraForKey:v27 succeeded:0 errorCode:v28 count:v25];
LABEL_29:

    vectorsCopy = v16;
    v9 = v35;
    goto LABEL_30;
  }

  keyName = [(_DPDataRecorder *)self keyName];
  -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName, 0, 201, [vectorsCopy count]);
LABEL_30:

  objc_autoreleasePoolPop(v9);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:(id)vectors metadata:(id)metadata
{
  v46 = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  metadataCopy = metadata;
  v9 = objc_autoreleasePoolPush();
  v41.receiver = self;
  v41.super_class = _DPDatabaseRecorder;
  randomizer = [(_DPDataRecorder *)&v41 randomizer];
  v10Randomizer = [randomizer randomizer];

  if (v10Randomizer)
  {
    v34 = v9;
    v40.receiver = self;
    v40.super_class = _DPDatabaseRecorder;
    keyName = [(_DPDataRecorder *)&v40 keyName];
    v13 = +[_DPSubmissionRateLimiter sharedInstance];
    v14 = [v13 debit:objc_msgSend(vectorsCopy forKey:{"count"), keyName}];
    keyName2 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName2, 0, 202, [vectorsCopy count] - v14);

    if (!v14)
    {
      keyName3 = +[_DPLog framework];
      if (os_log_type_enabled(keyName3, OS_LOG_TYPE_DEBUG))
      {
        [_DPDatabaseRecorder recordNumbers:metadata:];
      }

      v16 = vectorsCopy;
      goto LABEL_27;
    }

    v16 = [vectorsCopy subarrayWithRange:{0, v14}];

    if (metadataCopy)
    {
      if (![(_DPDatabaseRecorder *)self isMetadataValid:metadataCopy])
      {
        v24 = +[_DPLog framework];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordFloatVectors:metadata:];
        }

        keyName3 = [(_DPDataRecorder *)self keyName];
        v25 = [v16 count];
        selfCopy2 = self;
        v27 = keyName3;
        v28 = 203;
        goto LABEL_26;
      }

      aSelector = a2;
      if (objc_opt_respondsToSelector())
      {
        v17 = [v10Randomizer randomizeFloatVectors:v16 metadata:metadataCopy forKey:keyName];
        goto LABEL_13;
      }

      v29 = +[_DPLog framework];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordFloatVectors:metadata:];
      }
    }

    else
    {
      aSelector = a2;
      if (objc_opt_respondsToSelector())
      {
        v17 = [v10Randomizer randomizeFloatVectors:v16 forKey:keyName];
LABEL_13:
        keyName3 = v17;
        keyName4 = [(_DPDataRecorder *)self keyName];
        -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName4, 0, 208, [v16 count] - -[NSObject count](keyName3, "count"));

        keyName5 = [(_DPDataRecorder *)self keyName];
        [(_DPDatabaseRecorder *)self donateRandomizationEventToBitacoraForKey:keyName5 succeeded:1 errorCode:200 count:[keyName3 count]];

        if ([(_DPDataRecorder *)self directUpload])
        {
          v21 = +[_DPLog framework];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = NSStringFromSelector(aSelectora);
            v23 = [keyName3 count];
            *buf = 138412546;
            v43 = v22;
            v44 = 2048;
            v45 = v23;
            _os_log_impl(&dword_22622D000, v21, OS_LOG_TYPE_INFO, "%@: performing direct upload, count: %ld", buf, 0x16u);
          }

          [(_DPDatabaseRecorder *)self directUploadRecords:keyName3 forKey:keyName];
        }

        else
        {
          db = self->_db;
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __51___DPDatabaseRecorder_recordFloatVectors_metadata___block_invoke;
          v35[3] = &unk_27858B1C0;
          v38 = aSelectora;
          v36 = v13;
          v37 = keyName;
          v39 = v14;
          [(_DPStorage *)db saveRecords:keyName3 withCompletion:v35];
        }

        goto LABEL_27;
      }

      v29 = +[_DPLog framework];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordFloatVectors:metadata:];
      }
    }

    keyName3 = [(_DPDataRecorder *)self keyName];
    v25 = [v16 count];
    selfCopy2 = self;
    v27 = keyName3;
    v28 = 207;
LABEL_26:
    [(_DPDatabaseRecorder *)selfCopy2 donateRandomizationEventToBitacoraForKey:v27 succeeded:0 errorCode:v28 count:v25, aSelector];
LABEL_27:

    vectorsCopy = v16;
    v9 = v34;
    goto LABEL_28;
  }

  keyName = [(_DPDataRecorder *)self keyName];
  -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName, 0, 201, [vectorsCopy count]);
LABEL_28:

  objc_autoreleasePoolPop(v9);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)recordStrings:(id)strings metadata:(id)metadata
{
  v53 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  metadataCopy = metadata;
  v9 = objc_autoreleasePoolPush();
  v48.receiver = self;
  v48.super_class = _DPDatabaseRecorder;
  randomizer = [(_DPDataRecorder *)&v48 randomizer];
  v10Randomizer = [randomizer randomizer];

  if (v10Randomizer)
  {
    v40 = v9;
    v12 = stringsCopy;
    blacklistSet = [(_DPDatabaseRecorder *)self blacklistSet];

    v14 = v12;
    if (blacklistSet)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __46___DPDatabaseRecorder_recordStrings_metadata___block_invoke;
      v47[3] = &unk_27858AF40;
      v47[4] = self;
      v15 = [v12 indexesOfObjectsPassingTest:v47];
      v14 = [v12 mutableCopy];
      [v14 removeObjectsAtIndexes:v15];
    }

    keyName = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName, 0, 202, [v12 count] - objc_msgSend(v14, "count"));

    v46.receiver = self;
    v46.super_class = _DPDatabaseRecorder;
    keyName2 = [(_DPDataRecorder *)&v46 keyName];
    v18 = +[_DPSubmissionRateLimiter sharedInstance];
    v19 = [v18 debit:objc_msgSend(v14 forKey:{"count"), keyName2}];
    keyName3 = [(_DPDataRecorder *)self keyName];
    -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName3, 0, 202, [v14 count] - v19);

    if (!v19)
    {
      keyName4 = +[_DPLog framework];
      if (os_log_type_enabled(keyName4, OS_LOG_TYPE_DEBUG))
      {
        [_DPDatabaseRecorder recordNumbers:metadata:];
      }

      keyName7 = v14;
      goto LABEL_30;
    }

    keyName7 = [v14 subarrayWithRange:{0, v19}];

    if (metadataCopy)
    {
      if ([(_DPDatabaseRecorder *)self isMetadataValid:metadataCopy])
      {
        if (objc_opt_respondsToSelector())
        {
          aSelector = a2;
          v39 = v18;
          v22 = [v10Randomizer randomizeStrings:keyName7 metadata:metadataCopy forKey:keyName2];
          goto LABEL_15;
        }

        v36 = +[_DPLog framework];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordFloatVectors:metadata:];
        }

        keyName4 = [(_DPDataRecorder *)self keyName];
        v30 = [keyName7 count];
        selfCopy3 = self;
        v32 = keyName4;
        v33 = 203;
      }

      else
      {
        v29 = +[_DPLog framework];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [_DPDatabaseRecorder recordStrings:metadata:];
        }

        keyName4 = [(_DPDataRecorder *)self keyName];
        v30 = [keyName7 count];
        selfCopy3 = self;
        v32 = keyName4;
        v33 = 201;
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        aSelector = a2;
        v39 = v18;
        v22 = [v10Randomizer randomizeStrings:keyName7 forKey:keyName2];
LABEL_15:
        keyName4 = v22;
        keyName5 = [(_DPDataRecorder *)self keyName];
        -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName5, 0, 208, [keyName7 count] - -[NSObject count](keyName4, "count"));

        keyName6 = [(_DPDataRecorder *)self keyName];
        [(_DPDatabaseRecorder *)self donateRandomizationEventToBitacoraForKey:keyName6 succeeded:1 errorCode:200 count:[keyName4 count]];

        if ([(_DPDataRecorder *)self directUpload])
        {
          v26 = +[_DPLog framework];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = NSStringFromSelector(aSelector);
            v28 = [keyName4 count];
            *buf = 138412546;
            v50 = v27;
            v51 = 2048;
            v52 = v28;
            _os_log_impl(&dword_22622D000, v26, OS_LOG_TYPE_INFO, "%@: performing direct upload, count: %ld", buf, 0x16u);
          }

          [(_DPDatabaseRecorder *)self directUploadRecords:keyName4 forKey:keyName2];
          v18 = v39;
        }

        else
        {
          db = self->_db;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __46___DPDatabaseRecorder_recordStrings_metadata___block_invoke_33;
          v41[3] = &unk_27858B1C0;
          v18 = v39;
          v44 = aSelector;
          v42 = v39;
          v43 = keyName2;
          v45 = v19;
          [(_DPStorage *)db saveRecords:keyName4 withCompletion:v41];
        }

        goto LABEL_30;
      }

      v34 = +[_DPLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [_DPDatabaseRecorder recordStrings:metadata:];
      }

      keyName4 = [(_DPDataRecorder *)self keyName];
      v30 = [keyName7 count];
      selfCopy3 = self;
      v32 = keyName4;
      v33 = 207;
    }

    [(_DPDatabaseRecorder *)selfCopy3 donateRandomizationEventToBitacoraForKey:v32 succeeded:0 errorCode:v33 count:v30];
LABEL_30:

    v9 = v40;
    goto LABEL_31;
  }

  keyName7 = [(_DPDataRecorder *)self keyName];
  -[_DPDatabaseRecorder donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:](self, "donateRandomizationEventToBitacoraForKey:succeeded:errorCode:count:", keyName7, 0, 201, [stringsCopy count]);
LABEL_31:

  objc_autoreleasePoolPop(v9);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)recordWords:(id)words
{
  v3 = +[_DPLog framework];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [_DPDatabaseRecorder recordWords:v3];
  }
}

- (void)directUploadRecords:(id)records forKey:(id)key
{
  v23 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  keyCopy = key;
  v9 = [_DPKeyNames keyPropertiesForKey:keyCopy];
  if ([v9 transport] == 4)
  {
    v10 = [_DPDediscoReporter filterNonConformingDediscoRecordsFrom:recordsCopy];
    v11 = objc_opt_new();
    v12 = [(_DPDatabaseRecorder *)self db];
    v13 = [v11 directlyUploadDediscoRecords:v10 forKey:keyCopy keyProperties:v9 storage:v12];

    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v17 = 138412802;
      v18 = v15;
      v19 = 2048;
      v20 = [v13 count];
      v21 = 2048;
      v22 = [v10 count];
      _os_log_impl(&dword_22622D000, v14, OS_LOG_TYPE_DEFAULT, "%@: successfully submitted %ld of %ld records", &v17, 0x20u);
    }
  }

  else
  {
    v10 = +[_DPLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DPDatabaseRecorder directUploadRecords:a2 forKey:?];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { database=%@ }", v5, self->_db];

  return v6;
}

- (BOOL)isMetadataValid:(id)valid
{
  v33 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  if (_DPMetadataIsV2(validCopy))
  {
    v4 = _DPMetadataV2RequiredKeys();
    _DPMetadataV2OptionalKeys();
  }

  else
  {
    v4 = _DPMetadataRequiredKeys();
    _DPMetadataOptionalKeys();
  }
  v5 = ;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v10)
        {
          v12 = *(*(&v27 + 1) + 8 * i);
          allKeys = [validCopy allKeys];
          v10 = [allKeys containsObject:v12];
        }

        else
        {
          v10 = 0;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys2 = [validCopy allKeys];
  v15 = [allKeys2 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    v18 = 1;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(allKeys2);
        }

        if (v18)
        {
          v20 = *(*(&v23 + 1) + 8 * j);
          if ([v6 containsObject:v20])
          {
            v18 = 1;
          }

          else
          {
            v18 = [v5 containsObject:v20];
          }
        }

        else
        {
          v18 = 0;
        }
      }

      v16 = [allKeys2 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10 & v18;
}

- (void)recordNumbers:metadata:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() allKeys];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:(const char *)a1 metadata:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:(const char *)a1 metadata:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:metadata:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbersVectors:metadata:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() allKeys];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordBitValues:metadata:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() allKeys];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordBitValues:(const char *)a1 metadata:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordBitVectors:metadata:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v10 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:metadata:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() allKeys];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:metadata:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v10 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:metadata:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v10 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordStrings:metadata:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_6() allKeys];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recordStrings:metadata:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v10 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)directUploadRecords:(const char *)a1 forKey:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end