@interface HFWallpaperLegacyFileManager
- (HFWallpaperLegacyFileManager)init;
- (id)clearAllWallpapers;
- (id)filenameForType:(int64_t)type variant:(int64_t)variant;
- (void)migrateCache:(id)cache;
@end

@implementation HFWallpaperLegacyFileManager

- (HFWallpaperLegacyFileManager)init
{
  v6.receiver = self;
  v6.super_class = HFWallpaperLegacyFileManager;
  v2 = [(HFWallpaperLegacyFileManager *)&v6 init];
  if (v2)
  {
    v3 = +[HFUtilities wallpaperURL];
    wallpaperFolderURL = v2->_wallpaperFolderURL;
    v2->_wallpaperFolderURL = v3;
  }

  return v2;
}

- (void)migrateCache:(id)cache
{
  v69 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  wallpaperFolderURL = [(HFWallpaperLegacyFileManager *)self wallpaperFolderURL];

  if (wallpaperFolderURL)
  {
    v5 = 0x277CCA000uLL;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    wallpaperFolderURL2 = [(HFWallpaperLegacyFileManager *)self wallpaperFolderURL];
    path = [wallpaperFolderURL2 path];
    v9 = [defaultManager contentsOfDirectoryAtPath:path error:0];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (!v11)
    {
      goto LABEL_35;
    }

    v13 = v11;
    v58 = *MEMORY[0x277CCA1E8];
    v59 = *v61;
    *&v12 = 138412290;
    v50 = v12;
    v52 = v10;
    selfCopy = self;
    while (1)
    {
      v14 = 0;
      v57 = v13;
      do
      {
        if (*v61 != v59)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v60 + 1) + 8 * v14);
        wallpaperFolderURL3 = [(HFWallpaperLegacyFileManager *)self wallpaperFolderURL];
        v17 = [wallpaperFolderURL3 URLByAppendingPathComponent:v15];

        defaultManager2 = [*(v5 + 2560) defaultManager];
        path2 = [v17 path];
        v20 = [defaultManager2 attributesOfItemAtPath:path2 error:0];

        fileType = [v20 fileType];
        LODWORD(path2) = [fileType isEqualToString:v58];

        if (path2)
        {
          v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v15];
          if (v22)
          {
            v23 = v22;
            v24 = [v17 URLByAppendingPathComponent:@"info.plist"];
            v25 = MEMORY[0x277CBEAC0];
            path3 = [v24 path];
            v27 = [v25 dictionaryWithContentsOfFile:path3];

            v28 = v27;
            if (v27)
            {
              v29 = [[HFWallpaper alloc] initWithDictionary:v27];
              p_super = &v29->super;
              if (v29)
              {
                v54 = v24;
                v55 = v28;
                v31 = [(HFWallpaperLegacyFileManager *)self filenameForType:[(HFWallpaper *)v29 type] variant:0];
                v32 = [v17 URLByAppendingPathComponent:v31];

                v33 = MEMORY[0x277D755B8];
                defaultManager3 = [*(v5 + 2560) defaultManager];
                v56 = v32;
                path4 = [v32 path];
                v36 = [defaultManager3 contentsAtPath:path4];
                mainScreen = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen scale];
                v38 = [v33 imageWithData:v36 scale:?];

                v39 = HFLogForCategory(0x4EuLL);
                v40 = v39;
                if (v38)
                {
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v65 = p_super;
                    v66 = 2112;
                    v67 = v23;
                    _os_log_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_DEFAULT, "Migrating wallpaper %@ for HomeKit identifier %@", buf, 0x16u);
                  }

                  cacheCopy[2](cacheCopy, v23, p_super, v38);
                  v5 = 0x277CCA000uLL;
                  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
                  path5 = [v17 path];
                  v43 = [defaultManager4 removeItemAtPath:path5 error:0];

                  v10 = v52;
                  v24 = v54;
                  if ((v43 & 1) == 0)
                  {
                    v40 = HFLogForCategory(0x4EuLL);
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      path6 = [v17 path];
                      *buf = v50;
                      v65 = path6;
                      _os_log_error_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_ERROR, "Failed to remove wallpaper at path %@", buf, 0xCu);

                      goto LABEL_26;
                    }

                    goto LABEL_27;
                  }
                }

                else
                {
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    path7 = [v56 path];
                    *buf = v50;
                    v65 = path7;
                    _os_log_error_impl(&dword_20D9BF000, v40, OS_LOG_TYPE_ERROR, "Failed to read original wallpaper at path %@", buf, 0xCu);
                  }

                  v10 = v52;
LABEL_26:
                  v24 = v54;
LABEL_27:

                  v5 = 0x277CCA000;
                }

                self = selfCopy;
LABEL_29:
                v28 = v55;
              }

              else
              {
                v56 = HFLogForCategory(0x4EuLL);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  [v17 path];
                  v47 = v55 = v28;
                  *buf = 138412546;
                  v65 = v47;
                  v66 = 2112;
                  v67 = v55;
                  _os_log_error_impl(&dword_20D9BF000, v56, OS_LOG_TYPE_ERROR, "Failed to create wallpaper at path %@ from dict %@", buf, 0x16u);

                  goto LABEL_29;
                }
              }
            }

            else
            {
              p_super = HFLogForCategory(0x4EuLL);
              if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
              {
                path8 = [v24 path];
                *buf = v50;
                v65 = path8;
                _os_log_error_impl(&dword_20D9BF000, p_super, OS_LOG_TYPE_ERROR, "No wallpaper found at path %@", buf, 0xCu);

                v28 = 0;
              }
            }
          }

          else
          {
            v23 = HFLogForCategory(0x4EuLL);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              path9 = [v17 path];
              *buf = v50;
              v65 = path9;
              _os_log_error_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_ERROR, "Unable to migrate non-wallpaper directory %@", buf, 0xCu);
            }
          }

          v13 = v57;
        }

        ++v14;
      }

      while (v13 != v14);
      v13 = [v10 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (!v13)
      {
LABEL_35:

        goto LABEL_38;
      }
    }
  }

  v10 = HFLogForCategory(0x4EuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Unable to access wallpaper directory", buf, 2u);
  }

LABEL_38:

  v49 = *MEMORY[0x277D85DE8];
}

- (id)clearAllWallpapers
{
  v16 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  wallpaperFolderURL = [(HFWallpaperLegacyFileManager *)self wallpaperFolderURL];
  path = [wallpaperFolderURL path];
  v13 = 0;
  v6 = [defaultManager removeItemAtPath:path error:&v13];
  v7 = v13;

  if ((v6 & 1) == 0)
  {
    v8 = HFLogForCategory(0x4EuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      wallpaperFolderURL2 = [(HFWallpaperLegacyFileManager *)self wallpaperFolderURL];
      path2 = [wallpaperFolderURL2 path];
      *buf = 138412290;
      v15 = path2;
      _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to remove all wallpapers at path %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)filenameForType:(int64_t)type variant:(int64_t)variant
{
  v5 = @".jpg";
  if (!type)
  {
    v5 = @".png";
  }

  v6 = v5;
  switch(variant)
  {
    case 2:
      v7 = @"blurred";
      goto LABEL_9;
    case 1:
      v7 = @"processed";
      goto LABEL_9;
    case 0:
      v7 = @"original";
LABEL_9:
      v8 = [(__CFString *)v7 stringByAppendingString:v6];
      goto LABEL_11;
  }

  NSLog(&cfstr_UnknownValueFo.isa, variant);
  v8 = 0;
LABEL_11:

  return v8;
}

@end