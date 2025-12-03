@interface CRSUIWallpaperPreferences
- (BOOL)_hasGaugeClusterScreen;
- (BOOL)updateWallpaperToSupportDynamicAppearance;
- (CRSUIWallpaper)currentWallpaper;
- (CRSUIWallpaperPreferences)initWithDataProvider:(id)provider;
- (id)wallpaperForLayoutIdentifier:(id)identifier;
- (id)wallpaperFromThemeData:(id)data;
- (void)setCurrentWallpaper:(id)wallpaper;
- (void)setStagedWallpaper:(id)wallpaper;
- (void)setVehicle:(id)vehicle;
- (void)updateThemeData:(id)data;
- (void)updateWallpaperToSupportDynamicAppearance;
@end

@implementation CRSUIWallpaperPreferences

- (CRSUIWallpaper)currentWallpaper
{
  stagedWallpaper = self->_stagedWallpaper;
  if (stagedWallpaper)
  {
    firstObject = stagedWallpaper;
  }

  else
  {
    vehicle = [(CRSUIWallpaperPreferences *)self vehicle];
    dataProvider = [(CRSUIWallpaperPreferences *)self dataProvider];
    displayID = [dataProvider displayID];
    v8 = [vehicle wallpaperForDisplayWithID:displayID];

    if (!v8 || (-[CRSUIWallpaperPreferences dataProvider](self, "dataProvider"), v9 = objc_claimAutoreleasedReturnValue(), [v9 loadWallpaperFromData:v8], firstObject = objc_claimAutoreleasedReturnValue(), v9, !firstObject))
    {
      dataProvider2 = [(CRSUIWallpaperPreferences *)self dataProvider];
      defaultWallpapers = [dataProvider2 defaultWallpapers];
      firstObject = [defaultWallpapers firstObject];
    }
  }

  return firstObject;
}

- (CRSUIWallpaperPreferences)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = CRSUIWallpaperPreferences;
  v6 = [(CRSUIWallpaperPreferences *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF8A68]);
    vehicleManager = v6->_vehicleManager;
    v6->_vehicleManager = v7;

    objc_storeStrong(&v6->_dataProvider, provider);
  }

  return v6;
}

- (void)setVehicle:(id)vehicle
{
  v22 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  vehicle = [(CRSUIWallpaperPreferences *)self vehicle];
  dataProvider = [(CRSUIWallpaperPreferences *)self dataProvider];
  displayID = [dataProvider displayID];
  v9 = [vehicle wallpaperForDisplayWithID:displayID];

  dataProvider2 = [(CRSUIWallpaperPreferences *)self dataProvider];
  displayID2 = [dataProvider2 displayID];
  v12 = [vehicleCopy wallpaperForDisplayWithID:displayID2];

  if (v9 == v12)
  {
    objc_storeStrong(&self->_vehicle, vehicle);
  }

  else
  {
    identifier = [v9 identifier];
    identifier2 = [v12 identifier];
    v15 = [identifier isEqualToString:identifier2];

    objc_storeStrong(&self->_vehicle, vehicle);
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

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"CRSUIWallpaperChangedNotification" object:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setStagedWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  identifier = [wallpaperCopy identifier];
  currentWallpaper = [(CRSUIWallpaperPreferences *)self currentWallpaper];
  identifier2 = [currentWallpaper identifier];
  v8 = [identifier isEqualToString:identifier2];

  if ((v8 & 1) == 0)
  {
    objc_storeStrong(&self->_stagedWallpaper, wallpaper);
  }
}

- (id)wallpaperFromThemeData:(id)data
{
  dataCopy = data;
  dataProvider = [(CRSUIWallpaperPreferences *)self dataProvider];
  displayID = [dataProvider displayID];

  if (displayID && ([dataCopy objectForKeyedSubscript:displayID], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "currentWallpaper"), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    dataProvider2 = [(CRSUIWallpaperPreferences *)self dataProvider];
    v10 = [dataProvider2 loadWallpaperFromData:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateThemeData:(id)data
{
  v52 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  vehicle = [(CRSUIWallpaperPreferences *)self vehicle];
  displayThemeData = [vehicle displayThemeData];
  v7 = [displayThemeData isEqualToDictionary:dataCopy];

  if (v7)
  {
    defaultCenter = CRSUILogForCategory(0);
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_243218000, defaultCenter, OS_LOG_TYPE_DEFAULT, "Ignoring duplicated update to theme data", buf, 2u);
    }

    goto LABEL_26;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = dataCopy;
  v9 = dataCopy;
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
        selfCopy = self;
        vehicle2 = [(CRSUIWallpaperPreferences *)self vehicle];
        displayThemeData2 = [vehicle2 displayThemeData];
        v16 = [displayThemeData2 objectForKeyedSubscript:v11];

        currentWallpaper = [v12 currentWallpaper];
        identifier = [currentWallpaper identifier];
        currentWallpaper2 = [v16 currentWallpaper];
        identifier2 = [currentWallpaper2 identifier];
        v21 = [identifier isEqualToString:identifier2];

        if (!v21)
        {
          v22 = 1;
          self = selfCopy;
          goto LABEL_14;
        }

        self = selfCopy;
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
        dataProvider = [(CRSUIWallpaperPreferences *)self dataProvider];
        currentWallpaper3 = [v28 currentWallpaper];
        v31 = [dataProvider loadWallpaperFromData:currentWallpaper3];

        traits = [v31 traits];
        LODWORD(currentWallpaper3) = [traits supportsDynamicAppearance];

        if (!currentWallpaper3)
        {

          vehicle3 = [(CRSUIWallpaperPreferences *)self vehicle];
          [vehicle3 setDisplayThemeData:v23];

          vehicle4 = [(CRSUIWallpaperPreferences *)self vehicle];
          [vehicle4 setAppearanceModePreference:2];
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

  vehicle4 = [(CRSUIWallpaperPreferences *)self vehicle];
  [vehicle4 setDisplayThemeData:v23];
LABEL_24:

  vehicleManager = [(CRSUIWallpaperPreferences *)self vehicleManager];
  vehicle5 = [(CRSUIWallpaperPreferences *)self vehicle];
  [vehicleManager saveVehicle:vehicle5 completion:&__block_literal_global_3];

  dataCopy = v38;
  if (v22)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"CRSUIWallpaperChangedNotification" object:0];
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

- (id)wallpaperForLayoutIdentifier:(id)identifier
{
  identifierCopy = identifier;
  vehicle = [(CRSUIWallpaperPreferences *)self vehicle];
  displayThemeData = [vehicle displayThemeData];

  if (displayThemeData)
  {
    vehicle2 = [(CRSUIWallpaperPreferences *)self vehicle];
    displayThemeData2 = [vehicle2 displayThemeData];
    dataProvider = [(CRSUIWallpaperPreferences *)self dataProvider];
    displayID = [dataProvider displayID];
    v11 = [displayThemeData2 objectForKeyedSubscript:displayID];

    dataProvider2 = [(CRSUIWallpaperPreferences *)self dataProvider];
    wallpaperForLayout = [v11 wallpaperForLayout];
    v14 = [wallpaperForLayout objectForKey:identifierCopy];
    currentWallpaper = [dataProvider2 loadWallpaperFromData:v14];
  }

  else
  {
    v16 = CRSUILogForCategory(6uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(CRSUIWallpaperPreferences *)self wallpaperForLayoutIdentifier:v16];
    }

    currentWallpaper = [(CRSUIWallpaperPreferences *)self currentWallpaper];
  }

  return currentWallpaper;
}

- (void)setCurrentWallpaper:(id)wallpaper
{
  v27 = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  vehicle = [(CRSUIWallpaperPreferences *)self vehicle];
  dataProvider = [(CRSUIWallpaperPreferences *)self dataProvider];
  displayID = [dataProvider displayID];
  v8 = [vehicle wallpaperForDisplayWithID:displayID];

  identifier = [v8 identifier];
  data = [wallpaperCopy data];
  identifier2 = [data identifier];
  v12 = [identifier isEqualToString:identifier2];

  [(CRSUIWallpaperPreferences *)self setStagedWallpaper:0];
  defaultCenter = CRSUILogForCategory(0);
  v14 = os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      identifier3 = [wallpaperCopy identifier];
      v25 = 138543362;
      v26 = identifier3;
      _os_log_impl(&dword_243218000, defaultCenter, OS_LOG_TYPE_DEFAULT, "[CRSUIWallpaperPreferences] Ignoring #wallpaper update to %{public}@ for vehicle", &v25, 0xCu);
    }
  }

  else
  {
    if (v14)
    {
      identifier4 = [wallpaperCopy identifier];
      v25 = 138543362;
      v26 = identifier4;
      _os_log_impl(&dword_243218000, defaultCenter, OS_LOG_TYPE_DEFAULT, "[CRSUIWallpaperPreferences] Setting #wallpaper %{public}@ for vehicle", &v25, 0xCu);
    }

    vehicle2 = [(CRSUIWallpaperPreferences *)self vehicle];
    data2 = [wallpaperCopy data];
    dataProvider2 = [(CRSUIWallpaperPreferences *)self dataProvider];
    displayID2 = [dataProvider2 displayID];
    traits = [wallpaperCopy traits];
    [vehicle2 setWallpaper:data2 forDisplayWithID:displayID2 requiresDarkAppearance:{objc_msgSend(traits, "supportsDynamicAppearance") ^ 1}];

    vehicleManager = [(CRSUIWallpaperPreferences *)self vehicleManager];
    vehicle3 = [(CRSUIWallpaperPreferences *)self vehicle];
    [vehicleManager saveVehicle:vehicle3 completion:&__block_literal_global_34];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"CRSUIWallpaperChangedNotification" object:0];
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
  dataProvider = [(CRSUIWallpaperPreferences *)self dataProvider];
  vehicle = [(CRSUIWallpaperPreferences *)self vehicle];
  v5 = [dataProvider dynamicAppearanceWallpapersForVehicle:vehicle];

  if ([v5 count])
  {
    vehicle2 = [(CRSUIWallpaperPreferences *)self vehicle];
    displayThemeData = [vehicle2 displayThemeData];
    if (displayThemeData)
    {
      v8 = displayThemeData;
      dataProvider2 = [(CRSUIWallpaperPreferences *)self dataProvider];
      displayID = [dataProvider2 displayID];

      if (!displayID)
      {
        selfCopy = self;
        vehicle3 = [(CRSUIWallpaperPreferences *)self vehicle];
        displayThemeData2 = [vehicle3 displayThemeData];
        v13 = [displayThemeData2 mutableCopy];

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
                displayID2 = [v21 displayID];
                v24 = [v13 objectForKey:displayID2];

                if (v24)
                {
                  data = [v21 data];
                  v26 = [v24 themeDataWithCurrentWallpaper:data];
                  displayID3 = [v21 displayID];
                  [v13 setObject:v26 forKey:displayID3];

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

        [(CRSUIWallpaperPreferences *)selfCopy updateThemeData:v13];
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

    firstObject = [v5 firstObject];
    v17 = firstObject != 0;
    if (firstObject)
    {
      [(CRSUIWallpaperPreferences *)self setCurrentWallpaper:firstObject];
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
  vehicle = [(CRSUIWallpaperPreferences *)self vehicle];
  hasGaugeClusterScreen = [vehicle hasGaugeClusterScreen];
  bOOLValue = [hasGaugeClusterScreen BOOLValue];

  return bOOLValue;
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
  *self = 138543362;
  *a3 = v8;
  _os_log_fault_impl(&dword_243218000, a4, OS_LOG_TYPE_FAULT, "Unsupported wallpaper type: %{public}@", self, 0xCu);
}

@end