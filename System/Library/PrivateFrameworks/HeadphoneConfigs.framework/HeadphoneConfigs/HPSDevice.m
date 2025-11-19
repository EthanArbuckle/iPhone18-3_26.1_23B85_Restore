@interface HPSDevice
+ (id)headphoneDevice:(id)a3 btsDevice:(id)a4;
- ($70344DAF05348A783186C1CF166707C1)getCallManagementConfig;
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings;
- (BOOL)ancsAuthorized;
- (BOOL)batteryStatus:(id *)a3;
- (BOOL)cloudPaired;
- (BOOL)connected;
- (BOOL)getAdaptiveVolumeSupport;
- (BOOL)getAutoANCSupport;
- (BOOL)getConversationDetectSupport;
- (BOOL)getDeviceSoundProfileAllowed;
- (BOOL)getHexDeviceAddress:(id *)a3;
- (BOOL)hearingAidEnabled;
- (BOOL)hearingAidEnrolled;
- (BOOL)hearingAidSupport;
- (BOOL)hearingTestSupport;
- (BOOL)inEarDetectEnabled;
- (BOOL)inEarStatusPrimary:(int *)a3 secondary:(int *)a4;
- (BOOL)isAppleAudioDevice;
- (BOOL)isFirmwareUpdateRequiredDevice;
- (BOOL)isGenuineAirPods;
- (BOOL)isGuestPairingMode;
- (BOOL)isLimitedConnectivityDevice;
- (BOOL)isTemporaryPaired;
- (BOOL)magicPaired;
- (BOOL)paired;
- (BOOL)setClickHoldModes:(id)a3;
- (BOOL)setUserName:(id)a3;
- (BOOL)smartRouteSupport;
- (BOOL)supportsANCS;
- (BTSDevice)btsDevice;
- (HPSDevice)initWithHeadphoneDevice:(id)a3 btsDevice:(id)a4;
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
- (int)getDeviceColor:(unsigned int *)a3;
- (int)getLowSecurityStatus;
- (int)getUserSelectedDeviceType;
- (unsigned)clickHoldMode:(int *)a3 rightAction:(int *)a4;
- (unsigned)clickHoldModes:(id *)a3;
- (unsigned)doubleTapAction;
- (unsigned)doubleTapActionEx:(unsigned int *)a3 rightAction:(unsigned int *)a4;
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
- (void)_logExpectationFormatStringForUsecase:(id)a3 queryValue:(id)a4 btsDeviceValue:(id)a5 headphoneDeviceValue:(id)a6;
- (void)_logSetterExpectationFormatStringForUsecase:(id)a3 inputValue:(id)a4 existingValue:(id)a5 readBackValue:(id)a6;
- (void)disconnect;
- (void)unpair;
@end

@implementation HPSDevice

- (HPSDevice)initWithHeadphoneDevice:(id)a3 btsDevice:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = HPSDevice;
  v9 = [(HPSDevice *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_btsDevice, a4);
    objc_storeStrong(&v10->_headphoneDevice, a3);
    v11 = +[HPSHeadphoneManager sharedInstance];
    v10->_ffValue = [v11 isFeatureEnabled];

    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v25 = v8;
      v26 = 2048;
      v27 = v7;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: %p %p", buf, 0x16u);
    }

    if (v8)
    {
      if (!v10->_headphoneDevice && v10->_ffValue)
      {
        v13 = [MEMORY[0x277D0FC00] shared];
        v14 = [v13 connectedHeadphones];
        v15 = [v8 classicDevice];
        v16 = [v15 address];
        v17 = [v16 stringByReplacingOccurrencesOfString:@":" withString:@"-"];
        v18 = [v14 objectForKey:v17];
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
    v3 = [(HPSDevice *)self headphoneDevice];
    v4 = [v3 btAddress];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

    v6 = [(HPSDevice *)self btsDevice];
    v7 = [v6 classicDevice];
    v8 = [v7 address];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[address]" btsDeviceValue:v8 headphoneDeviceValue:v5];

    v9 = [(HPSDevice *)self headphoneDevice];
    v10 = [v9 btAddress];
    if (v10)
    {
      v11 = v5;
    }

    else
    {
      v17 = [(HPSDevice *)self btsDevice];
      v18 = [v17 classicDevice];
      v11 = [v18 address];
    }
  }

  else
  {
    v12 = [(HPSDevice *)self btsDevice];
    v13 = [v12 classicDevice];
    v11 = [v13 address];

    v5 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v21 = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [address] [BTDevice-Only] btDevice: %@, returnValue:%@", &v21, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)batteryStatus:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(HPSDevice *)self btsDevice];
  v6 = [v5 classicDevice];
  v7 = [v6 batteryStatus:a3];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", a3->var7, a3->var5, a3->var3, a3->var1, a3->var6, a3->var4, a3->var2, a3->var0];
  if (self->_ffValue && self->_headphoneDevice)
  {
    v9 = [(HPSDevice *)self headphoneDevice];
    v7 = [v9 batteryStateCase];

    v10 = [(HPSDevice *)self headphoneDevice];
    LODWORD(v9) = [v10 batteryStateLeft];

    v11 = [(HPSDevice *)self headphoneDevice];
    LODWORD(v10) = [v11 batteryStateRight];

    v12 = [(HPSDevice *)self headphoneDevice];
    LODWORD(v11) = [v12 batteryStateMain];

    v13 = [(HPSDevice *)self headphoneDevice];
    [v13 batteryLevelCase];
    a3->var6 = (v14 * 100.0);

    v15 = [(HPSDevice *)self headphoneDevice];
    [v15 batteryLevelLeft];
    a3->var4 = (v16 * 100.0);

    v17 = [(HPSDevice *)self headphoneDevice];
    [v17 batteryLevelRight];
    a3->var2 = (v18 * 100.0);

    v19 = [(HPSDevice *)self headphoneDevice];
    [v19 batteryLevelMain];
    a3->var0 = (v20 * 100.0);

    a3->var7 = v7 == 1;
    a3->var5 = v9 == 1;
    a3->var3 = v10 == 1;
    a3->var1 = v11 == 1;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n battIsChagingCase: %i \nbattIsChargingLeft: %i \nbattIsChargingRight: %i \nbattIsChargingSingle: %i \nbattLevelCase: %i \nbattLevelLeft: %i \nbattLevelRight: %i \nbattLevelSingle: %i \n", v7 == 1, v9 == 1, v10 == 1, v11 == 1, a3->var6, a3->var4, a3->var2, a3->var0];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[batteryStatus:]" btsDeviceValue:v8 headphoneDeviceValue:v21];

    LOBYTE(v7) = 1;
  }

  else
  {
    v22 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(HPSDevice *)self btsDevice];
      v24 = [v23 classicDevice];
      v25 = [v24 address];
      *buf = 138412802;
      v29 = v25;
      v30 = 2112;
      v31 = v8;
      v32 = 1024;
      v33 = v7;
      _os_log_impl(&dword_251143000, v22, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [batteryStatus:] [BTDevice-Only] btDevice: %@, values:%@, returnValue:%i", buf, 0x1Cu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unsigned)clickHoldMode:(int *)a3 rightAction:(int *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = [(HPSDevice *)self btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v8 clickHoldMode:a3 rightAction:a4];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
  v12 = [v11 stringValue];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a4];
  v14 = [v13 stringValue];
  v15 = [v10 stringWithFormat:@"%@-%@", v12, v14];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v16 = [(HPSDevice *)self headphoneDevice];
    *a3 = [v16 clickHoldModeLeft];

    v17 = [(HPSDevice *)self headphoneDevice];
    *a4 = [v17 clickHoldModeRight];

    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
    v20 = [v19 stringValue];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a4];
    v22 = [v21 stringValue];
    v23 = [v18 stringWithFormat:@"%@-%@", v20, v22];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[clickHoldMode:rightAction:]" btsDeviceValue:v15 headphoneDeviceValue:v23];
    v9 = 1;
  }

  else
  {
    v24 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(HPSDevice *)self btsDevice];
      v26 = [v25 classicDevice];
      v27 = [v26 address];
      v28 = *a3;
      v29 = *a4;
      *buf = 138413058;
      v33 = v27;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 crownRotationDirection];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 crownRotationDirection];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v9 = [v8 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[crownRotationDirection]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    if (v7 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v7)
    {
      LODWORD(v5) = v12;
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [crownRotationDirection] [BTDevice-Only] btDevice: %@,  returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)doubleTapAction
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 doubleTapAction];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 doubleTapActionLeft];
    if ((v7 - 1) >= 5)
    {
      v8 = 0xFFFFLL;
    }

    else
    {
      v8 = (v7 - 1);
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapAction]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LODWORD(v5) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapAction] [BTDevice-Only] btDevice: %@,  returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)doubleTapActionEx:(unsigned int *)a3 rightAction:(unsigned int *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = [(HPSDevice *)self btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v8 doubleTapActionEx:a3 rightAction:a4];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a4];
    v13 = [v10 stringWithFormat:@"%@-%@", v11, v12];

    v14 = [(HPSDevice *)self headphoneDevice];
    v15 = [v14 doubleTapActionLeft];
    if ((v15 - 1) >= 5)
    {
      v16 = 0xFFFF;
    }

    else
    {
      v16 = (v15 - 1);
    }

    *a3 = v16;

    v17 = [(HPSDevice *)self headphoneDevice];
    v18 = [v17 doubleTapActionRight];
    if ((v18 - 1) >= 5)
    {
      v19 = 0xFFFF;
    }

    else
    {
      v19 = (v18 - 1);
    }

    *a4 = v19;

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a4];
    v23 = [v20 stringWithFormat:@"%@-%@", v21, v22];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapActionEx:rightAction:]" btsDeviceValue:v13 headphoneDeviceValue:v23];
    v9 = 1;
  }

  else
  {
    v24 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(HPSDevice *)self btsDevice];
      v26 = [v25 classicDevice];
      v27 = [v26 address];
      v28 = *a3;
      v29 = *a4;
      *buf = 138413058;
      v33 = v27;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getAdaptiveVolumeMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    if ([v6 adaptiveVolume])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v8 = [v5 stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v7];
    v10 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAdaptiveVolumeMode]" btsDeviceValue:v8 headphoneDeviceValue:v10];

    LOBYTE(v5) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAdaptiveVolumeMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)getAdaptiveVolumeSupport
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getAdaptiveVolumeSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 supportsFeatureWithFeature:20];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v8 = [v5 stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v10 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAdaptiveVolumeSupport]" btsDeviceValue:v8 headphoneDeviceValue:v10];

    LOBYTE(v5) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAdaptiveVolumeSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)getAutoANCSupport
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getAutoANCSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 autoAncCapability];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getAutoANCSupport]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LOBYTE(v5) = v8 != 0;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getAutoANCSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)getConversationDetectSupport
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getConversationDetectSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 supportsFeatureWithFeature:19];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v8 = [v5 stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v10 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getConversationDetectSupport]" btsDeviceValue:v8 headphoneDeviceValue:v10];

    LOBYTE(v5) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getConversationDetectSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)getDeviceAdaptiveVolumeMode
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getDeviceAdaptiveVolumeMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 adaptiveVolumeConfig];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getDeviceAdaptiveVolumeMode]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LOBYTE(v5) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceAdaptiveVolumeMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)getHexDeviceAddress:(id *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [(HPSDevice *)self btsDevice];
  v6 = [v5 classicDevice];
  v7 = [v6 getHexDeviceAddress:a3];

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:6];
  if (self->_ffValue && self->_headphoneDevice)
  {
    v9 = [(HPSDevice *)self headphoneDevice];
    v10 = [v9 cbDevice];
    v11 = [v10 btAddressData];

    a3->var0[0] = *[v11 bytes];
    a3->var0[1] = *([v11 bytes] + 1);
    a3->var0[2] = *([v11 bytes] + 2);
    a3->var0[3] = *([v11 bytes] + 3);
    a3->var0[4] = *([v11 bytes] + 4);
    a3->var0[5] = *([v11 bytes] + 5);
    v12 = [v8 description];
    v13 = [v11 description];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getHexDeviceAddress:]" btsDeviceValue:v12 headphoneDeviceValue:v13];

    v14 = 1;
  }

  else
  {
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HPSDevice *)self btsDevice];
      v17 = [v16 classicDevice];
      v18 = [v17 address];
      v19 = a3->var0[0];
      v20 = a3->var0[1];
      v21 = a3->var0[2];
      v22 = a3->var0[3];
      v23 = a3->var0[4];
      v24 = a3->var0[5];
      v27 = 138414082;
      v28 = v18;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 inEarDetectEnabled];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 placementMode] == 1;

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[inEarDetectEnabled]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LOBYTE(v5) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [inEarDetectEnabled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)inEarStatusPrimary:(int *)a3 secondary:(int *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = [(HPSDevice *)self btsDevice];
  v8 = [v7 classicDevice];
  LODWORD(v9) = [v8 inEarStatusPrimary:a3 secondary:a4];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a4];
  v13 = [v10 stringWithFormat:@"%@-%@", v11, v12];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v14 = [(HPSDevice *)self headphoneDevice];
    v15 = [v14 cbDevice];
    v16 = [v15 primaryPlacement];
    *a3 = __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(v16, v16);

    v17 = [(HPSDevice *)self headphoneDevice];
    v18 = [v17 cbDevice];
    v19 = [v18 secondaryPlacement];
    *a4 = __42__HPSDevice_inEarStatusPrimary_secondary___block_invoke(v19, v19);

    v20 = MEMORY[0x277CCACA8];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a3];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*a4];
    v9 = [v20 stringWithFormat:@"%@-%@", v21, v22];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[inEarStatusPrimary:secondary:]" btsDeviceValue:v13 headphoneDeviceValue:v9];
    LOBYTE(v9) = 1;
  }

  else
  {
    v23 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(HPSDevice *)self btsDevice];
      v25 = [v24 classicDevice];
      v26 = [v25 address];
      v27 = *a3;
      v28 = *a4;
      *buf = 138413058;
      v32 = v26;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 isAppleAudioDevice];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 productID];
    v9 = ((v8 - 8194) < 0x2E) & (0x207C7BB7FF9BuLL >> (v8 - 2));

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v10 = [v5 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isAppleAudioDevice]" btsDeviceValue:v10 headphoneDeviceValue:v12];

    LOBYTE(v5) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isAppleAudioDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isGenuineAirPods
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 isGenuineAirPods];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = ([v7 gapaFlags] & 2) == 0;

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isGenuineAirPods]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LOBYTE(v5) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isGenuineAirPods] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)listeningModeConfigs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 listeningModeConfigs];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 listeningModeConfigs];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v8 = [v5 stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
    v10 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[listeningModeConfigs]" btsDeviceValue:v8 headphoneDeviceValue:v10];

    LODWORD(v5) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [listeningModeConfigs] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)micMode
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 micMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 microphoneMode];
    if (v7 == 3)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v7 == 2);
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[micMode]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LODWORD(v5) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [micMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)productId
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 productId];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 productInfo];
    v8 = [v7 productID];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[productId]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LODWORD(v5) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [productId] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 smartRouteMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 smartRoutingMode];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v8 = [v5 stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
    v10 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[smartRouteMode]" btsDeviceValue:v8 headphoneDeviceValue:v10];

    LOBYTE(v5) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [smartRouteMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)smartRouteSupport
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 smartRouteSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 supportsFeatureWithFeature:6];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v8 = [v5 stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v10 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[smartRouteSupport]" btsDeviceValue:v8 headphoneDeviceValue:v10];

    LOBYTE(v5) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [smartRouteSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)vendorId
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 vendorId];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 vendorID];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v10 = [v9 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[vendorId]" btsDeviceValue:v10 headphoneDeviceValue:v12];
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      LODWORD(v8) = v5;
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [vendorId] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }

    else
    {
      LODWORD(v8) = v5;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)connected
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 connected];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [MEMORY[0x277D0FC00] shared];
    v7 = [v6 connectedHeadphones];
    v8 = [(HPSDevice *)self address];
    v9 = [v8 stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v10 = [v7 objectForKey:v9];
    v11 = v10 != 0;

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v12 = [v5 stringValue];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    v14 = [v13 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[connected]" btsDeviceValue:v12 headphoneDeviceValue:v14];

    LOBYTE(v5) = v11;
  }

  else
  {
    v15 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HPSDevice *)self btsDevice];
      v17 = [v16 classicDevice];
      v18 = [v17 address];
      v21 = 138412546;
      v22 = v18;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&dword_251143000, v15, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [connected] [BTDevice-Only] btDevice: %@, returnValue:%i", &v21, 0x12u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 identifier];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v5 = [(HPSDevice *)self headphoneDevice];
    v6 = [v5 btAddress];
    v7 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[identifier]" btsDeviceValue:v4 headphoneDeviceValue:v7];
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HPSDevice *)self btsDevice];
      v10 = [v9 classicDevice];
      v11 = [v10 address];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [identifier] [BTDevice-Only] btDevice: %@, returnValue:%@", &v14, 0x16u);
    }

    v7 = v4;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unsigned)listeningMode
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 listeningMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 listeningMode];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v9 = [v8 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[listeningMode]" btsDeviceValue:v9 headphoneDeviceValue:v11];
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      LODWORD(v7) = v5;
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [listeningMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }

    else
    {
      LODWORD(v7) = v5;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)name
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 name];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v5 = [(HPSDevice *)self headphoneDevice];
    v6 = [v5 name];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[name]" btsDeviceValue:v4 headphoneDeviceValue:v6];
  }

  else
  {
    v7 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(HPSDevice *)self btsDevice];
      v9 = [v8 classicDevice];
      v10 = [v9 address];
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [name] [BTDevice-Only] btDevice: %@, returnValue:%@", &v13, 0x16u);
    }

    v6 = v4;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
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
    v3 = [(HPSDevice *)self btsDevice];
    v4 = [v3 classicDevice];
    v5 = [v4 connected];

    v6 = objc_opt_new();
    v7 = [(HPSDevice *)self headphoneDevice];
    v8 = [v7 cbDevice];
    [v6 setPeerDevice:v8];

    [v6 setServiceFlags:0xFFFFFFFFLL];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __23__HPSDevice_disconnect__block_invoke;
    v12[3] = &unk_2796AE408;
    v12[4] = self;
    v12[5] = v5;
    [v6 disconnectWithCompletion:v12];
  }

  else
  {
    v9 = [(HPSDevice *)self btsDevice];
    [v9 disconnect];

    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HPSDevice *)self btsDevice];
      *buf = 138412290;
      v14 = v10;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 paired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v5 = [MEMORY[0x277D0FC00] shared];
    v6 = [v5 connectedHeadphones];
    v7 = [(HPSDevice *)self address];
    v8 = [v7 stringByReplacingOccurrencesOfString:@":" withString:@"-"];
    v9 = [v6 objectForKey:v8];
    v10 = v9 != 0;

    v4 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v11 = [v4 stringValue];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v13 = [v12 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[paired]" btsDeviceValue:v11 headphoneDeviceValue:v13];

    LOBYTE(v4) = v10;
  }

  else
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(HPSDevice *)self btsDevice];
      v16 = [v15 classicDevice];
      v17 = [v16 address];
      v20 = 138412546;
      v21 = v17;
      v22 = 1024;
      v23 = v4;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [paired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v20, 0x12u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)productName
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 productName];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v5 = [(HPSDevice *)self headphoneDevice];
    v6 = [v5 cbDevice];
    v7 = [v6 productName];

    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[productName]" btsDeviceValue:v4 headphoneDeviceValue:v7];
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(HPSDevice *)self btsDevice];
      v10 = [v9 classicDevice];
      v11 = [v10 address];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [productName] [BTDevice-Only] btDevice: %@, returnValue:%@", &v14, 0x16u);
    }

    v7 = v4;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)unpair
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_ffValue && self->_headphoneDevice)
  {
    v3 = [(HPSDevice *)self btsDevice];
    v4 = [v3 classicDevice];
    v5 = [v4 paired];

    v6 = objc_opt_new();
    v7 = [(HPSDevice *)self headphoneDevice];
    v8 = [v7 cbDevice];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __19__HPSDevice_unpair__block_invoke;
    v12[3] = &unk_2796AE408;
    v12[4] = self;
    v12[5] = v5;
    [v6 deleteDevice:v8 completion:v12];
  }

  else
  {
    v9 = [(HPSDevice *)self btsDevice];
    [v9 unpair];

    v6 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HPSDevice *)self btsDevice];
      *buf = 138412290;
      v14 = v10;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 doubleTapCapability];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 doubleTapCapability];
    if (v8 == 3)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8 == 2;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v10 = [v5 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[doubleTapCapability]" btsDeviceValue:v10 headphoneDeviceValue:v12];

    LODWORD(v5) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [doubleTapCapability] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unsigned)getConversationDetectMode
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getConversationDetectMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    if ([v6 conversationDetect])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v8 = [v5 stringValue];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
    v10 = [v9 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getConversationDetectMode]" btsDeviceValue:v8 headphoneDeviceValue:v10];

    LOBYTE(v5) = v7;
  }

  else
  {
    v11 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HPSDevice *)self btsDevice];
      v13 = [v12 classicDevice];
      v14 = [v13 address];
      v17 = 138412546;
      v18 = v14;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getConversationDetectMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v17, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
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

- (BOOL)setUserName:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = v4;
    v7 = [(HPSDevice *)self btsDevice];
    v14 = [v7 name];

    v8 = [(HPSDevice *)self headphoneDevice];
    [v8 setName:v6];

    v9 = [(HPSDevice *)self headphoneDevice];
    [v9 updateFeatureValuesWithFeature:0];

    v10 = dispatch_time(0, 5000000000);
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__HPSDevice_setUserName___block_invoke;
    block[3] = &unk_2796ADE70;
    block[4] = self;
    v23 = v6;
    v24 = v14;
    v12 = v14;
    v13 = v6;
    dispatch_after(v10, v11, block);

    LOBYTE(v14) = 1;
  }

  else
  {
    v15 = [(HPSDevice *)self btsDevice];
    v16 = [v15 classicDevice];
    LODWORD(v14) = [v16 setUserName:v5];

    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(HPSDevice *)self btsDevice];
      v18 = [v17 classicDevice];
      v19 = [v18 address];
      *buf = 138412802;
      v26 = v19;
      v27 = 2112;
      v28 = v5;
      v29 = 1024;
      v30 = v14;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setUserName:] [BTDevice-Only] btDevice: %@, inputName:%@ didSet:%i", buf, 0x1Cu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
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
  v2 = self;
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getCallManagementConfig];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", v5, BYTE2(v5), BYTE4(v5), BYTE6(v5)];
  if (v2->_ffValue && v2->_headphoneDevice)
  {
    v7 = [(HPSDevice *)v2 headphoneDevice];
    v8 = [v7 cbDevice];
    v9 = [v8 muteControlCapability];

    v10 = [(HPSDevice *)v2 headphoneDevice];
    v11 = [v10 endCallGesture];
    v12 = v11;
    if (v9)
    {
      v13 = [(HPSDevice *)v2 headphoneDevice];
      v14 = [v13 muteControlGesture];

      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = v11;
      v12 = 0;
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n version: %i  \nstatus: NA \nendCall: %i \nendCallStatus: NA \nendCallConfig: %i \nmuteControlStatus: NA \nmuteControlConfig: %i \n", v9, v15, v12, v14];
    [(HPSDevice *)v2 _logExpectationFormatStringForUsecase:@"[getCallManagementConfig]" btsDeviceValue:v6 headphoneDeviceValue:v21];

    v20 = 0;
    LOBYTE(v19) = 0;
    LOBYTE(v2) = 0;
  }

  else
  {
    v9 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(HPSDevice *)v2 btsDevice];
      v17 = [v16 classicDevice];
      v18 = [v17 address];
      *buf = 138412546;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getCallManagementConfig] [BTDevice-Only] btDevice: %@, returnValue:%@", buf, 0x16u);
    }

    v2 = (v5 >> 8);
    v19 = v5 >> 24;
    v12 = HIDWORD(v5) & 0xFFFFFF;
    v14 = BYTE6(v5);
    v15 = v5 >> 16;
    LOBYTE(v9) = v5;
    v20 = BYTE5(v5);
  }

  v22 = *MEMORY[0x277D85DE8];
  return ((v14 << 48) | (v20 << 40) | (v12 << 32) | (v19 << 24) | (v15 << 16) | (v2 << 8) | v9);
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 isTemporaryPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 deviceFlags];

    v9 = (v8 >> 25) & 1;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v10 = [v5 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[isTemporaryPaired]" btsDeviceValue:v10 headphoneDeviceValue:v12];

    LOBYTE(v5) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isTemporaryPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)magicPaired
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 magicPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 deviceFlags];

    v9 = (v8 >> 1) & 1;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v10 = [v5 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[magicPaired]" btsDeviceValue:v10 headphoneDeviceValue:v12];

    LOBYTE(v5) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [magicPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)getDeviceSoundProfileAllowed
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getDeviceSoundProfileAllowed];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 deviceFlags];

    v9 = (v8 >> 28) & 1;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v10 = [v5 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getDeviceSoundProfileAllowed]" btsDeviceValue:v10 headphoneDeviceValue:v12];

    LOBYTE(v5) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getDeviceSoundProfileAllowed] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)cloudPaired
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 cloudPaired];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v5 = [(HPSDevice *)self headphoneDevice];
    v6 = [v5 cbDevice];
    v7 = [v6 deviceFlags];

    v8 = (v7 >> 15) & 1;
    v4 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    v9 = [v4 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[cloudPaired]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LOBYTE(v4) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v4;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [cloudPaired] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)autoAnswerMode
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 autoAnswerMode];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 deviceFlags];

    if (v8 < 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v10 = [v5 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[autoAnswerMode]" btsDeviceValue:v10 headphoneDeviceValue:v12];

    LODWORD(v5) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [autoAnswerMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getSpatialAudioPlatformSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 deviceFlags];

    if ((v8 & 0x10000000) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
    v10 = [v5 stringValue];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v9];
    v12 = [v11 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[getSpatialAudioPlatformSupport]" btsDeviceValue:v10 headphoneDeviceValue:v12];

    LOBYTE(v5) = v9;
  }

  else
  {
    v13 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HPSDevice *)self btsDevice];
      v15 = [v14 classicDevice];
      v16 = [v15 address];
      v19 = 138412546;
      v20 = v16;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_251143000, v13, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getSpatialAudioPlatformSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v19, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int)accessorySettingFeatureBitMask
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = +[HPSHeadphoneManager sharedInstance];
  if ([v3 allowReplayAccessory])
  {
    v4 = [(HPSDevice *)self btsDevice];

    if (!v4)
    {
      v5 = [(HPSDevice *)self headphoneDevice];
      v6 = [v5 accessorySettingFeatureBitMask];

      v7 = *MEMORY[0x277D85DE8];
      return v6;
    }
  }

  else
  {
  }

  v9 = [(HPSDevice *)self btsDevice];
  if (v9)
  {
  }

  else if (_os_feature_enabled_impl())
  {
    v10 = [(HPSDevice *)self headphoneDevice];
    v11 = [v10 productInfo];
    v12 = [v11 flags];

    v13 = [(HPSDevice *)self headphoneDevice];
    v14 = [v13 supportsFeatureWithFeature:0];

    v15 = [(HPSDevice *)self headphoneDevice];
    v16 = [v15 supportsFeatureWithFeature:3];

    if (v16)
    {
      v17 = v14 | 2;
    }

    else
    {
      v17 = v14;
    }

    v18 = [(HPSDevice *)self headphoneDevice];
    v19 = [v18 cbDevice];
    v20 = [v19 doubleTapCapability];

    if (v20 == 2)
    {
      v21 = v17 | 4;
    }

    else
    {
      v21 = v17;
    }

    v22 = [(HPSDevice *)self headphoneDevice];
    v23 = [v22 supportsFeatureWithFeature:5];

    if ((*&v23 & ((v12 & 8) >> 3)) != 0)
    {
      v21 |= 0x20u;
    }

    v24 = [(HPSDevice *)self headphoneDevice];
    v25 = [v24 supportsFeatureWithFeature:5];

    if (v25)
    {
      v26 = v21 | 8;
    }

    else
    {
      v26 = v21;
    }

    v27 = [(HPSDevice *)self headphoneDevice];
    v28 = [v27 supportsFeatureWithFeature:7];
    v29 = v26 | 0x10;
    if (!v28)
    {
      v29 = v26;
    }

    if ((v12 & 8) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 | 0x400;
    }

    goto LABEL_28;
  }

  v31 = [(HPSDevice *)self btsDevice];
  v32 = [v31 classicDevice];
  v30 = [v32 accessorySettingFeatureBitMask];

  v33 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [(HPSDevice *)self btsDevice];
    v35 = [v34 classicDevice];
    v36 = [v35 address];
    v38 = 138412546;
    v39 = v36;
    v40 = 1024;
    v41 = v30;
    _os_log_impl(&dword_251143000, v33, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [accessorySettingFeatureBitMask] [BTDevice-Only] btDevice: %@, returnValue:%i", &v38, 0x12u);
  }

LABEL_28:
  v37 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)setClickHoldModes:(id)a3
{
  v3 = *&a3.var2;
  v4 = *&a3.var0;
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(HPSDevice *)self btsDevice];
  v7 = [v6 classicDevice];
  v8 = [v7 setClickHoldModes:{v4, v3}];

  v9 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(HPSDevice *)self btsDevice];
    v11 = [v10 classicDevice];
    v12 = [v11 address];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n rightMode: %i \nleftMode: %i \nprevRightMode: %i \nprevLeftMode: %i \n", v4, HIDWORD(v4), v3, HIDWORD(v3)];
    *buf = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [setClickHoldModes:] [BTDevice-Only] btDevice: %@, clockHoldModes:%@, result:%i", buf, 0x1Cu);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unsigned)clickHoldModes:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(HPSDevice *)self btsDevice];
  v6 = [v5 classicDevice];
  v7 = [v6 clickHoldModes:a3];

  v8 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(HPSDevice *)self btsDevice];
    v10 = [v9 classicDevice];
    v11 = [v10 address];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n rightMode: %i \nleftMode: %i \nprevRightMode: %i \nprevLeftMode: %i \n", *&a3->var0, HIDWORD(*&a3->var0), *&a3->var2, HIDWORD(*&a3->var2)];
    *buf = 138412802;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [clickHoldModes:] [BTDevice-Only] btDevice: %@, inputModes:%@ returnValue:%i", buf, 0x1Cu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)getDeviceColor:(unsigned int *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = +[HPSHeadphoneManager sharedInstance];
  if ([v5 allowReplayAccessory])
  {
    v6 = [(HPSDevice *)self btsDevice];

    if (v6)
    {
      goto LABEL_5;
    }

    v5 = [(HPSDevice *)self headphoneDevice];
    *a3 = [v5 deviceColor];
  }

LABEL_5:
  v7 = [(HPSDevice *)self btsDevice];
  v8 = [v7 classicDevice];
  v9 = [v8 getDeviceColor:a3];

  v10 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(HPSDevice *)self btsDevice];
    v12 = [v11 classicDevice];
    v13 = [v12 address];
    v14 = *a3;
    v17 = 138412802;
    v18 = v13;
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
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 hearingAidSupport];

  if (self->_ffValue && self->_headphoneDevice)
  {
    v6 = [(HPSDevice *)self headphoneDevice];
    v7 = [v6 cbDevice];
    v8 = [v7 hearingAidSupport] == 1;

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v9 = [v5 stringValue];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v11 = [v10 stringValue];
    [(HPSDevice *)self _logExpectationFormatStringForUsecase:@"[hearingAidSupport]" btsDeviceValue:v9 headphoneDeviceValue:v11];

    LOBYTE(v5) = v8;
  }

  else
  {
    v12 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(HPSDevice *)self btsDevice];
      v14 = [v13 classicDevice];
      v15 = [v14 address];
      v18 = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_251143000, v12, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hearingAidEnrolled
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 hearingAidEnrolled];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidEnrolled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hearingAidEnabled
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 hearingAidEnabled];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingAidEnabled] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)hearingTestSupport
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 hearingTestSupport];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [hearingTestSupport] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)healthDeviceType
{
  v2 = [(HPSDevice *)self btsDevice];
  v3 = [v2 healthDeviceType];

  return v3;
}

- (unsigned)userSelectedHealthDataSyncConfig
{
  v2 = [(HPSDevice *)self btsDevice];
  v3 = [v2 userSelectedHealthDataSyncConfig];

  return v3;
}

- (int)getUserSelectedDeviceType
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getUserSelectedDeviceType];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getUserSelectedDeviceType] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)accessoryInfo
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 accessoryInfo];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [accessoryInfo] [BTDevice-Only] btDevice: %@, returnValue:%@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (int)getLowSecurityStatus
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 getLowSecurityStatus];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [getLowSecurityStatus] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)ancsAuthorized
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 ancsAuthorized];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HPSDevice *)self btsDevice];
    v7 = [v6 classicDevice];
    v8 = [v7 address];
    v11 = 138412546;
    v12 = v8;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [ancsAuthorized] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isFirmwareUpdateRequiredDevice
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 isFirmwareUpdateRequiredDevice];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HPSDevice *)self btsDevice];
    v7 = [v6 classicDevice];
    v8 = [v7 address];
    v11 = 138412546;
    v12 = v8;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isFirmwareUpdateRequiredDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isLimitedConnectivityDevice
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 isLimitedConnectivityDevice];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HPSDevice *)self btsDevice];
    v7 = [v6 classicDevice];
    v8 = [v7 address];
    v11 = 138412546;
    v12 = v8;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isLimitedConnectivityDevice] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)supportsANCS
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 supportsANCS];

  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HPSDevice *)self btsDevice];
    v7 = [v6 classicDevice];
    v8 = [v7 address];
    v11 = 138412546;
    v12 = v8;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_251143000, v5, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [supportsANCS] [BTDevice-Only] btDevice: %@, returnValue:%i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isGuestPairingMode
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 isGuestPairingMode];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [isGuestPairingMode] [BTDevice-Only] btDevice: %@, returnValue:%i", &v12, 0x12u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)syncGroups
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 syncGroups];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [syncGroups] [BTDevice-Only] btDevice: %@, value:%@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)syncSettings
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HPSDevice *)self btsDevice];
  v4 = [v3 classicDevice];
  v5 = [v4 syncSettings];

  v6 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HPSDevice *)self btsDevice];
    v8 = [v7 classicDevice];
    v9 = [v8 address];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n supported: %i \nenabled: %i \nfavorites: %i \nrecents: %i \nuserPermissionGranted: %i \n", v5 & 1, (v5 >> 8) & 1, WORD1(v5) & 1, BYTE3(v5) & 1, HIDWORD(v5) & 1];
    *buf = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_251143000, v6, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: [syncSettings] [BTDevice-Only] btDevice: %@, value:%@", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HPSDevice *)self btsDevice];
  v6 = [v5 classicDevice];
  v7 = [v6 address];
  v8 = [(HPSDevice *)self headphoneDevice];
  v9 = [(HPSDevice *)self address];
  v10 = [(HPSDevice *)self name];
  v11 = [v3 stringWithFormat:@"<%@: %p> btsDevice:%@ headphoneDevice:%@  address:%@  name:%@", v4, self, v7, v8, v9, v10];

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

- (void)_logExpectationFormatStringForUsecase:(id)a3 queryValue:(id)a4 btsDeviceValue:(id)a5 headphoneDeviceValue:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_ffValue || !self->_headphoneDevice)
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [HPSDevice _logExpectationFormatStringForUsecase:v14 queryValue:? btsDeviceValue:? headphoneDeviceValue:?];
    }

    if (([v12 isEqualToString:v13] & 1) == 0)
    {
      v15 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = [(HPSDevice *)self btsDevice];
        v18 = [v17 classicDevice];
        v19 = [v18 address];
        v20 = [(HPSDevice *)self headphoneDevice];
        v21 = 138413570;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        v25 = 2112;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        v29 = 2112;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        _os_log_error_impl(&dword_251143000, v15, OS_LOG_TYPE_ERROR, "HeadphoneInfrastructureReDesign: %@, [Query]=%@, btsDevice.value: %@, headphoneDevice.value:%@, btsDevice:%@, headphoneDevice:%@", &v21, 0x3Eu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_logSetterExpectationFormatStringForUsecase:(id)a3 inputValue:(id)a4 existingValue:(id)a5 readBackValue:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_ffValue || !self->_headphoneDevice)
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277D0FC00] shared];
      [v15 connectedHeadphones];
      v16 = v25 = v10;
      v17 = [(HPSDevice *)self headphoneDevice];
      v18 = [(HPSDevice *)self headphoneDevice];
      v19 = [v18 cbDevice];
      *buf = 138412802;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "HeadphoneInfrastructureReDesign: State log connected: %@ , headphoneDevice: %p, cbDevice: %p", buf, 0x20u);

      v10 = v25;
    }

    if (([v11 isEqualToString:v13] & 1) == 0)
    {
      v20 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [(HPSDevice *)self btsDevice];
        v23 = [v22 debugDescription];
        v24 = [(HPSDevice *)self headphoneDevice];
        *buf = 138413570;
        v27 = v10;
        v28 = 2112;
        v29 = v11;
        v30 = 2112;
        v31 = v12;
        v32 = 2112;
        v33 = v13;
        v34 = 2112;
        v35 = v23;
        v36 = 2112;
        v37 = v24;
        _os_log_error_impl(&dword_251143000, v20, OS_LOG_TYPE_ERROR, "HeadphoneInfrastructureReDesign: %@, input.value: %@, existing.value: %@, readback.value: %@, btsDevice:%@, headphoneDevice:%@", buf, 0x3Eu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)headphoneDevice:(id)a3 btsDevice:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HPSDevice alloc] initWithHeadphoneDevice:v6 btsDevice:v5];

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