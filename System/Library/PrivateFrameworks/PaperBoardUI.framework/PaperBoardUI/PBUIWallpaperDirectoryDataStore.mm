@interface PBUIWallpaperDirectoryDataStore
+ (NSURL)defaultDirectoryURL;
- (BOOL)copyVideoAtURL:(id)a3 toURL:(id)a4;
- (BOOL)hasWallpaperImageForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (BOOL)setOriginalVideoURL:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (BOOL)setVideoURL:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (BOOL)setWallpaperImage:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (BOOL)setWallpaperOptions:(id)a3 forVariants:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (BOOL)setWallpaperOriginalImage:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (BOOL)setWallpaperThumbnailData:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5;
- (PBUIWallpaperDirectoryDataStore)init;
- (PBUIWallpaperDirectoryDataStore)initWithDirectoryURL:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)verifiedOriginalVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)verifiedVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperImageForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperImageURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperOptionsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperOptionsURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperOriginalImageForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperOriginalImageURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperOriginalVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperThumbnailDataForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperThumbnailURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (id)wallpaperVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4;
- (void)cleanup;
- (void)createDirectory;
- (void)moveWallpaperImageDataTypes:(unint64_t)a3 fromVariant:(int64_t)a4 toVariant:(int64_t)a5;
- (void)removeVideoForVariant:(int64_t)a3;
- (void)removeWallpaperImageDataTypes:(unint64_t)a3 forVariants:(int64_t)a4;
- (void)removeWallpaperOptionsForVariants:(int64_t)a3;
@end

@implementation PBUIWallpaperDirectoryDataStore

+ (NSURL)defaultDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/SpringBoard"];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (PBUIWallpaperDirectoryDataStore)initWithDirectoryURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PBUIWallpaperDirectoryDataStore;
  v5 = [(PBUIWallpaperDirectoryDataStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    directoryURL = v5->_directoryURL;
    v5->_directoryURL = v6;
  }

  return v5;
}

- (void)cleanup
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v4 = __possibleWallpaperFileNames();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = *MEMORY[0x277CBE8A8];
  v64 = *MEMORY[0x277CBE8A8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
  v34 = v3;
  v8 = [v5 enumeratorAtURL:v3 includingPropertiesForKeys:v7 options:1 errorHandler:&__block_literal_global_9];

  v9 = [v8 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    v37 = v6;
    v38 = v4;
    v35 = *v55;
    v36 = v8;
    do
    {
      v12 = 0;
      v39 = v10;
      do
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v54 + 1) + 8 * v12);
        v52 = 0;
        v53 = 0;
        v14 = [v13 getResourceValue:&v53 forKey:v6 error:&v52];
        v15 = v53;
        v42 = v52;
        if (v14)
        {
          if (![v15 BOOLValue])
          {
            goto LABEL_38;
          }

          v40 = v15;
          v41 = v12;
          v16 = [v13 lastPathComponent];
          if (-[NSObject hasPrefix:](v16, "hasPrefix:", @".") && (-[NSObject pathExtension](v16, "pathExtension"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 length], v17, v18 == 6))
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v19 = v4;
            v20 = [v19 countByEnumeratingWithState:&v48 objects:v59 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v49;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  if ([v16 containsString:*(*(&v48 + 1) + 8 * i)])
                  {
                    v24 = [MEMORY[0x277CCAA00] defaultManager];
                    v47 = 0;
                    v25 = [v24 removeItemAtURL:v13 error:&v47];
                    v26 = v47;

                    v27 = PBUILogCommon();
                    v28 = v27;
                    if (v25)
                    {
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138543362;
                        v61 = v13;
                        _os_log_debug_impl(&dword_21E67D000, v28, OS_LOG_TYPE_DEBUG, "Removed bad wallpaper data @ URL %{public}@", buf, 0xCu);
                      }
                    }

                    else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v61 = v13;
                      v62 = 2114;
                      v63 = v26;
                      _os_log_error_impl(&dword_21E67D000, v28, OS_LOG_TYPE_ERROR, "Unable to remove bad wallpaper data @ URL %{public}@: %{public}@", buf, 0x16u);
                    }
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v48 objects:v59 count:16];
              }

              while (v21);
            }
          }

          else
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v29 = v4;
            v30 = [v29 countByEnumeratingWithState:&v43 objects:v58 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v44;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v44 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  if ([v16 hasPrefix:*(*(&v43 + 1) + 8 * j)])
                  {
                    [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v13];
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v43 objects:v58 count:16];
              }

              while (v31);
            }
          }

          v4 = v38;

          v8 = v36;
          v6 = v37;
          v11 = v35;
          v10 = v39;
        }

        else
        {
          v40 = v15;
          v41 = v12;
          v16 = PBUILogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v61 = v13;
            v62 = 2114;
            v63 = v42;
            _os_log_error_impl(&dword_21E67D000, v16, OS_LOG_TYPE_ERROR, "Unable to read resource type from directory URL %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v15 = v40;
        v12 = v41;
LABEL_38:

        ++v12;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v10);
  }
}

uint64_t __42__PBUIWallpaperDirectoryDataStore_cleanup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PBUILogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __42__PBUIWallpaperDirectoryDataStore_cleanup__block_invoke_cold_1();
  }

  return 1;
}

- (PBUIWallpaperDirectoryDataStore)init
{
  v3 = [objc_opt_class() defaultDirectoryURL];
  v4 = [(PBUIWallpaperDirectoryDataStore *)self initWithDirectoryURL:v3];

  return v4;
}

- (id)wallpaperImageURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v6 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperImageFilename(a3, a4);
  v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (id)wallpaperOriginalImageURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v6 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperOriginalImageFilename(a3, a4);
  if (v7)
  {
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)wallpaperThumbnailURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v6 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperThumbnailFilename(a3, a4);
  if (v7)
  {
    v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)wallpaperImageForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v7 = [PBUIWallpaperDirectoryDataStore wallpaperImageURLForVariant:"wallpaperImageURLForVariant:wallpaperMode:" wallpaperMode:?];
  v8 = v7;
  if (v7)
  {
    v26 = 0;
    v9 = PBUIWallpaperDataForFileURL(v7, &v26);
    v10 = v26;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = PBUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v24 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:a3 wallpaperMode:a4];
    LODWORD(v27[0]) = 138543362;
    *(v27 + 4) = v24;
    _os_log_debug_impl(&dword_21E67D000, v11, OS_LOG_TYPE_DEBUG, "Wallpaper file URL: %{public}@", v27, 0xCu);
  }

  v12 = PBUILogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperDirectoryDataStore wallpaperImageForVariant:v9 wallpaperMode:v12];
  }

  if (v9)
  {
    v27[0] = 0;
    cf = 0;
    ImagesFromData = CPBitmapCreateImagesFromData();
    if (ImagesFromData)
    {
      v14 = ImagesFromData;
      ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v27[0])
      {
        [v27[0] floatValue];
        v17 = v16;
      }

      else
      {
        v21 = [MEMORY[0x277D759A0] mainScreen];
        [v21 scale];
        v17 = v22;
      }

      v19 = [[PBUIWallpaperImage alloc] initWithCGImage:ValueAtIndex scale:0 orientation:v8 wallpaperFileURL:v17];
      CFRelease(v14);
    }

    else
    {
      v20 = PBUILogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PBUIWallpaperDirectoryDataStore wallpaperImageForVariant:v20 wallpaperMode:?];
      }

      v19 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v27[0])
    {
      CFRelease(v27[0]);
    }
  }

  else
  {
    v18 = PBUILogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PBUIWallpaperDirectoryDataStore wallpaperImageForVariant:v10 wallpaperMode:v18];
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)hasWallpaperImageForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:a3 wallpaperMode:a4];
  v5 = [v4 checkResourceIsReachableAndReturnError:0];

  return v5;
}

- (id)wallpaperThumbnailDataForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:a3 wallpaperMode:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)wallpaperOriginalImageForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:a3 wallpaperMode:a4];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [v4 path];
    v8 = [v6 imageWithContentsOfCPBitmapFile:v7 flags:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)createDirectory
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  if (v4)
  {
    v5 = [(PBUIWallpaperDirectoryDataStore *)self directoryCreationAttributes];
    v9 = 0;
    v6 = [v3 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:v5 error:&v9];
    v7 = v9;

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = PBUILogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PBUIWallpaperDirectoryDataStore createDirectory];
  }

LABEL_8:
}

- (BOOL)setWallpaperImage:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  if (!__hasEnoughFreeSpaceToSetWallpaper() || ([(PBUIWallpaperDirectoryDataStore *)self createDirectory], a4 == -1))
  {
    v11 = 0;
  }

  else
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:a4 wallpaperMode:a5];
    v10 = [v9 path];
    if (v10 && (([v8 writeToCPBitmapFile:v10 flags:1] & 1) != 0 || objc_msgSend(v8, "writeToCPBitmapFile:flags:", v10, 0)))
    {
      [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v9];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)setWallpaperOriginalImage:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  if (!__hasEnoughFreeSpaceToSetWallpaper() || ([(PBUIWallpaperDirectoryDataStore *)self createDirectory], a4 == -1))
  {
    v11 = 0;
  }

  else
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:a4 wallpaperMode:a5];
    v10 = [v9 path];
    if (v10 && (([v8 writeToCPBitmapFile:v10 flags:1] & 1) != 0 || objc_msgSend(v8, "writeToCPBitmapFile:flags:", v10, 0)))
    {
      [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v9];
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)setWallpaperThumbnailData:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4 != -1)
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:a4 wallpaperMode:a5];
    if (v9)
    {
      v16 = 0;
      v10 = [v8 writeToURL:v9 options:268435457 error:&v16];
      v11 = v16;
      if (v10)
      {
        [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v9];
        v12 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = PBUILogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = PBUIStringForWallpaperVariant(a4);
      *buf = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_INFO, "Error writing thumbnail for variant %{public}@ to disk at URL '%{public}@': %{public}@", buf, 0x20u);
    }

    v12 = 0;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)moveWallpaperImageDataTypes:(unint64_t)a3 fromVariant:(int64_t)a4 toVariant:(int64_t)a5
{
  v7 = a3;
  v19 = [MEMORY[0x277CCAA00] defaultManager];
  for (i = 0; i != 4; ++i)
  {
    if (v7)
    {
      v10 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:a4 wallpaperMode:i];
      v11 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperImageURLForVariant:a5 wallpaperMode:i];
      v12 = v11;
      if (v10 && v11)
      {
        [v19 moveItemAtURL:v10 toURL:v11 error:0];
      }

      if ((v7 & 4) == 0)
      {
LABEL_4:
        if ((v7 & 2) == 0)
        {
          continue;
        }

LABEL_14:
        v16 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:a4 wallpaperMode:i];
        v17 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalImageURLForVariant:a5 wallpaperMode:i];
        v18 = v17;
        if (v16 && v17)
        {
          [v19 moveItemAtURL:v16 toURL:v17 error:0];
        }

        continue;
      }
    }

    else if ((v7 & 4) == 0)
    {
      goto LABEL_4;
    }

    v13 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:a4 wallpaperMode:i];
    v14 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperThumbnailURLForVariant:a5 wallpaperMode:i];
    v15 = v14;
    if (v13 && v14)
    {
      [v19 moveItemAtURL:v13 toURL:v14 error:0];
    }

    if ((v7 & 2) != 0)
    {
      goto LABEL_14;
    }
  }
}

- (void)removeWallpaperImageDataTypes:(unint64_t)a3 forVariants:(int64_t)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PBUIWallpaperDirectoryDataStore_removeWallpaperImageDataTypes_forVariants___block_invoke;
  v19[3] = &unk_2783626B0;
  v21 = a3;
  v19[4] = self;
  v8 = v7;
  v20 = v8;
  PBUIWallpaperEnumerateVariantsForLocations(v4, v19);
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 removeItemAtURL:*(*(&v15 + 1) + 8 * v14++) error:{0, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v12);
  }
}

void __77__PBUIWallpaperDirectoryDataStore_removeWallpaperImageDataTypes_forVariants___block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = [*(a1 + 32) wallpaperImageURLForVariant:a2 wallpaperMode:i];
      if (v6)
      {
        [*(a1 + 40) addObject:v6];
      }

      v5 = *(a1 + 48);
      if ((v5 & 2) == 0)
      {
LABEL_4:
        if ((v5 & 4) == 0)
        {
          continue;
        }

LABEL_12:
        v8 = [*(a1 + 32) wallpaperThumbnailURLForVariant:a2 wallpaperMode:i];
        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        continue;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_4;
    }

    v7 = [*(a1 + 32) wallpaperOriginalImageURLForVariant:a2 wallpaperMode:i];
    if (v7)
    {
      [*(a1 + 40) addObject:v7];
    }

    if ((*(a1 + 48) & 4) != 0)
    {
      goto LABEL_12;
    }
  }
}

- (id)wallpaperVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v6 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperVideoFilename(a3, a4);
  v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (id)wallpaperOriginalVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v6 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v7 = __wallpaperOriginalVideoFilename(a3, a4);
  v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

- (id)verifiedVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v7 = [PBUIWallpaperDirectoryDataStore wallpaperVideoURLForVariant:"wallpaperVideoURLForVariant:wallpaperMode:" wallpaperMode:?];
  if (([v7 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v8 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:a3 wallpaperMode:a4];
    v9 = 0;
    if ([v8 checkResourceIsReachableAndReturnError:0])
    {
      v9 = v8;
    }

    v7 = v9;
  }

  return v7;
}

- (id)verifiedOriginalVideoURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  v4 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:a3 wallpaperMode:a4];
  if (([v4 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (BOOL)copyVideoAtURL:(id)a3 toURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqual:v7])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    [(PBUIWallpaperDirectoryDataStore *)self createDirectory];
    v9 = [MEMORY[0x277CE6650] assetWithURL:v6];
    v10 = v9;
    LOBYTE(v8) = 0;
    if (v7 && v9)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      [v11 removeItemAtURL:v7 error:0];
      v15 = 0;
      v8 = [v11 copyItemAtURL:v6 toURL:v7 error:&v15];
      v12 = v15;
      if (v8)
      {
        [(PBUIWallpaperDirectoryDataStore *)self didWriteFileToURL:v7];
      }

      else
      {
        v13 = PBUILogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(PBUIWallpaperDirectoryDataStore *)v7 copyVideoAtURL:v12 toURL:v13];
        }
      }
    }
  }

  return v8;
}

- (BOOL)setVideoURL:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperVideoURLForVariant:a4 wallpaperMode:a5];
  LOBYTE(a4) = [(PBUIWallpaperDirectoryDataStore *)self copyVideoAtURL:v8 toURL:v9];

  return a4;
}

- (BOOL)setOriginalVideoURL:(id)a3 forVariant:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v8 = a3;
  v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:a4 wallpaperMode:a5];
  LOBYTE(a4) = [(PBUIWallpaperDirectoryDataStore *)self copyVideoAtURL:v8 toURL:v9];

  return a4;
}

- (void)removeVideoForVariant:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  v7 = 0;
  *&v8 = 138543362;
  v16 = v8;
  do
  {
    v9 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperVideoURLForVariant:a3 wallpaperMode:v6, v16];
    if (!v9 || (v18 = v7, v10 = [v5 removeItemAtURL:v9 error:&v18], v11 = v18, v7, v7 = v11, (v10 & 1) == 0))
    {
      if (([v7 pbui_isFileNotFoundError] & 1) == 0)
      {
        v12 = PBUILogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v20 = v7;
          _os_log_error_impl(&dword_21E67D000, v12, OS_LOG_TYPE_ERROR, "Error removing video file: %{public}@", buf, 0xCu);
        }
      }
    }

    v13 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOriginalVideoURLForVariant:a3 wallpaperMode:v6];
    if (v13)
    {
      v17 = 0;
      v14 = [v5 removeItemAtURL:v13 error:&v17];
      v7 = v17;
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 0;
    }

    if (([v7 pbui_isFileNotFoundError] & 1) == 0)
    {
      v15 = PBUILogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = v16;
        v20 = v7;
        _os_log_error_impl(&dword_21E67D000, v15, OS_LOG_TYPE_ERROR, "Error removing original video file: %{public}@", buf, 0xCu);
      }
    }

LABEL_16:

    ++v6;
  }

  while (v6 != 4);
}

- (id)wallpaperOptionsURLForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  if (a3 == 1)
  {
    v5 = @"HomeWallpaperOptions";
  }

  else
  {
    if (a3)
    {
      goto LABEL_9;
    }

    v5 = @"LockWallpaperOptions";
  }

  if (a4 == 2)
  {
    v6 = PBUIStringForWallpaperMode(2uLL);
    v5 = [(__CFString *)v5 stringByAppendingString:v6];
  }

  v7 = [(__CFString *)v5 stringByAppendingString:@".plist"];

  if (v7)
  {
    v8 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
    v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];

    goto LABEL_10;
  }

LABEL_9:
  v9 = 0;
LABEL_10:

  return v9;
}

- (id)wallpaperOptionsForVariant:(int64_t)a3 wallpaperMode:(int64_t)a4
{
  if ([(PBUIWallpaperDirectoryDataStore *)self supportsWallpaperOptions])
  {
    v7 = [(PBUIWallpaperDirectoryDataStore *)self wallpaperOptionsURLForVariant:a3 wallpaperMode:a4];
    if (v7)
    {
      v8 = [[PBUIWallpaperOptions alloc] initWithContentsOfURL:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setWallpaperOptions:(id)a3 forVariants:(int64_t)a4 wallpaperMode:(int64_t)a5
{
  v6 = a4;
  v8 = a3;
  if ([(PBUIWallpaperDirectoryDataStore *)self supportsWallpaperOptions])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__PBUIWallpaperDirectoryDataStore_setWallpaperOptions_forVariants_wallpaperMode___block_invoke;
    v11[3] = &unk_2783626D8;
    v11[4] = self;
    v14 = a5;
    v12 = v8;
    v13 = &v15;
    PBUIWallpaperEnumerateVariantsForLocations(v6, v11);
    v9 = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __81__PBUIWallpaperDirectoryDataStore_setWallpaperOptions_forVariants_wallpaperMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) wallpaperOptionsURLForVariant:a2 wallpaperMode:*(a1 + 56)];
  v4 = v3;
  if (!v3 || (v6 = v3, v3 = [*(a1 + 40) writeToURL:v3 error:0], v4 = v6, (v3 & 1) == 0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)removeWallpaperOptionsForVariants:(int64_t)a3
{
  v3 = a3;
  if ([(PBUIWallpaperDirectoryDataStore *)self supportsWallpaperOptions])
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__PBUIWallpaperDirectoryDataStore_removeWallpaperOptionsForVariants___block_invoke;
    v7[3] = &unk_278362330;
    v7[4] = self;
    v8 = v5;
    v6 = v5;
    PBUIWallpaperEnumerateVariantsForLocations(v3, v7);
  }
}

void __69__PBUIWallpaperDirectoryDataStore_removeWallpaperOptionsForVariants___block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = [*(a1 + 32) wallpaperOptionsURLForVariant:a2 wallpaperMode:i];
    if (v5)
    {
      [*(a1 + 40) removeItemAtURL:v5 error:0];
    }
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperDirectoryDataStore *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(PBUIWallpaperDirectoryDataStore *)self directoryURL];
  v6 = [v4 appendObject:v5 withName:@"directoryURL"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperDirectoryDataStore *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)wallpaperImageForVariant:(void *)a1 wallpaperMode:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = [a1 length];
  v6 = 2048;
  v7 = a1;
  _os_log_debug_impl(&dword_21E67D000, a2, OS_LOG_TYPE_DEBUG, "Wallpaper file data length: %lu (%p)", &v4, 0x16u);
}

- (void)wallpaperImageForVariant:(uint64_t *)a1 wallpaperMode:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21E67D000, a2, OS_LOG_TYPE_ERROR, "Error deserializing wallpaper image: %{public}@", &v3, 0xCu);
}

- (void)wallpaperImageForVariant:(uint64_t)a1 wallpaperMode:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21E67D000, a2, OS_LOG_TYPE_DEBUG, "Error reading wallpaper file data: %@", &v2, 0xCu);
}

- (void)copyVideoAtURL:(NSObject *)a3 toURL:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_21E67D000, a3, OS_LOG_TYPE_ERROR, "Error writing video file to '%{public}@': %{public}@", &v6, 0x16u);
}

@end