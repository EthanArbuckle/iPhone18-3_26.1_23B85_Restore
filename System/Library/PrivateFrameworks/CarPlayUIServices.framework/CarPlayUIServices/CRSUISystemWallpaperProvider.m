@interface CRSUISystemWallpaperProvider
- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate;
- (id)defaultWallpapers;
- (id)dynamicAppearanceWallpapersForVehicle:(id)a3;
- (id)loadWallpaperFromData:(id)a3;
- (id)resolveWallpaper:(id)a3;
@end

@implementation CRSUISystemWallpaperProvider

- (id)defaultWallpapers
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[CRSUISystemWallpaper defaultWallpaper];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dynamicAppearanceWallpapersForVehicle:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 previousSystemWallpaperData];
  if (v4)
  {
    v5 = [(CRSUISystemWallpaperProvider *)self loadWallpaperFromData:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 traits];
      v8 = [v7 supportsDynamicAppearance];

      if (v8)
      {
        v17[0] = v6;
        v9 = MEMORY[0x277CBEA60];
        v10 = v17;
LABEL_8:
        v12 = [v9 arrayWithObjects:v10 count:1];
        goto LABEL_12;
      }
    }
  }

  v11 = [(CRSUISystemWallpaperProvider *)self wallpapers];
  v6 = [v11 bs_firstObjectPassingTest:&__block_literal_global_235];

  if (v6)
  {
    v16 = v6;
    v9 = MEMORY[0x277CBEA60];
    v10 = &v16;
    goto LABEL_8;
  }

  v13 = CRSUILogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [CRSUISystemWallpaperProvider dynamicAppearanceWallpapersForVehicle:v13];
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __70__CRSUISystemWallpaperProvider_dynamicAppearanceWallpapersForVehicle___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 traits];
  v3 = [v2 supportsDynamicAppearance];

  return v3;
}

- (id)loadWallpaperFromData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [CRSUISystemWallpaper alloc];
    v5 = [v3 identifier];
    v6 = [(CRSUISystemWallpaper *)v4 initWithIdentifier:v5];
  }

  else
  {
    v7 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [CRSUISystemWallpaperProvider loadWallpaperFromData:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)resolveWallpaper:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 resolveWallpaper];
  }

  else
  {
    v5 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [CRSUISystemWallpaperProvider loadWallpaperFromData:];
    }

    v4 = 0;
  }

  return v4;
}

- (CRSUIWallpaperDataProvidingDelegate)dataProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->dataProviderDelegate);

  return WeakRetained;
}

- (void)loadWallpaperFromData:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1(&dword_243218000, v2, v3, "Unsupported wallpaper type: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end