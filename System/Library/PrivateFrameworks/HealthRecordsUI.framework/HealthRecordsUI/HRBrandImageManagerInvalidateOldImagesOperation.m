@interface HRBrandImageManagerInvalidateOldImagesOperation
- (void)main;
@end

@implementation HRBrandImageManagerInvalidateOldImagesOperation

- (void)main
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [v3 stringByAppendingPathComponent:@"BrandLogos"];

  v5 = v4;
  v47 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-259200.0];
  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = HKSensitiveLogItem();
    *buf = 138543874;
    v51 = v9;
    v52 = 2112;
    v53 = v10;
    v54 = 2114;
    v55 = v47;
    _os_log_impl(&dword_1D101F000, v7, OS_LOG_TYPE_INFO, "%{public}@: removing old brand logos: %@ with cutoff date %{public}@", buf, 0x20u);
  }

  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v11 enumeratorAtPath:v4];

  v13 = [v12 nextObject];
  v46 = v4;
  if (v13)
  {
    v14 = v13;
    v15 = *MEMORY[0x1E696A308];
    do
    {
      v16 = [v5 stringByAppendingPathComponent:v14];
      v17 = [MEMORY[0x1E696AC08] defaultManager];
      v49 = 0;
      v18 = [v17 attributesOfItemAtPath:v16 error:&v49];
      v19 = v49;

      v20 = [v18 objectForKeyedSubscript:v15];
      v21 = v20;
      if (v20)
      {
        if ([v20 compare:v47] != 1)
        {
          _HKInitializeLogging();
          v22 = *MEMORY[0x1E696B948];
          if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
          {
            v33 = v22;
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            v36 = HKSensitiveLogItem();
            *buf = 138543618;
            v51 = v35;
            v52 = 2114;
            v53 = v36;
            _os_log_debug_impl(&dword_1D101F000, v33, OS_LOG_TYPE_DEBUG, "%{public}@: deleting file: %{public}@", buf, 0x16u);
          }

          v23 = [MEMORY[0x1E696AC08] defaultManager];
          v48 = v19;
          v24 = [v23 removeItemAtPath:v16 error:&v48];
          v25 = v48;

          if (v24)
          {
            v19 = v25;
            v5 = v46;
          }

          else
          {
            v5 = v46;
            if (v25)
            {
              _HKInitializeLogging();
              v26 = *MEMORY[0x1E696B948];
              if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
              {
                v37 = v26;
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                v40 = HKSensitiveLogItem();
                *buf = 138543874;
                v51 = v39;
                v52 = 2114;
                v53 = v40;
                v54 = 2114;
                v55 = v25;
                _os_log_error_impl(&dword_1D101F000, v37, OS_LOG_TYPE_ERROR, "%{public}@: failed to delete file: %{public}@ error: %{public}@", buf, 0x20u);

                v5 = v46;
              }
            }

            v19 = v25;
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v27 = *MEMORY[0x1E696B948];
        if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
        {
          v29 = v27;
          v30 = objc_opt_class();
          v45 = NSStringFromClass(v30);
          v31 = HKSensitiveLogItem();
          *buf = 138543874;
          v51 = v45;
          v52 = 2112;
          v53 = v31;
          v32 = v31;
          v54 = 2114;
          v55 = v19;
          _os_log_error_impl(&dword_1D101F000, v29, OS_LOG_TYPE_ERROR, "%{public}@: could not find creation date for: %@ error: %{public}@", buf, 0x20u);
        }
      }

      v28 = [v12 nextObject];

      v14 = v28;
    }

    while (v28);
  }

  _HKInitializeLogging();
  v41 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_INFO))
  {
    v42 = v41;
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    *buf = 138543362;
    v51 = v44;
    _os_log_impl(&dword_1D101F000, v42, OS_LOG_TYPE_INFO, "%{public}@: done removing old brand logos", buf, 0xCu);

    v5 = v46;
  }
}

@end