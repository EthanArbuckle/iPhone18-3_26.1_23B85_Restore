@interface CNUILibraryFolderDiscovery
+ (id)discoverFoldersWithPathComponents:(id)components fileManager:(id)manager;
+ (id)localImageFolders;
@end

@implementation CNUILibraryFolderDiscovery

+ (id)localImageFolders
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CNUILibraryFolderDiscovery_localImageFolders__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (localImageFolders_cn_once_token_1 != -1)
  {
    dispatch_once(&localImageFolders_cn_once_token_1, block);
  }

  v2 = localImageFolders_cn_once_object_1;

  return v2;
}

void __47__CNUILibraryFolderDiscovery_localImageFolders__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v2 = [v1 discoverFoldersWithPathComponents:&unk_1F1645FE8 fileManager:v5];
  v3 = [v2 copy];
  v4 = localImageFolders_cn_once_object_1;
  localImageFolders_cn_once_object_1 = v3;
}

+ (id)discoverFoldersWithPathComponents:(id)components fileManager:(id)manager
{
  v50 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  managerCopy = manager;
  v5 = objc_autoreleasePoolPush();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ABImageDebug", @"com.apple.AddressBook", 0);
  v6 = NSSearchPathForDirectoriesInDomains(NSAllLibrariesDirectory, 0xFFFFuLL, 1);
  v7 = [v6 count];
  v30 = &v28;
  v33 = &v28 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 8 * v7;
  bzero(v33, 8 * v7);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v35 = v6;
  v8 = [v35 countByEnumeratingWithState:&v44 objects:v49 count:16];
  v31 = v5;
  v28 = v7;
  if (v8)
  {
    v9 = v8;
    v34 = 0;
    v36 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(v35);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v12 = componentsCopy;
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
        v14 = v11;
        if (v13)
        {
          v15 = v13;
          v16 = *v41;
          v14 = v11;
          do
          {
            v17 = 0;
            v18 = v14;
            do
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v14 = [v18 stringByAppendingPathComponent:{*(*(&v40 + 1) + 8 * v17), v28}];

              ++v17;
              v18 = v14;
            }

            while (v15 != v17);
            v15 = [v12 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v15);
        }

        v39 = 0;
        if ([managerCopy fileExistsAtPath:v14 isDirectory:&v39] && v39 == 1)
        {
          v19 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:1];
          v20 = v34 + 1;
          v21 = *&v33[8 * v34];
          *&v33[8 * v34] = v19;

          if (AppBooleanValue)
          {
            NSLog(&cfstr_RilFoundImageL.isa, v11);
          }

          v34 = v20;
        }
      }

      v9 = [v35 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v9);
  }

  else
  {
    v34 = 0;
  }

  v22 = objc_alloc(MEMORY[0x1E695DEC8]);
  v23 = v33;
  v24 = [v22 initWithObjects:v33 count:v34];
  v25 = v29;
  if (v28)
  {
    v26 = v23 - 8;
    do
    {

      v25 -= 8;
    }

    while (v25);
  }

  objc_autoreleasePoolPop(v31);

  return v24;
}

@end