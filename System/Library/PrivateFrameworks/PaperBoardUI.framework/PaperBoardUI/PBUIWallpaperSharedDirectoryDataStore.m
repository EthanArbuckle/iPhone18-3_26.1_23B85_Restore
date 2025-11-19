@interface PBUIWallpaperSharedDirectoryDataStore
- (PBUIWallpaperSharedDirectoryDataStore)initWithDirectoryURL:(id)a3;
- (id)directoryCreationAttributes;
- (void)didWriteFileToURL:(id)a3;
@end

@implementation PBUIWallpaperSharedDirectoryDataStore

- (PBUIWallpaperSharedDirectoryDataStore)initWithDirectoryURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = PBUIWallpaperSharedDirectoryDataStore;
  v3 = [(PBUIWallpaperDirectoryDataStore *)&v6 initWithDirectoryURL:a3];
  v4 = v3;
  if (v3)
  {
    [(PBUIWallpaperDirectoryDataStore *)v3 setSupportsWallpaperOptions:1];
  }

  return v4;
}

- (id)directoryCreationAttributes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CCA180];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:511];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)didWriteFileToURL:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PBUIWallpaperSharedDirectoryDataStore;
  [(PBUIWallpaperDirectoryDataStore *)&v14 didWriteFileToURL:v4];
  v13 = 0;
  v5 = *MEMORY[0x277CBE830];
  v6 = [v4 getResourceValue:&v13 forKey:*MEMORY[0x277CBE830] error:0];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    CFFileSecuritySetMode(v7, 0x1B6u);
    v12 = 0;
    v9 = [v4 setResourceValue:v8 forKey:v5 error:&v12];
    v10 = v12;
    if ((v9 & 1) == 0)
    {
      v11 = PBUILogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PBUIWallpaperSharedDirectoryDataStore didWriteFileToURL:];
      }
    }
  }
}

@end