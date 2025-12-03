@interface NSKeyedArchiver(Secure)
+ (id)secureArchivedDataWithRootObject:()Secure;
+ (uint64_t)secureArchiveRootObject:()Secure toFile:withOptions:;
@end

@implementation NSKeyedArchiver(Secure)

+ (id)secureArchivedDataWithRootObject:()Secure
{
  v3 = a3;
  if (v3)
  {
    v7 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v7];
    v5 = v7;
    if (v5)
    {
      objc_exception_throw(v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (uint64_t)secureArchiveRootObject:()Secure toFile:withOptions:
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [self secureArchivedDataWithRootObject:v8];
  if (v10)
  {
    stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = 0;
      [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v36];
      v14 = v36;

      if (v14)
      {
        v23 = psd_log();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

        if (v24)
        {
          v25 = psd_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            psy_safeDescription = [v14 psy_safeDescription];
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            *buf = 138543874;
            v38 = psy_safeDescription;
            v39 = 2114;
            v40 = stringByDeletingLastPathComponent;
            v41 = 2112;
            v42 = v33;
            _os_log_error_impl(&dword_25DF25000, v25, OS_LOG_TYPE_ERROR, "Error (%{public}@) creating directory (%{public}@) for (%@)", buf, 0x20u);
          }
        }
      }
    }

    v35 = 0;
    v18 = [v10 writeToFile:v9 options:a5 error:&v35];
    v21 = v35;
    if (v21)
    {
      v26 = psd_log();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        v28 = psd_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [NSKeyedArchiver(Secure) secureArchiveRootObject:v21 toFile:? withOptions:?];
        }
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [defaultManager3 fileExistsAtPath:v9];

  if (!v16)
  {
    v18 = 1;
    goto LABEL_22;
  }

  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = 0;
  [defaultManager4 removeItemAtPath:v9 error:&v34];
  stringByDeletingLastPathComponent = v34;

  v18 = stringByDeletingLastPathComponent == 0;
  if (stringByDeletingLastPathComponent)
  {
    v19 = psd_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (!v20)
    {
      v18 = 0;
      goto LABEL_21;
    }

    v21 = psd_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [NSKeyedArchiver(Secure) secureArchiveRootObject:stringByDeletingLastPathComponent toFile:? withOptions:?];
    }

    v18 = 0;
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)secureArchiveRootObject:()Secure toFile:withOptions:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 psy_safeDescription];
  v2 = objc_opt_class();
  v10 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0(&dword_25DF25000, v3, v4, "Error (%{public}@) writing encoded data for (%@)", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)secureArchiveRootObject:()Secure toFile:withOptions:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 psy_safeDescription];
  OUTLINED_FUNCTION_0(&dword_25DF25000, v2, v3, "Error (%{public}@) deleting file (%{public}@)", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end