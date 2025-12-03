@interface AccessoryVoiceControlController
- (AccessoryVoiceControlController)init;
- (id)clickHoldModeLeft;
- (id)clickHoldModeRight;
- (id)getVolumeControlEnabled:(id)enabled;
- (id)specifiers;
- (void)dealloc;
- (void)deviceDisconnectedHandler:(id)handler;
- (void)deviceRemoved:(id)removed;
- (void)dismissPressAndHold;
- (void)powerChangedHandler:(id)handler;
- (void)setGestureMode:(id)mode specifier:(id)specifier;
- (void)setVolumeControlEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation AccessoryVoiceControlController

- (AccessoryVoiceControlController)init
{
  v9.receiver = self;
  v9.super_class = AccessoryVoiceControlController;
  v2 = [(AccessoryVoiceControlController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->super.super.super.super.super.isa + *MEMORY[0x277D3FC28]) = 0;
    v2->_dismissed = 0;
    v2->_volumeControlEnabled = 0;
    v2->_setEnableVolumeControlAtStart = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_deviceRemoved_ name:*MEMORY[0x277CF31C8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF3198] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_deviceDisconnectedHandler_ name:*MEMORY[0x277CF31A0] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v3 selector:sel_powerChangedHandler_ name:*MEMORY[0x277CF3168] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  currentDevice = self->_currentDevice;
  self->_currentDevice = 0;

  v5.receiver = self;
  v5.super_class = AccessoryVoiceControlController;
  [(AccessoryVoiceControlController *)&v5 dealloc];
}

- (id)specifiers
{
  v132[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v126.receiver = self;
  v126.super_class = AccessoryVoiceControlController;
  specifiers = [(AccessoryVoiceControlController *)&v126 specifiers];
  v5 = [v3 arrayWithArray:specifiers];
  volumeControlSpecifiers = self->_volumeControlSpecifiers;
  self->_volumeControlSpecifiers = v5;

  userInfo = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) userInfo];
  v8 = +[HPSDevice deviceKey];
  v9 = [userInfo objectForKeyedSubscript:v8];
  currentDevice = self->_currentDevice;
  self->_currentDevice = v9;

  classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  productId = [classicDevice productId];

  v125 = 0;
  classicDevice2 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  [classicDevice2 clickHoldMode:&v125 + 4 rightAction:&v125];

  v13 = objc_alloc(MEMORY[0x277CBEAC0]);
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:HIDWORD(v125)];
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v125];
  v16 = [v13 initWithObjectsAndKeys:{v14, @"pressHoldLeftBudValue", v15, @"pressHoldRightBudValue", 0}];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v123 = v16;
  [defaultCenter postNotificationName:@"BTAccessoryPressAndHoldModeSelected" object:0 userInfo:v16];

  v18 = HIDWORD(v125);
  if (!HIDWORD(v125) || (v19 = v125) == 0)
  {
    classicDevice3 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    [classicDevice3 setClickHoldMode:5 rightMode:5];

    classicDevice4 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    [classicDevice4 clickHoldMode:&v125 + 4 rightAction:&v125];

    v19 = v125;
    v18 = HIDWORD(v125);
  }

  v22 = 1;
  if ((v18 & 0xFFFFFFFE) == 6 || (v19 & 0xFFFFFFFE) == 6 || (v22 = 0, (v18 & 0xFFFFFFFB) == 1) || (v19 & 0xFFFFFFFB) == 1)
  {
    self->_setEnableVolumeControlAtStart = v22;
  }

  v23 = MEMORY[0x277D3FAD8];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
  v26 = [v23 preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"VOLUME_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B494"];

  classicDevice5 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  LODWORD(v24) = [classicDevice5 productId];

  if (v24 == 8209)
  {
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"VOLUME_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B507"];

    v28 = v31;
  }

  classicDevice6 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  productId2 = [classicDevice6 productId];

  if (productId2 == 8214)
  {
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"VOLUME_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B607"];

    v28 = v35;
  }

  classicDevice7 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  productId3 = [classicDevice7 productId];

  if (productId3 == 8218)
  {
    v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v38 localizedStringForKey:@"VOLUME_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B487"];

    v28 = v39;
  }

  classicDevice8 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  productId4 = [classicDevice8 productId];

  if (productId4 == 8230)
  {
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"VOLUME_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B463"];

    v28 = v43;
  }

  classicDevice9 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  productId5 = [classicDevice9 productId];

  if (productId5 == 8239)
  {
    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v47 = [v46 localizedStringForKey:@"VOLUME_CONTROL_FOOTER" value:&stru_286339F58 table:@"DeviceConfig-B494b"];

    v28 = v47;
  }

  [v26 setProperty:v28 forKey:*MEMORY[0x277D3FF88]];
  v122 = v26;
  [(NSMutableArray *)self->_volumeControlSpecifiers addObject:v26];
  v48 = MEMORY[0x277D3FAD8];
  v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v50 = [v49 localizedStringForKey:@"VOLUME_CONTROL" value:&stru_286339F58 table:@"DeviceConfig-B494"];
  v51 = [v48 preferenceSpecifierNamed:v50 target:self set:sel_setVolumeControlEnabled_specifier_ get:sel_getVolumeControlEnabled_ detail:0 cell:6 edit:0];

  [v51 setIdentifier:@"VOLUME_CONTROL_ID"];
  v52 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = self->_currentDevice;
  v54 = +[HPSDevice deviceKey];
  [v52 setObject:v53 forKey:v54];

  v119 = v52;
  [v51 setUserInfo:v52];
  [(AccessoryVoiceControlController *)self reloadSpecifier:v51];
  v120 = v51;
  [(NSMutableArray *)self->_volumeControlSpecifiers addObject:v51];
  v55 = MEMORY[0x277D3FAD8];
  v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v57 = [v56 localizedStringForKey:&stru_286339F58 value:&stru_286339F58 table:@"DeviceConfig"];
  v58 = [v55 preferenceSpecifierNamed:v57 target:self set:0 get:0 detail:0 cell:0 edit:0];

  v118 = v58;
  [(NSMutableArray *)self->_volumeControlSpecifiers addObject:v58];
  v59 = [HPSProductUtils getProductSpecificString:productId descriptionKey:@"LEFT_BUD"];
  [HPSProductUtils getProductSpecificString:productId descriptionKey:@"RIGHT_BUD"];
  v124 = v59;
  v117 = v121 = v28;
  if ([(AccessoryVoiceControlController *)self isVolumeControlEnabled])
  {
    v60 = objc_alloc(MEMORY[0x277CBEA60]);
    v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v62 = [v61 localizedStringForKey:@"VOLUME_UP" value:&stru_286339F58 table:@"DeviceConfig-B494"];
    v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v64 = [v63 localizedStringForKey:@"VOLUME_DOWN" value:&stru_286339F58 table:@"DeviceConfig-B494"];
    v65 = [v60 initWithObjects:{v62, v64, 0}];

    v66 = objc_alloc(MEMORY[0x277CBEA60]);
    v67 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v68 = [MEMORY[0x277CCABB0] numberWithInt:7];
    v69 = [v66 initWithObjects:{v67, v68, 0}];

    v70 = objc_alloc(MEMORY[0x277CBEA60]);
    v71 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v72 = [v71 localizedStringForKey:@"VOLUME_UP" value:&stru_286339F58 table:@"DeviceConfig-B494"];
    v73 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v74 = [v73 localizedStringForKey:@"VOLUME_DOWN" value:&stru_286339F58 table:@"DeviceConfig-B494"];
    v75 = [v70 initWithObjects:{v72, v74, 0}];

    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v76 setObject:self->_currentDevice forKey:@"bt-device"];
    v77 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v124 target:self set:sel_setGestureMode_specifier_ get:sel_clickHoldModeLeft detail:objc_opt_class() cell:2 edit:0];
    [v77 setIdentifier:@"LEFT_ID"];
    v78 = v69;
    v79 = v69;
    v80 = v65;
    [v77 setValues:v79 titles:v65 shortTitles:v75];
    [v77 setUserInfo:v76];
    [(NSMutableArray *)self->_volumeControlSpecifiers addObject:v77];
    v81 = MEMORY[0x277D3FAD8];
    v82 = 0x277CBE000;
    v83 = objc_opt_class();
    v84 = v81;
    v85 = v117;
    v86 = v75;
    v87 = [v84 preferenceSpecifierNamed:v117 target:self set:sel_setGestureMode_specifier_ get:sel_clickHoldModeRight detail:v83 cell:2 edit:0];
    [v87 setIdentifier:@"RIGHT_ID"];
    [v87 setValues:v78 titles:v80 shortTitles:v75];
    [v87 setUserInfo:v76];
  }

  else
  {
    classicDevice10 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    productId6 = [classicDevice10 productId];

    v90 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v91 = v90;
    if (productId6 == 8230)
    {
      v92 = [v90 localizedStringForKey:@"SIRI" value:&stru_286339F58 table:@"DeviceConfig"];
      v132[0] = v92;
      v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:1];

      v93 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v131 = v93;
      v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v131 count:1];

      v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v96 = [v95 localizedStringForKey:@"SIRI" value:&stru_286339F58 table:@"DeviceConfig"];
      v130 = v96;
      v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&v130 count:1];
    }

    else
    {
      v97 = [v90 localizedStringForKey:@"NOISE_CONTROL" value:&stru_286339F58 table:@"DeviceConfig"];
      v129[0] = v97;
      v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v99 = [v98 localizedStringForKey:@"SIRI" value:&stru_286339F58 table:@"DeviceConfig"];
      v129[1] = v99;
      v115 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:2];

      v100 = [MEMORY[0x277CCABB0] numberWithInt:5];
      v128[0] = v100;
      v101 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v128[1] = v101;
      v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];

      v95 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v96 = [v95 localizedStringForKey:@"NOISE_CONTROL" value:&stru_286339F58 table:@"DeviceConfig"];
      v127[0] = v96;
      v102 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v103 = [v102 localizedStringForKey:@"SIRI" value:&stru_286339F58 table:@"DeviceConfig"];
      v127[1] = v103;
      v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:2];
    }

    v76 = objc_alloc_init(MEMORY[0x277CBEB38]);
    classicDevice11 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    v105 = +[HPSDevice deviceKey];
    [v76 setObject:classicDevice11 forKey:v105];

    v77 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v124 target:self set:sel_setGestureMode_specifier_ get:sel_clickHoldModeLeft detail:objc_opt_class() cell:2 edit:0];
    [v77 setIdentifier:@"LEFT_ID"];
    [v77 setValues:v94 titles:v115 shortTitles:v86];
    [v77 setUserInfo:v76];
    [(NSMutableArray *)self->_volumeControlSpecifiers addObject:v77];
    v106 = MEMORY[0x277D3FAD8];
    v80 = v115;
    v107 = objc_opt_class();
    v108 = v106;
    v85 = v117;
    v78 = v94;
    v87 = [v108 preferenceSpecifierNamed:v117 target:self set:sel_setGestureMode_specifier_ get:sel_clickHoldModeRight detail:v107 cell:2 edit:0];
    [v87 setIdentifier:@"RIGHT_ID"];
    [v87 setValues:v94 titles:v115 shortTitles:v86];
    [v87 setUserInfo:v76];
    v82 = 0x277CBE000uLL;
  }

  [(NSMutableArray *)self->_volumeControlSpecifiers addObject:v87];

  v109 = [*(v82 + 2656) arrayWithArray:self->_volumeControlSpecifiers];
  v110 = *MEMORY[0x277D3FC48];
  v111 = *(&self->super.super.super.super.super.isa + v110);
  *(&self->super.super.super.super.super.isa + v110) = v109;

  v112 = *(&self->super.super.super.super.super.isa + v110);
  v113 = *MEMORY[0x277D85DE8];

  return v112;
}

- (id)getVolumeControlEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  isVolumeControlEnabled = [(AccessoryVoiceControlController *)self isVolumeControlEnabled];

  return [v3 numberWithBool:isVolumeControlEnabled];
}

- (void)setVolumeControlEnabled:(id)enabled specifier:(id)specifier
{
  v36 = *MEMORY[0x277D85DE8];
  self->_volumeControlEnabled = [enabled BOOLValue];
  v24 = 0;
  v25 = 0;
  classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  [classicDevice clickHoldModes:&v24];

  v6 = v24;
  v7 = HIDWORD(v24);
  v8 = v25;
  v9 = HIDWORD(v25);
  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    volumeControlEnabled = self->_volumeControlEnabled;
    *buf = 67110144;
    v27 = volumeControlEnabled;
    v28 = 1024;
    v29 = v7;
    v30 = 1024;
    v31 = v6;
    v32 = 1024;
    v33 = v9;
    v34 = 1024;
    v35 = v8;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "Volume Control: gestures before setting : _volumeControlEnabled %d left %d, right %d prevLeft %d, prevRight %d", buf, 0x20u);
  }

  if (self->_volumeControlEnabled)
  {
    v13 = v25;
    v12 = HIDWORD(v25);
    if (HIDWORD(v25))
    {
      v14 = v25 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v12 = 7;
      v13 = 6;
    }

    v24 = __PAIR64__(v12, v13);
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_volumeControlEnabled;
      *buf = 67110144;
      v27 = v16;
      v28 = 1024;
      v29 = HIDWORD(v24);
      v30 = 1024;
      v31 = v24;
      v32 = 1024;
      v33 = HIDWORD(v25);
      v34 = 1024;
      v35 = v25;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "Volume Control: gestures after setting : _volumeControlEnabled %d left %d, right %d prevLeft %d, prevRight %d", buf, 0x20u);
    }

    v25 = __PAIR64__(v7, v6);
  }

  else
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    productId = [classicDevice2 productId];

    if (productId == 8230)
    {
      v19 = 1;
    }

    else
    {
      v19 = 5;
    }

    LODWORD(v24) = v19;
    HIDWORD(v24) = v19;
    v25 = __PAIR64__(v7, v6);
    v20 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_volumeControlEnabled;
      *buf = 67110144;
      v27 = v21;
      v28 = 1024;
      v29 = HIDWORD(v24);
      v30 = 1024;
      v31 = v24;
      v32 = 1024;
      v33 = HIDWORD(v25);
      v34 = 1024;
      v35 = v25;
      _os_log_impl(&dword_251143000, v20, OS_LOG_TYPE_DEFAULT, "Volume Control: gestures after setting : _volumeControlEnabled %d left %d, right %d prevLeft %d, prevRight %d", buf, 0x20u);
    }
  }

  classicDevice3 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  [classicDevice3 setClickHoldModes:{v24, v25}];

  [(AccessoryVoiceControlController *)self performSelector:sel_reloadSpecifiers withObject:0 afterDelay:0.5];
  v23 = *MEMORY[0x277D85DE8];
}

- (id)clickHoldModeLeft
{
  v5 = 0;
  classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  [classicDevice clickHoldMode:&v5 + 4 rightAction:&v5];

  v3 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v5)];

  return v3;
}

- (id)clickHoldModeRight
{
  v5 = 0;
  classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  [classicDevice clickHoldMode:&v5 + 4 rightAction:&v5];

  v3 = [MEMORY[0x277CCABB0] numberWithInt:v5];

  return v3;
}

- (void)setGestureMode:(id)mode specifier:(id)specifier
{
  modeCopy = mode;
  specifierCopy = specifier;
  v18 = 0;
  classicDevice = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
  [classicDevice clickHoldMode:&v18 + 4 rightAction:&v18];

  identifier = [specifierCopy identifier];
  v10 = [identifier isEqualToString:@"LEFT_ID"];

  if (v10)
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    intValue = [modeCopy intValue];
    intValue2 = v18;
    v14 = classicDevice2;
LABEL_5:
    [v14 setClickHoldMode:intValue rightMode:intValue2];

    goto LABEL_6;
  }

  identifier2 = [specifierCopy identifier];
  v16 = [identifier2 isEqualToString:@"RIGHT_ID"];

  if (v16)
  {
    classicDevice2 = [(BluetoothDeviceProtocol *)self->_currentDevice classicDevice];
    v17 = HIDWORD(v18);
    intValue2 = [modeCopy intValue];
    v14 = classicDevice2;
    intValue = v17;
    goto LABEL_5;
  }

LABEL_6:
  [(AccessoryVoiceControlController *)self performSelector:sel_reloadSpecifiers withObject:0 afterDelay:0.5];
}

- (void)deviceDisconnectedHandler:(id)handler
{
  object = [handler object];
  address = [object address];
  identifier = [(BluetoothDeviceProtocol *)self->_currentDevice identifier];
  if (address == identifier)
  {
    dismissed = self->_dismissed;

    if (!dismissed)
    {
      [(AccessoryVoiceControlController *)self dismissPressAndHold];
    }
  }

  else
  {
  }
}

- (void)powerChangedHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
  enabled = [mEMORY[0x277CF3248] enabled];

  v7 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [handlerCopy name];
    v9 = name;
    v10 = "off";
    if (enabled)
    {
      v10 = "on";
    }

    v12 = 138412546;
    v13 = name;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "Received %@ with power state %s", &v12, 0x16u);
  }

  [(AccessoryVoiceControlController *)self dismissPressAndHold];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)deviceRemoved:(id)removed
{
  object = [removed object];
  address = [object address];
  identifier = [(BluetoothDeviceProtocol *)self->_currentDevice identifier];
  if (address == identifier)
  {
    dismissed = self->_dismissed;

    if (!dismissed)
    {
      [(AccessoryVoiceControlController *)self dismissPressAndHold];
    }
  }

  else
  {
  }
}

- (void)dismissPressAndHold
{
  self->_dismissed = 1;
  navigationController = [(AccessoryVoiceControlController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

@end