@interface CRSUIWallpaperPreferences
- (BOOL)_hasGaugeClusterScreen;
- (BOOL)updateWallpaperToSupportDynamicAppearance;
- (CRSUIWallpaper)currentWallpaper;
- (CRSUIWallpaperPreferences)initWithDataProvider:(id)a3;
- (id)wallpaperForLayoutIdentifier:(id)a3;
- (id)wallpaperFromThemeData:(id)a3;
- (void)setCurrentWallpaper:(id)a3;
- (void)setStagedWallpaper:(id)a3;
- (void)setVehicle:(id)a3;
- (void)updateThemeData:(id)a3;
- (void)updateWallpaperToSupportDynamicAppearance;
@end

@implementation CRSUIWallpaperPreferences

- (CRSUIWallpaper)currentWallpaper
{
  stagedWallpaper = self->_stagedWallpaper;
  if (stagedWallpaper)
  {
    v3 = stagedWallpaper;
  }

  else
  {
    v5 = [(CRSUIWallpaperPreferences *)self vehicle];
    v6 = [(CRSUIWallpaperPreferences *)self dataProvider];
    v7 = [v6 displayID];
    v8 = [v5 wallpaperForDisplayWithID:v7];

    if (!v8 || (-[CRSUIWallpaperPreferences dataProvider](self, "dataProvider"), v9 = objc_claimAutoreleasedReturnValue(), [v9 loadWallpaperFromData:v8], v3 = objc_claimAutoreleasedReturnValue(), v9, !v3))
    {
      v10 = [(CRSUIWallpaperPreferences *)self dataProvider];
      v11 = [v10 defaultWallpapers];
      v3 = [v11 firstObject];
    }
  }

  return v3;
}

- (CRSUIWallpaperPreferences)initWithDataProvider:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CRSUIWallpaperPreferences;
  v6 = [(CRSUIWallpaperPreferences *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF8A68]);
    vehicleManager = v6->_vehicleManager;
    v6->_vehicleManager = v7;

    objc_storeStrong(&v6->_dataProvider, a3);
  }

  return v6;
}

- (void)setVehicle:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(CRSUIWallpaperPreferences *)self vehicle];
  v7 = [(CRSUIWallpaperPreferences *)self dataProvider];
  v8 = [v7 displayID];
  v9 = [v6 wallpaperForDisplayWithID:v8];

  v10 = [(CRSUIWallpaperPreferences *)self dataProvider];
  v11 = [v10 displayID];
  v12 = [v5 wallpaperForDisplayWithID:v11];

  if (v9 == v12)
  {
    objc_storeStrong(&self->_vehicle, a3);
  }

  else
  {
    v13 = [v9 identifier];
    v14 = [v12 identifier];
    v15 = [v13 isEqualToString:v14];

    objc_storeStrong(&self->_vehicle, a3);
    if ((v15 & 1) == 0)
    {
      v16 = CRSUILogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v12 description];
        v20 = 138543362;
        v21 = v17;
        _os_log_impl(&dword_243218000, v16, OS_LOG_TYPE_DEFAULT, "[CRSUIWallpaperPreferences] Vehicle #wallpaper preference changed: %{public}@", &v20, 0xCu);
      }

      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      [v18 postNotificationName:@"CRSUIWallpaperChangedNotification" object:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setStagedWallpaper:(id)a3
{
  v9 = a3;
  v5 = [v9 identifier];
  v6 = [(CRSUIWallpaperPreferences *)self currentWallpaper];
  v7 = [v6 identifier];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    objc_storeStrong(&self->_stagedWallpaper, a3);
  }
}

- (id)wallpaperFromThemeData:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIWallpaperPreferences *)self dataProvider];
  v6 = [v5 displayID];

  if (v6 && ([v4 objectForKeyedSubscript:v6], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "currentWallpaper"), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [(CRSUIWallpaperPreferences *)self dataProvider];
    v10 = [v9 loadWallpaperFromData:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateThemeData:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRSUIWallpaperPreferences *)self vehicle];
  v6 = [v5 displayThemeData];
  v7 = [v6 isEqualToDictionary:v4];

  if (v7)
  {
    v8 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243218000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring duplicated update to theme data", buf, 2u);
    }

    goto LABEL_26;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = v4;
  v9 = v4;
  v40 = [v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v40)
  {
    v39 = *v46;
    while (2)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        v12 = [v9 objectForKeyedSubscript:v11];
        v13 = self;
        v14 = [(CRSUIWallpaperPreferences *)self vehicle];
        v15 = [v14 displayThemeData];
        v16 = [v15 objectForKeyedSubscript:v11];

        v17 = [v12 currentWallpaper];
        v18 = [v17 identifier];
        v19 = [v16 currentWallpaper];
        v20 = [v19 identifier];
        v21 = [v18 isEqualToString:v20];

        if (!v21)
        {
          v22 = 1;
          self = v13;
          goto LABEL_14;
        }

        self = v13;
      }

      v40 = [v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_14:

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v42;
    while (2)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v23 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * j)];
        v29 = [(CRSUIWallpaperPreferences *)self dataProvider];
        v30 = [v28 currentWallpaper];
        v31 = [v29 loadWallpaperFromData:v30];

        v32 = [v31 traits];
        LODWORD(v30) = [v32 supportsDynamicAppearance];

        if (!v30)
        {

          v34 = [(CRSUIWallpaperPreferences *)self vehicle];
          [v34 setDisplayThemeData:v23];

          v33 = [(CRSUIWallpaperPreferences *)self vehicle];
          [v33 setAppearanceModePreference:2];
          goto LABEL_24;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v33 = [(CRSUIWallpaperPreferences *)self vehicle];
  [v33 setDisplayThemeData:v23];
LABEL_24:

  v35 = [(CRSUIWallpaperPreferences *)self vehicleManager];
  v36 = [(CRSUIWallpaperPreferences *)self vehicle];
  [v35 saveVehicle:v36 completion:&__block_literal_global_3];

  v4 = v38;
  if (v22)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 postNotificationName:@"CRSUIWallpaperChangedNotification" object:0];
LABEL_26:
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __45__CRSUIWallpaperPreferences_updateThemeData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __45__CRSUIWallpaperPreferences_updateThemeData___block_invoke_cold_1();
    }
  }
}

void __57__CRSUIWallpaperPreferences_updateHasGaugeClusterScreen___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __45__CRSUIWallpaperPreferences_updateThemeData___block_invoke_cold_1();
    }
  }
}

- (id)wallpaperForLayoutIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIWallpaperPreferences *)self vehicle];
  v6 = [v5 displayThemeData];

  if (v6)
  {
    v7 = [(CRSUIWallpaperPreferences *)self vehicle];
    v8 = [v7 displayThemeData];
    v9 = [(CRSUIWallpaperPreferences *)self dataProvider];
    v10 = [v9 displayID];
    v11 = [v8 objectForKeyedSubscript:v10];

    v12 = [(CRSUIWallpaperPreferences *)self dataProvider];
    v13 = [v11 wallpaperForLayout];
    v14 = [v13 objectForKey:v4];
    v15 = [v12 loadWallpaperFromData:v14];
  }

  else
  {
    v16 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(CRSUIWallpaperPreferences *)self wallpaperForLayoutIdentifier:v16];
    }

    v15 = [(CRSUIWallpaperPreferences *)self currentWallpaper];
  }

  return v15;
}

- (void)setCurrentWallpaper:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRSUIWallpaperPreferences *)self vehicle];
  v6 = [(CRSUIWallpaperPreferences *)self dataProvider];
  v7 = [v6 displayID];
  v8 = [v5 wallpaperForDisplayWithID:v7];

  v9 = [v8 identifier];
  v10 = [v4 data];
  v11 = [v10 identifier];
  v12 = [v9 isEqualToString:v11];

  [(CRSUIWallpaperPreferences *)self setStagedWallpaper:0];
  v13 = CRSUILogForCategory(0);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = [v4 identifier];
      v25 = 138543362;
      v26 = v15;
      _os_log_impl(&dword_243218000, v13, OS_LOG_TYPE_DEFAULT, "[CRSUIWallpaperPreferences] Ignoring #wallpaper update to %{public}@ for vehicle", &v25, 0xCu);
    }
  }

  else
  {
    if (v14)
    {
      v16 = [v4 identifier];
      v25 = 138543362;
      v26 = v16;
      _os_log_impl(&dword_243218000, v13, OS_LOG_TYPE_DEFAULT, "[CRSUIWallpaperPreferences] Setting #wallpaper %{public}@ for vehicle", &v25, 0xCu);
    }

    v17 = [(CRSUIWallpaperPreferences *)self vehicle];
    v18 = [v4 data];
    v19 = [(CRSUIWallpaperPreferences *)self dataProvider];
    v20 = [v19 displayID];
    v21 = [v4 traits];
    [v17 setWallpaper:v18 forDisplayWithID:v20 requiresDarkAppearance:{objc_msgSend(v21, "supportsDynamicAppearance") ^ 1}];

    v22 = [(CRSUIWallpaperPreferences *)self vehicleManager];
    v23 = [(CRSUIWallpaperPreferences *)self vehicle];
    [v22 saveVehicle:v23 completion:&__block_literal_global_34];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"CRSUIWallpaperChangedNotification" object:0];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __49__CRSUIWallpaperPreferences_setCurrentWallpaper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __45__CRSUIWallpaperPreferences_updateThemeData___block_invoke_cold_1();
    }
  }
}

- (BOOL)updateWallpaperToSupportDynamicAppearance
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(CRSUIWallpaperPreferences *)self dataProvider];
  v4 = [(CRSUIWallpaperPreferences *)self vehicle];
  v5 = [v3 dynamicAppearanceWallpapersForVehicle:v4];

  if ([v5 count])
  {
    v6 = [(CRSUIWallpaperPreferences *)self vehicle];
    v7 = [v6 displayThemeData];
    if (v7)
    {
      v8 = v7;
      v9 = [(CRSUIWallpaperPreferences *)self dataProvider];
      v10 = [v9 displayID];

      if (!v10)
      {
        v32 = self;
        v11 = [(CRSUIWallpaperPreferences *)self vehicle];
        v12 = [v11 displayThemeData];
        v13 = [v12 mutableCopy];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = v5;
        v15 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v34;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              objc_opt_class();
              v21 = v20;
              if (v21 && (objc_opt_isKindOfClass() & 1) != 0)
              {
                v22 = v21;
              }

              else
              {
                v22 = 0;
              }

              if (v22)
              {
                v23 = [v21 displayID];
                v24 = [v13 objectForKey:v23];

                if (v24)
                {
                  v25 = [v21 data];
                  v26 = [v24 themeDataWithCurrentWallpaper:v25];
                  v27 = [v21 displayID];
                  [v13 setObject:v26 forKey:v27];

                  v17 = 1;
                }
              }

              else
              {
                v24 = CRSUILogForCategory(6uLL);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
                {
                  [(CRSUIWallpaperPreferences *)v37 updateWallpaperToSupportDynamicAppearance:v21];
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v16);
        }

        else
        {
          v17 = 0;
        }

        [(CRSUIWallpaperPreferences *)v32 updateThemeData:v13];
        goto LABEL_31;
      }
    }

    else
    {
    }

    if ([v5 count] != 1)
    {
      [CRSUIWallpaperPreferences updateWallpaperToSupportDynamicAppearance];
    }

    v29 = [v5 firstObject];
    v17 = v29 != 0;
    if (v29)
    {
      [(CRSUIWallpaperPreferences *)self setCurrentWallpaper:v29];
    }
  }

  else
  {
    v28 = CRSUILogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(CRSUIWallpaperPreferences *)v28 updateWallpaperToSupportDynamicAppearance];
    }

    v17 = 0;
  }

LABEL_31:

  v30 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_hasGaugeClusterScreen
{
  v2 = [(CRSUIWallpaperPreferences *)self vehicle];
  v3 = [v2 hasGaugeClusterScreen];
  v4 = [v3 BOOLValue];

  return v4;
}

void __45__CRSUIWallpaperPreferences_updateThemeData___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_243218000, v0, v1, "Error saving vehicle: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)wallpaperForLayoutIdentifier:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 vehicle];
  v5 = [v4 assetDescription];
  v6 = [a1 vehicle];
  v7 = [v6 wallpaperDescription];
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_fault_impl(&dword_243218000, a2, OS_LOG_TYPE_FAULT, "Vehicle missing theme data. Asset: %@ Wallpaper: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateWallpaperToSupportDynamicAppearance
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138543362;
  *a3 = v8;
  _os_log_fault_impl(&dword_243218000, a4, OS_LOG_TYPE_FAULT, "Unsupported wallpaper type: %{public}@", a1, 0xCu);
}

@end