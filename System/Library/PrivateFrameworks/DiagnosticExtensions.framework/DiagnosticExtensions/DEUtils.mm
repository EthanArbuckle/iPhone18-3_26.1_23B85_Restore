@interface DEUtils
+ (BOOL)copyAllFilesFromDir:(id)a3 toDir:(id)a4 keepSourceDir:(BOOL)a5;
+ (BOOL)copyFile:(id)a3 toDir:(id)a4;
+ (BOOL)isValidDirectory:(id)a3;
+ (id)applicationSupportDirectoryForApp:(id)a3;
+ (id)componentsByRemovingComponentsBeforeComponent:(id)a3 sourceURL:(id)a4 keepingComponent:(BOOL)a5;
+ (id)copyAndReturn:(id)a3 toDir:(id)a4;
+ (id)copyAndReturn:(id)a3 toDir:(id)a4 withNewFileName:(id)a5;
+ (id)copyItem:(id)a3 toDestinationDir:(id)a4 zipped:(BOOL)a5;
+ (id)copyPath:(id)a3 toDestinationDir:(id)a4 zipped:(BOOL)a5;
+ (id)copyPaths:(id)a3 toDestinationDir:(id)a4 withZipName:(id)a5;
+ (id)createDirectoryWithClassCDataProtection:(id)a3;
+ (id)createUserOwnedDirectoryAtUrl:(id)a3;
+ (id)dirForTarGz:(id)a3;
+ (id)enumeratorForAllItems:(id)a3;
+ (id)findAllItems:(id)a3 includeDirs:(BOOL)a4;
+ (id)findEntriesInDirectory:(id)a3 createdAfter:(id)a4 matchingPattern:(id)a5;
+ (id)lsDir:(id)a3 sorted:(BOOL)a4;
+ (id)moveItem:(id)a3 toDestinationDir:(id)a4;
+ (id)pathComponentsInURL:(id)a3 removingBaseURLComponents:(id)a4 keepingFirstComponent:(BOOL)a5;
+ (id)processErrorResponse:(id)a3;
+ (id)tarGzForDirectoryUrl:(id)a3 validatesUrl:(BOOL)a4;
+ (id)uniqueDateString;
+ (id)uniqueTemporaryDirectory;
+ (id)userLibraryDirectoryForApp:(id)a3;
+ (unint64_t)getDirectorySize:(id)a3;
+ (unint64_t)getFileSystemItemSize:(id)a3;
+ (void)excludeFromBackup:(id)a3;
+ (void)removeFile:(id)a3;
+ (void)uniqueTemporaryDirectory;
@end

@implementation DEUtils

+ (unint64_t)getFileSystemItemSize:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v17];

  if (v7)
  {
    if (v17 == 1)
    {
      v8 = [a1 getDirectorySize:v4];
    }

    else
    {
      v16 = 0;
      v10 = *MEMORY[0x277CBE838];
      v15 = 0;
      [v4 getResourceValue:&v16 forKey:v10 error:&v15];
      v11 = v16;
      v12 = v15;
      if (v12 || !v11)
      {
        v13 = Log_3();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[DEUtils getFileSystemItemSize:];
        }

        v8 = 0;
      }

      else
      {
        v8 = [v11 unsignedIntegerValue];
      }
    }
  }

  else
  {
    v9 = Log_3();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEUtils getFileSystemItemSize:v4];
    }

    v8 = 0;
  }

  return v8;
}

+ (unint64_t)getDirectorySize:(id)a3
{
  v52[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v46 = 0;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v46];
  v7 = v46;

  if (v6 && (v7 & 1) != 0)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = *MEMORY[0x277CBE868];
    v10 = *MEMORY[0x277CBE838];
    v52[0] = *MEMORY[0x277CBE868];
    v52[1] = v10;
    v36 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v35 = v3;
    v12 = [v8 enumeratorAtURL:v3 includingPropertiesForKeys:v11 options:0 errorHandler:&__block_literal_global_68];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v37 = 0;
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          v40 = 0;
          v41 = 0;
          [v18 getResourceValue:&v41 forKey:v9 error:&v40];
          v19 = v41;
          v20 = v40;
          if (v20)
          {
            v21 = 1;
          }

          else
          {
            v21 = v19 == 0;
          }

          if (v21)
          {
            v22 = v20;
            v23 = Log_3();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v27 = [v18 path];
              *buf = 138543618;
              v48 = v27;
              v49 = 2114;
              v50 = v22;
              _os_log_error_impl(&dword_248AB3000, v23, OS_LOG_TYPE_ERROR, "Could not get isDir for file [%{public}@] with error [%{public}@]", buf, 0x16u);
            }

            v24 = 0;
          }

          else
          {
            v25 = [v19 BOOLValue];
            if (v25)
            {
              v24 = 0;
              v22 = 0;
            }

            else
            {
              v38 = 0;
              v39 = 0;
              [v18 getResourceValue:&v39 forKey:v36 error:&v38];
              v24 = v39;
              v22 = v38;
              if (v22 || !v24)
              {
                v26 = Log_3();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v28 = [v18 path];
                  *buf = 138543618;
                  v48 = v28;
                  v49 = 2114;
                  v50 = v22;
                  _os_log_error_impl(&dword_248AB3000, v26, OS_LOG_TYPE_ERROR, "Could not get file size for file [%{public}@] with error [%{public}@]", buf, 0x16u);
                }
              }

              else
              {
                v22 = 0;
                v37 += [v24 unsignedIntegerValue];
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v15);
    }

    else
    {
      v37 = 0;
    }

    v30 = Log_3();
    v3 = v35;
    v29 = v37;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v35 path];
      v32 = [MEMORY[0x277CCA8E8] stringFromByteCount:v37 countStyle:0];
      *buf = 138543618;
      v48 = v31;
      v49 = 2114;
      v50 = v32;
      _os_log_impl(&dword_248AB3000, v30, OS_LOG_TYPE_INFO, "[%{public}@] size: [%{public}@]", buf, 0x16u);
    }
  }

  else
  {
    v13 = Log_3();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DEUtils getDirectorySize:v3];
    }

    v29 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t __28__DEUtils_getDirectorySize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = Log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __28__DEUtils_getDirectorySize___block_invoke_cold_1();
  }

  return 1;
}

+ (void)excludeFromBackup:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = *MEMORY[0x277CBE878];
  v9 = 0;
  v6 = [v3 setResourceValue:v4 forKey:v5 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = Log_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEUtils excludeFromBackup:v3];
    }
  }
}

+ (id)tarGzForDirectoryUrl:(id)a3 validatesUrl:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = Log_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[DEUtils tarGzForDirectoryUrl:validatesUrl:];
  }

  if (v4)
  {
    v8 = [a1 isValidDirectory:v6];
  }

  else
  {
    v8 = 1;
  }

  v9 = 0;
  if (v6 && v8)
  {
    v10 = [v6 lastPathComponent];
    v11 = [v10 stringByAppendingPathExtension:@"tar.gz"];

    v12 = [v6 URLByDeletingLastPathComponent];
    v9 = [v12 URLByAppendingPathComponent:v11];
  }

  return v9;
}

+ (id)dirForTarGz:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 path], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 stringByReplacingOccurrencesOfString:@".tar.gz" withString:@"/"];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isValidDirectory:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = Log_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }

    goto LABEL_12;
  }

  if (([v3 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v6 = Log_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  v5 = [v4 getResourceValue:&v10 forKey:*MEMORY[0x277CBE868] error:0];
  v6 = v10;
  if ((v5 & 1) == 0)
  {
    v7 = Log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }
  }

  v8 = [v6 BOOLValue];
LABEL_13:

  return v8;
}

+ (BOOL)copyAllFilesFromDir:(id)a3 toDir:(id)a4 keepSourceDir:(BOOL)a5
{
  v43 = a5;
  v62 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v44 = a4;
  v34 = [MEMORY[0x277CCAA00] defaultManager];
  v45 = v7;
  v8 = [DEUtils enumeratorForAllItems:v7];
  v9 = Log_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v31 = @"NO";
    *buf = 138412802;
    v57 = v45;
    v58 = 2112;
    if (v43)
    {
      v31 = @"YES";
    }

    v59 = v44;
    v60 = 2112;
    v61 = v31;
    _os_log_debug_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEBUG, "copying files from [%@] to [%@], keeping source dir? [%@]", buf, 0x20u);
  }

  if (v8)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v8;
    v46 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (!v46)
    {
      v28 = 0;
      v27 = 1;
      goto LABEL_29;
    }

    v32 = v8;
    v37 = 0;
    v10 = 0;
    v42 = 0;
    v40 = *MEMORY[0x277CBE868];
    v41 = *v50;
    v39 = a1;
    while (1)
    {
      v11 = 0;
      v12 = v10;
      do
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * v11);
        v14 = objc_autoreleasePoolPush();
        v15 = [a1 pathComponentsInURL:v13 removingBaseURLComponents:v45 keepingFirstComponent:v43];
        v16 = [v44 pathComponents];
        v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v16];
        [v17 addObjectsFromArray:v15];
        v10 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v17];

        v18 = [v10 URLByDeletingLastPathComponent];
        if (([v18 checkResourceIsReachableAndReturnError:0] & 1) == 0)
        {
          v19 = [a1 createDirectoryWithClassCDataProtection:v18];
        }

        v48 = 0;
        [v13 getResourceValue:&v48 forKey:v40 error:0];
        v20 = v48;
        if (![v20 BOOLValue])
        {
          v47 = 0;
          [v34 copyItemAtURL:v13 toURL:v10 error:&v47];
          v23 = v47;
          if (v23)
          {
            v36 = v14;
            v24 = Log_3();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v38 = [v13 path];
              v25 = [v10 path];
              v33 = [v23 localizedDescription];
              *buf = 138543874;
              v57 = v38;
              v58 = 2114;
              v59 = v25;
              v60 = 2114;
              v61 = v33;
              _os_log_error_impl(&dword_248AB3000, v24, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
            }

            v37 = 1;
            v14 = v36;
          }

          goto LABEL_19;
        }

        v21 = v14;
        v22 = [a1 createDirectoryWithClassCDataProtection:v10];

        if (v22)
        {
          v23 = Log_3();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [(DEUtils *)v53 copyAllFilesFromDir:v10 toDir:&v54 keepSourceDir:v23];
          }

          v37 = 1;
          v42 = v22;
          v14 = v21;
LABEL_19:

          a1 = v39;
          goto LABEL_20;
        }

        v42 = 0;
        v14 = v21;
LABEL_20:

        objc_autoreleasePoolPop(v14);
        ++v11;
        v12 = v10;
      }

      while (v46 != v11);
      v26 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
      v46 = v26;
      if (!v26)
      {
        v27 = v37 ^ 1;

        v8 = v32;
        v28 = v42;
        goto LABEL_29;
      }
    }
  }

  obj = Log_3();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    +[DEUtils copyAllFilesFromDir:toDir:keepSourceDir:];
  }

  v28 = 0;
  v27 = 0;
LABEL_29:

  v29 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

+ (id)copyItem:(id)a3 toDestinationDir:(id)a4 zipped:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 lastPathComponent];
  v10 = [v8 URLByAppendingPathComponent:v9];

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v8 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v12 = [v11 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:0];
    v13 = Log_3();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138412290;
        *&v25[4] = v8;
        _os_log_impl(&dword_248AB3000, v14, OS_LOG_TYPE_DEFAULT, "Created folder [%@]", v25, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils copyItem:toDestinationDir:zipped:];
    }
  }

  v25[0] = 0;
  v15 = [v7 path];
  v16 = [v11 fileExistsAtPath:v15 isDirectory:v25];
  v17 = v25[0];

  if (v16 && (v17 & 1) != 0)
  {
    if (![DEUtils copyAllFilesFromDir:v7 toDir:v10 keepSourceDir:0])
    {
      goto LABEL_11;
    }

LABEL_16:
    v21 = Log_3();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      +[DEUtils copyItem:toDestinationDir:zipped:];
    }

    goto LABEL_19;
  }

  v20 = [DEUtils copyAndReturn:v7 toDir:v8];

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_11:
  v18 = Log_3();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [DEUtils copyItem:v7 toDestinationDir:v8 zipped:?];
  }

  if (v25[0] != 1)
  {
    v19 = 0;
    goto LABEL_25;
  }

LABEL_19:
  if (v5)
  {
    if (v25[0] == 1)
    {
      [DEArchiver archiveDirectoryAt:v10];
    }

    else
    {
      [DEArchiver archiveFile:v10];
    }
    v22 = ;

    v10 = v22;
  }

  v10 = v10;
  v19 = v10;
LABEL_25:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)moveItem:(id)a3 toDestinationDir:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = Log_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v18 = "+[DEUtils moveItem:toDestinationDir:]";
    v19 = 2114;
    v20 = v5;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}@] [%{public}@]", buf, 0x20u);
  }

  v8 = [v5 lastPathComponent];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  [v10 moveItemAtURL:v5 toURL:v9 error:&v16];
  v11 = v16;

  if (v11)
  {
    v12 = Log_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v18 = "+[DEUtils moveItem:toDestinationDir:]";
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_248AB3000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s error [%{public}@]", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)copyFile:(id)a3 toDir:(id)a4
{
  v4 = [a1 copyAndReturn:a3 toDir:a4];
  v5 = v4 != 0;

  return v5;
}

+ (id)copyAndReturn:(id)a3 toDir:(id)a4 withNewFileName:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  [v7 getResourceValue:&v23 forKey:*MEMORY[0x277CBE868] error:0];
  v11 = v23;
  if ([v11 BOOLValue])
  {
    v12 = Log_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyAndReturn:v7 toDir:? withNewFileName:?];
    }

    v13 = 0;
  }

  else
  {
    v12 = [v8 URLByAppendingPathComponent:v9];
    v22 = 0;
    [v10 copyItemAtURL:v7 toURL:v12 error:&v22];
    v13 = v22;
    if (!v13)
    {
      v12 = v12;
      v15 = v12;
      goto LABEL_10;
    }

    v14 = Log_3();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = [v7 path];
      v18 = [v12 path];
      v19 = [v13 localizedDescription];
      *buf = 138543874;
      v25 = v21;
      v26 = 2114;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v20 = v19;
      _os_log_error_impl(&dword_248AB3000, v14, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
    }
  }

  v15 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)copyAndReturn:(id)a3 toDir:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  [v5 getResourceValue:&v21 forKey:*MEMORY[0x277CBE868] error:0];
  v8 = v21;
  if ([v8 BOOLValue])
  {
    v9 = Log_3();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyAndReturn:v5 toDir:? withNewFileName:?];
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    v9 = [v5 lastPathComponent];
    v12 = [v6 URLByAppendingPathComponent:v9];
    v20 = 0;
    [v7 copyItemAtURL:v5 toURL:v12 error:&v20];
    v10 = v20;
    if (v10)
    {
      v13 = Log_3();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v19 = [v5 path];
        v16 = [v12 path];
        v17 = [v10 localizedDescription];
        *buf = 138543874;
        v23 = v19;
        v24 = 2114;
        v25 = v16;
        v26 = 2114;
        v27 = v17;
        v18 = v17;
        _os_log_error_impl(&dword_248AB3000, v13, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
      }

      v11 = 0;
    }

    else
    {
      v11 = v12;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)pathComponentsInURL:(id)a3 removingBaseURLComponents:(id)a4 keepingFirstComponent:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [a3 URLByResolvingSymlinksInPath];
  v9 = [v8 URLByStandardizingPath];

  v10 = [v7 URLByResolvingSymlinksInPath];

  v11 = [v10 URLByStandardizingPath];

  v12 = [v11 pathComponents];
  v13 = [v12 count];

  v14 = v13 - v5;
  v15 = MEMORY[0x277CBEB18];
  v16 = [v9 pathComponents];
  v17 = [v15 arrayWithArray:v16];

  [v17 removeObjectsInRange:{0, v14}];

  return v17;
}

+ (id)componentsByRemovingComponentsBeforeComponent:(id)a3 sourceURL:(id)a4 keepingComponent:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = [a4 pathComponents];
  v9 = [v8 indexOfObject:v7];

  v10 = v8;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + !v5;
    v10 = v8;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v8;
      if (v11 < [v8 count])
      {
        v10 = [v8 subarrayWithRange:{v11, objc_msgSend(v8, "count") - v11}];
      }
    }
  }

  return v10;
}

+ (id)enumeratorForAllItems:(id)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = *MEMORY[0x277CBE868];
  v11[0] = *MEMORY[0x277CBE8E8];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:v7 options:4 errorHandler:&__block_literal_global_91];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __33__DEUtils_enumeratorForAllItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = Log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "Error [%{public}@] enumerating url [%{public}@]", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (id)findAllItems:(id)a3 includeDirs:(BOOL)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [a1 enumeratorForAllItems:a3];
  v19 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v23;
    v12 = *MEMORY[0x277CBE868];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v22 + 1) + 8 * i);

        v20 = 0;
        v21 = 0;
        [v14 getResourceValue:&v21 forKey:v12 error:&v20];
        v9 = v21;
        v10 = v20;
        if (v10)
        {
          v15 = Log_3();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v27 = v10;
            v28 = 2112;
            v29 = v14;
            _os_log_impl(&dword_248AB3000, v15, OS_LOG_TYPE_INFO, "Error [%@] getting NSURLIsDirectoryKey for url [%@]", buf, 0x16u);
          }
        }

        else if (a4 || ([v9 BOOLValue] & 1) == 0)
        {
          [v19 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v19 copyItems:1];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)lsDir:(id)a3 sorted:(BOOL)a4
{
  v4 = a4;
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  if (v4)
  {
    v7 = *MEMORY[0x277CBE868];
    v21[0] = *MEMORY[0x277CBE7B0];
    v21[1] = v7;
    v8 = MEMORY[0x277CBEA60];
    v9 = v21;
    v10 = 2;
  }

  else
  {
    v20 = *MEMORY[0x277CBE868];
    v8 = MEMORY[0x277CBEA60];
    v9 = &v20;
    v10 = 1;
  }

  v11 = [v8 arrayWithObjects:v9 count:v10];
  v19 = 0;
  v12 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v11 options:4 error:&v19];
  v13 = v19;
  if (v13 || !v12)
  {
    v15 = Log_3();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils lsDir:sorted:];
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (v4)
    {
      v14 = [v12 sortedArrayUsingComparator:&__block_literal_global_94];
    }

    else
    {
      v14 = v12;
    }

    v16 = v14;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __24__DEUtils_lsDir_sorted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v19 = 0;
  v6 = *MEMORY[0x277CBE7B0];
  v18 = 0;
  [v4 getResourceValue:&v19 forKey:v6 error:&v18];
  v7 = v19;
  v8 = v18;
  if (v8)
  {
    v9 = Log_3();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_INFO, "failed to get [%@] modifcation date", buf, 0xCu);
    }
  }

  v16 = 0;
  v17 = 0;
  [v5 getResourceValue:&v17 forKey:v6 error:&v16];
  v10 = v17;
  v11 = v16;

  if (v11)
  {
    v12 = Log_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_248AB3000, v12, OS_LOG_TYPE_INFO, "failed to get [%@] modifcation date", buf, 0xCu);
    }
  }

  v13 = [v10 compare:v7];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)userLibraryDirectoryForApp:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (!getuid())
    {
      v4 = Log_3();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_INFO, "WARNING: running as root, user directory be under root domain", v12, 2u);
      }
    }

    v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v6 = v5;
    if (v5 && [v5 count])
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = [v6 firstObject];
      v9 = [v7 fileURLWithPath:v8 isDirectory:1];

      v10 = [v9 URLByAppendingPathComponent:v3 isDirectory:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)applicationSupportDirectoryForApp:(id)a3
{
  v3 = a3;
  if (!getuid())
  {
    v4 = Log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_INFO, "WARNING: running as root, user directory be under root domain", v12, 2u);
    }
  }

  v5 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [v6 firstObject];
    v9 = [v7 fileURLWithPath:v8 isDirectory:1];

    v10 = [v9 URLByAppendingPathComponent:v3 isDirectory:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createUserOwnedDirectoryAtUrl:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!getuid())
  {
    v4 = Log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_INFO, "WARNING: running as root, user directory will be owned by root", buf, 2u);
    }
  }

  v15[0] = *MEMORY[0x277CCA160];
  v5 = NSUserName();
  v16[0] = v5;
  v15[1] = *MEMORY[0x277CCA120];
  v6 = NSUserName();
  v16[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  [v8 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:v7 error:&v13];

  v9 = v13;
  v10 = v13;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)createDirectoryWithClassCDataProtection:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!getuid())
  {
    v4 = Log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_INFO, "WARNING: running as root, directory will be owned by root", buf, 2u);
    }
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [v5 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;

  if (!v6)
  {
    v7 = Log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DEUtils createDirectoryWithClassCDataProtection:v3];
    }

    v16 = *MEMORY[0x277CBE7F8];
    v17[0] = *MEMORY[0x277CBE7F0];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = 0;
    [v3 setResourceValues:v8 error:&v13];
    v9 = v13;

    if (v9)
    {
      v10 = Log_3();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [DEUtils createDirectoryWithClassCDataProtection:v9];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)copyPath:(id)a3 toDestinationDir:(id)a4 zipped:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 lastPathComponent];
  v10 = [v8 URLByAppendingPathComponent:v9];

  v11 = v8;
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  [v7 getResourceValue:&v42 forKey:*MEMORY[0x277CBE868] error:0];
  v13 = v42;
  v14 = v11;
  if ([v13 BOOLValue])
  {
    v14 = v11;
    if (!v5)
    {
      v14 = v10;
    }
  }

  if (([v14 checkResourceIsReachableAndReturnError:0] & 1) == 0 && (objc_msgSend(v12, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v14, 1, 0, 0) & 1) == 0)
  {
    v15 = Log_3();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils copyPath:toDestinationDir:zipped:];
    }
  }

  if (!BOMCopierNew())
  {
    v23 = Log_3();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils copyPath:toDestinationDir:zipped:];
    }

    goto LABEL_27;
  }

  if (!v5)
  {
    v41 = v14;
    if ([v10 checkResourceIsReachableAndReturnError:0])
    {
      v37 = v13;
      v38 = v12;
      v39 = v11;
      v40 = v7;
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v24;
        v27 = MEMORY[0x277CCACA8];
        v28 = [v10 URLByDeletingPathExtension];
        v29 = [v28 path];
        v30 = [MEMORY[0x277CCABB0] numberWithInt:v25];
        v31 = [v27 stringWithFormat:@"%@-%@", v29, v30];
        v32 = [v10 pathExtension];
        v33 = [v31 stringByAppendingPathExtension:v32];

        v24 = [MEMORY[0x277CBEBC0] fileURLWithPath:v33 isDirectory:0];

        v25 = (v25 + 1);
      }

      while (([v24 checkResourceIsReachableAndReturnError:0] & 1) != 0);

      v10 = v24;
      v11 = v39;
      v7 = v40;
      v13 = v37;
      v12 = v38;
    }

    else
    {
      v24 = v10;
    }

    [v7 fileSystemRepresentation];
    [v24 fileSystemRepresentation];
    v34 = BOMCopierCopy();
    if (!v34)
    {
      v18 = v10;
      v14 = v41;
      goto LABEL_30;
    }

    v35 = v34;
    v23 = Log_3();
    v14 = v41;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyPath:v35 toDestinationDir:? zipped:?];
    }

LABEL_27:

    v22 = 0;
    goto LABEL_31;
  }

  v16 = [v7 lastPathComponent];
  v17 = [v16 stringByAppendingPathExtension:@"zip"];

  v18 = [v11 URLByAppendingPathComponent:v17];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = MEMORY[0x277CBEC38];
  [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"createPKZip"];
  [v19 setObject:v20 forKeyedSubscript:@"copyResources"];
  if (v13)
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"keepParent"];
  }

  [v7 fileSystemRepresentation];
  [v18 fileSystemRepresentation];
  if (!BOMCopierCopyWithOptions())
  {

LABEL_30:
    BOMCopierFree();
    v10 = v18;
    v22 = v10;
    goto LABEL_31;
  }

  v21 = Log_3();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[DEUtils copyPath:toDestinationDir:zipped:];
  }

  v22 = 0;
  v10 = v18;
LABEL_31:

  return v22;
}

+ (id)copyPaths:(id)a3 toDestinationDir:(id)a4 withZipName:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 URLByAppendingPathComponent:a5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v15 = [DEUtils copyPath:v9 toDestinationDir:v8 zipped:1];
  [DEUtils removeFile:v9];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)uniqueDateString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy-MM-dd-HHmmssSS"];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

+ (void)removeFile:(id)a3
{
  v3 = a3;
  if ([v3 checkResourceIsReachableAndReturnError:0])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v10];
    v6 = v10;

    if (!v5 || v6 != 0)
    {
      v8 = Log_3();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(DEUtils *)v3 removeFile:v6];
      }

      if (v6)
      {
        v9 = Log_3();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(DEUtils *)v3 removeFile:v6];
        }
      }
    }
  }
}

+ (id)findEntriesInDirectory:(id)a3 createdAfter:(id)a4 matchingPattern:(id)a5
{
  v37[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CBEB18];
  v10 = a3;
  [v9 array];
  v30 = v29 = v7;
  v11 = [v7 dateByAddingTimeInterval:-1.0];
  v12 = [v10 URLByResolvingSymlinksInPath];

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *MEMORY[0x277CBE7C0];
  v37[0] = *MEMORY[0x277CBE8E8];
  v37[1] = v14;
  v37[2] = *MEMORY[0x277CBE868];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  v28 = v12;
  v16 = [v13 enumeratorAtURL:v12 includingPropertiesForKeys:v15 options:1 errorHandler:0];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        v31 = 0;
        [v22 getResourceValue:&v31 forKey:v14 error:0];
        v23 = v31;
        if ([v11 compare:v23] == -1)
        {
          v24 = [v22 lastPathComponent];
          if ([v8 numberOfMatchesInString:v24 options:0 range:{0, objc_msgSend(v24, "length")}] == 1)
          {
            [v30 addObject:v22];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);
  }

  v25 = [v30 sortedArrayUsingComparator:&__block_literal_global_119];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __63__DEUtils_findEntriesInDirectory_createdAfter_matchingPattern___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v2 = *MEMORY[0x277CBE7C0];
  v3 = a2;
  [v3 getResourceValue:&v8 forKey:v2 error:0];
  v7 = 0;
  v4 = v8;
  [v3 getResourceValue:&v7 forKey:v2 error:0];

  v5 = [v4 compare:v7];
  return v5;
}

+ (id)processErrorResponse:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [&unk_285B71028 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v24;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v24 != v8)
        {
          objc_enumerationMutation(&unk_285B71028);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v22 = v7;
        v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v11 options:0 error:&v22];
        v7 = v22;

        v13 = [v12 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
        v14 = v13;
        if (v13)
        {
          if ([v13 count])
          {
            v15 = [v14 objectAtIndexedSubscript:0];
            v16 = [v15 rangeAtIndex:1];

            if (v16 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = [v14 objectAtIndexedSubscript:0];
              v18 = [v17 rangeAtIndex:1];
              v5 = [v3 substringWithRange:{v18, v19}];

              goto LABEL_13;
            }
          }
        }
      }

      v6 = [&unk_285B71028 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v5 = v3;
LABEL_13:
  }

  v20 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)uniqueTemporaryDirectory
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v6 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = Log_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(DEUtils *)v7];
    }

    v9 = v4;
    v6 = v9;
  }

  return v6;
}

+ (void)getFileSystemItemSize:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)getFileSystemItemSize:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getDirectorySize:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __28__DEUtils_getDirectorySize___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(&dword_248AB3000, v0, v1, "Error enumrating url [%{public}@] err [%{public}@]");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)excludeFromBackup:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)tarGzForDirectoryUrl:validatesUrl:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[DEUtils tarGzForDirectoryUrl:validatesUrl:]";
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_248AB3000, v0, OS_LOG_TYPE_DEBUG, "%s %@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)isValidDirectory:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)copyAllFilesFromDir:(void *)a3 toDir:(NSObject *)a4 keepSourceDir:.cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_248AB3000, a4, OS_LOG_TYPE_ERROR, "Failed to create directory [%{public}@]", a1, 0xCu);
}

+ (void)copyAllFilesFromDir:toDir:keepSourceDir:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)copyItem:toDestinationDir:zipped:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)copyItem:(void *)a1 toDestinationDir:(void *)a2 zipped:.cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v10 = [a2 path];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)copyItem:toDestinationDir:zipped:.cold.3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  v4 = v0;
  _os_log_debug_impl(&dword_248AB3000, v1, OS_LOG_TYPE_DEBUG, "Copied [%@] to [%@]", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)copyAndReturn:(void *)a1 toDir:withNewFileName:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)lsDir:sorted:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_8(&dword_248AB3000, v0, v1, "failed to get contents of feedback directory [%@] error [%@]");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)createDirectoryWithClassCDataProtection:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)createDirectoryWithClassCDataProtection:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)copyPath:toDestinationDir:zipped:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)copyPath:(uint64_t)a1 toDestinationDir:zipped:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)copyPath:toDestinationDir:zipped:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)removeFile:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)uniqueTemporaryDirectory
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end