@interface HPSConnectedHeadphonesController
+ (BOOL)_BTMAvailable;
+ (id)controllerForSpecifier:(id)specifier;
+ (id)getDeviceIconSymbolString:(unsigned int)string;
+ (id)shared;
- (BOOL)BOOLFromBluetoothPreferences:(id)preferences;
- (HPSConnectedHeadphonesController)init;
- (id)_BTMPairedDevices;
- (id)connectedHeadphoneInfo;
- (id)initPrivate;
- (id)specifierFor:(id)for btsDevice:(id)device;
- (id)topLevelSpecifiers;
- (id)topLevelSpecifiersLegacey;
- (id)topLevelSpecifiersRedesign;
- (id)topLevelSpecifiersThirdParty;
- (void)addTopLevelEntryWithHpDevice:(id)device;
- (void)dealloc;
- (void)deviceConnectionHandler:(id)handler;
- (void)removeTopLevelEntryWithHpDevice:(id)device;
- (void)setDeviceChangeHandler:(id)handler;
- (void)thirdPartyHeadphonesDatasourceDidUpdate:(id)update;
- (void)topLevelSpecifiersRedesign;
- (void)updateTitleBar;
- (void)updateTopLevelEntryWithHpDevice:(id)device;
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
      mEMORY[0x277D0FB88] = [MEMORY[0x277D0FB88] sharedInstance];
      [mEMORY[0x277D0FB88] addDelegate:v3];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3190] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3188] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF31A0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3198] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF31F0] object:0];

    defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter6 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CF3168] object:0];

    mEMORY[0x277CB8698] = [MEMORY[0x277CB8698] sharedSystemAudioContext];
    avOutputContext = v3->_avOutputContext;
    v3->_avOutputContext = mEMORY[0x277CB8698];

    defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter7 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CB8628] object:v3->_avOutputContext];

    defaultCenter8 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter8 addObserver:v3 selector:sel_deviceConnectionHandler_ name:*MEMORY[0x277CB8630] object:v3->_avOutputContext];

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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = HPSConnectedHeadphonesController;
  [(HPSConnectedHeadphonesController *)&v5 dealloc];
}

- (id)topLevelSpecifiers
{
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x277CBEB18];
    topLevelSpecifiersRedesign = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersRedesign];
    topLevelSpecifiersLegacey = [v3 arrayWithArray:topLevelSpecifiersRedesign];

    topLevelSpecifiersThirdParty = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersThirdParty];
    [topLevelSpecifiersLegacey addObjectsFromArray:topLevelSpecifiersThirdParty];

    if ([topLevelSpecifiersLegacey count])
    {
      [topLevelSpecifiersLegacey sortUsingComparator:&__block_literal_global_39];
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_TYPE_GROUP_ID"];
      [topLevelSpecifiersLegacey insertObject:v7 atIndex:0];
    }
  }

  else
  {
    topLevelSpecifiersLegacey = [(HPSConnectedHeadphonesController *)self topLevelSpecifiersLegacey];
  }

  return topLevelSpecifiersLegacey;
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
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
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
  _BTMPairedDevices = [(HPSConnectedHeadphonesController *)self _BTMPairedDevices];
  v4 = [_BTMPairedDevices countByEnumeratingWithState:&v39 objects:v47 count:16];
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
    v29 = _BTMPairedDevices;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(_BTMPairedDevices);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if ([v9 connected] && objc_msgSend(*(v7 + 2304), "isAppleHeadphone:", v9) && (objc_msgSend(v9, "isTemporaryPaired") & 1) == 0 && objc_msgSend(v9, "isGenuineAirPods"))
        {
          v10 = [BTSDeviceClassic deviceWithDevice:v9];
          productName = [v10 productName];
          if ([(HPSConnectedHeadphonesController *)selfCopy nicknameEnabled])
          {
            name = [v10 name];

            productName = name;
          }

          classicDevice = [v10 classicDevice];
          if (classicDevice)
          {
            v14 = classicDevice;
            classicDevice2 = [v10 classicDevice];
            magicPaired = [classicDevice2 magicPaired];

            if (magicPaired)
            {
              name2 = [v10 name];

              productName = name2;
            }

            _BTMPairedDevices = v29;
          }

          if (!productName || [(__CFString *)productName isEqualToString:&stru_28634F910])
          {

            productName = @" ";
          }

          v18 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = productName;
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

          [v21 setObject:productName forKey:v32];
          identifier = [v10 identifier];
          [v21 setObject:identifier forKey:v31];

          [v21 setObject:@"BTSDeviceConfigController" forKey:v35];
          v23 = -[HPSConnectedHeadphonesController getDeviceIcon:](selfCopy, "getDeviceIcon:", [v9 productId]);
          [v21 setObject:v23 forKey:v30];

          v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v24 setObject:v10 forKey:@"bt-device"];
          v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:productName target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
          [v25 setName:productName];
          [v25 setProperties:v21];
          [v25 setUserInfo:v24];
          [array addObject:v25];

          v7 = 0x2796B2000;
        }
      }

      v5 = [_BTMPairedDevices countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v5);
  }

  if ([array count])
  {
    v26 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DEVICE_TYPE_GROUP_ID"];
    [array insertObject:v26 atIndex:0];
LABEL_29:
  }

  v27 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)topLevelSpecifiersRedesign
{
  v89 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (([objc_opt_class() _BTMAvailable] & 1) == 0)
  {
    v2 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [HPSConnectedHeadphonesController topLevelSpecifiersLegacey];
    }
  }

  _BTMPairedDevices = [(HPSConnectedHeadphonesController *)self _BTMPairedDevices];
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = [_BTMPairedDevices bs_reduce:v4 block:&__block_literal_global_71];

  obj = [MEMORY[0x277D0FC08] shared];
  objc_sync_enter(obj);
  mEMORY[0x277D0FC08] = [MEMORY[0x277D0FC08] shared];
  connectedHeadphones = [mEMORY[0x277D0FC08] connectedHeadphones];
  allValues = [connectedHeadphones allValues];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __62__HPSConnectedHeadphonesController_topLevelSpecifiersRedesign__block_invoke_2;
  v78[3] = &unk_2796B2CC8;
  v53 = v5;
  v79 = v53;
  v9 = [allValues bs_map:v78];
  [(HPSConnectedHeadphonesController *)self setDevices:v9];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  devices = [(HPSConnectedHeadphonesController *)self devices];
  v11 = [devices countByEnumeratingWithState:&v74 objects:v88 count:16];
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
    v70 = devices;
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
          classicDevice = [v13 classicDevice];
          productName = [classicDevice productName];
          if ([(HPSConnectedHeadphonesController *)self nicknameEnabled])
          {
            name = [classicDevice name];

            productName = name;
          }

          v72ClassicDevice = [classicDevice classicDevice];
          if (v72ClassicDevice)
          {
            v72ClassicDevice2 = [classicDevice classicDevice];
            magicPaired = [v72ClassicDevice2 magicPaired];

            if (magicPaired)
            {
              name2 = [classicDevice name];

              productName = name2;
            }
          }

          v19 = productName;
          if (!productName || (v20 = [(__CFString *)productName isEqualToString:&stru_28634F910], v19 = productName, v20))
          {

            productName = @" ";
          }

          v21 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = productName;
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

          [v69 setObject:productName forKey:v58];
          btsDevice = [classicDevice btsDevice];
          classicDevice2 = [btsDevice classicDevice];
          if (classicDevice2)
          {
            v26 = MEMORY[0x277CCACA8];
            btsDevice2 = [classicDevice btsDevice];
            classicDevice3 = [btsDevice2 classicDevice];
            v66 = [v26 stringWithFormat:@"%p", classicDevice3];
          }

          else
          {
            v66 = @"none";
          }

          v29 = MEMORY[0x277CCACA8];
          identifier = [classicDevice identifier];
          v68 = [v29 stringWithFormat:@"%@-%@", identifier, v66];

          [v69 setObject:v68 forKey:v57];
          [v69 setObject:@"BTSDeviceConfigController" forKey:v63];
          v31 = -[HPSConnectedHeadphonesController getDeviceIcon:](self, "getDeviceIcon:", [v13 productId]);
          [v69 setObject:v31 forKey:v56];

          v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
          btsDevice3 = [classicDevice btsDevice];

          if (btsDevice3)
          {
            btsDevice4 = [classicDevice btsDevice];
            [v32 setObject:btsDevice4 forKey:@"bt-device"];
          }

          deviceKey = [MEMORY[0x277D0FB78] deviceKey];
          [v32 setObject:classicDevice forKey:deviceKey];

          v36 = [v32 objectForKeyedSubscript:@"bt-device"];
          if (v36)
          {
            v65 = [v32 objectForKeyedSubscript:@"bt-device"];
          }

          else
          {
            v65 = @"NIL";
          }

          deviceKey2 = [MEMORY[0x277D0FB78] deviceKey];
          v38 = [v32 objectForKeyedSubscript:deviceKey2];
          if (v38)
          {
            deviceKey3 = [MEMORY[0x277D0FB78] deviceKey];
            v64 = [v32 objectForKeyedSubscript:deviceKey3];
          }

          else
          {
            v64 = @"NIL";
          }

          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"DEVICE_KEY %@, HPS_DEVICE_KEY: %@, PS_IDENTIFIER %@", v65, v64, v68];
          [v32 setObject:v40 forKey:@"HPS_DeviceInfo"];
          v41 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:productName target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
          [v41 setName:productName];
          [v41 setProperties:v69];
          [v41 setUserInfo:v32];
          headphoneDevice = [classicDevice headphoneDevice];
          if (headphoneDevice)
          {
            btsDevice5 = [classicDevice btsDevice];
            v62 = btsDevice5;
            if (btsDevice5)
            {

LABEL_41:
              [array addObject:v41];
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

          headphoneDevice2 = [classicDevice headphoneDevice];
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          v47 = [v46 isEqualToString:@"HeadphoneManager.HeadphoneReplayDevice"];

          if (headphoneDevice)
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
            v50 = [classicDevice debugDescription];
            [(HPSConnectedHeadphonesController *)v50 topLevelSpecifiersRedesign:v80];
          }

LABEL_46:

          continue;
        }
      }

      devices = v70;
      v11 = [v70 countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v11);
  }

  objc_sync_exit(obj);
  v51 = *MEMORY[0x277D85DE8];

  return array;
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
        name = [v9 name];
        v12 = [v10 preferenceSpecifierNamed:name target:v31 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        name2 = [v9 name];
        [v12 setName:name2];

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

        name3 = [v9 name];
        [v16 setObject:name3 forKey:v26];

        identifier = [v9 identifier];
        [v16 setObject:identifier forKey:v6];

        [v16 setObject:@"BTSDeviceConfigController" forKey:v5];
        image = [v9 image];
        [v16 setObject:image forKey:v7];

        [v12 setProperties:v16];
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        classicDevice = [v9 classicDevice];
        [v20 setObject:classicDevice forKey:@"bt-device"];

        leDevice = [v9 leDevice];
        [v20 setObject:leDevice forKey:@"ctkd-device"];

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
  topLevelSpecifiers = [(HPSConnectedHeadphonesController *)self topLevelSpecifiers];
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HPSConnectedHeadphonesController_connectedHeadphoneInfo__block_invoke;
  v6[3] = &unk_2796B2CF0;
  v4 = array;
  v7 = v4;
  [topLevelSpecifiers enumerateObjectsUsingBlock:v6];

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

- (void)setDeviceChangeHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25126C000, v5, OS_LOG_TYPE_DEFAULT, "Connected Headphones: Setting Device Change Handler", v8, 2u);
  }

  v6 = MEMORY[0x25306F9B0](handlerCopy);
  deviceChangeHandler = self->_deviceChangeHandler;
  self->_deviceChangeHandler = v6;
}

- (void)deviceConnectionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v11 = 138412290;
    v12 = name;
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

+ (id)getDeviceIconSymbolString:(unsigned int)string
{
  v9 = *MEMORY[0x277D85DE8];
  if (string - 8194 > 0x2D)
  {
    v3 = @"beats.headphones";
  }

  else
  {
    v3 = off_2796B2D60[string - 8194];
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
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  mainThread = [MEMORY[0x277CCACC8] mainThread];

  if (currentThread == mainThread)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    available = [mEMORY[0x277CF3248] available];
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

    available = *(v20 + 24);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  return available;
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
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  mainThread = [MEMORY[0x277CCACC8] mainThread];

  if (currentThread == mainThread)
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    pairedDevices = [mEMORY[0x277CF3248] pairedDevices];
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

    pairedDevices = v20[5];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  return pairedDevices;
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

- (id)specifierFor:(id)for btsDevice:(id)device
{
  forCopy = for;
  deviceCopy = device;
  if (deviceCopy)
  {
    v7 = [BTSDeviceClassic deviceWithDevice:deviceCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x277D0FB78]) initWithHeadphoneDevice:forCopy btsDevice:v7];
  [v8 setIsExclusivelyDeeplink:1];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  btsDevice = [v8 btsDevice];

  if (btsDevice)
  {
    btsDevice2 = [v8 btsDevice];
    [v9 setObject:btsDevice2 forKey:@"bt-device"];
  }

  if (forCopy)
  {
    [v9 setObject:forCopy forKey:@"headphone-device"];
  }

  deviceKey = [MEMORY[0x277D0FB78] deviceKey];
  [v9 setObject:v8 forKey:deviceKey];

  v13 = [v9 objectForKeyedSubscript:@"bt-device"];
  if (v13)
  {
    v14 = [v9 objectForKeyedSubscript:@"bt-device"];
  }

  else
  {
    v14 = @"NIL";
  }

  deviceKey2 = [MEMORY[0x277D0FB78] deviceKey];
  v16 = [v9 objectForKeyedSubscript:deviceKey2];
  if (v16)
  {
    deviceKey3 = [MEMORY[0x277D0FB78] deviceKey];
    v18 = [v9 objectForKeyedSubscript:deviceKey3];
  }

  else
  {
    v18 = @"NIL";
  }

  v19 = MEMORY[0x277D3FAD8];
  name = [v8 name];
  v21 = [v19 preferenceSpecifierNamed:name target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  name2 = [v8 name];
  [v21 setName:name2];

  [v21 setUserInfo:v9];

  return v21;
}

- (BOOL)BOOLFromBluetoothPreferences:(id)preferences
{
  keyExistsAndHasValidFormat = 0;
  preferencesCopy = preferences;
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(preferencesCopy, @"com.apple.BTServer", &keyExistsAndHasValidFormat);

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

- (void)addTopLevelEntryWithHpDevice:(id)device
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HPSConnectedHeadphonesController_addTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)removeTopLevelEntryWithHpDevice:(id)device
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HPSConnectedHeadphonesController_removeTopLevelEntryWithHpDevice___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateTopLevelEntryWithHpDevice:(id)device
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

- (void)thirdPartyHeadphonesDatasourceDidUpdate:(id)update
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HPSConnectedHeadphonesController_thirdPartyHeadphonesDatasourceDidUpdate___block_invoke;
  block[3] = &unk_2796B2D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (id)controllerForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"ctkd-device"];

  if (v5 && ([v5 underlyingDADevice], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x277D0FB70]);
    [v7 setSpecifier:specifierCopy];
  }

  else
  {
    v7 = [MEMORY[0x277D0FB80] controllerForSpecifier:specifierCopy];
  }

  return v7;
}

- (void)topLevelSpecifiersRedesign
{
  *buf = 138412290;
  *a3 = self;
  _os_log_error_impl(&dword_25126C000, log, OS_LOG_TYPE_ERROR, "Connected Headphones: Refusing to add device without both headphone and btsdevice %@", buf, 0xCu);
}

@end