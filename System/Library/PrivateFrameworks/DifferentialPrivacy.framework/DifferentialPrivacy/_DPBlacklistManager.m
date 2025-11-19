@interface _DPBlacklistManager
+ (BOOL)createRuntimeBlacklistDirectory:(id)a3;
+ (BOOL)removeAllFilesFromDirectory:(id)a3;
+ (BOOL)removeBlacklistFileWithKey:(id)a3 fromDirectory:(id)a4;
+ (BOOL)saveBlacklist:(id)a3 forKey:(id)a4 runtimeDirectory:(id)a5;
+ (BOOL)saveBlacklist:(id)a3 knownVersionByKey:(id)a4 systemDirectory:(id)a5 runtimeDirectory:(id)a6;
+ (BOOL)saveBlacklist:(id)a3 systemDirectory:(id)a4 runtimeDirectory:(id)a5 memoryLimit:(unint64_t)a6;
+ (BOOL)validateBlacklist:(id)a3;
+ (id)keepLatestRuntimeBlacklistInDirectory:(id)a3 compareToSystemBlacklistInDirectory:(id)a4;
+ (unint64_t)memoryRequiredBySystemBlacklistInDirectory:(id)a3 runtimeBlacklistInDirectory:(id)a4 blacklist:(id)a5;
+ (unint64_t)memorySizeWithDirectory:(id)a3;
+ (void)processRuntimeBlacklist;
+ (void)processRuntimeBlacklist:(id)a3 systemDirectory:(id)a4 runtimeDirectory:(id)a5 blacklistLengthLimit:(unint64_t)a6;
- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4;
@end

@implementation _DPBlacklistManager

+ (void)processRuntimeBlacklist:(id)a3 systemDirectory:(id)a4 runtimeDirectory:(id)a5 blacklistLengthLimit:(unint64_t)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (![objc_opt_class() createRuntimeBlacklistDirectory:v13] || !-[NSObject length](v11, "length"))
  {
    goto LABEL_23;
  }

  if (![v11 isEqualToString:@"DifferentialPrivacyDARemoveAllBlacklistCommand"])
  {
    if ([v11 lengthOfBytesUsingEncoding:4]> a6)
    {
      v15 = +[_DPLog daemon];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_DPBlacklistManager processRuntimeBlacklist:a1 systemDirectory:a2 runtimeDirectory:? blacklistLengthLimit:?];
      }

      goto LABEL_22;
    }

    v16 = v11;
    v15 = v16;
    if ([v16 length]>= 0x65)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [v16 substringToIndex:100];
      v15 = [v17 stringWithFormat:@"%@ ...", v18];
    }

    if ([_DPBlacklistManager validateBlacklist:v16])
    {
      v19 = [objc_opt_class() saveBlacklist:v16 systemDirectory:v12 runtimeDirectory:v13 memoryLimit:512000];
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
    v37 = v11;
    _os_log_debug_impl(&dword_22622D000, v14, OS_LOG_TYPE_DEBUG, "%@, %@: Received removing all runtime blacklist files command: %@", buf, 0x20u);
  }

  if (![_DPBlacklistManager removeAllFilesFromDirectory:v13])
  {
    v15 = +[_DPLog daemon];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_DPBlacklistManager processRuntimeBlacklist:a1 systemDirectory:a2 runtimeDirectory:? blacklistLengthLimit:?];
    }

    goto LABEL_22;
  }

LABEL_23:

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)keepLatestRuntimeBlacklistInDirectory:(id)a3 compareToSystemBlacklistInDirectory:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v26 = [MEMORY[0x277CBEC10] mutableCopy];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = 0;
  v28 = v5;
  v8 = [v7 contentsOfDirectoryAtPath:v5 error:&v33];
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
          if ([_DPBlacklist blacklistExistsWithKey:v13 inDirectory:v6])
          {
            goto LABEL_10;
          }

          v16 = [_DPKeyNames keyPropertiesForKey:v13];
          if (v16)
          {

LABEL_10:
            v17 = [_DPBlacklist blacklistForKey:v13 fromConfigurationsFile:v6];
            v18 = [v15 version];
            v19 = [v17 version];
            v20 = v15;
            if (v18 <= v19)
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

+ (BOOL)removeAllFilesFromDirectory:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v28];
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
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v3, v12];
        v27 = v11;
        v14 = [v4 removeItemAtPath:v13 error:&v27];
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

+ (BOOL)validateBlacklist:(id)a3
{
  v3 = a3;
  if ([v3 length])
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
    if ([v3 length])
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
          if (v8 >= [v3 length])
          {
            goto LABEL_19;
          }

          v10 = [v3 characterAtIndex:v8];
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
              if (v8 < [v3 length])
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

+ (BOOL)saveBlacklist:(id)a3 systemDirectory:(id)a4 runtimeDirectory:(id)a5 memoryLimit:(unint64_t)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  +[_DPBlacklist resetAllBlacklists];
  v13 = [objc_opt_class() keepLatestRuntimeBlacklistInDirectory:v12 compareToSystemBlacklistInDirectory:v11];
  v14 = [objc_opt_class() memoryRequiredBySystemBlacklistInDirectory:v11 runtimeBlacklistInDirectory:v12 blacklist:v10];
  if (v14 <= a6)
  {
    v17 = [objc_opt_class() saveBlacklist:v10 knownVersionByKey:v13 systemDirectory:v11 runtimeDirectory:v12];
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
      v30 = a6;
      _os_log_error_impl(&dword_22622D000, v16, OS_LOG_TYPE_ERROR, "%@, %@: total required memory(%llu) exceeds limit : %llu", &v23, 0x2Au);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (unint64_t)memoryRequiredBySystemBlacklistInDirectory:(id)a3 runtimeBlacklistInDirectory:(id)a4 blacklist:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() memorySizeWithDirectory:v9];

  v11 = [objc_opt_class() memorySizeWithDirectory:v8];
  v12 = [v7 lengthOfBytesUsingEncoding:4];

  return v11 + v10 + v12;
}

+ (unint64_t)memorySizeWithDirectory:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:0];

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
          v12 = [_DPBlacklist filePathWithKey:v11 inDirectory:v3];
          v13 = [MEMORY[0x277CCAA00] defaultManager];
          v14 = [v13 attributesOfItemAtPath:v12 error:0];
          v15 = [v14 fileSize];

          v8 += v15;
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

+ (BOOL)saveBlacklist:(id)a3 knownVersionByKey:(id)a4 systemDirectory:(id)a5 runtimeDirectory:(id)a6
{
  v9 = a3;
  v39 = a4;
  v37 = a5;
  v38 = a6;
  v36 = objc_autoreleasePoolPush();
  if (![v9 length])
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

    if ([v9 characterAtIndex:v10] != 59)
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
      if ([v9 characterAtIndex:v12] != 58)
      {
        v16 = v12;
        do
        {
          v15 = v16++;
        }

        while (v16 <= v13 && [v9 characterAtIndex:v16] != 58);
      }
    }

    v17 = [v9 substringWithRange:{v12, v15 - v12 + 1}];
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
      if ([v9 characterAtIndex:v15 + 2] != 44)
      {
        v21 = v15 + 2;
        do
        {
          v20 = v21++;
        }

        while (v21 <= v13 && [v9 characterAtIndex:v21] != 44);
      }
    }

    v22 = ~v15;
    v23 = [v9 substringWithRange:{v15 + 2, v20 + ~v15}];
    v43 = -1;
    v24 = [MEMORY[0x277CCAC80] scannerWithString:v23];
    if (([v24 scanInteger:&v43] & 1) != 0 || (objc_msgSend(v24, "isAtEnd") & 1) == 0)
    {
      v26 = [v9 substringWithRange:{v19, v13 + v22}];
      v27 = [v39 objectForKeyedSubscript:v17];

      if (v27)
      {
        v28 = [v39 objectForKeyedSubscript:v17];
        v29 = [v28 intValue];
        v30 = v43;

        if (v30 <= v29)
        {
          v11 = 0;
        }

        else
        {
          v11 = v40 & [objc_opt_class() saveBlacklist:v26 forKey:v17 runtimeDirectory:v38];
        }
      }

      else
      {
        v31 = [_DPBlacklist blacklistExistsWithKey:v17 inDirectory:v37];
        v32 = [_DPBlacklist blacklistForKey:v17 fromConfigurationsFile:v37];
        v33 = v32;
        if (v31 && (v34 = [v32 version], v34 >= v43))
        {
          v11 = 0;
        }

        else
        {
          v11 = v40 & [objc_opt_class() saveBlacklist:v26 forKey:v17 runtimeDirectory:v38];
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
    if (++v10 >= [v9 length])
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

+ (BOOL)saveBlacklist:(id)a3 forKey:(id)a4 runtimeDirectory:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [_DPBlacklist filePathWithKey:v8 inDirectory:v9];
  v11 = objc_autoreleasePoolPush();
  v12 = [v7 stringByReplacingOccurrencesOfString:@" withString:{", @"\n"}];
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

+ (BOOL)removeBlacklistFileWithKey:(id)a3 fromDirectory:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [_DPBlacklist filePathWithKey:v6 inDirectory:v7];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v11 = [v10 removeItemAtPath:v9 error:&v20];
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
      v26 = v6;
      v27 = 2112;
      v28 = v19;
      _os_log_error_impl(&dword_22622D000, v13, OS_LOG_TYPE_ERROR, "%@, %@: Failed to delete a runtime blacklist with the key of %@ : %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)createRuntimeBlacklistDirectory:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55___DPBlacklistManager_createRuntimeBlacklistDirectory___block_invoke;
  block[3] = &unk_27858A908;
  v9 = v3;
  v4 = createRuntimeBlacklistDirectory__onceToken;
  v5 = v3;
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

- (void)scheduleMaintenanceWithName:(id)a3 database:(id)a4
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___DPBlacklistManager_scheduleMaintenanceWithName_database___block_invoke;
  v7[3] = &unk_27858A930;
  v7[4] = self;
  v4 = a3;
  v5 = MEMORY[0x22AA7A8C0](v7);
  v6 = [_DPPeriodicTask taskWithName:v4 period:kSecondsIn24Hours handler:v5];

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