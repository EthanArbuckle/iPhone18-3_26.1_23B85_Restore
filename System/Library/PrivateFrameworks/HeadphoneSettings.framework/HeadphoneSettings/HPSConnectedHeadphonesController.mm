@interface HPSConnectedHeadphonesController
+ (BOOL)_BTMAvailable;
+ (id)controllerForSpecifier:(id)a3;
+ (id)getDeviceIconSymbolString:(unsigned int)a3;
+ (id)shared;
- (BOOL)BOOLFromBluetoothPreferences:(id)a3;
- (HPSConnectedHeadphonesController)init;
- (id)_BTMPairedDevices;
- (id)connectedHeadphoneInfo;
- (id)initPrivate;
- (id)specifierFor:(id)a3 btsDevice:(id)a4;
- (id)topLevelSpecifiers;
- (id)topLevelSpecifiersLegacey;
- (id)topLevelSpecifiersRedesign;
- (id)topLevelSpecifiersThirdParty;
- (void)addTopLevelEntryWithHpDevice:(id)a3;
- (void)dealloc;
- (void)deviceConnectionHandler:(id)a3;
- (void)removeTopLevelEntryWithHpDevice:(id)a3;
- (void)setDeviceChangeHandler:(id)a3;
- (void)thirdPartyHeadphonesDatasourceDidUpdate:(id)a3;
- (void)topLevelSpecifiersRedesign;
- (void)updateTitleBar;
- (void)updateTopLevelEntryWithHpDevice:(id)a3;
@end

@implementation HPSConnectedHeadphonesController

- (HPSConnectedHeadphonesController)init
{
  v3 = +[HPSConnectedHeadphonesController shared];

  return v3;
}

+ (id)shared
{
  v2 = shared_shared_0;
  if (!shared_shared_0)
  {
    if (shared_oncePredicate_0 != -1)
    {
      +[HPSConnectedHeadphonesController shared];
    }

    v2 = shared_shared_0;
  }

  return v2;
}

uint64_t __42__HPSConnectedHeadphonesController_shared__block_invoke()
{
  shared_shared_0 = [[HPSConnectedHeadphonesController alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v19.receiver = self;
  v19.super_class = HPSConnectedHeadphonesController;
  v2 = [(HPSConnectedHeadphonesController *)&v19 init];
  v3 = v2;
  if (v2)
  {
    deviceChangeHandler = v2->_deviceChangeHandler;
    v2->_deviceChangeHandler = 0;

    if (_os_feature_enabled_impl())
    {
      v5 = [MEMORY[0x277D0FB88] sharedInstance];
      [v5 addDelegate:v3];
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3190] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3188] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF31A0] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3198] object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF31F0] object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3168] object:0];

    v12 = [MEMORY[0x277CB8698] sharedSystemAudioContext];
    avOutputContext = v3->_avOutputContext;
    v3->_avOutputContext = v12;

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CB8628] object:v3->_avOutputContext];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CB8630] object:v3->_avOutputContext];

    v16 = objc_alloc_init(HPSThirdPartyHeadphonesDatasource);
    thirdPartyDatasource = v3->_thirdPartyDatasource;
    v3->_thirdPartyDatasource = v16;
  }

  return v3;
}

- (void)dealloc
{
  deviceChangeHandler = self->_deviceChangeHandler;
  self->_deviceChangeHandler = 0;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HPSConnectedHeadphonesController;
  [(HPSConnectedHeadphonesController *)&v5 dealloc];
}

- (id)topLevelSpecifiers
{
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersRedesign];
    v5 = [v3 arrayWithArray:v4];

    v6 = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersThirdParty];
    [v5 addObjectsFromArray:v6];

    if ([v5 count])
    {
      [v5 sortUsingComparator:&__block_literal_global_39];
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_TYPE_GROUP_ID"];
      [v5 insertObject:v7 atIndex:0];
    }
  }

  else
  {
    v5 = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersLegacey];
  }

  return v5;
}

BOOL __54__HPSConnectedHeadphonesController_topLevelSpecifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  return v5 < v6;
}

- (id)topLevelSpecifiersLegacey
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = [MEMORY[0x277CBEB18] array];
  v38 = self;
  if (([objc_opt_class() _BTMAvailable] & 1) == 0)
  {
    v26 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [HPSConnectedHeadphonesController topLevelSpecifiersLegacey];
    }

    goto LABEL_29;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [(HPSConnectedHeadphonesController *)self _BTMPairedDevices];
  v4 = [v3 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    v36 = *MEMORY[0x277D3FE58];
    v35 = *MEMORY[0x277D3FF08];
    v34 = *MEMORY[0x277D400B8];
    v33 = *MEMORY[0x277D40138];
    v32 = *MEMORY[0x277D40170];
    v7 = 0x2796B2000uLL;
    v31 = *MEMORY[0x277D3FFB8];
    v30 = *MEMORY[0x277D3FFC0];
    v29 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if ([v9 connected] && objc_msgSend(*(v7 + 2304), "isAppleHeadphone:", v9) && (objc_msgSend(v9, "isTemporaryPaired") & 1) == 0 && objc_msgSend(v9, "isGenuineAirPods"))
        {
          v10 = [BTSDeviceClassic deviceWithDevice:v9];
          v11 = [v10 productName];
          if ([(HPSConnectedHeadphonesController *)v38 nicknameEnabled])
          {
            v12 = [v10 name];

            v11 = v12;
          }

          v13 = [v10 classicDevice];
          if (v13)
          {
            v14 = v13;
            v15 = [v10 classicDevice];
            v16 = [v15 magicPaired];

            if (v16)
            {
              v17 = [v10 name];

              v11 = v17;
            }

            v3 = v29;
          }

          if (!v11 || [(__CFString *)v11 isEqualToString:&stru_28634F910])
          {

            v11 = @" ";
          }

          v18 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v11;
            _os_log_impl(&dword_25126C000, v18, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding device to specifiers: %@", buf, 0xCu);
          }

          v19 = objc_alloc(MEMORY[0x277CBEB38]);
          v43[0] = v36;
          v44[0] = objc_opt_class();
          v44[1] = @"BTSPairSetup";
          v43[1] = v35;
          v43[2] = v34;
          v43[3] = v33;
          v44[2] = @"BTSPairController";
          v44[3] = @"PSLinkCell";
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
          v21 = [v19 initWithDictionary:v20];

          [v21 setObject:v11 forKey:v32];
          v22 = [v10 identifier];
          [v21 setObject:v22 forKey:v31];

          [v21 setObject:@"BTSDeviceConfigController" forKey:v35];
          v23 = -[HPSConnectedHeadphonesController getDeviceIcon:](v38, "getDeviceIcon:", [v9 productId]);
          [v21 setObject:v23 forKey:v30];

          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v24 setObject:v10 forKey:@"bt-device"];
          v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:v38 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
          [v25 setName:v11];
          [v25 setProperties:v21];
          [v25 setUserInfo:v24];
          [v37 addObject:v25];

          v7 = 0x2796B2000;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v5);
  }

  if ([v37 count])
  {
    v26 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_TYPE_GROUP_ID"];
    [v37 insertObject:v26 atIndex:0];
LABEL_29:
  }

  v27 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)topLevelSpecifiersRedesign
{
  v89 = *MEMORY[0x277D85DE8];
  v55 = [MEMORY[0x277CBEB18] array];
  if (([objc_opt_class() _BTMAvailable] & 1) == 0)
  {
    v2 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [HPSConnectedHeadphonesController topLevelSpecifiersLegacey];
    }
  }

  v3 = [(HPSConnectedHeadphonesController *)self _BTMPairedDevices];
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = [v3 bs_reduce:v4 block:&__block_literal_global_71];

  obj = [MEMORY[0x277D0FC08] shared];
  objc_sync_enter(obj);
  v6 = [MEMORY[0x277D0FC08] shared];
  v7 = [v6 connectedHeadphones];
  v8 = [v7 allValues];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __62__HPSConnectedHeadphonesController_topLevelSpecifiersRedesign__block_invoke_2;
  v78[3] = &unk_2796B2CC8;
  v53 = v5;
  v79 = v53;
  v9 = [v8 bs_map:v78];
  [(HPSConnectedHeadphonesController *)self setDevices:v9];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v10 = [(HPSConnectedHeadphonesController *)self devices];
  v11 = [v10 countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v11)
  {
    v73 = *v75;
    v61 = *MEMORY[0x277D3FE58];
    v63 = *MEMORY[0x277D3FF08];
    v59 = *MEMORY[0x277D40138];
    v60 = *MEMORY[0x277D400B8];
    v57 = *MEMORY[0x277D3FFB8];
    v58 = *MEMORY[0x277D40170];
    v56 = *MEMORY[0x277D3FFC0];
    v70 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v75 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v13 = *(*(&v74 + 1) + 8 * i);
        if ([v13 connected] && +[HPSProductUtils isAppleHeadphone:](HPSProductUtils, "isAppleHeadphone:", v13) && (objc_msgSend(v13, "isTemporaryPaired") & 1) == 0 && (objc_msgSend(v13, "isGenuineAirPods") & 1) != 0)
        {
          v72 = [v13 classicDevice];
          v71 = [v72 productName];
          if ([(HPSConnectedHeadphonesController *)self nicknameEnabled])
          {
            v14 = [v72 name];

            v71 = v14;
          }

          v15 = [v72 classicDevice];
          if (v15)
          {
            v16 = [v72 classicDevice];
            v17 = [v16 magicPaired];

            if (v17)
            {
              v18 = [v72 name];

              v71 = v18;
            }
          }

          v19 = v71;
          if (!v71 || (v20 = [(__CFString *)v71 isEqualToString:&stru_28634F910], v19 = v71, v20))
          {

            v71 = @" ";
          }

          v21 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v71;
            _os_log_impl(&dword_25126C000, v21, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding device to specifiers: %@", buf, 0xCu);
          }

          v22 = objc_alloc(MEMORY[0x277CBEB38]);
          v86[0] = v61;
          v87[0] = objc_opt_class();
          v87[1] = @"BTSPairSetup";
          v86[1] = v63;
          v86[2] = v60;
          v86[3] = v59;
          v87[2] = @"BTSPairController";
          v87[3] = @"PSLinkCell";
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:4];
          v69 = [v22 initWithDictionary:v23];

          [v69 setObject:v71 forKey:v58];
          v24 = [v72 btsDevice];
          v25 = [v24 classicDevice];
          if (v25)
          {
            v26 = MEMORY[0x277CCACA8];
            v27 = [v72 btsDevice];
            v28 = [v27 classicDevice];
            v66 = [v26 stringWithFormat:@"%p", v28];
          }

          else
          {
            v66 = @"none";
          }

          v29 = MEMORY[0x277CCACA8];
          v30 = [v72 identifier];
          v68 = [v29 stringWithFormat:@"%@-%@", v30, v66];

          [v69 setObject:v68 forKey:v57];
          [v69 setObject:@"BTSDeviceConfigController" forKey:v63];
          v31 = -[HPSConnectedHeadphonesController getDeviceIcon:](self, "getDeviceIcon:", [v13 productId]);
          [v69 setObject:v31 forKey:v56];

          v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v33 = [v72 btsDevice];

          if (v33)
          {
            v34 = [v72 btsDevice];
            [v32 setObject:v34 forKey:@"bt-device"];
          }

          v35 = [MEMORY[0x277D0FB78] deviceKey];
          [v32 setObject:v72 forKey:v35];

          v36 = [v32 objectForKeyedSubscript:@"bt-device"];
          if (v36)
          {
            v65 = [v32 objectForKeyedSubscript:@"bt-device"];
          }

          else
          {
            v65 = @"NIL";
          }

          v37 = [MEMORY[0x277D0FB78] deviceKey];
          v38 = [v32 objectForKeyedSubscript:v37];
          if (v38)
          {
            v39 = [MEMORY[0x277D0FB78] deviceKey];
            v64 = [v32 objectForKeyedSubscript:v39];
          }

          else
          {
            v64 = @"NIL";
          }

          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"DEVICE_KEY %@, HPS_DEVICE_KEY: %@, PS_IDENTIFIER %@", v65, v64, v68];
          [v32 setObject:v40 forKey:@"HPS_DeviceInfo"];
          v41 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v71 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
          [v41 setName:v71];
          [v41 setProperties:v69];
          [v41 setUserInfo:v32];
          v42 = [v72 headphoneDevice];
          if (v42)
          {
            v43 = [v72 btsDevice];
            v62 = v43;
            if (v43)
            {

LABEL_41:
              [v55 addObject:v41];
              v48 = sharedBluetoothSettingsLogComponent();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = [v41 debugDescription];
                *buf = 138412546;
                v83 = v49;
                v84 = 2112;
                v85 = v40;
                _os_log_impl(&dword_25126C000, v48, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding specifier %@ with connected devices %@", buf, 0x16u);
              }

              goto LABEL_46;
            }

            v62 = 0;
          }

          v44 = [v72 headphoneDevice];
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = [v46 isEqualToString:@"HeadphoneManager.HeadphoneReplayDevice"];

          if (v42)
          {

            if (v47)
            {
              goto LABEL_41;
            }
          }

          else if (v47)
          {
            goto LABEL_41;
          }

          v48 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v50 = [v72 debugDescription];
            [(HPSConnectedHeadphonesController *)v50 topLevelSpecifiersRedesign:v80];
          }

LABEL_46:

          continue;
        }
      }

      v10 = v70;
      v11 = [v70 countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v11);
  }

  objc_sync_exit(obj);
  v51 = *MEMORY[0x277D85DE8];

  return v55;
}

id __62__HPSConnectedHeadphonesController_topLevelSpecifiersRedesign__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [BTSDeviceClassic deviceWithDevice:v5];
  v7 = [v5 address];

  [v4 setObject:v6 forKey:v7];

  return v4;
}

id __62__HPSConnectedHeadphonesController_topLevelSpecifiersRedesign__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 btAddress];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

  v6 = objc_alloc(MEMORY[0x277D0FB78]);
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v6 initWithHeadphoneDevice:v3 btsDevice:v7];

  return v8;
}

- (id)topLevelSpecifiersThirdParty
{
  v40 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB18] array];
  v32 = v31 = self;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [(HPSThirdPartyHeadphonesDatasource *)self->_thirdPartyDatasource routedThirdPartyHeadphones];
  v3 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v30 = *v34;
    v29 = *MEMORY[0x277D3FE58];
    v5 = *MEMORY[0x277D3FF08];
    v28 = *MEMORY[0x277D400B8];
    v27 = *MEMORY[0x277D40138];
    v26 = *MEMORY[0x277D40170];
    v6 = *MEMORY[0x277D3FFB8];
    v7 = *MEMORY[0x277D3FFC0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = MEMORY[0x277D3FAD8];
        v11 = [v9 name];
        v12 = [v10 preferenceSpecifierNamed:v11 target:v31 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        v13 = [v9 name];
        [v12 setName:v13];

        v14 = objc_alloc(MEMORY[0x277CBEB38]);
        v37[0] = v29;
        v38[0] = objc_opt_class();
        v38[1] = @"BTSPairSetup";
        v37[1] = v5;
        v37[2] = v28;
        v37[3] = v27;
        v38[2] = @"BTSPairController";
        v38[3] = @"PSLinkCell";
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
        v16 = [v14 initWithDictionary:v15];

        v17 = [v9 name];
        [v16 setObject:v17 forKey:v26];

        v18 = [v9 identifier];
        [v16 setObject:v18 forKey:v6];

        [v16 setObject:@"BTSDeviceConfigController" forKey:v5];
        v19 = [v9 image];
        [v16 setObject:v19 forKey:v7];

        [v12 setProperties:v16];
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v21 = [v9 classicDevice];
        [v20 setObject:v21 forKey:@"bt-device"];

        v22 = [v9 leDevice];
        [v20 setObject:v22 forKey:@"ctkd-device"];

        [v12 setUserInfo:v20];
        [v32 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v4);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)connectedHeadphoneInfo
{
  v2 = [(HPSConnectedHeadphonesController *)self topLevelSpecifiers];
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HPSConnectedHeadphonesController_connectedHeadphoneInfo__block_invoke;
  v6[3] = &unk_2796B2CF0;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __58__HPSConnectedHeadphonesController_connectedHeadphoneInfo__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a2;
    v5 = [v4 properties];
    v6 = [v5 objectForKey:*MEMORY[0x277D40170]];

    v7 = [v4 properties];
    v8 = [v7 objectForKey:*MEMORY[0x277D3FFB8]];

    v9 = [v4 properties];
    v10 = [v9 objectForKey:*MEMORY[0x277D3FFC0]];

    v11 = [[HPSConnectedHeadphoneInfo alloc] initWithID:v8 name:v6 image:v10 specifier:v4];
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSConnectedHeadphoneInfo *)v11 deviceID];
      v14 = [(HPSConnectedHeadphoneInfo *)v11 deviceName];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_25126C000, v12, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Adding device, ID: %@, Name: %@", &v16, 0x16u);
    }

    [*(a1 + 32) addObject:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceChangeHandler:(id)a3
{
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25126C000, v5, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Setting Device Change Handler", v8, 2u);
  }

  v6 = MEMORY[0x25306F9B0](v4);
  deviceChangeHandler = self->_deviceChangeHandler;
  self->_deviceChangeHandler = v6;
}

- (void)deviceConnectionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_25126C000, v5, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Notification received: %@", &v11, 0xCu);
  }

  deviceChangeHandler = self->_deviceChangeHandler;
  v8 = sharedBluetoothSettingsLogComponent();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (deviceChangeHandler)
  {
    if (v9)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25126C000, v8, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Calling Device Change Handler", &v11, 2u);
    }

    (*(self->_deviceChangeHandler + 2))();
  }

  else
  {
    if (v9)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25126C000, v8, OS_LOG_TYPE_DEFAULT, "Connected Headphones: No Valid Device Change Handler", &v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)getDeviceIconSymbolString:(unsigned int)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3 - 8194 > 0x2D)
  {
    v3 = @"beats.headphones";
  }

  else
  {
    v3 = off_2796B2D60[a3 - 8194];
  }

  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25126C000, v4, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Icon Name: %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (BOOL)_BTMAvailable
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [MEMORY[0x277CCACC8] mainThread];

  if (v2 == v3)
  {
    v9 = [MEMORY[0x277CF3248] sharedInstance];
    v8 = [v9 available];
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HPSConnectedHeadphonesController__BTMAvailable__block_invoke;
    block[3] = &unk_2796B2D18;
    v13 = &v19;
    v14 = &v15;
    v5 = v4;
    v12 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v5, v6);
    if (*(v16 + 24) == 1)
    {
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[HPSConnectedHeadphonesController _BTMAvailable];
      }
    }

    v8 = *(v20 + 24);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v8;
}

void __49__HPSConnectedHeadphonesController__BTMAvailable__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  *(*(a1[5] + 8) + 24) = [v2 available];

  *(*(a1[6] + 8) + 24) = 0;
  v3 = a1[4];

  dispatch_group_leave(v3);
}

- (id)_BTMPairedDevices
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [MEMORY[0x277CCACC8] mainThread];

  if (v2 == v3)
  {
    v9 = [MEMORY[0x277CF3248] sharedInstance];
    v8 = [v9 pairedDevices];
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HPSConnectedHeadphonesController__BTMPairedDevices__block_invoke;
    block[3] = &unk_2796B2D18;
    v13 = &v19;
    v14 = &v15;
    v5 = v4;
    v12 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = dispatch_time(0, 1000000000);
    dispatch_group_wait(v5, v6);
    if (*(v16 + 24) == 1)
    {
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [HPSConnectedHeadphonesController _BTMPairedDevices];
      }
    }

    v8 = v20[5];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v8;
}

void __53__HPSConnectedHeadphonesController__BTMPairedDevices__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  v3 = [v2 pairedDevices];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(a1[6] + 8) + 24) = 0;
  v6 = a1[4];

  dispatch_group_leave(v6);
}

- (id)specifierFor:(id)a3 btsDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [BTSDeviceClassic deviceWithDevice:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x277D0FB78]) initWithHeadphoneDevice:v5 btsDevice:v7];
  [v8 setIsExclusivelyDeeplink:1];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [v8 btsDevice];

  if (v10)
  {
    v11 = [v8 btsDevice];
    [v9 setObject:v11 forKey:@"bt-device"];
  }

  if (v5)
  {
    [v9 setObject:v5 forKey:@"headphone-device"];
  }

  v12 = [MEMORY[0x277D0FB78] deviceKey];
  [v9 setObject:v8 forKey:v12];

  v13 = [v9 objectForKeyedSubscript:@"bt-device"];
  if (v13)
  {
    v14 = [v9 objectForKeyedSubscript:@"bt-device"];
  }

  else
  {
    v14 = @"NIL";
  }

  v15 = [MEMORY[0x277D0FB78] deviceKey];
  v16 = [v9 objectForKeyedSubscript:v15];
  if (v16)
  {
    v17 = [MEMORY[0x277D0FB78] deviceKey];
    v18 = [v9 objectForKeyedSubscript:v17];
  }

  else
  {
    v18 = @"NIL";
  }

  v19 = MEMORY[0x277D3FAD8];
  v20 = [v8 name];
  v21 = [v19 preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v22 = [v8 name];
  [v21 setName:v22];

  [v21 setUserInfo:v9];

  return v21;
}

- (BOOL)BOOLFromBluetoothPreferences:(id)a3
{
  keyExistsAndHasValidFormat = 0;
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, @"com.apple.BTServer", &keyExistsAndHasValidFormat);

  if (AppBooleanValue)
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)addTopLevelEntryWithHpDevice:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSConnectedHeadphonesController_addTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)removeTopLevelEntryWithHpDevice:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSConnectedHeadphonesController_removeTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateTopLevelEntryWithHpDevice:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSConnectedHeadphonesController_updateTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateTitleBar
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HPSConnectedHeadphonesController_updateTitleBar__block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)thirdPartyHeadphonesDatasourceDidUpdate:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HPSConnectedHeadphonesController_thirdPartyHeadphonesDatasourceDidUpdate___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (id)controllerForSpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"ctkd-device"];

  if (v5 && ([v5 underlyingDADevice], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x277D0FB70]);
    [v7 setSpecifier:v3];
  }

  else
  {
    v7 = [MEMORY[0x277D0FB80] controllerForSpecifier:v3];
  }

  return v7;
}

- (void)topLevelSpecifiersRedesign
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_25126C000, log, OS_LOG_TYPE_ERROR, "Connected Headphones: Refusing to add device without both headphone and btsdevice %@", buf, 0xCu);
}

@end