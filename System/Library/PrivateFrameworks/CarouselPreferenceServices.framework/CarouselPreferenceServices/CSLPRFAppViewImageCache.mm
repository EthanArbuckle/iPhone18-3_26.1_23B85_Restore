@interface CSLPRFAppViewImageCache
+ (id)getImageForLauncherMode:(int64_t)mode;
+ (void)storeImage:(id)image forLauncherMode:(int64_t)mode;
@end

@implementation CSLPRFAppViewImageCache

+ (id)getImageForLauncherMode:(int64_t)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = CSLPRFCachedAppViewImageURL(mode);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, ">>>> no path for app view image", &v9, 2u);
    }

    goto LABEL_10;
  }

  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> could not read from %@", &v9, 0xCu);
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> read data from %@", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277D755B8] imageWithData:v5 scale:2.0];

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)storeImage:(id)image forLauncherMode:(int64_t)mode
{
  image = image;
  v5 = CSLPRFCachedAppViewImageURL(mode);
  if (v5)
  {
    v6 = UIImagePNGRepresentation(image);
    [v6 writeToURL:v5 atomically:1];
  }
}

@end