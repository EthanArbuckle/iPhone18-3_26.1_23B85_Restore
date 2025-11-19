@interface PBUIMagicWallpaperEnsure
@end

@implementation PBUIMagicWallpaperEnsure

void ___PBUIMagicWallpaperEnsure_block_invoke()
{
  v75 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = __identifierClassMap;
  __identifierClassMap = v0;

  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (![v2 count])
  {
    goto LABEL_47;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x223D62940]();
  v49 = v2;
  v5 = [v2 objectAtIndex:0];
  v6 = [v5 stringByAppendingPathComponent:@"ProceduralWallpaper"];
  v7 = [v4 stringByAppendingPathComponent:v6];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 contentsOfDirectoryAtPath:v7 error:0];

  v10 = [v9 countByEnumeratingWithState:&v61 objects:v70 count:16];
  v53 = v7;
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = v10;
  v12 = *v62;
  v50 = *v62;
  v51 = v9;
  do
  {
    v13 = 0;
    v54 = v11;
    do
    {
      if (*v62 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v61 + 1) + 8 * v13);
      v15 = [v14 pathExtension];
      v16 = [v15 caseInsensitiveCompare:@"bundle"];

      if (!v16)
      {
        v55 = v13;
        v17 = [v53 stringByAppendingPathComponent:v14];
        v18 = [MEMORY[0x277CCA8D8] bundleWithPath:v17];
        v19 = v18;
        if (v18)
        {
          if ([v18 load])
          {
            v52 = v17;
            v20 = [v19 objectForInfoDictionaryKey:@"SBProceduralWallpaperClassNames"];
            v21 = v20;
            if (v20)
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v22 = [v20 countByEnumeratingWithState:&v57 objects:v69 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v58;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v58 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v57 + 1) + 8 * i);
                    v27 = [v19 classNamed:v26];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = PBUIMagicWallpaperDictionariesForClass(v27, v19);
                      [v3 addObjectsFromArray:v29];

                      v30 = __identifierClassMap;
                      v31 = [v28 identifier];
                      [v30 setObject:v28 forKey:v31];
                    }

                    else
                    {
                      v31 = PBUILogCommon();
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v74 = v26;
                        _os_log_error_impl(&dword_21E67D000, v31, OS_LOG_TYPE_ERROR, "Unable to load wallpaper class %{public}@, class does not exist in bundle", buf, 0xCu);
                      }
                    }
                  }

                  v23 = [v21 countByEnumeratingWithState:&v57 objects:v69 count:16];
                }

                while (v23);
                v12 = v50;
                v9 = v51;
              }
            }

            else
            {
              v34 = PBUILogCommon();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v74 = v52;
                _os_log_error_impl(&dword_21E67D000, v34, OS_LOG_TYPE_ERROR, "Unable to load wallpaper plugin, no defined wallpaper class names - %{public}@", buf, 0xCu);
              }

              [v19 unload];
            }

            v17 = v52;
            goto LABEL_32;
          }

          v21 = PBUILogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v74 = v17;
            v32 = v21;
            v33 = "Unable to load wallpaper plugin, bundle load failure - %{public}@";
LABEL_27:
            _os_log_error_impl(&dword_21E67D000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);
          }
        }

        else
        {
          v21 = PBUILogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v74 = v17;
            v32 = v21;
            v33 = "Unable to load wallpaper plugin, path is not a bundle - %{public}@";
            goto LABEL_27;
          }
        }

LABEL_32:

        v11 = v54;
        v13 = v55;
      }

      ++v13;
    }

    while (v13 != v11);
    v11 = [v9 countByEnumeratingWithState:&v61 objects:v70 count:16];
  }

  while (v11);
LABEL_35:

  v35 = v3;
  v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v38 = v35;
  v39 = [v38 countByEnumeratingWithState:&v65 objects:buf count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v66;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v66 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v65 + 1) + 8 * j);
        v44 = [v43 objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
        v45 = [v44 isEqualToString:@"360 VR"];
        v46 = v36;
        if ((v45 & 1) == 0)
        {
          if ([v44 isEqualToString:@"Pano VR"])
          {
            v46 = v56;
          }

          else
          {
            v46 = v37;
          }
        }

        [v46 addObject:v43];
      }

      v40 = [v38 countByEnumeratingWithState:&v65 objects:buf count:16];
    }

    while (v40);
  }

  v71[0] = @"kSBUIMagicWallpaperPanoVRSectionKey";
  v71[1] = @"kSBUIMagicWallpaper360VRSectionKey";
  v72[0] = v56;
  v72[1] = v36;
  v71[2] = @"kSBUIMagicWallpaperDynamicSectionKey";
  v72[2] = v37;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:3];
  v48 = __wallpaperEnumeration;
  __wallpaperEnumeration = v47;

  v2 = v49;
LABEL_47:
}

@end