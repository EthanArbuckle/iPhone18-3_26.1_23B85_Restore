@interface HPSDevice
+ (id)headphoneDevice:(id)device btsDevice:(id)btsDevice;
- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig;
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings;
- (BOOL)ancsAuthorized;
- (BOOL)batteryStatus:(id *)status;
- (BOOL)cloudPaired;
- (BOOL)connected;
- (BOOL)getAdaptiveVolumeSupport;
- (BOOL)getAutoANCSupport;
- (BOOL)getConversationDetectSupport;
- (BOOL)getDeviceSoundProfileAllowed;
- (BOOL)getHexDeviceAddress:(id *)address;
- (BOOL)hearingAidEnabled;
- (BOOL)hearingAidEnrolled;
- (BOOL)hearingAidSupport;
- (BOOL)hearingTestSupport;
- (BOOL)inEarDetectEnabled;
- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary;
- (BOOL)isAppleAudioDevice;
- (BOOL)isFirmwareUpdateRequiredDevice;
- (BOOL)isGenuineAirPods;
- (BOOL)isGuestPairingMode;
- (BOOL)isLimitedConnectivityDevice;
- (BOOL)isTemporaryPaired;
- (BOOL)magicPaired;
- (BOOL)paired;
- (BOOL)setClickHoldModes:(id)modes;
- (BOOL)setUserName:(id)name;
- (BOOL)smartRouteSupport;
- (BOOL)supportsANCS;
- (BTSDevice)btsDevice;
- (HPSDevice)initWithHeadphoneDevice:(id)device btsDevice:(id)btsDevice;
- (NSString)debugDescription;
- (id)accessoryInfo;
- (id)address;
- (id)healthDeviceType;
- (id)identifier;
- (id)name;
- (id)productName;
- (id)syncGroups;
- (int)accessorySettingFeatureBitMask;
- (int)autoAnswerMode;
- (int)crownRotationDirection;
- (int)getDeviceColor:(unsigned int *)color;
- (int)getLowSecurityStatus;
- (int)getUserSelectedDeviceType;
- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action;
- (unsigned)clickHoldModes:(id *)modes;
- (unsigned)doubleTapAction;
- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action;
- (unsigned)doubleTapCapability;
- (unsigned)getAdaptiveVolumeMode;
- (unsigned)getConversationDetectMode;
- (unsigned)getDeviceAdaptiveVolumeMode;
- (unsigned)getSpatialAudioPlatformSupport;
- (unsigned)listeningMode;
- (unsigned)listeningModeConfigs;
- (unsigned)micMode;
- (unsigned)productId;
- (unsigned)smartRouteMode;
- (unsigned)userSelectedHealthDataSyncConfig;
- (unsigned)vendorId;
- (void)_logExpectationFormatStringForUsecase:(id)usecase queryValue:(id)value btsDeviceValue:(id)deviceValue headphoneDeviceValue:(id)headphoneDeviceValue;
- (void)_logSetterExpectationFormatStringForUsecase:(id)usecase inputValue:(id)value existingValue:(id)existingValue readBackValue:(id)backValue;
- (void)disconnect;
- (void)unpair;
@end

@implementation HPSDevice

- (HPSDevice)initWithHeadphoneDevice:(id)device btsDevice:(id)btsDevice
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  btsDeviceCopy = btsDevice;
  v23.receiver = self;
  v23.super_class = HPSDevice;
  v9 = [(HPSDevice *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_btsDevice, btsDevice);
    objc_storeStrong(&v10->_headphoneDevice, device);
    v11 = +[HPSHeadphoneManager sharedInstance];
    v10->_ffValue = [v11 isFeatureEnabled];

    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v25 = btsDeviceCopy;
      v26 = 2048;
      v27 = deviceCopy;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: %p %p", buf, 0x16u);
    }

    if (btsDeviceCopy)
    {
      if (!v10->_headphoneDevice && v10->_ffValue)
      {
        mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
        connectedHeadphones = [mEMORY[0x277D0FC00] connectedHeadphones];
        classicDevice = [btsDeviceCopy classicDevice];
        address = [classicDevice address];
        v17 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
        v18 = [connectedHeadphones objectForKey:v17];
        headphoneDevice = v10->_headphoneDevice;
        v10->_headphoneDevice = v18;

        if (!v10->_headphoneDevice)
        {
          v20 = sharedBluetoothSettingsLogComponent();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [HPSDevice initWithHeadphoneDevice:btsDevice:];
          }
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)address
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    btAddress = [headphoneDevice btAddress];
    v5 = [btAddress stringByReplacingOccurrencesOfString:@"-" withString:@":"];

    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    address = [classicDevice address];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[address]" btsDeviceValue:address headphoneDeviceValue:v5];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    btAddress2 = [headphoneDevice2 btAddress];
    if (btAddress2)
    {
      address2 = v5;
    }

    else
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address2 = [classicDevice2 address];
    }
  }

  else
  {
    btsDevice3 = [(HPSDevice *)self btsDevice];
    classicDevice3 = [btsDevice3 classicDevice];
    address2 = [classicDevice3 address];

    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice4 = [(HPSDevice *)self btsDevice];
      classicDevice4 = [btsDevice4 classicDevice];
      address3 = [classicDevice4 address];
      v21 = 138412546;
      v22 = address3;
      v23 = 2112;
      v24 = address2;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [address] [BTDevice-Only] btDevice: %@, returnValue:%@", &v21, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return address2;
}

- (BOOL)batteryStatus:(id *)status
{
  v34 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  batteryStateCase = [classicDevice batteryStatus:status];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", status->var7, status->var5, status->var3, status->var1, status->var6, status->var4, status->var2, status->var0];
  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    batteryStateCase = [headphoneDevice batteryStateCase];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    LODWORD(headphoneDevice) = [headphoneDevice2 batteryStateLeft];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    LODWORD(headphoneDevice2) = [headphoneDevice3 batteryStateRight];

    headphoneDevice4 = [(HPSDevice *)self headphoneDevice];
    LODWORD(headphoneDevice3) = [headphoneDevice4 batteryStateMain];

    headphoneDevice5 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice5 batteryLevelCase];
    status->var6 = (v14 * 100.0);

    headphoneDevice6 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice6 batteryLevelLeft];
    status->var4 = (v16 * 100.0);

    headphoneDevice7 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice7 batteryLevelRight];
    status->var2 = (v18 * 100.0);

    headphoneDevice8 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice8 batteryLevelMain];
    status->var0 = (v20 * 100.0);

    status->var7 = batteryStateCase == 1;
    status->var5 = headphoneDevice == 1;
    status->var3 = headphoneDevice2 == 1;
    status->var1 = headphoneDevice3 == 1;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", batteryStateCase == 1, headphoneDevice == 1, headphoneDevice2 == 1, headphoneDevice3 == 1, status->var6, status->var4, status->var2, status->var0];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[batteryStatus:]" btsDeviceValue:v8 headphoneDeviceValue:v21];

    LOBYTE(batteryStateCase) = 1;
  }

  else
  {
    v22 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412802;
      v29 = address;
      v30 = 2112;
      v31 = v8;
      v32 = 1024;
      v33 = batteryStateCase;
      _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [batteryStatus:] [BTDevice-Only] btDevice: %@, values:%@, returnValue:%i", buf, 0x1Cu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return batteryStateCase;
}

- (unsigned)clickHoldMode:(int *)mode rightAction:(int *)action
{
  v40 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v9 = [classicDevice clickHoldMode:mode rightAction:action];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*mode];
  stringValue = [v11 stringValue];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
  stringValue2 = [v13 stringValue];
  v15 = [v10 stringWithFormat:@"%@-%@", stringValue, stringValue2];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    *mode = [headphoneDevice clickHoldModeLeft];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    *action = [headphoneDevice2 clickHoldModeRight];

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*mode];
    stringValue3 = [v19 stringValue];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
    stringValue4 = [v21 stringValue];
    v23 = [v18 stringWithFormat:@"%@-%@", stringValue3, stringValue4];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[clickHoldMode:rightAction:]" btsDeviceValue:v15 headphoneDeviceValue:v23];
    v9 = 1;
  }

  else
  {
    v24 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v28 = *mode;
      v29 = *action;
      *buf = 138413058;
      v33 = address;
      v34 = 1024;
      v35 = v28;
      v36 = 1024;
      v37 = v29;
      v38 = 1024;
      v39 = v9;
      _os_log_impl(&dword_251143000, v24, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [clickHoldMode:rightAction:] [BTDevice-Only] btDevice: %@, leftMode:%i, rightMode:%i, returnValue:%i", buf, 0x1Eu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int)crownRotationDirection
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  crownRotationDirection = [classicDevice crownRotationDirection];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    crownRotationDirection2 = [headphoneDevice crownRotationDirection];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:crownRotationDirection];
    stringValue = [v8 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:crownRotationDirection2];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[crownRotationDirection]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    if (crownRotationDirection2 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (crownRotationDirection2)
    {
      LODWORD(crownRotationDirection) = v12;
    }

    else
    {
      LODWORD(crownRotationDirection) = 0;
    }
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = crownRotationDirection;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [crownRotationDirection] [BTDevice-Only] btDevice: %@,  returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return crownRotationDirection;
}

- (unsigned)doubleTapAction
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  doubleTapAction = [classicDevice doubleTapAction];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    doubleTapActionLeft = [headphoneDevice doubleTapActionLeft];
    if ((doubleTapActionLeft - 1) >= 5)
    {
      v8 = 0xFFFFLL;
    }

    else
    {
      v8 = (doubleTapActionLeft - 1);
    }

    doubleTapAction = [MEMORY[0x277CCABB0] numberWithUnsignedInt:doubleTapAction];
    stringValue = [doubleTapAction stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapAction]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(doubleTapAction) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = doubleTapAction;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapAction] [BTDevice-Only] btDevice: %@,  returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return doubleTapAction;
}

- (unsigned)doubleTapActionEx:(unsigned int *)ex rightAction:(unsigned int *)action
{
  v40 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v9 = [classicDevice doubleTapActionEx:ex rightAction:action];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*ex];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
    v13 = [v10 stringWithFormat:@"%@-%@", v11, v12];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    doubleTapActionLeft = [headphoneDevice doubleTapActionLeft];
    if ((doubleTapActionLeft - 1) >= 5)
    {
      v16 = 0xFFFF;
    }

    else
    {
      v16 = (doubleTapActionLeft - 1);
    }

    *ex = v16;

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    doubleTapActionRight = [headphoneDevice2 doubleTapActionRight];
    if ((doubleTapActionRight - 1) >= 5)
    {
      v19 = 0xFFFF;
    }

    else
    {
      v19 = (doubleTapActionRight - 1);
    }

    *action = v19;

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*ex];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*action];
    v23 = [v20 stringWithFormat:@"%@-%@", v21, v22];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapActionEx:rightAction:]" btsDeviceValue:v13 headphoneDeviceValue:v23];
    v9 = 1;
  }

  else
  {
    v24 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v28 = *ex;
      v29 = *action;
      *buf = 138413058;
      v33 = address;
      v34 = 1024;
      v35 = v28;
      v36 = 1024;
      v37 = v29;
      v38 = 1024;
      v39 = v9;
      _os_log_impl(&dword_251143000, v24, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapActionEx:rightAction:] [BTDevice-Only] btDevice: %@, inLeftAction:%i, inRightAction:%i,  returnValue:%i", buf, 0x1Eu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unsigned)getAdaptiveVolumeMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getAdaptiveVolumeMode = [classicDevice getAdaptiveVolumeMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    if ([headphoneDevice adaptiveVolume])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    getAdaptiveVolumeMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getAdaptiveVolumeMode];
    stringValue = [getAdaptiveVolumeMode stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
    stringValue2 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAdaptiveVolumeMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getAdaptiveVolumeMode) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getAdaptiveVolumeMode;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAdaptiveVolumeMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return getAdaptiveVolumeMode;
}

- (BOOL)getAdaptiveVolumeSupport
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getAdaptiveVolumeSupport = [classicDevice getAdaptiveVolumeSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    v7 = [headphoneDevice supportsFeatureWithFeature:20];

    getAdaptiveVolumeSupport = [MEMORY[0x277CCABB0] numberWithBool:getAdaptiveVolumeSupport];
    stringValue = [getAdaptiveVolumeSupport stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    stringValue2 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAdaptiveVolumeSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getAdaptiveVolumeSupport) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getAdaptiveVolumeSupport;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAdaptiveVolumeSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return getAdaptiveVolumeSupport;
}

- (BOOL)getAutoANCSupport
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getAutoANCSupport = [classicDevice getAutoANCSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    autoAncCapability = [cbDevice autoAncCapability];

    getAutoANCSupport = [MEMORY[0x277CCABB0] numberWithBool:getAutoANCSupport];
    stringValue = [getAutoANCSupport stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:autoAncCapability];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAutoANCSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getAutoANCSupport) = autoAncCapability != 0;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = getAutoANCSupport;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAutoANCSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return getAutoANCSupport;
}

- (BOOL)getConversationDetectSupport
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getConversationDetectSupport = [classicDevice getConversationDetectSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    v7 = [headphoneDevice supportsFeatureWithFeature:19];

    getConversationDetectSupport = [MEMORY[0x277CCABB0] numberWithBool:getConversationDetectSupport];
    stringValue = [getConversationDetectSupport stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    stringValue2 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getConversationDetectSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getConversationDetectSupport) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getConversationDetectSupport;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getConversationDetectSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return getConversationDetectSupport;
}

- (unsigned)getDeviceAdaptiveVolumeMode
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getDeviceAdaptiveVolumeMode = [classicDevice getDeviceAdaptiveVolumeMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    adaptiveVolumeConfig = [cbDevice adaptiveVolumeConfig];

    getDeviceAdaptiveVolumeMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getDeviceAdaptiveVolumeMode];
    stringValue = [getDeviceAdaptiveVolumeMode stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:adaptiveVolumeConfig];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getDeviceAdaptiveVolumeMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getDeviceAdaptiveVolumeMode) = adaptiveVolumeConfig;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = getDeviceAdaptiveVolumeMode;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceAdaptiveVolumeMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return getDeviceAdaptiveVolumeMode;
}

- (BOOL)getHexDeviceAddress:(id *)address
{
  v43 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v7 = [classicDevice getHexDeviceAddress:address];

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:address length:6];
  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    btAddressData = [cbDevice btAddressData];

    address->var0[0] = *[btAddressData bytes];
    address->var0[1] = *([btAddressData bytes] + 1);
    address->var0[2] = *([btAddressData bytes] + 2);
    address->var0[3] = *([btAddressData bytes] + 3);
    address->var0[4] = *([btAddressData bytes] + 4);
    address->var0[5] = *([btAddressData bytes] + 5);
    v12 = [v8 description];
    v13 = [btAddressData description];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getHexDeviceAddress:]" btsDeviceValue:v12 headphoneDeviceValue:v13];

    v14 = 1;
  }

  else
  {
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = address->var0[0];
      v20 = address->var0[1];
      v21 = address->var0[2];
      v22 = address->var0[3];
      v23 = address->var0[4];
      v24 = address->var0[5];
      v27 = 138414082;
      v28 = address;
      v29 = 1024;
      v30 = v19;
      v31 = 1024;
      v32 = v20;
      v33 = 1024;
      v34 = v21;
      v35 = 1024;
      v36 = v22;
      v37 = 1024;
      v38 = v23;
      v39 = 1024;
      v40 = v24;
      v41 = 1024;
      v42 = v7;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getHexDeviceAddress:] [BTDevice-Only] btDevice: %@, inAddress:0x%02X%02X%02X%02X%02X%02X, returnValue:%i", &v27, 0x36u);
    }

    v14 = v7 == 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)inEarDetectEnabled
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  inEarDetectEnabled = [classicDevice inEarDetectEnabled];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v8 = [cbDevice placementMode] == 1;

    inEarDetectEnabled = [MEMORY[0x277CCABB0] numberWithBool:inEarDetectEnabled];
    stringValue = [inEarDetectEnabled stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[inEarDetectEnabled]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(inEarDetectEnabled) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = inEarDetectEnabled;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [inEarDetectEnabled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return inEarDetectEnabled;
}

- (BOOL)inEarStatusPrimary:(int *)primary secondary:(int *)secondary
{
  v39 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  LODWORD(v9) = [classicDevice inEarStatusPrimary:primary secondary:secondary];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*primary];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*secondary];
  v13 = [v10 stringWithFormat:@"%@-%@", v11, v12];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    primaryPlacement = [cbDevice primaryPlacement];
    *primary = __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(primaryPlacement, primaryPlacement);

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    cbDevice2 = [headphoneDevice2 cbDevice];
    secondaryPlacement = [cbDevice2 secondaryPlacement];
    *secondary = __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(secondaryPlacement, secondaryPlacement);

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*primary];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*secondary];
    v9 = [v20 stringWithFormat:@"%@-%@", v21, v22];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[inEarStatusPrimary:secondary:]" btsDeviceValue:v13 headphoneDeviceValue:v9];
    LOBYTE(v9) = 1;
  }

  else
  {
    v23 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v27 = *primary;
      v28 = *secondary;
      *buf = 138413058;
      v32 = address;
      v33 = 1024;
      v34 = v27;
      v35 = 1024;
      v36 = v28;
      v37 = 1024;
      v38 = v9;
      _os_log_impl(&dword_251143000, v23, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [inEarStatusPrimary:secondary:] [BTDevice-Only] btDevice: %@, inPrimary:%i, inSecondary:%i, returnValue:%i", buf, 0x1Eu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(uint64_t a1, int a2)
{
  if ((a2 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_251217CE0[a2 - 1];
  }
}

- (BOOL)isAppleAudioDevice
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isAppleAudioDevice = [classicDevice isAppleAudioDevice];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    productID = [cbDevice productID];
    v9 = ((productID - 8194) < 0x2E) & (0x207C7BB7FF9BuLL >> (productID - 2));

    isAppleAudioDevice = [MEMORY[0x277CCABB0] numberWithBool:isAppleAudioDevice];
    stringValue = [isAppleAudioDevice stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isAppleAudioDevice]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(isAppleAudioDevice) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = isAppleAudioDevice;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isAppleAudioDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return isAppleAudioDevice;
}

- (BOOL)isGenuineAirPods
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isGenuineAirPods = [classicDevice isGenuineAirPods];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v8 = ([cbDevice gapaFlags] & 2) == 0;

    isGenuineAirPods = [MEMORY[0x277CCABB0] numberWithBool:isGenuineAirPods];
    stringValue = [isGenuineAirPods stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isGenuineAirPods]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(isGenuineAirPods) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = isGenuineAirPods;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isGenuineAirPods] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return isGenuineAirPods;
}

- (unsigned)listeningModeConfigs
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  listeningModeConfigs = [classicDevice listeningModeConfigs];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    listeningModeConfigs2 = [headphoneDevice listeningModeConfigs];

    listeningModeConfigs = [MEMORY[0x277CCABB0] numberWithUnsignedInt:listeningModeConfigs];
    stringValue = [listeningModeConfigs stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:listeningModeConfigs2];
    stringValue2 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[listeningModeConfigs]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(listeningModeConfigs) = listeningModeConfigs2;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = listeningModeConfigs;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [listeningModeConfigs] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return listeningModeConfigs;
}

- (unsigned)micMode
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  micMode = [classicDevice micMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    microphoneMode = [headphoneDevice microphoneMode];
    if (microphoneMode == 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (microphoneMode == 2);
    }

    micMode = [MEMORY[0x277CCABB0] numberWithUnsignedInt:micMode];
    stringValue = [micMode stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[micMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(micMode) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = micMode;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [micMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return micMode;
}

- (unsigned)productId
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  productId = [classicDevice productId];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    productInfo = [headphoneDevice productInfo];
    productID = [productInfo productID];

    productId = [MEMORY[0x277CCABB0] numberWithUnsignedInt:productId];
    stringValue = [productId stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:productID];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[productId]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(productId) = productID;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = productId;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [productId] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return productId;
}

void __35__HPSDevice_setAdaptiveVolumeMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 44)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "getAdaptiveVolumeMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setAdaptiveVolumeMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

void __40__HPSDevice_setClickHoldMode_rightMode___block_invoke(uint64_t a1)
{
  v8 = 0;
  [*(a1 + 32) clickHoldMode:&v8 + 4 rightAction:&v8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v8)];
  v4 = [v3 stringValue];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v6 = [v5 stringValue];
  v7 = [v2 stringWithFormat:@"%@-%@", v4, v6];

  [*(a1 + 32) _logSetterExpectationFormatStringForUsecase:@"[setClickHoldMode:rightMode:]" inputValue:*(a1 + 40) existingValue:*(a1 + 48) readBackValue:v7];
}

void __39__HPSDevice_setConversationDetectMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "getConversationDetectMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setConversationDetectMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

void __39__HPSDevice_setCrownRotationDirection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 48)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "crownRotationDirection")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setCrownRotationDirection:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

void __42__HPSDevice_setDeviceSoundProfileAllowed___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 40) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithInt:{objc_msgSend(v8, "getDeviceSoundProfileAllowed")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setDeviceSoundProfileAllowed:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

void __32__HPSDevice_setDoubleTapAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "doubleTapAction")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setDoubleTapAction:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

void __46__HPSDevice_setDoubleTapActionEx_rightAction___block_invoke(uint64_t a1)
{
  v8 = 0;
  v2 = [*(a1 + 32) btsDevice];
  v3 = [v2 classicDevice];
  [v3 doubleTapActionEx:&v8 + 4 rightAction:&v8];

  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v8)];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v7 = [v4 stringWithFormat:@"%@-%@", v5, v6];

  [*(a1 + 32) _logSetterExpectationFormatStringForUsecase:@"[setDoubleTapActionEx:rightAction:]" inputValue:*(a1 + 40) existingValue:*(a1 + 48) readBackValue:v7];
}

void __37__HPSDevice_setListeningModeConfigs___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v6 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
    v5 = [v4 stringValue];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 44)];
    v8 = [v7 stringValue];
    v9 = MEMORY[0x277CCABB0];
    v10 = [*(a1 + 32) btsDevice];
    v11 = [v10 classicDevice];
    v12 = [v9 numberWithUnsignedInt:{objc_msgSend(v11, "listeningModeConfigs")}];
    v13 = [v12 stringValue];
    [v6 _logSetterExpectationFormatStringForUsecase:@"[setListeningModeConfigs:]" inputValue:v5 existingValue:v8 readBackValue:v13];

    goto LABEL_5;
  }

  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localizedDescription];
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: setListeningModeConfigs: unable to modify modeCofig %@", &v15, 0xCu);
LABEL_5:
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __24__HPSDevice_setMicMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 44)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "micMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setMicMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

void __31__HPSDevice_setSmartRouteMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "smartRouteMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setSmartRouteMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (unsigned)smartRouteMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  smartRouteMode = [classicDevice smartRouteMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    smartRoutingMode = [headphoneDevice smartRoutingMode];

    smartRouteMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:smartRouteMode];
    stringValue = [smartRouteMode stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:smartRoutingMode];
    stringValue2 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[smartRouteMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(smartRouteMode) = smartRoutingMode;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = smartRouteMode;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [smartRouteMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return smartRouteMode;
}

- (BOOL)smartRouteSupport
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  smartRouteSupport = [classicDevice smartRouteSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    v7 = [headphoneDevice supportsFeatureWithFeature:6];

    smartRouteSupport = [MEMORY[0x277CCABB0] numberWithBool:smartRouteSupport];
    stringValue = [smartRouteSupport stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    stringValue2 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[smartRouteSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(smartRouteSupport) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = smartRouteSupport;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [smartRouteSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return smartRouteSupport;
}

- (unsigned)vendorId
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  vendorId = [classicDevice vendorId];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    vendorID = [cbDevice vendorID];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:vendorId];
    stringValue = [v9 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:vendorID];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[vendorId]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      LODWORD(vendorID) = vendorId;
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = vendorId;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [vendorId] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }

    else
    {
      LODWORD(vendorID) = vendorId;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return vendorID;
}

- (BOOL)connected
{
  v25 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  connected = [classicDevice connected];

  if (self->_ffValue && self->_headphoneDevice)
  {
    mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
    connectedHeadphones = [mEMORY[0x277D0FC00] connectedHeadphones];
    address = [(HPSDevice *)self address];
    v9 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v10 = [connectedHeadphones objectForKey:v9];
    v11 = v10 != 0;

    connected = [MEMORY[0x277CCABB0] numberWithBool:connected];
    stringValue = [connected stringValue];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    stringValue2 = [v13 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[connected]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(connected) = v11;
  }

  else
  {
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address2 = [classicDevice2 address];
      v21 = 138412546;
      v22 = address2;
      v23 = 1024;
      v24 = connected;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [connected] [BTDevice-Only] btDevice: %@, returnValue:%i", &v21, 0x12u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return connected;
}

- (id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  identifier = [btsDevice identifier];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    btAddress = [headphoneDevice btAddress];
    v7 = [btAddress stringByReplacingOccurrencesOfString:@"-" withString:@":"];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[identifier]" btsDeviceValue:identifier headphoneDeviceValue:v7];
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v14 = 138412546;
      v15 = address;
      v16 = 2112;
      v17 = identifier;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [identifier] [BTDevice-Only] btDevice: %@, returnValue:%@", &v14, 0x16u);
    }

    v7 = identifier;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unsigned)listeningMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  listeningMode = [classicDevice listeningMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    listeningMode2 = [headphoneDevice listeningMode];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:listeningMode];
    stringValue = [v8 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:listeningMode2];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[listeningMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      LODWORD(listeningMode2) = listeningMode;
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = listeningMode;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [listeningMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }

    else
    {
      LODWORD(listeningMode2) = listeningMode;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return listeningMode2;
}

- (id)name
{
  v17 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  name = [btsDevice name];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    name2 = [headphoneDevice name];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[name]" btsDeviceValue:name headphoneDeviceValue:name2];
  }

  else
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v13 = 138412546;
      v14 = address;
      v15 = 2112;
      v16 = name;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [name] [BTDevice-Only] btDevice: %@, returnValue:%@", &v13, 0x16u);
    }

    name2 = name;
  }

  v11 = *MEMORY[0x277D85DE8];

  return name2;
}

void __30__HPSDevice_setListeningMode___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 32) headphoneDevice];
    [v5 setListeningMode:v4];

    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 localizedDescription];
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setListeningMode]: unable to modify mode %@", buf, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v8 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__HPSDevice_setListeningMode___block_invoke_154;
    block[3] = &unk_2796AE3E0;
    v9 = *(a1 + 32);
    v14 = *(a1 + 72);
    v10 = *(a1 + 64);
    block[4] = v9;
    block[5] = v10;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }

  v11 = [*(a1 + 32) headphoneDevice];
  [v11 setIsUpdatingDeviceConfig:0];

  *(*(*(a1 + 56) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

void __30__HPSDevice_setListeningMode___block_invoke_154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) headphoneDevice];
  v8 = [v7 cbDevice];
  v9 = [v6 numberWithInt:{objc_msgSend(v8, "listeningMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"setListeningMode:" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (void)disconnect
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    connected = [classicDevice connected];

    v6 = objc_opt_new();
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    [v6 setPeerDevice:cbDevice];

    [v6 setServiceFlags:0xFFFFFFFFLL];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __23__HPSDevice_disconnect__block_invoke;
    v12[3] = &unk_2796AE408;
    v12[4] = self;
    v12[5] = connected;
    [v6 disconnectWithCompletion:v12];
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    [btsDevice2 disconnect];

    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      *buf = 138412290;
      v14 = btsDevice3;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [disconnect] [BTDevice-Only] btDevice: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __23__HPSDevice_disconnect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __23__HPSDevice_disconnect__block_invoke_cold_1(v3);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = [&unk_28634DC30 stringValue];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
    v7 = [v6 stringValue];
    v8 = MEMORY[0x277CCABB0];
    v9 = [*(a1 + 32) btsDevice];
    v10 = [v9 classicDevice];
    v11 = [v8 numberWithBool:{objc_msgSend(v10, "connected")}];
    v12 = [v11 stringValue];
    [v5 _logSetterExpectationFormatStringForUsecase:@"[setListeningMode:]" inputValue:v4 existingValue:v7 readBackValue:v12];
  }
}

- (BOOL)paired
{
  v24 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  paired = [btsDevice paired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
    connectedHeadphones = [mEMORY[0x277D0FC00] connectedHeadphones];
    address = [(HPSDevice *)self address];
    v8 = [address stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v9 = [connectedHeadphones objectForKey:v8];
    v10 = v9 != 0;

    paired = [MEMORY[0x277CCABB0] numberWithBool:paired];
    stringValue = [paired stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    stringValue2 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[paired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(paired) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address2 = [classicDevice address];
      v20 = 138412546;
      v21 = address2;
      v22 = 1024;
      v23 = paired;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [paired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v20, 0x12u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return paired;
}

- (id)productName
{
  v18 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  productName = [btsDevice productName];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    productName2 = [cbDevice productName];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[productName]" btsDeviceValue:productName headphoneDeviceValue:productName2];
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v14 = 138412546;
      v15 = address;
      v16 = 2112;
      v17 = productName;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [productName] [BTDevice-Only] btDevice: %@, returnValue:%@", &v14, 0x16u);
    }

    productName2 = productName;
  }

  v12 = *MEMORY[0x277D85DE8];

  return productName2;
}

- (void)unpair
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    btsDevice = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice classicDevice];
    paired = [classicDevice paired];

    v6 = objc_opt_new();
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __19__HPSDevice_unpair__block_invoke;
    v12[3] = &unk_2796AE408;
    v12[4] = self;
    v12[5] = paired;
    [v6 deleteDevice:cbDevice completion:v12];
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    [btsDevice2 unpair];

    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      *buf = 138412290;
      v14 = btsDevice3;
      _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [unpair] [BTDevice-Only] btDevice: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __19__HPSDevice_unpair__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __19__HPSDevice_unpair__block_invoke_cold_1(v3);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v4 = [&unk_28634DC30 stringValue];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
    v7 = [v6 stringValue];
    v8 = MEMORY[0x277CCABB0];
    v9 = [*(a1 + 32) btsDevice];
    v10 = [v9 classicDevice];
    v11 = [v8 numberWithBool:{objc_msgSend(v10, "paired")}];
    v12 = [v11 stringValue];
    [v5 _logSetterExpectationFormatStringForUsecase:@"[unpair]" inputValue:v4 existingValue:v7 readBackValue:v12];
  }
}

- (unsigned)doubleTapCapability
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  doubleTapCapability = [classicDevice doubleTapCapability];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    doubleTapCapability2 = [cbDevice doubleTapCapability];
    if (doubleTapCapability2 == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = doubleTapCapability2 == 2;
    }

    doubleTapCapability = [MEMORY[0x277CCABB0] numberWithUnsignedInt:doubleTapCapability];
    stringValue = [doubleTapCapability stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapCapability]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(doubleTapCapability) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = doubleTapCapability;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapCapability] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return doubleTapCapability;
}

- (unsigned)getConversationDetectMode
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getConversationDetectMode = [classicDevice getConversationDetectMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    if ([headphoneDevice conversationDetect])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    getConversationDetectMode = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getConversationDetectMode];
    stringValue = [getConversationDetectMode stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
    stringValue2 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getConversationDetectMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getConversationDetectMode) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v17 = 138412546;
      v18 = address;
      v19 = 1024;
      v20 = getConversationDetectMode;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getConversationDetectMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return getConversationDetectMode;
}

void __41__HPSDevice_setDeviceAdaptiveVolumeMode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 44)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithUnsignedChar:{objc_msgSend(v8, "getDeviceAdaptiveVolumeMode")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setDeviceAdaptiveVolumeMode:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- (BOOL)setUserName:(id)name
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = nameCopy;
    btsDevice = [(HPSDevice *)self btsDevice];
    name = [btsDevice name];

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice setName:v6];

    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    [headphoneDevice2 updateFeatureValuesWithFeature:0];

    v10 = dispatch_time(0, 5000000000);
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__HPSDevice_setUserName___block_invoke;
    block[3] = &unk_2796ADE70;
    block[4] = self;
    v23 = v6;
    v24 = name;
    v12 = name;
    v13 = v6;
    dispatch_after(v10, v11, block);

    LOBYTE(name) = 1;
  }

  else
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    LODWORD(name) = [classicDevice setUserName:v5];

    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice3 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice3 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412802;
      v26 = address;
      v27 = 2112;
      v28 = v5;
      v29 = 1024;
      v30 = name;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setUserName:] [BTDevice-Only] btDevice: %@, inputName:%@ didSet:%i", buf, 0x1Cu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return name;
}

void __25__HPSDevice_setUserName___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v5 = [v1 btsDevice];
  v4 = [v5 name];
  [v1 _logSetterExpectationFormatStringForUsecase:@"[setUserName:]" inputValue:v2 existingValue:v3 readBackValue:v4];
}

void __35__HPSDevice_setInEarDetectEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v3 = [v11 stringValue];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v5 = [v4 stringValue];
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v6 numberWithBool:{objc_msgSend(v8, "inEarDetectEnabled")}];
  v10 = [v9 stringValue];
  [v2 _logSetterExpectationFormatStringForUsecase:@"[setInEarDetectEnabled:]" inputValue:v3 existingValue:v5 readBackValue:v10];
}

- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig
{
  selfCopy = self;
  v28 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getCallManagementConfig = [classicDevice getCallManagementConfig];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", getCallManagementConfig, BYTE2(getCallManagementConfig), BYTE4(getCallManagementConfig), BYTE6(getCallManagementConfig)];
  if (selfCopy->_ffValue && selfCopy->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)selfCopy headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    muteControlCapability = [cbDevice muteControlCapability];

    headphoneDevice2 = [(HPSDevice *)selfCopy headphoneDevice];
    endCallGesture = [headphoneDevice2 endCallGesture];
    v12 = endCallGesture;
    if (muteControlCapability)
    {
      headphoneDevice3 = [(HPSDevice *)selfCopy headphoneDevice];
      muteControlGesture = [headphoneDevice3 muteControlGesture];

      v15 = 0;
    }

    else
    {
      muteControlGesture = 0;
      v15 = endCallGesture;
      v12 = 0;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", muteControlCapability, v15, v12, muteControlGesture];
    [(HPSDevice *)selfCopy _logExpectationFormatStringForUsecase:@"[getCallManagementConfig]" btsDeviceValue:v6 headphoneDeviceValue:v21];

    v20 = 0;
    LOBYTE(v19) = 0;
    LOBYTE(selfCopy) = 0;
  }

  else
  {
    muteControlCapability = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(muteControlCapability, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)selfCopy btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      *buf = 138412546;
      v25 = address;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_251143000, muteControlCapability, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getCallManagementConfig] [BTDevice-Only] btDevice: %@, returnValue:%@", buf, 0x16u);
    }

    selfCopy = (getCallManagementConfig >> 8);
    v19 = getCallManagementConfig >> 24;
    v12 = HIDWORD(getCallManagementConfig) & 0xFFFFFF;
    muteControlGesture = BYTE6(getCallManagementConfig);
    v15 = getCallManagementConfig >> 16;
    LOBYTE(muteControlCapability) = getCallManagementConfig;
    v20 = BYTE5(getCallManagementConfig);
  }

  v22 = *MEMORY[0x277D85DE8];
  return ((muteControlGesture << 48) | (v20 << 40) | (v12 << 32) | (v19 << 24) | (v15 << 16) | (selfCopy << 8) | muteControlCapability);
}

void __27__HPSDevice_setCallConfig___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v7 = [v1 btsDevice];
  v4 = [v7 classicDevice];
  v5 = [v4 getCallManagementConfig];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", v5, BYTE2(v5), BYTE4(v5), BYTE6(v5)];
  [v1 _logSetterExpectationFormatStringForUsecase:@"[setCallConfig:]" inputValue:v2 existingValue:v3 readBackValue:v6];
}

- (BOOL)isTemporaryPaired
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isTemporaryPaired = [classicDevice isTemporaryPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v9 = (deviceFlags >> 25) & 1;
    isTemporaryPaired = [MEMORY[0x277CCABB0] numberWithBool:isTemporaryPaired];
    stringValue = [isTemporaryPaired stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isTemporaryPaired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(isTemporaryPaired) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = isTemporaryPaired;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isTemporaryPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return isTemporaryPaired;
}

- (BOOL)magicPaired
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  magicPaired = [classicDevice magicPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v9 = (deviceFlags >> 1) & 1;
    magicPaired = [MEMORY[0x277CCABB0] numberWithBool:magicPaired];
    stringValue = [magicPaired stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[magicPaired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(magicPaired) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = magicPaired;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [magicPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return magicPaired;
}

- (BOOL)getDeviceSoundProfileAllowed
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getDeviceSoundProfileAllowed = [classicDevice getDeviceSoundProfileAllowed];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v9 = (deviceFlags >> 28) & 1;
    getDeviceSoundProfileAllowed = [MEMORY[0x277CCABB0] numberWithBool:getDeviceSoundProfileAllowed];
    stringValue = [getDeviceSoundProfileAllowed stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getDeviceSoundProfileAllowed]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getDeviceSoundProfileAllowed) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = getDeviceSoundProfileAllowed;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceSoundProfileAllowed] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return getDeviceSoundProfileAllowed;
}

- (BOOL)cloudPaired
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  cloudPaired = [btsDevice cloudPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    v8 = (deviceFlags >> 15) & 1;
    cloudPaired = [MEMORY[0x277CCABB0] numberWithBool:cloudPaired];
    stringValue = [cloudPaired stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[cloudPaired]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(cloudPaired) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice = [btsDevice2 classicDevice];
      address = [classicDevice address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = cloudPaired;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [cloudPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return cloudPaired;
}

- (int)autoAnswerMode
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  autoAnswerMode = [classicDevice autoAnswerMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    if (deviceFlags < 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    autoAnswerMode = [MEMORY[0x277CCABB0] numberWithUnsignedInt:autoAnswerMode];
    stringValue = [autoAnswerMode stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[autoAnswerMode]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LODWORD(autoAnswerMode) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = autoAnswerMode;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [autoAnswerMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return autoAnswerMode;
}

void __31__HPSDevice_setAutoAnswerMode___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v6 = *(a1 + 32);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
    v5 = [v4 stringValue];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 44)];
    v8 = [v7 stringValue];
    v9 = MEMORY[0x277CCABB0];
    v10 = [*(a1 + 32) btsDevice];
    v11 = [v10 classicDevice];
    v12 = [v9 numberWithUnsignedInt:{objc_msgSend(v11, "autoAnswerMode")}];
    v13 = [v12 stringValue];
    [v6 _logSetterExpectationFormatStringForUsecase:@"setAutoAnswerMode:" inputValue:v5 existingValue:v8 readBackValue:v13];

    goto LABEL_5;
  }

  v4 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localizedDescription];
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setListeningModeConfigs]: unable to modify modeCofig %@", &v15, 0xCu);
LABEL_5:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unsigned)getSpatialAudioPlatformSupport
{
  v23 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getSpatialAudioPlatformSupport = [classicDevice getSpatialAudioPlatformSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    deviceFlags = [cbDevice deviceFlags];

    if ((deviceFlags & 0x10000000) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    getSpatialAudioPlatformSupport = [MEMORY[0x277CCABB0] numberWithUnsignedChar:getSpatialAudioPlatformSupport];
    stringValue = [getSpatialAudioPlatformSupport stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
    stringValue2 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getSpatialAudioPlatformSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(getSpatialAudioPlatformSupport) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v19 = 138412546;
      v20 = address;
      v21 = 1024;
      v22 = getSpatialAudioPlatformSupport;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getSpatialAudioPlatformSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return getSpatialAudioPlatformSupport;
}

- (int)accessorySettingFeatureBitMask
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = +[HPSHeadphoneManager sharedInstance];
  if ([v3 allowReplayAccessory])
  {
    btsDevice = [(HPSDevice *)self btsDevice];

    if (!btsDevice)
    {
      headphoneDevice = [(HPSDevice *)self headphoneDevice];
      accessorySettingFeatureBitMask = [headphoneDevice accessorySettingFeatureBitMask];

      v7 = *MEMORY[0x277D85DE8];
      return accessorySettingFeatureBitMask;
    }
  }

  else
  {
  }

  btsDevice2 = [(HPSDevice *)self btsDevice];
  if (btsDevice2)
  {
  }

  else if (_os_feature_enabled_impl())
  {
    headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
    productInfo = [headphoneDevice2 productInfo];
    flags = [productInfo flags];

    headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
    v14 = [headphoneDevice3 supportsFeatureWithFeature:0];

    headphoneDevice4 = [(HPSDevice *)self headphoneDevice];
    v16 = [headphoneDevice4 supportsFeatureWithFeature:3];

    if (v16)
    {
      v17 = v14 | 2;
    }

    else
    {
      v17 = v14;
    }

    headphoneDevice5 = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice5 cbDevice];
    doubleTapCapability = [cbDevice doubleTapCapability];

    if (doubleTapCapability == 2)
    {
      v21 = v17 | 4;
    }

    else
    {
      v21 = v17;
    }

    headphoneDevice6 = [(HPSDevice *)self headphoneDevice];
    v23 = [headphoneDevice6 supportsFeatureWithFeature:5];

    if ((*&v23 & ((flags & 8) >> 3)) != 0)
    {
      v21 |= 0x20u;
    }

    headphoneDevice7 = [(HPSDevice *)self headphoneDevice];
    v25 = [headphoneDevice7 supportsFeatureWithFeature:5];

    if (v25)
    {
      v26 = v21 | 8;
    }

    else
    {
      v26 = v21;
    }

    headphoneDevice8 = [(HPSDevice *)self headphoneDevice];
    v28 = [headphoneDevice8 supportsFeatureWithFeature:7];
    v29 = v26 | 0x10;
    if (!v28)
    {
      v29 = v26;
    }

    if ((flags & 8) != 0)
    {
      accessorySettingFeatureBitMask2 = v29;
    }

    else
    {
      accessorySettingFeatureBitMask2 = v29 | 0x400;
    }

    goto LABEL_28;
  }

  btsDevice3 = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice3 classicDevice];
  accessorySettingFeatureBitMask2 = [classicDevice accessorySettingFeatureBitMask];

  v33 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice4 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice4 classicDevice];
    address = [classicDevice2 address];
    v38 = 138412546;
    v39 = address;
    v40 = 1024;
    v41 = accessorySettingFeatureBitMask2;
    _os_log_impl(&dword_251143000, v33, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [accessorySettingFeatureBitMask] [BTDevice-Only] btDevice: %@, returnValue:%i", &v38, 0x12u);
  }

LABEL_28:
  v37 = *MEMORY[0x277D85DE8];
  return accessorySettingFeatureBitMask2;
}

- (BOOL)setClickHoldModes:(id)modes
{
  v3 = *&modes.var2;
  v4 = *&modes.var0;
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v8 = [classicDevice setClickHoldModes:{v4, v3}];

  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n rightMode: %i \nleftMode: %i \nprevRightMode: %i \nprevLeftMode: %i \n", v4, HIDWORD(v4), v3, HIDWORD(v3)];
    *buf = 138412802;
    v17 = address;
    v18 = 2112;
    v19 = v13;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setClickHoldModes:] [BTDevice-Only] btDevice: %@, clockHoldModes:%@, result:%i", buf, 0x1Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unsigned)clickHoldModes:(id *)modes
{
  v21 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  v7 = [classicDevice clickHoldModes:modes];

  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n rightMode: %i \nleftMode: %i \nprevRightMode: %i \nprevLeftMode: %i \n", *&modes->var0, HIDWORD(*&modes->var0), *&modes->var2, HIDWORD(*&modes->var2)];
    *buf = 138412802;
    v16 = address;
    v17 = 2112;
    v18 = v12;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [clickHoldModes:] [BTDevice-Only] btDevice: %@, inputModes:%@ returnValue:%i", buf, 0x1Cu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)getDeviceColor:(unsigned int *)color
{
  v23 = *MEMORY[0x277D85DE8];
  headphoneDevice = +[HPSHeadphoneManager sharedInstance];
  if ([headphoneDevice allowReplayAccessory])
  {
    btsDevice = [(HPSDevice *)self btsDevice];

    if (btsDevice)
    {
      goto LABEL_5;
    }

    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    *color = [headphoneDevice deviceColor];
  }

LABEL_5:
  btsDevice2 = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice2 classicDevice];
  v9 = [classicDevice getDeviceColor:color];

  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice3 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice3 classicDevice];
    address = [classicDevice2 address];
    v14 = *color;
    v17 = 138412802;
    v18 = address;
    v19 = 1024;
    v20 = v14;
    v21 = 1024;
    v22 = v9;
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceColor:] [BTDevice-Only] btDevice: %@, inColor:%i, returnValue:%i", &v17, 0x18u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)hearingAidSupport
{
  v22 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingAidSupport = [classicDevice hearingAidSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    headphoneDevice = [(HPSDevice *)self headphoneDevice];
    cbDevice = [headphoneDevice cbDevice];
    v8 = [cbDevice hearingAidSupport] == 1;

    hearingAidSupport = [MEMORY[0x277CCABB0] numberWithBool:hearingAidSupport];
    stringValue = [hearingAidSupport stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    stringValue2 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[hearingAidSupport]" btsDeviceValue:stringValue headphoneDeviceValue:stringValue2];

    LOBYTE(hearingAidSupport) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      btsDevice2 = [(HPSDevice *)self btsDevice];
      classicDevice2 = [btsDevice2 classicDevice];
      address = [classicDevice2 address];
      v18 = 138412546;
      v19 = address;
      v20 = 1024;
      v21 = hearingAidSupport;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return hearingAidSupport;
}

- (BOOL)hearingAidEnrolled
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingAidEnrolled = [classicDevice hearingAidEnrolled];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = hearingAidEnrolled;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidEnrolled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return hearingAidEnrolled;
}

- (BOOL)hearingAidEnabled
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingAidEnabled = [classicDevice hearingAidEnabled];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = hearingAidEnabled;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidEnabled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return hearingAidEnabled;
}

- (BOOL)hearingTestSupport
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  hearingTestSupport = [classicDevice hearingTestSupport];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = hearingTestSupport;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingTestSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return hearingTestSupport;
}

- (id)healthDeviceType
{
  btsDevice = [(HPSDevice *)self btsDevice];
  healthDeviceType = [btsDevice healthDeviceType];

  return healthDeviceType;
}

- (unsigned)userSelectedHealthDataSyncConfig
{
  btsDevice = [(HPSDevice *)self btsDevice];
  userSelectedHealthDataSyncConfig = [btsDevice userSelectedHealthDataSyncConfig];

  return userSelectedHealthDataSyncConfig;
}

- (int)getUserSelectedDeviceType
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getUserSelectedDeviceType = [classicDevice getUserSelectedDeviceType];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = getUserSelectedDeviceType;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getUserSelectedDeviceType] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return getUserSelectedDeviceType;
}

- (id)accessoryInfo
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  accessoryInfo = [classicDevice accessoryInfo];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 2112;
    v15 = accessoryInfo;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [accessoryInfo] [BTDevice-Only] btDevice: %@, returnValue:%@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return accessoryInfo;
}

- (int)getLowSecurityStatus
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  getLowSecurityStatus = [classicDevice getLowSecurityStatus];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = getLowSecurityStatus;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getLowSecurityStatus] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return getLowSecurityStatus;
}

- (BOOL)ancsAuthorized
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  ancsAuthorized = [btsDevice ancsAuthorized];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = ancsAuthorized;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [ancsAuthorized] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return ancsAuthorized;
}

- (BOOL)isFirmwareUpdateRequiredDevice
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  isFirmwareUpdateRequiredDevice = [btsDevice isFirmwareUpdateRequiredDevice];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = isFirmwareUpdateRequiredDevice;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isFirmwareUpdateRequiredDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return isFirmwareUpdateRequiredDevice;
}

- (BOOL)isLimitedConnectivityDevice
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  isLimitedConnectivityDevice = [btsDevice isLimitedConnectivityDevice];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = isLimitedConnectivityDevice;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isLimitedConnectivityDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return isLimitedConnectivityDevice;
}

- (BOOL)supportsANCS
{
  v15 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  supportsANCS = [btsDevice supportsANCS];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice = [btsDevice2 classicDevice];
    address = [classicDevice address];
    v11 = 138412546;
    v12 = address;
    v13 = 1024;
    v14 = supportsANCS;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [supportsANCS] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return supportsANCS;
}

- (BOOL)isGuestPairingMode
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  isGuestPairingMode = [classicDevice isGuestPairingMode];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 1024;
    v15 = isGuestPairingMode;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isGuestPairingMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return isGuestPairingMode;
}

- (id)syncGroups
{
  v16 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  syncGroups = [classicDevice syncGroups];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v12 = 138412546;
    v13 = address;
    v14 = 2112;
    v15 = syncGroups;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [syncGroups] [BTDevice-Only] btDevice: %@, value:%@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return syncGroups;
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings
{
  v17 = *MEMORY[0x277D85DE8];
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  syncSettings = [classicDevice syncSettings];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    btsDevice2 = [(HPSDevice *)self btsDevice];
    classicDevice2 = [btsDevice2 classicDevice];
    address = [classicDevice2 address];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n supported: %i \nenabled: %i \nfavorites: %i \nrecents: %i \nuserPermissionGranted: %i \n", syncSettings & 1, (syncSettings >> 8) & 1, WORD1(syncSettings) & 1, BYTE3(syncSettings) & 1, HIDWORD(syncSettings) & 1];
    *buf = 138412546;
    v14 = address;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [syncSettings] [BTDevice-Only] btDevice: %@, value:%@", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return syncSettings;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  btsDevice = [(HPSDevice *)self btsDevice];
  classicDevice = [btsDevice classicDevice];
  address = [classicDevice address];
  headphoneDevice = [(HPSDevice *)self headphoneDevice];
  address2 = [(HPSDevice *)self address];
  name = [(HPSDevice *)self name];
  v11 = [v3 stringWithFormat:@"<%@: %p> btsDevice:%@ headphoneDevice:%@  address:%@  name:%@", v4, self, address, headphoneDevice, address2, name];

  return v11;
}

- (BTSDevice)btsDevice
{
  if (!self->_ffValue)
  {
    if (self->_headphoneDevice)
    {
      btsDevice = self->_btsDevice;
      if (!btsDevice || ([(BTSDevice *)btsDevice classicDevice], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
      {
        v5 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(HPSDevice *)v5 btsDevice];
        }
      }
    }
  }

  v6 = self->_btsDevice;

  return v6;
}

- (void)_logExpectationFormatStringForUsecase:(id)usecase queryValue:(id)value btsDeviceValue:(id)deviceValue headphoneDeviceValue:(id)headphoneDeviceValue
{
  v33 = *MEMORY[0x277D85DE8];
  usecaseCopy = usecase;
  valueCopy = value;
  deviceValueCopy = deviceValue;
  headphoneDeviceValueCopy = headphoneDeviceValue;
  if (self->_ffValue || !self->_headphoneDevice)
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [HPSDevice _logExpectationFormatStringForUsecase:v14 queryValue:? btsDeviceValue:? headphoneDeviceValue:?];
    }

    if (([deviceValueCopy isEqualToString:headphoneDeviceValueCopy] & 1) == 0)
    {
      v15 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        btsDevice = [(HPSDevice *)self btsDevice];
        classicDevice = [btsDevice classicDevice];
        address = [classicDevice address];
        headphoneDevice = [(HPSDevice *)self headphoneDevice];
        v21 = 138413570;
        v22 = usecaseCopy;
        v23 = 2112;
        v24 = valueCopy;
        v25 = 2112;
        v26 = deviceValueCopy;
        v27 = 2112;
        v28 = headphoneDeviceValueCopy;
        v29 = 2112;
        v30 = address;
        v31 = 2112;
        v32 = headphoneDevice;
        _os_log_error_impl(&dword_251143000, v15, OS_LOG_TYPE_ERROR, "HeadphoneInfrastructureReDesign: %@, [Query]=%@, btsDevice.value: %@, headphoneDevice.value:%@, btsDevice:%@, headphoneDevice:%@", &v21, 0x3Eu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_logSetterExpectationFormatStringForUsecase:(id)usecase inputValue:(id)value existingValue:(id)existingValue readBackValue:(id)backValue
{
  v38 = *MEMORY[0x277D85DE8];
  usecaseCopy = usecase;
  valueCopy = value;
  existingValueCopy = existingValue;
  backValueCopy = backValue;
  if (self->_ffValue || !self->_headphoneDevice)
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D0FC00] = [MEMORY[0x277D0FC00] shared];
      [mEMORY[0x277D0FC00] connectedHeadphones];
      v16 = v25 = usecaseCopy;
      headphoneDevice = [(HPSDevice *)self headphoneDevice];
      headphoneDevice2 = [(HPSDevice *)self headphoneDevice];
      cbDevice = [headphoneDevice2 cbDevice];
      *buf = 138412802;
      v27 = v16;
      v28 = 2048;
      v29 = headphoneDevice;
      v30 = 2048;
      v31 = cbDevice;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: State log connected: %@ , headphoneDevice: %p, cbDevice: %p", buf, 0x20u);

      usecaseCopy = v25;
    }

    if (([valueCopy isEqualToString:backValueCopy] & 1) == 0)
    {
      v20 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        btsDevice = [(HPSDevice *)self btsDevice];
        v23 = [btsDevice debugDescription];
        headphoneDevice3 = [(HPSDevice *)self headphoneDevice];
        *buf = 138413570;
        v27 = usecaseCopy;
        v28 = 2112;
        v29 = valueCopy;
        v30 = 2112;
        v31 = existingValueCopy;
        v32 = 2112;
        v33 = backValueCopy;
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = headphoneDevice3;
        _os_log_error_impl(&dword_251143000, v20, OS_LOG_TYPE_ERROR, "HeadphoneInfrastructureReDesign: %@, input.value: %@, existing.value: %@, readback.value: %@, btsDevice:%@, headphoneDevice:%@", buf, 0x3Eu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)headphoneDevice:(id)device btsDevice:(id)btsDevice
{
  btsDeviceCopy = btsDevice;
  deviceCopy = device;
  v7 = [[HPSDevice alloc] initWithHeadphoneDevice:deviceCopy btsDevice:btsDeviceCopy];

  return v7;
}

- (void)initWithHeadphoneDevice:btsDevice:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D0FC00] shared];
  v1 = [v0 connectedHeadphones];
  OUTLINED_FUNCTION_0_2(&dword_251143000, v2, v3, "HeadphoneInfrastructureReDesign: unable to get headphoneDevice falling back to [BTDevice-Only]! %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __23__HPSDevice_disconnect__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_2(&dword_251143000, v2, v3, "HeadphoneInfrastructureReDesign: [disconnect] Failed! %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __19__HPSDevice_unpair__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_2(&dword_251143000, v2, v3, "HeadphoneInfrastructureReDesign: [unpair] Failed! %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_logExpectationFormatStringForUsecase:(void *)a1 queryValue:(NSObject *)a2 btsDeviceValue:headphoneDeviceValue:.cold.1(void *a1, NSObject *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D0FC00] shared];
  v5 = [v4 connectedHeadphones];
  v6 = [a1 headphoneDevice];
  v7 = [a1 headphoneDevice];
  v8 = [v7 cbDevice];
  v10 = 138412802;
  v11 = v5;
  v12 = 2048;
  v13 = v6;
  v14 = 2048;
  v15 = v8;
  _os_log_debug_impl(&dword_251143000, a2, OS_LOG_TYPE_DEBUG, "HeadphoneInfrastructureReDesign: State log connected: %@ , headphoneDevice: %p, cbDevice: %p", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end