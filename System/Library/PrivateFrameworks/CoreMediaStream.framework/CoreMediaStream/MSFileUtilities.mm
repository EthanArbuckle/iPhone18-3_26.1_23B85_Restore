@interface MSFileUtilities
+ (BOOL)hardlinkOrCopyFileFromPath:(id)a3 toPath:(id)a4 outError:(id *)a5;
@end

@implementation MSFileUtilities

+ (BOOL)hardlinkOrCopyFileFromPath:(id)a3 toPath:(id)a4 outError:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = link([v8 fileSystemRepresentation], objc_msgSend(v9, "fileSystemRepresentation"));
  if (v10 != 18)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v23 = 138543874;
        v24 = a1;
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28 = v9;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Hardlinked path %@ to %@.", &v23, 0x20u);
      }

      v11 = 1;
      goto LABEL_13;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA5B8];
    v15 = v10;
    v16 = MEMORY[0x277CCACA8];
    v17 = __error();
    v18 = [v16 stringWithUTF8String:strerror(*v17)];
    v19 = [v13 MSErrorWithDomain:v14 code:v15 description:v18];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = 138544130;
      v24 = a1;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2114;
      v30 = v19;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not hardlink path %@ to %@. Error: %{public}@", &v23, 0x2Au);
      if (!a5)
      {
        goto LABEL_12;
      }
    }

    else if (!a5)
    {
LABEL_12:

      v11 = 0;
      goto LABEL_13;
    }

    v20 = v19;
    *a5 = v19;
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = 138543874;
    v24 = a1;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Copying path %@ to %@.", &v23, 0x20u);
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v12 copyItemAtPath:v8 toPath:v9 error:a5];

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

@end