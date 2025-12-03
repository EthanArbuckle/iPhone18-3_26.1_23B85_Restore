@interface BluetoothDevice
- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig;
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings;
- (BOOL)batteryStatus:(id *)status;
- (BOOL)cloudPaired;
- (BOOL)connected;
- (BOOL)featureCapability:(int)capability;
- (BOOL)getAACPCapabilityBit:(int)bit;
- (BOOL)getAdaptiveVolumeSupport;
- (BOOL)getAutoANCSupport;
- (BOOL)getConversationDetectSupport;
- (BOOL)getDeviceSoundProfileAllowed;
- (BOOL)getDeviceSoundProfileSupport;
- (BOOL)getSSLSupport;
- (BOOL)getWirelessSharingSpatialSupport;
- (BOOL)headTrackingAvailable;
- (BOOL)hearingAidEnabled;
- (BOOL)hearingAidEnrolled;
- (BOOL)inEarDetectEnabled;
- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary;
- (BOOL)isAccessory;
- (BOOL)isAppleAudioDevice;
- (BOOL)isGenuineAirPods;
- (BOOL)isGuestPairingMode;
- (BOOL)isProController;
- (BOOL)isProxCardShowedForFeature:(int)feature;
- (BOOL)isProxCardSupportedForFeature:(int)feature;
- (BOOL)isServiceSupported:(unsigned int)supported;
- (BOOL)isTemporaryPaired;
- (BOOL)magicPaired;
- (BOOL)paired;
- (BOOL)pairedDeviceNameUpdated;
- (BOOL)setAutoAnswerMode:(int)mode;
- (BOOL)setCallConfig:(id)config;
- (BOOL)setChimeVolume:(unsigned int)volume;
- (BOOL)setClickHoldMode:(int)mode rightMode:(int)rightMode;
- (BOOL)setClickHoldModes:(id)modes;
- (BOOL)setCrownRotationDirection:(int)direction;
- (BOOL)setDoubleClickMode:(int)mode;
- (BOOL)setDoubleTapAction:(unsigned int)action;
- (BOOL)setDoubleTapActionEx:(unsigned int)ex rightAction:(unsigned int)action;
- (BOOL)setHeartRateMonitorEnabled:(unsigned int)enabled;
- (BOOL)setInEarDetectEnabled:(BOOL)enabled;
- (BOOL)setIsHidden:(BOOL)hidden;
- (BOOL)setListeningMode:(unsigned int)mode;
- (BOOL)setListeningModeConfigs:(unsigned int)configs;
- (BOOL)setMicMode:(unsigned int)mode;
- (BOOL)setSingleClickMode:(int)mode;
- (BOOL)setSmartRouteMode:(unsigned __int8)mode;
- (BOOL)setSpatialAudioAllowed:(BOOL)allowed;
- (BOOL)setSpatialAudioConfig:(id)config spatialMode:(int)mode headTracking:(BOOL)tracking;
- (BOOL)setSpatialAudioMode:(unsigned __int8)mode;
- (BOOL)setUserName:(id)name;
- (BOOL)setUserSelectedDeviceType:(int)type;
- (BOOL)smartRouteSupport;
- (BOOL)spatialAudioActive;
- (BOOL)spatialAudioAllowed;
- (BOOL)spatialAudioConfig:(id)config spatialMode:(int *)mode headTracking:(BOOL *)tracking;
- (BOOL)supportsBatteryLevel;
- (BOOL)supportsHS;
- (BluetoothDevice)initWithDevice:(BTDeviceImpl *)device address:(id)address;
- (id)accessoryInfo;
- (id)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getAACPCapabilityBits;
- (id)getServiceSetting:(unsigned int)setting key:(id)key;
- (id)gyroInformation;
- (id)name;
- (id)productName;
- (id)syncGroups;
- (int)accessorySettingFeatureBitMask;
- (int)autoAnswerMode;
- (int)batteryLevel;
- (int)crownRotationDirection;
- (int)doubleClickMode;
- (int)getBehaviorForHIDDevice;
- (int)getDeviceColor:(unsigned int *)color;
- (int)getHexDeviceAddress:(id *)address;
- (int)getLowSecurityStatus;
- (int)getStereoHFPSupport;
- (int)getUserSelectedDeviceType;
- (int)primaryBudSide:(int *)side;
- (int)singleClickMode;
- (int)type;
- (int64_t)compare:(id)compare;
- (unint64_t)connectedServices;
- (unint64_t)connectedServicesCount;
- (unsigned)SendSetupCommand:(unsigned __int8)command;
- (unsigned)chimeVolume;
- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action;
- (unsigned)clickHoldModes:(id *)modes;
- (unsigned)doubleTapAction;
- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action;
- (unsigned)doubleTapCapability;
- (unsigned)getAACPCapabilityInteger:(int)integer;
- (unsigned)getAdaptiveVolumeMode;
- (unsigned)getConversationDetectMode;
- (unsigned)getDeviceAdaptiveVolumeMode;
- (unsigned)getDeviceConversationDetect;
- (unsigned)getHeartRateMonitorEnabled;
- (unsigned)getSSLMode;
- (unsigned)getSpatialAudioPlatformSupport;
- (unsigned)listeningMode;
- (unsigned)listeningModeConfigs;
- (unsigned)majorClass;
- (unsigned)micMode;
- (unsigned)minorClass;
- (unsigned)productId;
- (unsigned)smartRouteMode;
- (unsigned)spatialAudioMode;
- (unsigned)vendorId;
- (unsigned)vendorIdSrc;
- (void)acceptSSP:(int64_t)p;
- (void)accessorySettingFeatureBitMask;
- (void)autoAnswerMode;
- (void)chimeVolume;
- (void)connect;
- (void)crownRotationDirection;
- (void)dealloc;
- (void)disconnect;
- (void)doubleClickMode;
- (void)doubleTapAction;
- (void)doubleTapCapability;
- (void)endVoiceCommand;
- (void)getAdaptiveVolumeSupport;
- (void)getAutoANCSupport;
- (void)getBehaviorForHIDDevice;
- (void)getCallManagementConfig;
- (void)getConversationDetectSupport;
- (void)getDeviceAdaptiveVolumeMode;
- (void)getDeviceConversationDetect;
- (void)getDeviceSoundProfileAllowed;
- (void)getDeviceSoundProfileSupport;
- (void)getHeartRateMonitorEnabled;
- (void)getSSLMode;
- (void)getSSLSupport;
- (void)getSpatialAudioPlatformSupport;
- (void)getStereoHFPSupport;
- (void)getWirelessSharingSpatialSupport;
- (void)gyroInformation;
- (void)headTrackingAvailable;
- (void)hearingAidEnabled;
- (void)hearingAidEnrolled;
- (void)inEarDetectEnabled;
- (void)isGenuineAirPods;
- (void)isGuestPairingMode;
- (void)listeningMode;
- (void)listeningModeConfigs;
- (void)micMode;
- (void)pairedDeviceNameUpdated;
- (void)setAdaptiveVolumeMode:(int)mode;
- (void)setConversationDetectMode:(int)mode;
- (void)setDevice:(BTDeviceImpl *)device;
- (void)setDeviceAdaptiveVolumeMode:(int)mode;
- (void)setDeviceConversationDetect:(int)detect;
- (void)setDeviceSoundProfileAllowed:(BOOL)allowed;
- (void)setGuestPairingMode:(BOOL)mode;
- (void)setHearingAidEnabled:(BOOL)enabled;
- (void)setHearingAidEnrolled:(BOOL)enrolled;
- (void)setPIN:(id)n;
- (void)setProxCardShowedForFeature:(int)feature showed:(BOOL)showed;
- (void)setSSLMode:(int)mode;
- (void)setServiceSetting:(unsigned int)setting key:(id)key value:(id)value;
- (void)singleClickMode;
- (void)smartRouteMode;
- (void)spatialAudioAllowed;
- (void)spatialAudioMode;
- (void)startVoiceCommand;
- (void)unpair;
@end

@implementation BluetoothDevice

- (id)address
{
  result = self->_address;
  if (!result)
  {
    device = self->_device;
    result = AddressForBTDevice();
    self->_address = result;
  }

  return result;
}

- (BluetoothDevice)initWithDevice:(BTDeviceImpl *)device address:(id)address
{
  v9.receiver = self;
  v9.super_class = BluetoothDevice;
  v6 = [(BluetoothDevice *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(BluetoothDevice *)v6 setDevice:device];
    v7->_address = address;
    v7->_connectingServiceMask = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BluetoothDevice;
  [(BluetoothDevice *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [(NSString *)self->_name copyWithZone:zone];
  v5[3] = [(NSString *)self->_address copyWithZone:zone];
  [v5 setDevice:self->_device];
  return v5;
}

- (int64_t)compare:(id)compare
{
  name = [(BluetoothDevice *)self name];
  name2 = [compare name];

  return [name compare:name2 options:1];
}

- (void)setDevice:(BTDeviceImpl *)device
{
  if (self->_device != device)
  {
    self->_device = device;
  }
}

- (id)name
{
  v26 = *MEMORY[0x277D85DE8];
  name = self->_name;
  if (!name)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    device = self->_device;
    if (BTDeviceGetName() || (v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v10]) == 0)
    {
      v5 = self->_device;
      if (BTDeviceGetDefaultName())
      {
        v6 = [(BluetoothDevice *)self address:v10];
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v10];
      }

      name = v6;
    }

    else
    {
      name = v7;
      self->_name = v7;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return name;
}

- (id)productName
{
  v24 = *MEMORY[0x277D85DE8];
  productName = self->_productName;
  if (!productName)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    device = self->_device;
    if (BTDeviceGetProductName() || (v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v8]) == 0)
    {
      productName = [(BluetoothDevice *)self address:v8];
    }

    else
    {
      productName = v5;
      self->_productName = v5;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return productName;
}

- (int)type
{
  device = self->_device;
  if (BTDeviceGetDeviceType())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)majorClass
{
  device = self->_device;
  if (BTDeviceGetDeviceClass())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)minorClass
{
  device = self->_device;
  if (BTDeviceGetDeviceClass())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)vendorId
{
  device = self->_device;
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)vendorIdSrc
{
  device = self->_device;
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)productId
{
  device = self->_device;
  if (BTDeviceGetDeviceId())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)paired
{
  device = self->_device;
  BTDeviceGetPairingStatus();
  return 0;
}

- (BOOL)cloudPaired
{
  device = self->_device;
  BTDeviceGetCloudPairingStatus();
  return 0;
}

- (BOOL)magicPaired
{
  device = self->_device;
  BTDeviceGetMagicPairingStatus();
  return 0;
}

- (BOOL)connected
{
  device = self->_device;
  BTDeviceGetConnectedServices();
  return 0;
}

- (BOOL)isTemporaryPaired
{
  device = self->_device;
  BTDeviceIsTemporaryPaired();
  return 0;
}

- (unint64_t)connectedServices
{
  device = self->_device;
  BTDeviceGetConnectedServices();
  return 0;
}

- (unint64_t)connectedServicesCount
{
  device = self->_device;
  BTDeviceGetConnectedServices();
  return 0;
}

- (BOOL)supportsBatteryLevel
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  return BTAccessoryManagerGetDeviceBatteryLevel() == 0;
}

- (int)batteryLevel
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetDeviceBatteryLevel())
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)batteryStatus:(id *)status
{
  if (status)
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    LOBYTE(v4) = BTAccessoryManagerGetDeviceBatteryStatus() == 0;
  }

  else
  {
    v5 = sharedBluetoothManagerLogComponent();
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [BluetoothDevice batteryStatus:];
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (int)primaryBudSide:(int *)side
{
  _accessoryManager = [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  device = [(BluetoothDevice *)self device];

  return MEMORY[0x282186408](_accessoryManager, device, side);
}

- (BOOL)setIsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v13 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "no";
    if (hiddenCopy)
    {
      v6 = "yes";
    }

    v11 = 136315138;
    v12 = v6;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set isHidden : %s", &v11, 0xCu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  IsHidden = BTAccessoryManagerSetIsHidden();
  if (IsHidden)
  {
    v8 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setIsHidden:];
    }
  }

  result = IsHidden == 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)inEarDetectEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v3 = BTAccessoryManagerGetInEarDetectionEnable();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice inEarDetectEnabled];
    }

    result = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = 1;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "inEarDetectEnabled : %d", buf, 8u);
    }

    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setInEarDetectEnabled:(BOOL)enabled
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = enabled << 31 >> 31;
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = v4;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set inEarDetectEnabled : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSetInEarDetectionEnable();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setInEarDetectEnabled:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setSpatialAudioAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = allowedCopy;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Set setSpatialAudioAllowed : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSpatialAudioAllowed();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSpatialAudioAllowed:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)spatialAudioAllowed
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioAllowed = BTAccessoryManagerGetSpatialAudioAllowed();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (SpatialAudioAllowed)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [BluetoothDevice spatialAudioAllowed];
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = 0;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Spatial Audio User selection : %d", buf, 8u);
    }

    LOBYTE(v6) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)spatialAudioActive
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioActive = BTAccessoryManagerGetSpatialAudioActive();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (SpatialAudioActive)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [BluetoothDevice spatialAudioAllowed];
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = 0;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Spatial Audio Active  : %d", buf, 8u);
    }

    LOBYTE(v6) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)setSpatialAudioMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = modeCopy;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set SpatialAudioMode : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSpatialAudioConfig();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSpatialAudioMode:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)spatialAudioMode
{
  v13 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioConfig = BTAccessoryManagerGetSpatialAudioConfig();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (SpatialAudioConfig)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice spatialAudioMode];
    }

    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = 255;
      v11 = 1024;
      v12 = -1;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Spatial Audio : %d Head Tracking %d", buf, 0xEu);
    }

    v6 = -1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)setSpatialAudioConfig:(id)config spatialMode:(int)mode headTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v20 = *MEMORY[0x277D85DE8];
  v9 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    configCopy = config;
    v16 = 1024;
    modeCopy = mode;
    v18 = 1024;
    v19 = trackingCopy;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "set Spatial Audio Config : [%@] %d head Tracking %d", &v14, 0x18u);
  }

  if (!config)
  {
    goto LABEL_7;
  }

  [config UTF8String];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (!BTAccessoryManagerSpatialAudioConfig())
  {
    LOBYTE(v11) = 1;
    goto LABEL_9;
  }

  v10 = sharedBluetoothManagerLogComponent();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    [BluetoothDevice setSpatialAudioMode:];
LABEL_7:
    LOBYTE(v11) = 0;
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)headTrackingAvailable
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (HeadphoneFeatureValue)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice headTrackingAvailable];
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = 1;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "HeadtrackingAvailable - %d", buf, 8u);
  }

  result = 1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)spatialAudioConfig:(id)config spatialMode:(int *)mode headTracking:(BOOL *)tracking
{
  v22 = *MEMORY[0x277D85DE8];
  *mode = 255;
  if (!config)
  {
    goto LABEL_5;
  }

  [config UTF8String];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetSpatialAudioConfig())
  {
    v9 = sharedBluetoothManagerLogComponent();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [BluetoothDevice spatialAudioMode];
LABEL_5:
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    *tracking = 1;
    v11 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *mode;
      v13 = *tracking;
      *buf = 138412802;
      configCopy = config;
      v18 = 1024;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_DEFAULT, "get SpatialAudio Config : [%@] %d Head Tracking %d", buf, 0x18u);
    }

    LOBYTE(v10) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)setSmartRouteMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = modeCopy;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set smartRouteMode : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSmartRouteMode();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSmartRouteMode:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)smartRouteMode
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SmartRouteMode = BTAccessoryManagerGetSmartRouteMode();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (SmartRouteMode)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice smartRouteMode];
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "Manual";
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "smart Routing : %s", buf, 0xCu);
  }

  result = 2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)smartRouteSupport
{
  v8 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  BTAccessoryManagerGetSmartRouteSupport();
  v3 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "NOT Supported";
    _os_log_impl(&dword_241BC5000, v3, OS_LOG_TYPE_INFO, "Smart Routing : %s", buf, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary
{
  v17 = *MEMORY[0x277D85DE8];
  *primary = 3;
  *secondary = 3;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v7 = BTAccessoryManagerGetInEarStatus();
  v8 = sharedBluetoothManagerLogComponent();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice inEarStatusPrimary:secondary:];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *primary;
    v11 = *secondary;
    v14[0] = 67109376;
    v14[1] = v10;
    v15 = 1024;
    v16 = v11;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_DEFAULT, "Retrieved inEarStatus Primary : %u, Secondary : %u", v14, 0xEu);
  }

  result = v7 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)SendSetupCommand:(unsigned __int8)command
{
  if (command == 3)
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "SendSetupCommand Stop";
      v6 = &v8;
      goto LABEL_7;
    }

LABEL_8:
    [+[BluetoothManager _accessoryManager:v8]];
    [(BluetoothDevice *)self device];
    return BTAccessoryManagerSetupCommand();
  }

  if (command == 1)
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v5 = "SendSetupCommand Start";
      v6 = &v9;
LABEL_7:
      _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  return 0;
}

- (unsigned)micMode
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  MicMode = BTAccessoryManagerGetMicMode();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (MicMode)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice micMode];
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "micMode : %d", buf, 8u);
  }

  result = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setMicMode:(unsigned int)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set micMode : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSetMicMode();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setMicMode:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)doubleTapAction
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetDoubleTapAction())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice doubleTapAction];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 1;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "doubleTapAction : %d", buf, 8u);
  }

  result = 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setDoubleTapAction:(unsigned int)action
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = action;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set doubleTapAction : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSetDoubleTapAction();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setDoubleTapAction:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)doubleTapCapability
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetDoubleTapCapability())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice doubleTapCapability];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 0;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "doubleTapCapability : %d", buf, 8u);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)featureCapability:(int)capability
{
  v13 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetFeatureCapability())
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice featureCapability:];
    }
  }

  v6 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    capabilityCopy = capability;
    v11 = 1024;
    v12 = 0;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "%d capability : %d", buf, 0xEu);
  }

  result = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action
{
  v17 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DoubleTapAction = BTAccessoryManagerGetDoubleTapActionEx();
  if (DoubleTapAction)
  {
    v8 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice doubleTapActionEx:rightAction:];
    }
  }

  v9 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *ex;
    v11 = *action;
    v14[0] = 67109376;
    v14[1] = v10;
    v15 = 1024;
    v16 = v11;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_INFO, "doubleTapActionEx Left : %d, Right : %d", v14, 0xEu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return DoubleTapAction;
}

- (BOOL)setDoubleTapActionEx:(unsigned int)ex rightAction:(unsigned int)action
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109376;
    v12[1] = ex;
    v13 = 1024;
    actionCopy = action;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Set doubleTapActionEx Left : %d, Right : %d", v12, 0xEu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v8 = BTAccessoryManagerSetDoubleTapActionEx();
  if (v8)
  {
    v9 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setDoubleTapActionEx:rightAction:];
    }
  }

  result = v8 == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)listeningMode
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice listeningMode];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 0;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "listening mode : %d", buf, 8u);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setListeningMode:(unsigned int)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set listening mode : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setListeningMode:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setHeartRateMonitorEnabled:(unsigned int)enabled
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = enabled;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set Heart Rate Monitor State : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setHeartRateMonitorEnabled:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)getHeartRateMonitorEnabled
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getHeartRateMonitorEnabled];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 0;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "HRM state : %d", buf, 8u);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)listeningModeConfigs
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice listeningModeConfigs];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 0;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "listening mode configs : %d", buf, 8u);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setListeningModeConfigs:(unsigned int)configs
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = configs;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set listening mode configs : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setListeningModeConfigs:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)singleClickMode
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice singleClickMode];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 0;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "single click mode : %d", buf, 8u);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setSingleClickMode:(int)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set single click mode : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setSingleClickMode:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)doubleClickMode
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice doubleClickMode];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 0;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "double click mode : %d", buf, 8u);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setDoubleClickMode:(int)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set double click mode : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setDoubleClickMode:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)clickHoldModes:(id *)modes
{
  v22 = *MEMORY[0x277D85DE8];
  *&modes->var0 = 0;
  *&modes->var2 = 0;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v6 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice clickHoldModes:];
    }
  }

  modes->var0 = 0;
  *&modes->var1 = vand_s8(vshl_u32(vdup_n_s32(0), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL);
  modes->var3 = 0;
  v7 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    var0 = modes->var0;
    var1 = modes->var1;
    var2 = modes->var2;
    var3 = modes->var3;
    *buf = 67109888;
    v15 = var0;
    v16 = 1024;
    v17 = var1;
    v18 = 1024;
    v19 = var2;
    v20 = 1024;
    v21 = var3;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Click Hold Modes: right 0x%02X, left 0x%02X, prevRightMode 0x%02X, prevLeftMode 0x%02X", buf, 0x1Au);
  }

  v12 = *MEMORY[0x277D85DE8];
  return ControlCommand;
}

- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action
{
  v18 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v8 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice clickHoldModes:];
    }
  }

  *mode = 0;
  *action = 0;
  v9 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *mode;
    v11 = *action;
    *buf = 67109376;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&dword_241BC5000, v9, OS_LOG_TYPE_INFO, "click hold leftMode : %d rightMode : %d", buf, 0xEu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return ControlCommand;
}

- (BOOL)setClickHoldMode:(int)mode rightMode:(int)rightMode
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109376;
    v12[1] = mode;
    v13 = 1024;
    rightModeCopy = rightMode;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_INFO, "Set click hold leftMode : %d rightMode : %d", v12, 0xEu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v8 = BTAccessoryManagerSendControlCommand();
  if (v8)
  {
    v9 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setClickHoldMode:rightMode:];
    }
  }

  result = v8 == 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setClickHoldModes:(id)modes
{
  var2 = modes.var2;
  var0 = modes.var0;
  v20 = *MEMORY[0x277D85DE8];
  var1 = modes.var1;
  var3 = modes.var3;
  v8 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109888;
    v13[1] = var1;
    v14 = 1024;
    v15 = var3;
    v16 = 1024;
    v17 = var0;
    v18 = 1024;
    v19 = var2;
    _os_log_impl(&dword_241BC5000, v8, OS_LOG_TYPE_INFO, "Set click hold currentLeftMode : %d previousLeftMode : %d currentRightMode : %d previousRightMode %d", v13, 0x1Au);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v9 = BTAccessoryManagerSendControlCommand();
  if (v9)
  {
    v10 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setClickHoldMode:rightMode:];
    }
  }

  result = v9 == 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)crownRotationDirection
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice crownRotationDirection];
    }
  }

  return 0;
}

- (BOOL)setCrownRotationDirection:(int)direction
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = direction;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set crown rotation dir : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setCrownRotationDirection:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)chimeVolume
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice chimeVolume];
    }
  }

  return 0;
}

- (BOOL)setChimeVolume:(unsigned int)volume
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = volume;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set chime volume : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setChimeVolume:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)autoAnswerMode
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetControlCommand())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice autoAnswerMode];
    }
  }

  return 0;
}

- (BOOL)setAutoAnswerMode:(int)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109120;
    v10[1] = mode;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Set auto answer mode : %d", v10, 8u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v6 = BTAccessoryManagerSendControlCommand();
  if (v6)
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setAutoAnswerMode:];
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)accessorySettingFeatureBitMask
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetSettingFeatureBitMask())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice accessorySettingFeatureBitMask];
    }
  }

  v4 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v8 = 0;
    _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_INFO, "Accessory feature bitmask : %x", buf, 8u);
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)pairedDeviceNameUpdated
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  device = self->_device;
  if (BTDeviceGetName())
  {
LABEL_2:
    LOBYTE(v4) = 0;
    goto LABEL_10;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = sharedBluetoothManagerLogComponent();
    LODWORD(v4) = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!v4)
    {
      goto LABEL_10;
    }

    [BluetoothDevice pairedDeviceNameUpdated];
    goto LABEL_2;
  }

  v6 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = [v5 length];
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "Magic paired device name updated to %@ (%lu)", &v10, 0x16u);
  }

  [(BluetoothDevice *)self _clearName];
  self->_name = [v5 copy];
  LOBYTE(v4) = 1;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)accessoryInfo
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(0x1F40uLL, 0x86D86027uLL);
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v17 = 0;
  v18 = 0;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  AccessoryInfo = BTAccessoryManagerGetAccessoryInfo();
  if (AccessoryInfo || v18 == 0)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:?];
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v17];
    v9 = v17 != 0;
  }

  free(v4);
  if (!AccessoryInfo && !v9)
  {
    v13 = 0;
  }

  else
  {
    v11 = sharedBluetoothManagerLogComponent();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    v13 = v17;
    if (v12)
    {
      *buf = 67109378;
      v20 = AccessoryInfo;
      v21 = 2112;
      v22 = v17;
      _os_log_error_impl(&dword_241BC5000, v11, OS_LOG_TYPE_ERROR, "BTAccessoryManagerGetAccessoryInfo result %d, JSON error %@", buf, 0x12u);
      v13 = v17;
    }
  }

  v14 = !AccessoryInfo && v13 == 0;
  if (v14 && [v8 count])
  {
    result = [v8 copy];
  }

  else
  {
LABEL_22:
    result = MEMORY[0x277CBEC10];
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getAACPCapabilityBit:(int)bit
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = malloc_type_malloc(0x3E8uLL, 0x6CC44251uLL);
  if (v5)
  {
    v6 = v5;
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    BTAccessoryManagerGetAACPCapabilityBits();
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      bitCopy = bit;
      v12 = 1024;
      v13 = 0;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "getAACPCapabilityBit: bit %d retval %d", buf, 0xEu);
    }

    free(v6);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getAACPCapabilityBits
{
  result = malloc_type_malloc(0x3E8uLL, 0xD4C12529uLL);
  if (result)
  {
    v4 = result;
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    BTAccessoryManagerGetAACPCapabilityBits();
    free(v4);
    return [0 copy];
  }

  return result;
}

- (unsigned)getAACPCapabilityInteger:(int)integer
{
  if (integer > 0xFF)
  {
    return 3;
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetAACPCapabilityInteger())
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getAACPCapabilityInteger:];
    }
  }

  return 0;
}

- (BOOL)isAccessory
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  BTAccessoryManagerIsAccessory();
  return 0;
}

- (BOOL)isServiceSupported:(unsigned int)supported
{
  v15 = *MEMORY[0x277D85DE8];
  device = self->_device;
  SupportedServices = BTDeviceGetSupportedServices();
  v6 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    supportedCopy = supported;
    v11 = 1024;
    v12 = 0;
    v13 = 1024;
    v14 = SupportedServices;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_INFO, "Asking for service 0x%x supported, services 0x%x, result %d", buf, 0x14u);
  }

  result = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getServiceSetting:(unsigned int)setting key:(id)key
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  device = self->_device;
  [key UTF8String];
  if (BTDeviceGetServiceSettings())
  {
    result = 0;
  }

  else
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setServiceSetting:(unsigned int)setting key:(id)key value:(id)value
{
  device = self->_device;
  [key UTF8String];
  [value UTF8String];
  if (BTDeviceSetServiceSettings())
  {
    v8 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setServiceSetting:v8 key:? value:?];
    }
  }
}

- (void)connect
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 connectDevice:self];
}

- (void)disconnect
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 disconnectDevice:self];
}

- (void)setPIN:(id)n
{
  v5 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v5 setPincode:n forDevice:self];
}

- (void)acceptSSP:(int64_t)p
{
  v5 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v5 acceptSSP:p forDevice:self];
}

- (void)unpair
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 unpairDevice:self];
}

- (void)startVoiceCommand
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 startVoiceCommand:self];
}

- (void)endVoiceCommand
{
  v3 = +[BluetoothManager sharedInstance];

  [(BluetoothManager *)v3 endVoiceCommand:self];
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings
{
  device = self->_device;
  BTDeviceGetSyncSettings();
  v3 = vmovl_u16((*&vshl_u16((*&vdup_n_s16(0) & 0xFF00FF00FF00FFLL), 0xFFFFFFFDFFFEFFFCLL) & 0xFF01FF01FF01FF01));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  v7 = vorrq_s8(vshlq_u64(v6, xmmword_241BD80B0), vshlq_u64(vandq_s8(v4, v5), xmmword_241BD80A0));
  return *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
}

- (id)syncGroups
{
  v8 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  bzero(v7, 0x400uLL);
  device = self->_device;
  BTDeviceGetGroups();
  v5 = *MEMORY[0x277D85DE8];
  return array;
}

- (BOOL)isAppleAudioDevice
{
  device = self->_device;
  IsAppleAudioDevice = BTDeviceIsAppleAudioDevice();
  if (IsAppleAudioDevice)
  {
    NSLog(&cfstr_BtmFailedToChe.isa, IsAppleAudioDevice);
  }

  return 0;
}

- (BOOL)supportsHS
{
  device = self->_device;
  v3 = BTDeviceSupportsHS();
  if (v3)
  {
    NSLog(&cfstr_BtmFailedToChe_0.isa, v3);
  }

  return 0;
}

- (BOOL)isProController
{
  device = self->_device;
  IsProController = BTDeviceIsProController();
  if (IsProController)
  {
    NSLog(&cfstr_BtmFailedToChe_1.isa, IsProController);
  }

  return 0;
}

- (BOOL)setUserName:(id)name
{
  if (![(NSString *)self->_name isEqualToString:?])
  {
    [name cStringUsingEncoding:4];
    device = self->_device;
    v6 = BTDeviceSetUserName();
    if (v6)
    {
      NSLog(&cfstr_BtmFailedToSet.isa, v6);
      return 0;
    }

    [(BluetoothDevice *)self _clearName];
    self->_name = [name copy];
  }

  return 1;
}

- (int)getLowSecurityStatus
{
  device = self->_device;
  LowSecurityStatus = BTDeviceGetLowSecurityStatus();
  if (LowSecurityStatus)
  {
    NSLog(&cfstr_BtmFailedToChe_2.isa, LowSecurityStatus);
  }

  return 0;
}

- (int)getBehaviorForHIDDevice
{
  device = self->_device;
  if (BTDeviceGetHIDDeviceBehavior())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getBehaviorForHIDDevice];
    }
  }

  return 0;
}

- (int)getStereoHFPSupport
{
  v9 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetStereoHFPSupport())
  {
    v3 = sharedBluetoothManagerLogComponent();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      [BluetoothDevice getStereoHFPSupport];
      result = 0;
    }
  }

  else
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "spatial not supported";
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Support for Stereo HFP : %s", buf, 0xCu);
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getDeviceSoundProfileSupport
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DeviceSoundProfileSupport = BTAccessoryManagerGetDeviceSoundProfileSupport();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (DeviceSoundProfileSupport)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [BluetoothDevice getDeviceSoundProfileSupport];
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "NOT Supported";
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Accessory support for Spatial Profile: : %s", buf, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)getDeviceSoundProfileAllowed
{
  v11 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  DeviceSoundProfileAllowed = BTAccessoryManagerGetDeviceSoundProfileAllowed();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (DeviceSoundProfileAllowed)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [BluetoothDevice getDeviceSoundProfileAllowed];
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "NOT Allowed";
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Accessory Allowed for Spatial Profile: %s", buf, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setDeviceSoundProfileAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v11 = *MEMORY[0x277D85DE8];
  v5 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NOT Allowed";
    if (allowedCopy)
    {
      v6 = "Allowed";
    }

    v9 = 136315138;
    v10 = v6;
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Accessory Allowed for Spatial Profile: %s", &v9, 0xCu);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerSetDeviceSoundProfileAllowed())
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceSoundProfileAllowed];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unsigned)getSpatialAudioPlatformSupport
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  SpatialAudioPlatformSupport = BTAccessoryManagerGetSpatialAudioPlatformSupport();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (SpatialAudioPlatformSupport)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getSpatialAudioPlatformSupport];
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "NOT Supported";
    _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Platform Spatial Audio Support : %s", buf, 0xCu);
  }

  result = 2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)getUserSelectedDeviceType
{
  device = self->_device;
  if (BTDeviceGetUserSelectedDeviceType())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)setUserSelectedDeviceType:(int)type
{
  device = self->_device;
  v4 = BTDeviceSetUserSelectedDeviceType();
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_BtmFailedToSet_0.isa, v4);
  }

  return v5 == 0;
}

- (id)gyroInformation
{
  v12 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetGyroInformation())
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice gyroInformation];
    }
  }

  else
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v9 = dictionary;
      v10 = 1024;
      v11 = 0;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "gyroInformation - Generated gyro information %@ from data with length %u", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return dictionary;
}

- (int)getHexDeviceAddress:(id *)address
{
  [(NSString *)self->_address UTF8String];

  return BTDeviceAddressFromString();
}

- (int)getDeviceColor:(unsigned int *)color
{
  _accessoryManager = [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  device = [(BluetoothDevice *)self device];

  return MEMORY[0x282186398](_accessoryManager, device, color);
}

- (BOOL)isGenuineAirPods
{
  v10 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  IsGenuineAirPods = BTAccessoryManagerIsGenuineAirPods();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (IsGenuineAirPods)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isGenuineAirPods];
    }

    result = 1;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v9 = -1;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Is Genuine AirPods : %d", buf, 8u);
    }

    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig
{
  v5 = 0;
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetCallManagementConfig())
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getCallManagementConfig];
    }

    BYTE1(v5) = 0;
  }

  return (*(&v5 + 1) << 32);
}

- (BOOL)setCallConfig:(id)config
{
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v4 = BTAccessoryManagerSendControlCommand();
  if (v4)
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setCallConfig:];
    }
  }

  return v4 == 0;
}

- (unsigned)getDeviceAdaptiveVolumeMode
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([+[BluetoothManager _accessoryManager] sharedInstance])
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceAdaptiveVolumeMode];
    }
  }

  else
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Get Mode - %d", buf, 8u);
    }
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDeviceAdaptiveVolumeMode:(int)mode
{
  modeCopy = mode;
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = modeCopy;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Set Mode - %d", v8, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerSendControlCommand())
    {
      v6 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceAdaptiveVolumeMode:];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)getAdaptiveVolumeSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerGetHeadphoneFeatureValue())
    {
      v3 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getAdaptiveVolumeSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getAdaptiveVolumeMode
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([+[BluetoothManager _accessoryManager] sharedInstance])
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceAdaptiveVolumeMode];
    }
  }

  else
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Get Mode - %d", buf, 8u);
    }
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAdaptiveVolumeMode:(int)mode
{
  modeCopy = mode;
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = modeCopy;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Set Mode - %d", v8, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerSendControlCommand())
    {
      v6 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceAdaptiveVolumeMode:];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)getAutoANCSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerGetHeadphoneFeatureValue())
    {
      v3 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getAutoANCSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getDeviceConversationDetect
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([+[BluetoothManager _accessoryManager] sharedInstance])
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceConversationDetect];
    }
  }

  else
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_DEFAULT, "Conversation Detect: mode - %d", buf, 8u);
    }
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDeviceConversationDetect:(int)detect
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = detect;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Conversation Detect: Set Mode - %d", v8, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerSendControlCommand())
    {
      v6 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceConversationDetect:];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)getConversationDetectSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerGetHeadphoneFeatureValue())
    {
      v3 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getConversationDetectSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getConversationDetectMode
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([+[BluetoothManager _accessoryManager] sharedInstance])
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getDeviceConversationDetect];
    }
  }

  else
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_DEFAULT, "Conversation Detect: mode - %d", buf, 8u);
    }
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setConversationDetectMode:(int)mode
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = mode;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Conversation Detect: Set Mode - %d", v8, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerSendControlCommand())
    {
      v6 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setDeviceConversationDetect:];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)getSSLSupport
{
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerGetHeadphoneFeatureValue())
    {
      v3 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice getSSLSupport];
      }
    }
  }

  return 0;
}

- (unsigned)getSSLMode
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([+[BluetoothManager _accessoryManager] sharedInstance])
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getSSLMode];
    }
  }

  else
  {
    v4 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v8 = 0;
      _os_log_impl(&dword_241BC5000, v4, OS_LOG_TYPE_DEFAULT, "SSL: mode - %d", buf, 8u);
    }
  }

  result = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setSSLMode:(int)mode
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = mode;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "SSL: Set Mode - %d", v8, 8u);
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerSendControlCommand())
    {
      v6 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setSSLMode:];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)getWirelessSharingSpatialSupport
{
  v9 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && ([+[BluetoothManager _accessoryManager] sharedInstance])
  {
    v3 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice getWirelessSharingSpatialSupport];
    }

    result = 1;
  }

  else
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v8 = 1;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_INFO, "Is Spatial Supported during Wireless splitter : %d", buf, 8u);
    }

    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isGuestPairingMode
{
  v13 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
    v4 = sharedBluetoothManagerLogComponent();
    v5 = v4;
    if (HeadphoneFeatureValue)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice isGuestPairingMode];
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = 0;
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Result: %u, Mode:  %u", buf, 0xEu);
    }
  }

  else
  {
    v6 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isGuestPairingMode];
    }
  }

  result = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setGuestPairingMode:(BOOL)mode
{
  modeCopy = mode;
  v13 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    v5 = BTAccessoryManagerSetHeadphoneFeatureValue();
    v6 = sharedBluetoothManagerLogComponent();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setGuestPairingMode:];
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109376;
      v10[1] = 0;
      v11 = 1024;
      v12 = modeCopy;
      _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Guest Pairing: Result: %u, Mode Set To:  %u", v10, 0xEu);
    }
  }

  else
  {
    v8 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setGuestPairingMode:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isProxCardSupportedForFeature:(int)feature
{
  v41 = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isProxCardSupportedForFeature:];
    }

    goto LABEL_13;
  }

  productId = [(BluetoothDevice *)self productId];
  v6 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v34) = productId;
    _os_log_impl(&dword_241BC5000, v6, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Product ID is %i", buf, 8u);
  }

  if (feature != 2)
  {
    if (feature != 1)
    {
      v7 = 0x8C1u >> (productId - 11);
      if ((productId - 8203) >= 0xC)
      {
        LOBYTE(v7) = 0;
      }

      if (feature)
      {
        LOBYTE(getConversationDetectSupport) = 0;
      }

      else
      {
        LOBYTE(getConversationDetectSupport) = v7;
      }

      goto LABEL_14;
    }

    if (productId == 8218)
    {
      v19 = sharedBluetoothManagerLogComponent();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    if (productId == 8230)
    {
      v12 = sharedBluetoothManagerLogComponent();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        LOBYTE(getConversationDetectSupport) = 0;
        goto LABEL_14;
      }

LABEL_18:
      [BluetoothDevice isProxCardSupportedForFeature:];
      goto LABEL_13;
    }

    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerGetCallManagementConfig())
    {
      v20 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice isProxCardSupportedForFeature:];
      }

      goto LABEL_13;
    }

    LOBYTE(getConversationDetectSupport) = 0;
    v27 = sharedBluetoothManagerLogComponent();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v34 = "No";
    v35 = 1024;
    LODWORD(v36) = 0;
    v16 = "Prox Card Status: Mute Call: Support: %s -> Version: %d";
    v17 = v27;
    v18 = 18;
LABEL_72:
    _os_log_impl(&dword_241BC5000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_14;
  }

  if (productId > 8221)
  {
    if (productId == 8222)
    {
      goto LABEL_28;
    }

    if (productId != 8228)
    {
LABEL_56:
      if ([(BluetoothDevice *)self getAdaptiveVolumeSupport])
      {
        getConversationDetectSupport = [(BluetoothDevice *)self getConversationDetectSupport];
      }

      else
      {
        getConversationDetectSupport = 0;
      }

      v28 = sharedBluetoothManagerLogComponent();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      if (getConversationDetectSupport)
      {
        v29 = "Yes";
      }

      else
      {
        v29 = "No";
      }

      if ([(BluetoothDevice *)self getAdaptiveVolumeSupport])
      {
        v30 = "Yes";
      }

      else
      {
        v30 = "No";
      }

      getConversationDetectSupport2 = [(BluetoothDevice *)self getConversationDetectSupport];
      *buf = 136315650;
      if (getConversationDetectSupport2)
      {
        v32 = "Yes";
      }

      else
      {
        v32 = "No";
      }

      v34 = v29;
      v35 = 2080;
      v36 = v30;
      v37 = 2080;
      v38 = v32;
      v16 = "Prox Card Status: Adaptive Controls: Support: %s -> AdaptiveVolume: %s, CD: %s";
      v17 = v28;
      v18 = 32;
      goto LABEL_72;
    }
  }

  else if (productId != 8212)
  {
    if (productId != 8217)
    {
      goto LABEL_56;
    }

LABEL_28:
    getConversationDetectSupport = [(BluetoothDevice *)self getAdaptiveVolumeSupport];
    v13 = sharedBluetoothManagerLogComponent();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    if (getConversationDetectSupport)
    {
      v14 = "Yes";
    }

    else
    {
      v14 = "No";
    }

    if ([(BluetoothDevice *)self getAdaptiveVolumeSupport])
    {
      v15 = "Yes";
    }

    else
    {
      v15 = "No";
    }

    *buf = 136315394;
    v34 = v14;
    v35 = 2080;
    v36 = v15;
    v16 = "Prox Card Status: Adaptive Controls: Support: %s -> AdaptiveVolume: %s";
    v17 = v13;
    v18 = 22;
    goto LABEL_72;
  }

  getConversationDetectSupport = [(BluetoothDevice *)self getSSLSupport]&& [(BluetoothDevice *)self getAdaptiveVolumeSupport]&& [(BluetoothDevice *)self getConversationDetectSupport];
  v21 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (getConversationDetectSupport)
    {
      v22 = "Yes";
    }

    else
    {
      v22 = "No";
    }

    if ([(BluetoothDevice *)self getSSLSupport])
    {
      v23 = "Yes";
    }

    else
    {
      v23 = "No";
    }

    if ([(BluetoothDevice *)self getAdaptiveVolumeSupport])
    {
      v24 = "Yes";
    }

    else
    {
      v24 = "No";
    }

    getConversationDetectSupport3 = [(BluetoothDevice *)self getConversationDetectSupport];
    *buf = 136315906;
    if (getConversationDetectSupport3)
    {
      v26 = "Yes";
    }

    else
    {
      v26 = "No";
    }

    v34 = v22;
    v35 = 2080;
    v36 = v23;
    v37 = 2080;
    v38 = v24;
    v39 = 2080;
    v40 = v26;
    v16 = "Prox Card Status: Adaptive Controls: Support: %s -> SSL: %s, AV: %s, CD: %s";
    v17 = v21;
    v18 = 42;
    goto LABEL_72;
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return getConversationDetectSupport;
}

- (BOOL)isProxCardShowedForFeature:(int)feature
{
  v15 = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isProxCardShowedForFeature:];
    }

    goto LABEL_14;
  }

  if (feature <= 1)
  {
    v5 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Mute Call: Card Discontinued, Return as Showed", buf, 2u);
    }

    goto LABEL_14;
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  if (BTAccessoryManagerGetFeatureProxCardStatus())
  {
    v7 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice isProxCardShowedForFeature:];
    }

    goto LABEL_14;
  }

  if (feature != 2)
  {
LABEL_14:
    result = 1;
    goto LABEL_15;
  }

  v8 = sharedBluetoothManagerLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "No";
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&dword_241BC5000, v8, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Adaptive Controls: Showed: %s -> Prox Card Status: 0x%08llx", buf, 0x16u);
  }

  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  BTAccessoryManagerSetFeatureProxCardStatus();
  result = 0;
LABEL_15:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setProxCardShowedForFeature:(int)feature showed:(BOOL)showed
{
  showedCopy = showed;
  v43 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    if (feature <= 1)
    {
      *(&v30 + 3) = 0;
      LODWORD(v30) = 0;
      [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
      [(BluetoothDevice *)self device];
      if (BTAccessoryManagerGetCallManagementConfig())
      {
        v7 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [BluetoothDevice setProxCardShowedForFeature:showed:];
        }

        goto LABEL_51;
      }

      v10 = sharedBluetoothManagerLogComponent();
      v11 = v10;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110656;
        *v32 = v30;
        *&v32[4] = 1024;
        *&v32[6] = BYTE1(v30);
        v33 = 1024;
        v34 = BYTE2(v30);
        v35 = 1024;
        v36 = BYTE3(v30);
        v37 = 1024;
        v38 = BYTE4(v30);
        v39 = 1024;
        v40 = BYTE5(v30);
        v41 = 1024;
        v42 = BYTE6(v30);
        _os_log_impl(&dword_241BC5000, v11, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Set: Call Management Version: %d, [0] status: %u, endCall: %u, [1] End Call Status: %u, End Call Config: %u, Mute Call Status: %u, Mute Call Config: %u", buf, 0x2Cu);
      }

      v14 = v30;
      if (feature)
      {
        if (v30 != 1)
        {
          v20 = sharedBluetoothManagerLogComponent();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [(BluetoothDevice *)&v30 setProxCardShowedForFeature:v20 showed:v22, v23, v24, v25, v26, v27];
          }

          goto LABEL_51;
        }

        if (showedCopy)
        {
          v14 = v30 + 1;
        }

        BYTE5(v30) = v14;
        v15 = sharedBluetoothManagerLogComponent();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_50:
          [(BluetoothDevice *)self setCallConfig:v30 | ((WORD2(v30) | (BYTE6(v30) << 16)) << 32)];
          goto LABEL_51;
        }

        if (BYTE5(v30) == 2)
        {
          v16 = "Set";
        }

        else
        {
          v16 = "Disabled";
        }

        *buf = 136315138;
        *v32 = v16;
        v17 = "Prox Card Status: Mute Call: Set: Version: 1, Mute Call Status: %s";
      }

      else if (v30 == 1)
      {
        if (showedCopy)
        {
          v14 = v30 + 1;
        }

        BYTE3(v30) = v14;
        v15 = sharedBluetoothManagerLogComponent();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        if (BYTE3(v30) == 2)
        {
          v28 = "Set";
        }

        else
        {
          v28 = "Disabled";
        }

        *buf = 136315138;
        *v32 = v28;
        v17 = "Prox Card Status: End Call: Set: Version: 1, End Call Status: %s";
      }

      else
      {
        if (showedCopy)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        BYTE1(v30) = v18;
        v15 = sharedBluetoothManagerLogComponent();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        if (BYTE1(v30) == 2)
        {
          v19 = "Set";
        }

        else
        {
          v19 = "Disabled";
        }

        *buf = 136315138;
        *v32 = v19;
        v17 = "Prox Card Status: End Call: Set: Version: 0, End Call Status: %s";
      }

      _os_log_impl(&dword_241BC5000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
      goto LABEL_50;
    }

    v30 = 0;
    [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
    [(BluetoothDevice *)self device];
    if (BTAccessoryManagerGetFeatureProxCardStatus())
    {
      v9 = sharedBluetoothManagerLogComponent();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BluetoothDevice setProxCardShowedForFeature:showed:];
      }
    }

    else
    {
      if (feature == 2 && showedCopy)
      {
        v30 |= 3uLL;
        v12 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *v32 = "Set";
          _os_log_impl(&dword_241BC5000, v12, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Adaptive Controls: Set: Status: %s", buf, 0xCu);
        }
      }

      [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
      [(BluetoothDevice *)self device];
      if (BTAccessoryManagerSetFeatureProxCardStatus())
      {
        v13 = sharedBluetoothManagerLogComponent();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [BluetoothDevice setProxCardShowedForFeature:showed:];
        }
      }
    }
  }

  else
  {
    v8 = sharedBluetoothManagerLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setProxCardShowedForFeature:showed:];
    }
  }

LABEL_51:
  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)hearingAidEnrolled
{
  v13 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (HeadphoneFeatureValue)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [BluetoothDevice hearingAidEnrolled];
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = 0;
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Get Enrolled:  %u", buf, 0xEu);
    }

    LOBYTE(v6) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setHearingAidEnrolled:(BOOL)enrolled
{
  enrolledCopy = enrolled;
  v12 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v5 = BTAccessoryManagerSetHeadphoneFeatureValue();
  v6 = sharedBluetoothManagerLogComponent();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setHearingAidEnrolled:];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = 0;
    v10 = 1024;
    v11 = enrolledCopy;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Set Enrolled:  %u", v9, 0xEu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hearingAidEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  HeadphoneFeatureValue = BTAccessoryManagerGetHeadphoneFeatureValue();
  v4 = sharedBluetoothManagerLogComponent();
  v5 = v4;
  if (HeadphoneFeatureValue)
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      [BluetoothDevice hearingAidEnabled];
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = 0;
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_241BC5000, v5, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Get Enabled:  %u", buf, 0xEu);
    }

    LOBYTE(v6) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setHearingAidEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x277D85DE8];
  [+[BluetoothManager sharedInstance](BluetoothManager _accessoryManager];
  [(BluetoothDevice *)self device];
  v5 = BTAccessoryManagerSetHeadphoneFeatureValue();
  v6 = sharedBluetoothManagerLogComponent();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BluetoothDevice setHearingAidEnabled:];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = 0;
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_241BC5000, v7, OS_LOG_TYPE_DEFAULT, "Hearing Aid: Result: %d, Set Enabled:  %u", v9, 0xEu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)batteryStatus:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setIsHidden:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set isHidden : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)inEarDetectEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get inEar detect enabled : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setInEarDetectEnabled:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set inEar detect enabled : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSpatialAudioAllowed:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set SpatialAudioAllowed : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)spatialAudioAllowed
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Spatial Allowed : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSpatialAudioMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set SpatialAudioMode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)spatialAudioMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Spatial mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)headTrackingAvailable
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Conversation Detect: Failed to get mode - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSmartRouteMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set smartRouteMode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)smartRouteMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Smart Routing mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)inEarStatusPrimary:secondary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get inEarStatus : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)micMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get mic mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setMicMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set mic mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)doubleTapAction
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get doubleTap action : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleTapAction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set doubleTap action : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)doubleTapCapability
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get doubleTap capabilty : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureCapability:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_241BC5000, v1, OS_LOG_TYPE_ERROR, "Failed to get %d capability : %d", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)doubleTapActionEx:rightAction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get doubleTapEx action : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleTapActionEx:rightAction:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set doubleTapEx action : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listeningMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get listening mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setListeningMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set listening mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setHeartRateMonitorEnabled:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set heart rate monitor state : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getHeartRateMonitorEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get heart rate monitor state : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)listeningModeConfigs
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get listening mode configs : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setListeningModeConfigs:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set listening mode configs : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)singleClickMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get single click mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSingleClickMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set single click mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)doubleClickMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get double click mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDoubleClickMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set double click mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)clickHoldModes:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get click hold mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setClickHoldMode:rightMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set click hold mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)crownRotationDirection
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get crown rotation dir : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCrownRotationDirection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set crown rotation dir : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)chimeVolume
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get chime volume : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setChimeVolume:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set chime volume : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)autoAnswerMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get auto answer mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setAutoAnswerMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set auto answer mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)accessorySettingFeatureBitMask
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Error in retrieving BTAccessorySettings Feature bitmask : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)pairedDeviceNameUpdated
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getAACPCapabilityInteger:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "BTAccessoryManagerGetAACPCapabilityInteger error %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setServiceSetting:(void *)a1 key:(NSObject *)a2 value:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = [a1 name];
  _os_log_error_impl(&dword_241BC5000, a2, OS_LOG_TYPE_ERROR, "Failed to set service setting for device %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)getBehaviorForHIDDevice
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "BTM : Failed to get HID device behavior with error: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getStereoHFPSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Accessory support Head Tracked FT : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceSoundProfileSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Accessory support for Spatial Profile: : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceSoundProfileAllowed
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Accessory Allowed for Spatial Profile: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getSpatialAudioPlatformSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Platform Spatial Audio Support : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)gyroInformation
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "gyroInformation - Failed to get gyro information. result: %u", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isGenuineAirPods
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get Is Genuine AirPods : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getCallManagementConfig
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to get call managment configuration : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setCallConfig:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed to set end call config : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceAdaptiveVolumeMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Adaptive Volume: Failed to get mode - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceAdaptiveVolumeMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Adaptive Volume: Failed to set mode : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getAdaptiveVolumeSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Adaptive Volume: Failed to get support - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getAutoANCSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "AutoANC: Failed to get support - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceConversationDetect
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Conversation Detect: Failed to get mode - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDeviceConversationDetect:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Conversation Detect: Failed to set mode - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getConversationDetectSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Conversation Detect: Failed to get support - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getSSLSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "SSL: Failed to get support - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getSSLMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "SSL: Failed to get mode - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setSSLMode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "SSL: Failed to set mode - %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getWirelessSharingSpatialSupport
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Failed spatial support in WS : %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isGuestPairingMode
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Guest Pairing: Failed to get mode, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setGuestPairingMode:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setGuestPairingMode:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Guest Pairing: Failed to set mode, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isProxCardSupportedForFeature:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isProxCardSupportedForFeature:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isProxCardSupportedForFeature:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Prox Card Status: Mute Call: Support: Failed to get Call Management Status, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isProxCardShowedForFeature:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isProxCardShowedForFeature:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Prox Card Status: Showed: Failed to get Prox Card Status, result: %d, Return as Showed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setProxCardShowedForFeature:showed:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setProxCardShowedForFeature:showed:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Prox Card Status: Set: Failed to get Prox Card Status, result: %d, Return", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setProxCardShowedForFeature:showed:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Prox Card Status: Failed to Set Prox Card Status, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setProxCardShowedForFeature:showed:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Prox Card Status: Set: Failed to set Call Management Status, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setProxCardShowedForFeature:(uint64_t)a3 showed:(uint64_t)a4 .cold.5(unsigned __int8 *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  OUTLINED_FUNCTION_0(&dword_241BC5000, a2, a3, "Prox Card Status: Mute Call: Set: Invalid Call Management Version: %u", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setProxCardShowedForFeature:(uint64_t)a3 showed:(uint64_t)a4 .cold.6(unsigned __int8 *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  OUTLINED_FUNCTION_0(&dword_241BC5000, a2, a3, "Prox Card Status: Set: End Call: Invalid Call Management Version: %u", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setProxCardShowedForFeature:(uint64_t)a3 showed:(uint64_t)a4 .cold.7(unsigned __int8 *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  OUTLINED_FUNCTION_0(&dword_241BC5000, a2, a3, "Prox Card Status: Set: Invalid Call Management Version: %u, Cannot Set", a5, a6, a7, a8, 0);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)hearingAidEnrolled
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Hearing Aid: Failed to get enrolled, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setHearingAidEnrolled:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Hearing Aid: Failed to set enrolled, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)hearingAidEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Hearing Aid: Failed to get enabled, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setHearingAidEnabled:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_241BC5000, v0, v1, "Hearing Aid: Failed to set enabled, result: %d", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end