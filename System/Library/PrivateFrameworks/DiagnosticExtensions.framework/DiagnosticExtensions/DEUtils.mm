@interface DEUtils
+ (BOOL)copyAllFilesFromDir:(id)dir toDir:(id)toDir keepSourceDir:(BOOL)sourceDir;
+ (BOOL)copyFile:(id)file toDir:(id)dir;
+ (BOOL)isValidDirectory:(id)directory;
+ (id)applicationSupportDirectoryForApp:(id)app;
+ (id)componentsByRemovingComponentsBeforeComponent:(id)component sourceURL:(id)l keepingComponent:(BOOL)keepingComponent;
+ (id)copyAndReturn:(id)return toDir:(id)dir;
+ (id)copyAndReturn:(id)return toDir:(id)dir withNewFileName:(id)name;
+ (id)copyItem:(id)item toDestinationDir:(id)dir zipped:(BOOL)zipped;
+ (id)copyPath:(id)path toDestinationDir:(id)dir zipped:(BOOL)zipped;
+ (id)copyPaths:(id)paths toDestinationDir:(id)dir withZipName:(id)name;
+ (id)createDirectoryWithClassCDataProtection:(id)protection;
+ (id)createUserOwnedDirectoryAtUrl:(id)url;
+ (id)dirForTarGz:(id)gz;
+ (id)enumeratorForAllItems:(id)items;
+ (id)findAllItems:(id)items includeDirs:(BOOL)dirs;
+ (id)findEntriesInDirectory:(id)directory createdAfter:(id)after matchingPattern:(id)pattern;
+ (id)lsDir:(id)dir sorted:(BOOL)sorted;
+ (id)moveItem:(id)item toDestinationDir:(id)dir;
+ (id)pathComponentsInURL:(id)l removingBaseURLComponents:(id)components keepingFirstComponent:(BOOL)component;
+ (id)processErrorResponse:(id)response;
+ (id)tarGzForDirectoryUrl:(id)url validatesUrl:(BOOL)validatesUrl;
+ (id)uniqueDateString;
+ (id)uniqueTemporaryDirectory;
+ (id)userLibraryDirectoryForApp:(id)app;
+ (unint64_t)getDirectorySize:(id)size;
+ (unint64_t)getFileSystemItemSize:(id)size;
+ (void)excludeFromBackup:(id)backup;
+ (void)removeFile:(id)file;
+ (void)uniqueTemporaryDirectory;
@end

@implementation DEUtils

+ (unint64_t)getFileSystemItemSize:(id)size
{
  sizeCopy = size;
  v17 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [sizeCopy path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:&v17];

  if (v7)
  {
    if (v17 == 1)
    {
      unsignedIntegerValue = [self getDirectorySize:sizeCopy];
    }

    else
    {
      v16 = 0;
      v10 = *MEMORY[0x277CBE838];
      v15 = 0;
      [sizeCopy getResourceValue:&v16 forKey:v10 error:&v15];
      v11 = v16;
      v12 = v15;
      if (v12 || !v11)
      {
        v13 = Log_3();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          +[DEUtils getFileSystemItemSize:];
        }

        unsignedIntegerValue = 0;
      }

      else
      {
        unsignedIntegerValue = [v11 unsignedIntegerValue];
      }
    }
  }

  else
  {
    v9 = Log_3();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DEUtils getFileSystemItemSize:sizeCopy];
    }

    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (unint64_t)getDirectorySize:(id)size
{
  v52[2] = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v46 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [sizeCopy path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v46];
  v7 = v46;

  if (v6 && (v7 & 1) != 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = *MEMORY[0x277CBE868];
    v10 = *MEMORY[0x277CBE838];
    v52[0] = *MEMORY[0x277CBE868];
    v52[1] = v10;
    v36 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v35 = sizeCopy;
    v12 = [defaultManager2 enumeratorAtURL:sizeCopy includingPropertiesForKeys:v11 options:0 errorHandler:&__block_literal_global_68];

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
              path2 = [v18 path];
              *buf = 138543618;
              v48 = path2;
              v49 = 2114;
              v50 = v22;
              _os_log_error_impl(&dword_248AB3000, v23, OS_LOG_TYPE_ERROR, "Could not get isDir for file [%{public}@] with error [%{public}@]", buf, 0x16u);
            }

            v24 = 0;
          }

          else
          {
            bOOLValue = [v19 BOOLValue];
            if (bOOLValue)
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
                  path3 = [v18 path];
                  *buf = 138543618;
                  v48 = path3;
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
    sizeCopy = v35;
    v29 = v37;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      path4 = [v35 path];
      v32 = [MEMORY[0x277CCA8E8] stringFromByteCount:v37 countStyle:0];
      *buf = 138543618;
      v48 = path4;
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
      [DEUtils getDirectorySize:sizeCopy];
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

+ (void)excludeFromBackup:(id)backup
{
  backupCopy = backup;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = *MEMORY[0x277CBE878];
  v9 = 0;
  v6 = [backupCopy setResourceValue:v4 forKey:v5 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = Log_3();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEUtils excludeFromBackup:backupCopy];
    }
  }
}

+ (id)tarGzForDirectoryUrl:(id)url validatesUrl:(BOOL)validatesUrl
{
  validatesUrlCopy = validatesUrl;
  urlCopy = url;
  v7 = Log_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[DEUtils tarGzForDirectoryUrl:validatesUrl:];
  }

  if (validatesUrlCopy)
  {
    v8 = [self isValidDirectory:urlCopy];
  }

  else
  {
    v8 = 1;
  }

  v9 = 0;
  if (urlCopy && v8)
  {
    lastPathComponent = [urlCopy lastPathComponent];
    v11 = [lastPathComponent stringByAppendingPathExtension:@"tar.gz"];

    uRLByDeletingLastPathComponent = [urlCopy URLByDeletingLastPathComponent];
    v9 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v11];
  }

  return v9;
}

+ (id)dirForTarGz:(id)gz
{
  gzCopy = gz;
  v4 = gzCopy;
  if (gzCopy && ([gzCopy path], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (BOOL)isValidDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = directoryCopy;
  if (!directoryCopy)
  {
    v6 = Log_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }

    goto LABEL_12;
  }

  if (([directoryCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v6 = Log_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils isValidDirectory:];
    }

LABEL_12:
    bOOLValue = 0;
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

  bOOLValue = [v6 BOOLValue];
LABEL_13:

  return bOOLValue;
}

+ (BOOL)copyAllFilesFromDir:(id)dir toDir:(id)toDir keepSourceDir:(BOOL)sourceDir
{
  sourceDirCopy = sourceDir;
  v62 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  toDirCopy = toDir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v45 = dirCopy;
  v8 = [DEUtils enumeratorForAllItems:dirCopy];
  v9 = Log_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v31 = @"NO";
    *buf = 138412802;
    v57 = v45;
    v58 = 2112;
    if (sourceDirCopy)
    {
      v31 = @"YES";
    }

    v59 = toDirCopy;
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
    selfCopy = self;
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
        v15 = [self pathComponentsInURL:v13 removingBaseURLComponents:v45 keepingFirstComponent:sourceDirCopy];
        pathComponents = [toDirCopy pathComponents];
        v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:pathComponents];
        [v17 addObjectsFromArray:v15];
        v10 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v17];

        uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
        if (([uRLByDeletingLastPathComponent checkResourceIsReachableAndReturnError:0] & 1) == 0)
        {
          v19 = [self createDirectoryWithClassCDataProtection:uRLByDeletingLastPathComponent];
        }

        v48 = 0;
        [v13 getResourceValue:&v48 forKey:v40 error:0];
        v20 = v48;
        if (![v20 BOOLValue])
        {
          v47 = 0;
          [defaultManager copyItemAtURL:v13 toURL:v10 error:&v47];
          v23 = v47;
          if (v23)
          {
            v36 = v14;
            v24 = Log_3();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              path = [v13 path];
              path2 = [v10 path];
              localizedDescription = [v23 localizedDescription];
              *buf = 138543874;
              v57 = path;
              v58 = 2114;
              v59 = path2;
              v60 = 2114;
              v61 = localizedDescription;
              _os_log_error_impl(&dword_248AB3000, v24, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
            }

            v37 = 1;
            v14 = v36;
          }

          goto LABEL_19;
        }

        v21 = v14;
        v22 = [self createDirectoryWithClassCDataProtection:v10];

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

          self = selfCopy;
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

+ (id)copyItem:(id)item toDestinationDir:(id)dir zipped:(BOOL)zipped
{
  zippedCopy = zipped;
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dirCopy = dir;
  lastPathComponent = [itemCopy lastPathComponent];
  v10 = [dirCopy URLByAppendingPathComponent:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([dirCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v12 = [defaultManager createDirectoryAtURL:dirCopy withIntermediateDirectories:1 attributes:0 error:0];
    v13 = Log_3();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138412290;
        *&v25[4] = dirCopy;
        _os_log_impl(&dword_248AB3000, v14, OS_LOG_TYPE_DEFAULT, "Created folder [%@]", v25, 0xCu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[DEUtils copyItem:toDestinationDir:zipped:];
    }
  }

  v25[0] = 0;
  path = [itemCopy path];
  v16 = [defaultManager fileExistsAtPath:path isDirectory:v25];
  v17 = v25[0];

  if (v16 && (v17 & 1) != 0)
  {
    if (![DEUtils copyAllFilesFromDir:itemCopy toDir:v10 keepSourceDir:0])
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

  v20 = [DEUtils copyAndReturn:itemCopy toDir:dirCopy];

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_11:
  v18 = Log_3();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [DEUtils copyItem:itemCopy toDestinationDir:dirCopy zipped:?];
  }

  if (v25[0] != 1)
  {
    v19 = 0;
    goto LABEL_25;
  }

LABEL_19:
  if (zippedCopy)
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

+ (id)moveItem:(id)item toDestinationDir:(id)dir
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dirCopy = dir;
  v7 = Log_3();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v18 = "+[DEUtils moveItem:toDestinationDir:]";
    v19 = 2114;
    v20 = itemCopy;
    v21 = 2114;
    v22 = dirCopy;
    _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}@] [%{public}@]", buf, 0x20u);
  }

  lastPathComponent = [itemCopy lastPathComponent];
  v9 = [dirCopy URLByAppendingPathComponent:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  [defaultManager moveItemAtURL:itemCopy toURL:v9 error:&v16];
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

+ (BOOL)copyFile:(id)file toDir:(id)dir
{
  v4 = [self copyAndReturn:file toDir:dir];
  v5 = v4 != 0;

  return v5;
}

+ (id)copyAndReturn:(id)return toDir:(id)dir withNewFileName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  returnCopy = return;
  dirCopy = dir;
  nameCopy = name;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  [returnCopy getResourceValue:&v23 forKey:*MEMORY[0x277CBE868] error:0];
  v11 = v23;
  if ([v11 BOOLValue])
  {
    v12 = Log_3();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyAndReturn:returnCopy toDir:? withNewFileName:?];
    }

    v13 = 0;
  }

  else
  {
    v12 = [dirCopy URLByAppendingPathComponent:nameCopy];
    v22 = 0;
    [defaultManager copyItemAtURL:returnCopy toURL:v12 error:&v22];
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
      path = [returnCopy path];
      path2 = [v12 path];
      localizedDescription = [v13 localizedDescription];
      *buf = 138543874;
      v25 = path;
      v26 = 2114;
      v27 = path2;
      v28 = 2114;
      v29 = localizedDescription;
      v20 = localizedDescription;
      _os_log_error_impl(&dword_248AB3000, v14, OS_LOG_TYPE_ERROR, "Failed to copy file [%{public}@] to [%{public}@] error [%{public}@]", buf, 0x20u);
    }
  }

  v15 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)copyAndReturn:(id)return toDir:(id)dir
{
  v28 = *MEMORY[0x277D85DE8];
  returnCopy = return;
  dirCopy = dir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  [returnCopy getResourceValue:&v21 forKey:*MEMORY[0x277CBE868] error:0];
  v8 = v21;
  if ([v8 BOOLValue])
  {
    lastPathComponent = Log_3();
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      [DEUtils copyAndReturn:returnCopy toDir:? withNewFileName:?];
    }

    v10 = 0;
    v11 = 0;
  }

  else
  {
    lastPathComponent = [returnCopy lastPathComponent];
    v12 = [dirCopy URLByAppendingPathComponent:lastPathComponent];
    v20 = 0;
    [defaultManager copyItemAtURL:returnCopy toURL:v12 error:&v20];
    v10 = v20;
    if (v10)
    {
      v13 = Log_3();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        path = [returnCopy path];
        path2 = [v12 path];
        localizedDescription = [v10 localizedDescription];
        *buf = 138543874;
        v23 = path;
        v24 = 2114;
        v25 = path2;
        v26 = 2114;
        v27 = localizedDescription;
        v18 = localizedDescription;
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

+ (id)pathComponentsInURL:(id)l removingBaseURLComponents:(id)components keepingFirstComponent:(BOOL)component
{
  componentCopy = component;
  componentsCopy = components;
  uRLByResolvingSymlinksInPath = [l URLByResolvingSymlinksInPath];
  uRLByStandardizingPath = [uRLByResolvingSymlinksInPath URLByStandardizingPath];

  uRLByResolvingSymlinksInPath2 = [componentsCopy URLByResolvingSymlinksInPath];

  uRLByStandardizingPath2 = [uRLByResolvingSymlinksInPath2 URLByStandardizingPath];

  pathComponents = [uRLByStandardizingPath2 pathComponents];
  v13 = [pathComponents count];

  v14 = v13 - componentCopy;
  v15 = MEMORY[0x277CBEB18];
  pathComponents2 = [uRLByStandardizingPath pathComponents];
  v17 = [v15 arrayWithArray:pathComponents2];

  [v17 removeObjectsInRange:{0, v14}];

  return v17;
}

+ (id)componentsByRemovingComponentsBeforeComponent:(id)component sourceURL:(id)l keepingComponent:(BOOL)keepingComponent
{
  keepingComponentCopy = keepingComponent;
  componentCopy = component;
  pathComponents = [l pathComponents];
  v9 = [pathComponents indexOfObject:componentCopy];

  v10 = pathComponents;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v9 + !keepingComponentCopy;
    v10 = pathComponents;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = pathComponents;
      if (v11 < [pathComponents count])
      {
        v10 = [pathComponents subarrayWithRange:{v11, objc_msgSend(pathComponents, "count") - v11}];
      }
    }
  }

  return v10;
}

+ (id)enumeratorForAllItems:(id)items
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  itemsCopy = items;
  defaultManager = [v3 defaultManager];
  v6 = *MEMORY[0x277CBE868];
  v11[0] = *MEMORY[0x277CBE8E8];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [defaultManager enumeratorAtURL:itemsCopy includingPropertiesForKeys:v7 options:4 errorHandler:&__block_literal_global_91];

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

+ (id)findAllItems:(id)items includeDirs:(BOOL)dirs
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [self enumeratorForAllItems:items];
  array = [MEMORY[0x277CBEB18] array];
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

        else if (dirs || ([v9 BOOLValue] & 1) == 0)
        {
          [array addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:array copyItems:1];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)lsDir:(id)dir sorted:(BOOL)sorted
{
  sortedCopy = sorted;
  v21[2] = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (sortedCopy)
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
  v12 = [defaultManager contentsOfDirectoryAtURL:dirCopy includingPropertiesForKeys:v11 options:4 error:&v19];
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
    if (sortedCopy)
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

+ (id)userLibraryDirectoryForApp:(id)app
{
  appCopy = app;
  if (appCopy)
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
      firstObject = [v6 firstObject];
      v9 = [v7 fileURLWithPath:firstObject isDirectory:1];

      v10 = [v9 URLByAppendingPathComponent:appCopy isDirectory:1];
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

+ (id)applicationSupportDirectoryForApp:(id)app
{
  appCopy = app;
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
    firstObject = [v6 firstObject];
    v9 = [v7 fileURLWithPath:firstObject isDirectory:1];

    v10 = [v9 URLByAppendingPathComponent:appCopy isDirectory:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createUserOwnedDirectoryAtUrl:(id)url
{
  v16[2] = *MEMORY[0x277D85DE8];
  urlCopy = url;
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  [defaultManager createDirectoryAtURL:urlCopy withIntermediateDirectories:1 attributes:v7 error:&v13];

  v9 = v13;
  v10 = v13;

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)createDirectoryWithClassCDataProtection:(id)protection
{
  v17[1] = *MEMORY[0x277D85DE8];
  protectionCopy = protection;
  if (!getuid())
  {
    v4 = Log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_INFO, "WARNING: running as root, directory will be owned by root", buf, 2u);
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [defaultManager createDirectoryAtURL:protectionCopy withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;

  if (!v6)
  {
    v7 = Log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [DEUtils createDirectoryWithClassCDataProtection:protectionCopy];
    }

    v16 = *MEMORY[0x277CBE7F8];
    v17[0] = *MEMORY[0x277CBE7F0];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = 0;
    [protectionCopy setResourceValues:v8 error:&v13];
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

+ (id)copyPath:(id)path toDestinationDir:(id)dir zipped:(BOOL)zipped
{
  zippedCopy = zipped;
  pathCopy = path;
  dirCopy = dir;
  lastPathComponent = [pathCopy lastPathComponent];
  v10 = [dirCopy URLByAppendingPathComponent:lastPathComponent];

  v11 = dirCopy;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v42 = 0;
  [pathCopy getResourceValue:&v42 forKey:*MEMORY[0x277CBE868] error:0];
  v13 = v42;
  v14 = v11;
  if ([v13 BOOLValue])
  {
    v14 = v11;
    if (!zippedCopy)
    {
      v14 = v10;
    }
  }

  if (([v14 checkResourceIsReachableAndReturnError:0] & 1) == 0 && (objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v14, 1, 0, 0) & 1) == 0)
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

  if (!zippedCopy)
  {
    v41 = v14;
    if ([v10 checkResourceIsReachableAndReturnError:0])
    {
      v37 = v13;
      v38 = defaultManager;
      v39 = v11;
      v40 = pathCopy;
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v24;
        v27 = MEMORY[0x277CCACA8];
        uRLByDeletingPathExtension = [v10 URLByDeletingPathExtension];
        path = [uRLByDeletingPathExtension path];
        v30 = [MEMORY[0x277CCABB0] numberWithInt:v25];
        v31 = [v27 stringWithFormat:@"%@-%@", path, v30];
        pathExtension = [v10 pathExtension];
        v33 = [v31 stringByAppendingPathExtension:pathExtension];

        v24 = [MEMORY[0x277CBEBC0] fileURLWithPath:v33 isDirectory:0];

        v25 = (v25 + 1);
      }

      while (([v24 checkResourceIsReachableAndReturnError:0] & 1) != 0);

      v10 = v24;
      v11 = v39;
      pathCopy = v40;
      v13 = v37;
      defaultManager = v38;
    }

    else
    {
      v24 = v10;
    }

    [pathCopy fileSystemRepresentation];
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

  lastPathComponent2 = [pathCopy lastPathComponent];
  v17 = [lastPathComponent2 stringByAppendingPathExtension:@"zip"];

  v18 = [v11 URLByAppendingPathComponent:v17];

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = MEMORY[0x277CBEC38];
  [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"createPKZip"];
  [v19 setObject:v20 forKeyedSubscript:@"copyResources"];
  if (v13)
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"keepParent"];
  }

  [pathCopy fileSystemRepresentation];
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

+ (id)copyPaths:(id)paths toDestinationDir:(id)dir withZipName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  dirCopy = dir;
  v9 = [dirCopy URLByAppendingPathComponent:name];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = pathsCopy;
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

  v15 = [DEUtils copyPath:v9 toDestinationDir:dirCopy zipped:1];
  [DEUtils removeFile:v9];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)uniqueDateString
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy-MM-dd-HHmmssSS"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 stringFromDate:date];

  return v4;
}

+ (void)removeFile:(id)file
{
  fileCopy = file;
  if ([fileCopy checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v5 = [defaultManager removeItemAtURL:fileCopy error:&v10];
    v6 = v10;

    if (!v5 || v6 != 0)
    {
      v8 = Log_3();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(DEUtils *)fileCopy removeFile:v6];
      }

      if (v6)
      {
        v9 = Log_3();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(DEUtils *)fileCopy removeFile:v6];
        }
      }
    }
  }
}

+ (id)findEntriesInDirectory:(id)directory createdAfter:(id)after matchingPattern:(id)pattern
{
  v37[3] = *MEMORY[0x277D85DE8];
  afterCopy = after;
  patternCopy = pattern;
  v9 = MEMORY[0x277CBEB18];
  directoryCopy = directory;
  [v9 array];
  v30 = v29 = afterCopy;
  v11 = [afterCopy dateByAddingTimeInterval:-1.0];
  uRLByResolvingSymlinksInPath = [directoryCopy URLByResolvingSymlinksInPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = *MEMORY[0x277CBE7C0];
  v37[0] = *MEMORY[0x277CBE8E8];
  v37[1] = v14;
  v37[2] = *MEMORY[0x277CBE868];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  v28 = uRLByResolvingSymlinksInPath;
  v16 = [defaultManager enumeratorAtURL:uRLByResolvingSymlinksInPath includingPropertiesForKeys:v15 options:1 errorHandler:0];

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
          lastPathComponent = [v22 lastPathComponent];
          if ([patternCopy numberOfMatchesInString:lastPathComponent options:0 range:{0, objc_msgSend(lastPathComponent, "length")}] == 1)
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

+ (id)processErrorResponse:(id)response
{
  v28 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [&unk_285B71028 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v5 = responseCopy;
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

        v13 = [v12 matchesInString:responseCopy options:0 range:{0, objc_msgSend(responseCopy, "length")}];
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
              v5 = [responseCopy substringWithRange:{v18, v19}];

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

    v5 = responseCopy;
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  v6 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:&v11];
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
  v1 = [self description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end