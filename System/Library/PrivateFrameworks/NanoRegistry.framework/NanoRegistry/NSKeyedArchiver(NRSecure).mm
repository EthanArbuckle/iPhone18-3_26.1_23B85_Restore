@interface NSKeyedArchiver(NRSecure)
+ (id)nr_secureArchivedDataWithRootObject:()NRSecure;
+ (uint64_t)nr_secureArchiveRootObject:()NRSecure toFile:withOptions:;
@end

@implementation NSKeyedArchiver(NRSecure)

+ (id)nr_secureArchivedDataWithRootObject:()NRSecure
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v15 = 0;
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v15];
    v5 = v15;
    if (v5)
    {
      v6 = nr_framework_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (v7)
      {
        v8 = nr_framework_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          nr_safeDescription = [v5 nr_safeDescription];
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          *buf = 138543618;
          v17 = nr_safeDescription;
          v18 = 2112;
          v19 = v12;
          _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "Got error (%{public}@) archiving (%@)", buf, 0x16u);
        }
      }
    }

    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (uint64_t)nr_secureArchiveRootObject:()NRSecure toFile:withOptions:
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [self nr_secureArchivedDataWithRootObject:v8];
  if (v10)
  {
    stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v39 = 0;
      [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v39];
      v14 = v39;

      if (v14)
      {
        v22 = nr_framework_log();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

        if (v23)
        {
          v24 = nr_framework_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            nr_safeDescription = [v14 nr_safeDescription];
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138543874;
            v41 = nr_safeDescription;
            v42 = 2114;
            v43 = stringByDeletingLastPathComponent;
            v44 = 2112;
            v45 = v35;
            _os_log_error_impl(&dword_1E0ADF000, v24, OS_LOG_TYPE_ERROR, "Error (%{public}@) creating directory (%{public}@) for (%@)", buf, 0x20u);
          }
        }
      }
    }

    v38 = 0;
    v19 = [v10 writeToFile:v9 options:a5 error:&v38];
    v20 = v38;
    if (v20)
    {
      v25 = nr_framework_log();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (v26)
      {
        v27 = nr_framework_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          nr_safeDescription2 = [v20 nr_safeDescription];
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138543618;
          v41 = nr_safeDescription2;
          v42 = 2112;
          v43 = v32;
          _os_log_error_impl(&dword_1E0ADF000, v27, OS_LOG_TYPE_ERROR, "Error (%{public}@) writing encoded data for (%@)", buf, 0x16u);
        }
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = [defaultManager3 fileExistsAtPath:v9];

  if (!v16)
  {
    v19 = 1;
    goto LABEL_22;
  }

  defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
  v37 = 0;
  [defaultManager4 removeItemAtPath:v9 error:&v37];
  stringByDeletingLastPathComponent = v37;

  if (!stringByDeletingLastPathComponent)
  {
    v19 = 1;
    goto LABEL_21;
  }

  v18 = nr_framework_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

  if (v19)
  {
    v20 = nr_framework_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      nr_safeDescription3 = [stringByDeletingLastPathComponent nr_safeDescription];
      *buf = 138543618;
      v41 = nr_safeDescription3;
      v42 = 2114;
      v43 = v9;
      _os_log_error_impl(&dword_1E0ADF000, v20, OS_LOG_TYPE_ERROR, "Error (%{public}@) deleting file (%{public}@)", buf, 0x16u);
    }

    v19 = 0;
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  v28 = *MEMORY[0x1E69E9840];
  return v19;
}

@end