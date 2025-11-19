@interface MOPersistenceUtilities
+ (BOOL)isAllowedKeyPathForEventBundle:(id)a3;
+ (BOOL)isValidPredicate:(id)a3;
+ (BOOL)validateComparisonPredicate:(id)a3;
+ (BOOL)validateCompoundPredicate:(id)a3;
+ (id)getBundlingJSONURLWithDirectorySuffix:(id)a3;
+ (id)userCacheDirectoryPath;
+ (id)userDataDumpDirectoryPathWithSuffix:(id)a3;
+ (void)userCacheDirectoryPath;
@end

@implementation MOPersistenceUtilities

+ (id)userCacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = [v3 stringByAppendingPathComponent:@"com.apple.momentsd"];

    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if ((v6 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v14 = 0, v8 = objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v4, 1, 0, &v14), v9 = v14, v7, v8) && !v9)
    {
      v10 = _mo_log_facility_get_os_log(MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        +[(MOPersistenceUtilities *)v4];
      }

      v11 = v4;
    }

    else
    {
      v12 = _mo_log_facility_get_os_log(MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        +[MOPersistenceUtilities userCacheDirectoryPath];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)userDataDumpDirectoryPathWithSuffix:(id)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.momentsd"];
    v7 = [v6 stringByAppendingPathComponent:@"Temp"];
    v8 = [v7 stringByAppendingPathComponent:v3];

    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

    if (v10)
    {
      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    v12 = [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v17];
    v13 = v17;

    if (!v12 || v13)
    {
      v16 = _mo_log_facility_get_os_log(MOLogFacilityPersistenceManager);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[MOPersistenceUtilities userDataDumpDirectoryPathWithSuffix:];
      }

      v14 = 0;
    }

    else
    {
LABEL_6:
      v14 = v8;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)getBundlingJSONURLWithDirectorySuffix:(id)a3
{
  v3 = [MOPersistenceUtilities userDataDumpDirectoryPathWithSuffix:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:1];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MOPersistenceUtilities *)v5 getBundlingJSONURLWithDirectorySuffix:v6, v7, v8, v9, v10, v11, v12];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)isValidPredicate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MOPersistenceUtilities *)v6 isValidPredicate:v7, v8, v9, v10, v11, v12, v13];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 validateCompoundPredicate:v4];
      goto LABEL_8;
    }

    v6 = _mo_log_facility_get_os_log(MOLogFacilityPersistenceManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(MOPersistenceUtilities *)v6 isValidPredicate:v15, v16, v17, v18, v19, v20, v21];
    }

LABEL_11:

    v14 = 0;
    goto LABEL_12;
  }

  v5 = [a1 validateComparisonPredicate:v4];
LABEL_8:
  v14 = v5;
LABEL_12:

  return v14;
}

+ (BOOL)validateComparisonPredicate:(id)a3
{
  v4 = a3;
  v5 = [v4 leftExpression];
  v6 = [v5 keyPath];

  if ([a1 isAllowedKeyPathForEventBundle:v6])
  {
    v7 = [v4 rightExpression];
    v8 = [v7 constantValue];

    v9 = [v4 rightExpression];
    v10 = [v9 expressionType];

    v11 = 0;
    if (v10 > 2)
    {
      if (v10 == 3)
      {
LABEL_10:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v10 != 4)
      {
        goto LABEL_12;
      }
    }

    else if ((v10 - 1) >= 2)
    {
      if (v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_11:
    v11 = 1;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

+ (BOOL)validateCompoundPredicate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 subpredicates];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![a1 isValidPredicate:*(*(&v12 + 1) + 8 * i)])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)isAllowedKeyPathForEventBundle:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithArray:&unk_2841005D0];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (void)userCacheDirectoryPath
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_DEBUG, "cache directory path, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)userDataDumpDirectoryPathWithSuffix:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_ERROR, "failed to create %@, error, %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end