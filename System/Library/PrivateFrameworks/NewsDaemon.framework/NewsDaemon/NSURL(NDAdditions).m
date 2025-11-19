@interface NSURL(NDAdditions)
+ (id)newsdDocumentsURL;
+ (id)newsdGroupContainerURL;
+ (void)newsdCachesURL;
@end

@implementation NSURL(NDAdditions)

+ (id)newsdGroupContainerURL
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.newsd"];

  if (!v1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"newsd was unable to use the group container for content storage"];
  }

  return v1;
}

+ (void)newsdCachesURL
{
  v40 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBC0] newsdGroupContainerURL];
  v1 = [v0 URLByAppendingPathComponent:@"Library/Caches" isDirectory:1];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v30 = v0;
  v3 = [v2 contentsOfDirectoryAtURL:v0 includingPropertiesForKeys:0 options:4 error:0];

  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [v8 lastPathComponent];
        if ([v9 hasPrefix:@"shared-assets"])
        {
        }

        else
        {
          v10 = [v8 lastPathComponent];
          v11 = [v10 hasPrefix:@"com.apple.news"];

          if (!v11)
          {
            continue;
          }
        }

        v12 = [v8 lastPathComponent];
        v13 = [v1 URLByAppendingPathComponent:v12];

        v14 = *MEMORY[0x277D30B10];
        if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v8 lastPathComponent];
          *buf = 138543362;
          v38 = v16;
          _os_log_impl(&dword_25BE24000, v15, OS_LOG_TYPE_DEFAULT, "will move %{public}@ from group container root to Caches directory", buf, 0xCu);
        }

        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v32 = 0;
        v18 = [v17 moveItemAtURL:v8 toURL:v13 error:&v32];
        v19 = v32;

        if ((v18 & 1) == 0)
        {
          v20 = *MEMORY[0x277D30B10];
          if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v19;
            _os_log_impl(&dword_25BE24000, v20, OS_LOG_TYPE_DEFAULT, "failed to move file from group container root to Caches directory with error: %{public}@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v31 = 0;
  [v21 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v31];
  v22 = v31;

  v23 = FCURLForFeldsparUserAccountHomeDirectory();
  v24 = [v23 URLByAppendingPathComponent:@"newsd" isDirectory:1];

  v25 = [MEMORY[0x277CCAA00] defaultManager];
  [v25 fc_removeContentsOfDirectoryAtURL:v24];

  v26 = *MEMORY[0x277D30B10];
  if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v1;
    _os_log_impl(&dword_25BE24000, v26, OS_LOG_TYPE_DEFAULT, "will store newsd caches at %{public}@", buf, 0xCu);
  }

  v27 = v1;

  v28 = *MEMORY[0x277D85DE8];
  return v1;
}

+ (id)newsdDocumentsURL
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.newsd"];

  v2 = [v1 URLByAppendingPathComponent:@"Documents" isDirectory:1];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = 0;
  [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v8];
  v4 = v8;

  v5 = *MEMORY[0x277D30B10];
  if (os_log_type_enabled(*MEMORY[0x277D30B10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v2;
    _os_log_impl(&dword_25BE24000, v5, OS_LOG_TYPE_DEFAULT, "will store newsd documents at %{public}@", buf, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

@end