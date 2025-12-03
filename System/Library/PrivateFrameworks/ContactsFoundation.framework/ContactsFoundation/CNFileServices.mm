@interface CNFileServices
+ (CNFileServices)sharedInstance;
+ (id)tmpDirLog;
- (id)bespokeTemporaryDirectory;
- (id)preferredTemporaryDirectory;
- (id)secureTemporarySubdirectoryWithName:(id)name;
- (id)secureTemporarySubdirectoryWithSubpathComponents:(id)components;
- (id)temporaryDirectory;
@end

@implementation CNFileServices

+ (id)tmpDirLog
{
  if (tmpDirLog_cn_once_token_1 != -1)
  {
    +[CNFileServices tmpDirLog];
  }

  v3 = tmpDirLog_cn_once_object_1;

  return v3;
}

uint64_t __27__CNFileServices_tmpDirLog__block_invoke()
{
  tmpDirLog_cn_once_object_1 = os_log_create("com.apple.contacts", "temp-dir");

  return MEMORY[0x1EEE66BB8]();
}

+ (CNFileServices)sharedInstance
{
  if (sharedInstance_cn_once_token_2_0 != -1)
  {
    +[CNFileServices sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_2_0;

  return v3;
}

uint64_t __32__CNFileServices_sharedInstance__block_invoke()
{
  sharedInstance_cn_once_object_2_0 = objc_alloc_init(CNFileServices);

  return MEMORY[0x1EEE66BB8]();
}

- (id)temporaryDirectory
{
  preferredTemporaryDirectory = [(CNFileServices *)self preferredTemporaryDirectory];
  if (!preferredTemporaryDirectory)
  {
    preferredTemporaryDirectory = [(CNFileServices *)self bespokeTemporaryDirectory];
    if (!preferredTemporaryDirectory)
    {
      preferredTemporaryDirectory = [(CNFileServices *)self temporaryDirectoryOfLastResort];
    }
  }

  return preferredTemporaryDirectory;
}

- (id)secureTemporarySubdirectoryWithName:(id)name
{
  v11 = *MEMORY[0x1E69E9840];
  if (name)
  {
    nameCopy = name;
    v4 = MEMORY[0x1E695DEC8];
    nameCopy2 = name;
    v6 = [v4 arrayWithObjects:&nameCopy count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [(CNFileServices *)self secureTemporarySubdirectoryWithSubpathComponents:v6, nameCopy, v11];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)secureTemporarySubdirectoryWithSubpathComponents:(id)components
{
  v28 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  temporaryDirectory = [(CNFileServices *)self temporaryDirectory];
  v6 = [temporaryDirectory URLByAppendingPathComponent:@"TemporaryItems" isDirectory:1];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = componentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        if ([v12 length])
        {
          v13 = [v6 URLByAppendingPathComponent:v12 isDirectory:1];

          v6 = v13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0;
  v15 = [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v22];
  v16 = v22;
  if ((v15 & 1) == 0 && ![CNFoundationError isFileAlreadyExistsError:v16])
  {
    tmpDirLog = [objc_opt_class() tmpDirLog];
    if (os_log_type_enabled(tmpDirLog, OS_LOG_TYPE_ERROR))
    {
      [(CNFileServices *)v6 secureTemporarySubdirectoryWithSubpathComponents:v16, tmpDirLog];
    }

    if (os_log_type_enabled(tmpDirLog, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1859F0000, tmpDirLog, OS_LOG_TYPE_DEFAULT, "The action with a temporary URL will still be attempted, but the behavior is now undefined.", v21, 2u);
    }
  }

  v18 = v6;

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)preferredTemporaryDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = v2;
  if (v2)
  {
    if ([v2 length])
    {
      v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
      goto LABEL_9;
    }

    tmpDirLog = [objc_opt_class() tmpDirLog];
    if (os_log_type_enabled(tmpDirLog, OS_LOG_TYPE_ERROR))
    {
      [(CNFileServices *)tmpDirLog preferredTemporaryDirectory];
    }
  }

  else
  {
    tmpDirLog = [objc_opt_class() tmpDirLog];
    if (os_log_type_enabled(tmpDirLog, OS_LOG_TYPE_ERROR))
    {
      [(CNFileServices *)tmpDirLog preferredTemporaryDirectory];
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (id)bespokeTemporaryDirectory
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/" isDirectory:1];
  v9 = 0;
  v4 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v3 create:1 error:&v9];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    tmpDirLog = [objc_opt_class() tmpDirLog];
    if (os_log_type_enabled(tmpDirLog, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1859F0000, tmpDirLog, OS_LOG_TYPE_INFO, "FileManager did not provide an item replacement directory", v8, 2u);
    }
  }

  return v4;
}

- (void)secureTemporarySubdirectoryWithSubpathComponents:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1859F0000, log, OS_LOG_TYPE_ERROR, "Could not create secure temporary directory %{public}@: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end