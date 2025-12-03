@interface DEArchiver
+ (id)archiveDirectoryAt:(id)at deleteOriginal:(BOOL)original progressHandler:(id)handler;
+ (id)archiveFile:(id)file deleteOriginal:(BOOL)original progressHandler:(id)handler;
+ (unint64_t)directorySizeOf:(id)of;
@end

@implementation DEArchiver

+ (unint64_t)directorySizeOf:(id)of
{
  v30 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  [DEUtils enumeratorForAllItems:?];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = 0;
    v6 = *v26;
    v7 = *MEMORY[0x277CBE868];
    v8 = *MEMORY[0x277CBE838];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v23 = 0;
        v24 = 0;
        [v10 getResourceValue:&v24 forKey:v7 error:&v23];
        v12 = v24;
        v13 = v23;
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
        }

        if (v14)
        {
          v15 = v13;
        }

        else if ([v12 BOOLValue])
        {
          v15 = 0;
        }

        else
        {
          v21 = 0;
          v22 = 0;
          [v10 getResourceValue:&v22 forKey:v8 error:&v21];
          v16 = v22;
          v15 = v21;
          if (!v15)
          {
            v20 += [v16 unsignedLongLongValue];
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v5 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  else
  {
    v20 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)archiveDirectoryAt:(id)at deleteOriginal:(BOOL)original progressHandler:(id)handler
{
  originalCopy = original;
  v55 = *MEMORY[0x277D85DE8];
  atCopy = at;
  handlerCopy = handler;
  v6 = +[DELogging fwHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DEArchiver archiveDirectoryAt:atCopy deleteOriginal:? progressHandler:?];
  }

  v29 = [[DEArchive alloc] initWithURL:atCopy];
  if (v29)
  {
    [DEUtils enumeratorForAllItems:atCopy];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    obj = v45 = 0u;
    v7 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v7)
    {
      v32 = 0;
      v8 = 0;
      v9 = 0;
      v34 = *MEMORY[0x277CBE868];
      v35 = *v45;
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v44 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();

          v42 = 0;
          v43 = 0;
          [v11 getResourceValue:&v43 forKey:v34 error:&v42];
          v8 = v43;
          v9 = v42;
          if (v9 || !v8)
          {
            v18 = +[DELogging fwHandle];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              *&buf[4] = v9;
              *&buf[12] = 2114;
              *&buf[14] = v11;
              _os_log_impl(&dword_248AB3000, v18, OS_LOG_TYPE_INFO, "Error [%{public}@] getting NSURLIsDirectoryKey for url [%{public}@]", buf, 0x16u);
            }
          }

          else if (([v8 BOOLValue] & 1) == 0)
          {
            v13 = [DEUtils pathComponentsInURL:v11 removingBaseURLComponents:atCopy keepingFirstComponent:1];
            if (v13)
            {
              v14 = [MEMORY[0x277CCACA8] pathWithComponents:v13];
              v15 = v14;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v53 = 0;
              if (handlerCopy)
              {
                v38[0] = MEMORY[0x277D85DD0];
                v38[1] = 3221225472;
                v38[2] = __64__DEArchiver_archiveDirectoryAt_deleteOriginal_progressHandler___block_invoke;
                v38[3] = &unk_278F63640;
                v40 = buf;
                v39 = handlerCopy;
                v41 = v32;
                v16 = MEMORY[0x24C1E46F0](v38);

                if (v15)
                {
                  goto LABEL_15;
                }

LABEL_22:
                v17 = +[DELogging fwHandle];
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  lastPathComponent = [atCopy lastPathComponent];
                  *v48 = 138412546;
                  v49 = v11;
                  v50 = 2112;
                  v51 = lastPathComponent;
                  v21 = lastPathComponent;
                  _os_log_error_impl(&dword_248AB3000, v17, OS_LOG_TYPE_ERROR, "could not build path from %@ with root component %@", v48, 0x16u);
                }

LABEL_24:
              }

              else
              {
                v16 = 0;
                if (!v14)
                {
                  goto LABEL_22;
                }

LABEL_15:
                if (![(DEArchive *)v29 addFile:v11 withPathName:v15 progressHandler:v16])
                {
                  v17 = +[DELogging fwHandle];
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    [DEArchiver archiveDirectoryAt:v37 deleteOriginal:v17 progressHandler:?];
                  }

                  goto LABEL_24;
                }
              }

              v19 = *(*&buf[8] + 24);

              _Block_object_dispose(buf, 8);
              v32 += v19;
            }
          }

          objc_autoreleasePoolPop(v12);
        }

        v7 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (!v7)
        {
          goto LABEL_33;
        }
      }
    }

    v8 = 0;
    v9 = 0;
LABEL_33:

    [(DEArchive *)v29 closeArchive];
    tarGzUrl = [(DEArchive *)v29 tarGzUrl];
    v25 = tarGzUrl;
    if (originalCopy && tarGzUrl)
    {
      [DEUtils removeFile:atCopy];
    }

    v22 = v25;

    v23 = v22;
  }

  else
  {
    v22 = +[DELogging fwHandle];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[DEArchiver archiveDirectoryAt:deleteOriginal:progressHandler:];
    }

    v23 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)archiveFile:(id)file deleteOriginal:(BOOL)original progressHandler:(id)handler
{
  originalCopy = original;
  fileCopy = file;
  handlerCopy = handler;
  v9 = +[DELogging fwHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [DEArchiver archiveFile:fileCopy deleteOriginal:? progressHandler:?];
  }

  v10 = [[DEArchive alloc] initWithURL:fileCopy];
  if (v10)
  {
    v21 = 0;
    v11 = *MEMORY[0x277CBE868];
    v20 = 0;
    [fileCopy getResourceValue:&v21 forKey:v11 error:&v20];
    v12 = v21;
    v13 = v20;
    if (v13)
    {
      v14 = +[DELogging fwHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[DEArchiver archiveFile:deleteOriginal:progressHandler:];
      }
    }

    else if (([v12 BOOLValue] & 1) == 0)
    {
      lastPathComponent = [fileCopy lastPathComponent];
      if (lastPathComponent)
      {
        if (![(DEArchive *)v10 addFile:fileCopy withPathName:lastPathComponent progressHandler:handlerCopy])
        {
          v18 = +[DELogging fwHandle];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            +[DEArchiver archiveFile:deleteOriginal:progressHandler:];
          }
        }

        [(DEArchive *)v10 closeArchive];
        tarGzUrl = [(DEArchive *)v10 tarGzUrl];
        v15 = tarGzUrl;
        if (originalCopy && tarGzUrl)
        {
          [DEUtils removeFile:fileCopy];
        }

        goto LABEL_16;
      }

LABEL_15:
      v15 = 0;
LABEL_16:

LABEL_18:
      goto LABEL_19;
    }

    if (!v12)
    {
      v15 = 0;
      goto LABEL_18;
    }

    lastPathComponent = +[DELogging fwHandle];
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      +[DEArchiver archiveFile:deleteOriginal:progressHandler:];
    }

    goto LABEL_15;
  }

  v13 = +[DELogging fwHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    +[DEArchiver archiveDirectoryAt:deleteOriginal:progressHandler:];
  }

  v15 = 0;
LABEL_19:

  return v15;
}

+ (void)archiveDirectoryAt:(void *)a1 deleteOriginal:progressHandler:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "archiveDirectoryAt [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)archiveDirectoryAt:(uint8_t *)buf deleteOriginal:(_BYTE *)a2 progressHandler:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_248AB3000, log, OS_LOG_TYPE_ERROR, "Failed to add file to archiver", buf, 2u);
}

+ (void)archiveDirectoryAt:deleteOriginal:progressHandler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)archiveFile:(void *)a1 deleteOriginal:progressHandler:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248AB3000, v2, v3, "archiveFile [%{public}@]", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)archiveFile:deleteOriginal:progressHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_248AB3000, v1, OS_LOG_TYPE_ERROR, "Error [%{public}@] getting NSURLIsDirectoryKey for url [%{public}@]", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end