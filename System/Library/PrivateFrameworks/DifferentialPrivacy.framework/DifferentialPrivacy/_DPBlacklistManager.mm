@interface _DPBlacklistManager
+ (BOOL)createRuntimeBlacklistDirectory:(id)directory;
+ (BOOL)removeAllFilesFromDirectory:(id)directory;
+ (BOOL)removeBlacklistFileWithKey:(id)key fromDirectory:(id)directory;
+ (BOOL)saveBlacklist:(id)blacklist forKey:(id)key runtimeDirectory:(id)directory;
+ (BOOL)saveBlacklist:(id)blacklist knownVersionByKey:(id)key systemDirectory:(id)directory runtimeDirectory:(id)runtimeDirectory;
+ (BOOL)saveBlacklist:(id)blacklist systemDirectory:(id)directory runtimeDirectory:(id)runtimeDirectory memoryLimit:(unint64_t)limit;
+ (BOOL)validateBlacklist:(id)blacklist;
+ (id)keepLatestRuntimeBlacklistInDirectory:(id)directory compareToSystemBlacklistInDirectory:(id)inDirectory;
+ (unint64_t)memoryRequiredBySystemBlacklistInDirectory:(id)directory runtimeBlacklistInDirectory:(id)inDirectory blacklist:(id)blacklist;
+ (unint64_t)memorySizeWithDirectory:(id)directory;
+ (void)processRuntimeBlacklist;
+ (void)processRuntimeBlacklist:(id)blacklist systemDirectory:(id)directory runtimeDirectory:(id)runtimeDirectory blacklistLengthLimit:(unint64_t)limit;
- (void)scheduleMaintenanceWithName:(id)name database:(id)database;
@end

@implementation _DPBlacklistManager

+ (void)processRuntimeBlacklist:(id)blacklist systemDirectory:(id)directory runtimeDirectory:(id)runtimeDirectory blacklistLengthLimit:(unint64_t)limit
{
  v38 = *MEMORY[0x277D85DE8];
  blacklistCopy = blacklist;
  directoryCopy = directory;
  runtimeDirectoryCopy = runtimeDirectory;
  if (![objc_opt_class() createRuntimeBlacklistDirectory:runtimeDirectoryCopy] || !-[NSObject length](blacklistCopy, "length"))
  {
    goto LABEL_23;
  }

  if (![blacklistCopy isEqualToString:@"DifferentialPrivacyDARemoveAllBlacklistCommand"])
  {
    if ([blacklistCopy lengthOfBytesUsingEncoding:4]> limit)
    {
      v15 = +[_DPLog daemon];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_DPBlacklistManager processRuntimeBlacklist:self systemDirectory:a2 runtimeDirectory:? blacklistLengthLimit:?];
      }

      goto LABEL_22;
    }

    v16 = blacklistCopy;
    v15 = v16;
    if ([v16 length]>= 0x65)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [v16 substringToIndex:100];
      v15 = [v17 stringWithFormat:@"%@ ...", v18];
    }

    if ([_DPBlacklistManager validateBlacklist:v16])
    {
      v19 = [objc_opt_class() saveBlacklist:v16 systemDirectory:directoryCopy runtimeDirectory:runtimeDirectoryCopy memoryLimit:512000];
      v20 = +[_DPLog daemon];
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = NSStringFromSelector(a2);
          *buf = 138412802;
          v33 = v23;
          v34 = 2112;
          v35 = v24;
          v36 = 2112;
          v37 = v15;
          _os_log_debug_impl(&dword_22622D000, v21, OS_LOG_TYPE_DEBUG, "%@, %@: Successfully loaded blacklist string to runtime blacklist directory : %@", buf, 0x20u);
LABEL_26:
        }

LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v31 = objc_opt_class();
      v23 = NSStringFromClass(v31);
      v24 = NSStringFromSelector(a2);
      *buf = 138412802;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v15;
      v26 = "%@, %@: Failed loading blacklist string to runtime blacklist directory : %@";
    }

    else
    {
      v21 = +[_DPLog daemon];
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v25 = objc_opt_class();
      v23 = NSStringFromClass(v25);
      v24 = NSStringFromSelector(a2);
      *buf = 138412802;
      v33 = v23;
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v15;
      v26 = "%@, %@: ill-formatted blacklist string : %@";
    }

    _os_log_error_impl(&dword_22622D000, v21, OS_LOG_TYPE_ERROR, v26, buf, 0x20u);
    goto LABEL_26;
  }

  +[_DPBlacklist resetAllBlacklists];
  v14 = +[_DPLog daemon];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = NSStringFromSelector(a2);
    *buf = 138412802;
    v33 = v29;
    v34 = 2112;
    v35 = v30;
    v36 = 2112;
    v37 = blacklistCopy;
    _os_log_debug_impl(&dword_22622D000, v14, OS_LOG_TYPE_DEBUG, "%@, %@: Received removing all runtime blacklist files command: %@", buf, 0x20u);
  }

  if (![_DPBlacklistManager removeAllFilesFromDirectory:runtimeDirectoryCopy])
  {
    v15 = +[_DPLog daemon];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_DPBlacklistManager processRuntimeBlacklist:self systemDirectory:a2 runtimeDirectory:? blacklistLengthLimit:?];
    }

    goto LABEL_22;
  }

LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)keepLatestRuntimeBlacklistInDirectory:(id)directory compareToSystemBlacklistInDirectory:(id)inDirectory
{
  v35 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  inDirectoryCopy = inDirectory;
  v26 = [MEMORY[0x277CBEC10] mutableCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v33 = 0;
  v28 = directoryCopy;
  v8 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v33];
  v25 = v33;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [_DPBlacklist extractKeyFromFileName:*(*(&v29 + 1) + 8 * v12)];
        if ([v13 length])
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [_DPBlacklist blacklistForKey:v13 fromConfigurationsFile:v28];
          if ([_DPBlacklist blacklistExistsWithKey:v13 inDirectory:inDirectoryCopy])
          {
            goto LABEL_10;
          }

          v16 = [_DPKeyNames keyPropertiesForKey:v13];
          if (v16)
          {

LABEL_10:
            v17 = [_DPBlacklist blacklistForKey:v13 fromConfigurationsFile:inDirectoryCopy];
            version = [v15 version];
            version2 = [v17 version];
            v20 = v15;
            if (version <= version2)
            {
              [objc_opt_class() removeBlacklistFileWithKey:v13 fromDirectory:v28];
              v20 = v17;
            }

            v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "version")}];
            [v26 setObject:v21 forKeyedSubscript:v13];
          }

          else
          {
            [objc_opt_class() removeBlacklistFileWithKey:v13 fromDirectory:v28];
          }

          objc_autoreleasePoolPop(v14);
        }

        ++v12;
      }

      while (v10 != v12);
      v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      v10 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (BOOL)removeAllFilesFromDirectory:(id)directory
{
  v42 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  context = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = 0;
  v5 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v28];
  v6 = v28;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v24 = 1;
    do
    {
      v10 = 0;
      v11 = v6;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * v10);
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", directoryCopy, v12];
        v27 = v11;
        v14 = [defaultManager removeItemAtPath:v13 error:&v27];
        v6 = v27;

        if ((v14 & 1) == 0)
        {
          v15 = +[_DPLog daemon];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = objc_opt_class();
            v25 = NSStringFromClass(v16);
            v17 = NSStringFromSelector(a2);
            v18 = [v6 description];
            *buf = 138413058;
            v34 = v25;
            v35 = 2112;
            v36 = v17;
            v37 = 2112;
            v38 = v12;
            v39 = 2112;
            v40 = v18;
            v19 = v18;
            _os_log_error_impl(&dword_22622D000, v15, OS_LOG_TYPE_ERROR, "%@, %@: Failed to delete a file named as %@ from runtime blacklist directory: %@", buf, 0x2Au);
          }

          v24 = 0;
        }

        ++v10;
        v11 = v6;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v8);
  }

  else
  {
    v24 = 1;
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

+ (BOOL)validateBlacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  if ([blacklistCopy length])
  {
    v16 = 0;
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[\\._a-zA-Z0-9]+:[0-9]+ options:[[^ error:{:]+, ]*[^, :;]+$", 0, &v16}];;
    v5 = v16;
    if (v5)
    {
      v6 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v7 = 0;
    if ([blacklistCopy length])
    {
      v8 = 0;
      while (2)
      {
        v9 = objc_autoreleasePoolPush();
        if (!v7)
        {
          v7 = [&stru_2839671C8 mutableCopy];
        }

        while (1)
        {
          if (v8 >= [blacklistCopy length])
          {
            goto LABEL_19;
          }

          v10 = [blacklistCopy characterAtIndex:v8];
          v11 = v10 <= 0x7F ? v10 : 97;
          if (v11 == 59)
          {
            break;
          }

          [v7 appendFormat:@"%c", v11];
          ++v8;
        }

        if ([v7 length])
        {
          v12 = [v4 firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
          if (![v12 range])
          {
            v13 = [v7 length];
            [v12 range];
            if (v13 == v14)
            {

              ++v8;
              v7 = 0;
LABEL_19:
              objc_autoreleasePoolPop(v9);
              if (v8 < [blacklistCopy length])
              {
                continue;
              }

              goto LABEL_20;
            }
          }
        }

        break;
      }

      objc_autoreleasePoolPop(v9);
      v6 = 0;
      goto LABEL_23;
    }

LABEL_20:
    v6 = [v7 length] == 0;
LABEL_23:

    goto LABEL_24;
  }

  v6 = 0;
LABEL_25:

  return v6;
}

+ (BOOL)saveBlacklist:(id)blacklist systemDirectory:(id)directory runtimeDirectory:(id)runtimeDirectory memoryLimit:(unint64_t)limit
{
  v31 = *MEMORY[0x277D85DE8];
  blacklistCopy = blacklist;
  directoryCopy = directory;
  runtimeDirectoryCopy = runtimeDirectory;
  +[_DPBlacklist resetAllBlacklists];
  v13 = [objc_opt_class() keepLatestRuntimeBlacklistInDirectory:runtimeDirectoryCopy compareToSystemBlacklistInDirectory:directoryCopy];
  v14 = [objc_opt_class() memoryRequiredBySystemBlacklistInDirectory:directoryCopy runtimeBlacklistInDirectory:runtimeDirectoryCopy blacklist:blacklistCopy];
  if (v14 <= limit)
  {
    v17 = [objc_opt_class() saveBlacklist:blacklistCopy knownVersionByKey:v13 systemDirectory:directoryCopy runtimeDirectory:runtimeDirectoryCopy];
  }

  else
  {
    v15 = v14;
    v16 = +[_DPLog daemon];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v23 = 138413058;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      v27 = 2048;
      v28 = v15;
      v29 = 2048;
      limitCopy = limit;
      _os_log_error_impl(&dword_22622D000, v16, OS_LOG_TYPE_ERROR, "%@, %@: total required memory(%llu) exceeds limit : %llu", &v23, 0x2Au);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (unint64_t)memoryRequiredBySystemBlacklistInDirectory:(id)directory runtimeBlacklistInDirectory:(id)inDirectory blacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  inDirectoryCopy = inDirectory;
  directoryCopy = directory;
  v10 = [objc_opt_class() memorySizeWithDirectory:directoryCopy];

  v11 = [objc_opt_class() memorySizeWithDirectory:inDirectoryCopy];
  v12 = [blacklistCopy lengthOfBytesUsingEncoding:4];

  return v11 + v10 + v12;
}

+ (unint64_t)memorySizeWithDirectory:(id)directory
{
  v24 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [_DPBlacklist extractKeyFromFileName:*(*(&v19 + 1) + 8 * i)];
        if ([v11 length])
        {
          v12 = [_DPBlacklist filePathWithKey:v11 inDirectory:directoryCopy];
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v14 = [defaultManager2 attributesOfItemAtPath:v12 error:0];
          fileSize = [v14 fileSize];

          v8 += fileSize;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)saveBlacklist:(id)blacklist knownVersionByKey:(id)key systemDirectory:(id)directory runtimeDirectory:(id)runtimeDirectory
{
  blacklistCopy = blacklist;
  keyCopy = key;
  directoryCopy = directory;
  runtimeDirectoryCopy = runtimeDirectory;
  v36 = objc_autoreleasePoolPush();
  if (![blacklistCopy length])
  {
    LOBYTE(v11) = 1;
    goto LABEL_38;
  }

  v10 = 0;
  v11 = 1;
  v12 = -1;
  v13 = -1;
  while (1)
  {
    if (v12 == -1)
    {
      v13 = v10;
      v12 = v10;
    }

    if ([blacklistCopy characterAtIndex:v10] != 59)
    {
      v13 = v10;
      goto LABEL_33;
    }

    if (v13 - v12 < 3)
    {
      goto LABEL_37;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = v12;
    if (v13 >= v12)
    {
      v15 = v12;
      if ([blacklistCopy characterAtIndex:v12] != 58)
      {
        v16 = v12;
        do
        {
          v15 = v16++;
        }

        while (v16 <= v13 && [blacklistCopy characterAtIndex:v16] != 58);
      }
    }

    v17 = [blacklistCopy substringWithRange:{v12, v15 - v12 + 1}];
    v18 = [_DPKeyNames keyPropertiesForKey:v17];
    if (!v18)
    {
      break;
    }

    v41 = v18;
    context = v14;
    v40 = v11;
    v19 = v15 + 2;
    v20 = v15 + 2;
    if (v15 + 2 <= v13)
    {
      v20 = v15 + 2;
      if ([blacklistCopy characterAtIndex:v15 + 2] != 44)
      {
        v21 = v15 + 2;
        do
        {
          v20 = v21++;
        }

        while (v21 <= v13 && [blacklistCopy characterAtIndex:v21] != 44);
      }
    }

    v22 = ~v15;
    v23 = [blacklistCopy substringWithRange:{v15 + 2, v20 + ~v15}];
    v43 = -1;
    v24 = [MEMORY[0x277CCAC80] scannerWithString:v23];
    if (([v24 scanInteger:&v43] & 1) != 0 || (objc_msgSend(v24, "isAtEnd") & 1) == 0)
    {
      v26 = [blacklistCopy substringWithRange:{v19, v13 + v22}];
      v27 = [keyCopy objectForKeyedSubscript:v17];

      if (v27)
      {
        v28 = [keyCopy objectForKeyedSubscript:v17];
        intValue = [v28 intValue];
        v30 = v43;

        if (v30 <= intValue)
        {
          v11 = 0;
        }

        else
        {
          v11 = v40 & [objc_opt_class() saveBlacklist:v26 forKey:v17 runtimeDirectory:runtimeDirectoryCopy];
        }
      }

      else
      {
        v31 = [_DPBlacklist blacklistExistsWithKey:v17 inDirectory:directoryCopy];
        v32 = [_DPBlacklist blacklistForKey:v17 fromConfigurationsFile:directoryCopy];
        v33 = v32;
        if (v31 && (v34 = [v32 version], v34 >= v43))
        {
          v11 = 0;
        }

        else
        {
          v11 = v40 & [objc_opt_class() saveBlacklist:v26 forKey:v17 runtimeDirectory:runtimeDirectoryCopy];
        }
      }

      v13 = -1;
      v25 = 1;
      v12 = -1;
    }

    else
    {
      v25 = 0;
      v11 = v40;
    }

    objc_autoreleasePoolPop(context);
    if (!v25)
    {
      goto LABEL_37;
    }

LABEL_33:
    if (++v10 >= [blacklistCopy length])
    {
      goto LABEL_38;
    }
  }

  objc_autoreleasePoolPop(v14);
LABEL_37:
  LOBYTE(v11) = 0;
LABEL_38:
  objc_autoreleasePoolPop(v36);

  return v11 & 1;
}

+ (BOOL)saveBlacklist:(id)blacklist forKey:(id)key runtimeDirectory:(id)directory
{
  v34 = *MEMORY[0x277D85DE8];
  blacklistCopy = blacklist;
  keyCopy = key;
  directoryCopy = directory;
  v10 = [_DPBlacklist filePathWithKey:keyCopy inDirectory:directoryCopy];
  v11 = objc_autoreleasePoolPush();
  v12 = [blacklistCopy stringByReplacingOccurrencesOfString:@" withString:{", @"\n"}];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v12, @"\n"];

  v25 = 0;
  v14 = [v13 writeToFile:v10 atomically:1 encoding:4 error:&v25];
  v15 = v25;
  if ((v14 & 1) == 0)
  {
    v16 = +[_DPLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = v21;
      aSelectora = NSStringFromSelector(a2);
      v19 = [v15 description];
      *buf = 138413058;
      v27 = v21;
      v28 = 2112;
      v29 = aSelectora;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v19;
      v20 = v19;
      _os_log_error_impl(&dword_22622D000, v16, OS_LOG_TYPE_ERROR, "%@ : %@ : Saving runtime blacklists failed! '%@' : %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)removeBlacklistFileWithKey:(id)key fromDirectory:(id)directory
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  directoryCopy = directory;
  v8 = objc_autoreleasePoolPush();
  v9 = [_DPBlacklist filePathWithKey:keyCopy inDirectory:directoryCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v11 = [defaultManager removeItemAtPath:v9 error:&v20];
  v12 = v20;

  if ((v11 & 1) == 0)
  {
    v13 = +[_DPLog daemon];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = [v12 description];
      *buf = 138413058;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = keyCopy;
      v27 = 2112;
      v28 = v19;
      _os_log_error_impl(&dword_22622D000, v13, OS_LOG_TYPE_ERROR, "%@, %@: Failed to delete a runtime blacklist with the key of %@ : %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)createRuntimeBlacklistDirectory:(id)directory
{
  directoryCopy = directory;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___DPBlacklistManager_createRuntimeBlacklistDirectory___block_invoke;
  block[3] = &unk_27858A908;
  v9 = directoryCopy;
  v4 = createRuntimeBlacklistDirectory__onceToken;
  v5 = directoryCopy;
  if (v4 != -1)
  {
    dispatch_once(&createRuntimeBlacklistDirectory__onceToken, block);
  }

  v6 = createRuntimeBlacklistDirectory__created;

  return v6;
}

+ (void)processRuntimeBlacklist
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.778e-34);
  _os_log_debug_impl(&dword_22622D000, v6, OS_LOG_TYPE_DEBUG, "%@, %@: Blacklist string is empty", v5, 0x16u);
}

- (void)scheduleMaintenanceWithName:(id)name database:(id)database
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___DPBlacklistManager_scheduleMaintenanceWithName_database___block_invoke;
  v7[3] = &unk_27858A930;
  v7[4] = self;
  nameCopy = name;
  v5 = MEMORY[0x22AA7A8C0](v7);
  v6 = [_DPPeriodicTask taskWithName:nameCopy period:kSecondsIn24Hours handler:v5];

  [_DPPeriodicTaskManager registerTask:v6];
}

+ (void)processRuntimeBlacklist:(uint64_t)a1 systemDirectory:(const char *)a2 runtimeDirectory:blacklistLengthLimit:.cold.1(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3(&dword_22622D000, v6, v7, "%@, %@: blacklist string is too long, unable to process.", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)processRuntimeBlacklist:(uint64_t)a1 systemDirectory:(const char *)a2 runtimeDirectory:blacklistLengthLimit:.cold.2(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3(&dword_22622D000, v6, v7, "%@, %@: Failed cleaning runtime blacklist directory", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end