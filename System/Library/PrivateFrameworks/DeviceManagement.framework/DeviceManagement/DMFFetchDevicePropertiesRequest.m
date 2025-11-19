@interface DMFFetchDevicePropertiesRequest
+ (id)devicePropertyKeysForPlatform:(unint64_t)a3;
- (DMFFetchDevicePropertiesRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchDevicePropertiesRequest

- (DMFFetchDevicePropertiesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DMFFetchDevicePropertiesRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"propertyKeys"];
    propertyKeys = v5->_propertyKeys;
    v5->_propertyKeys = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchDevicePropertiesRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchDevicePropertiesRequest *)self propertyKeys:v6.receiver];
  [v4 encodeObject:v5 forKey:@"propertyKeys"];
}

+ (id)devicePropertyKeysForPlatform:(unint64_t)a3
{
  if (devicePropertyKeysForPlatform__onceToken != -1)
  {
    +[DMFFetchDevicePropertiesRequest devicePropertyKeysForPlatform:];
  }

  v4 = devicePropertyKeysForPlatform__keysByPlatform;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __65__DMFFetchDevicePropertiesRequest_devicePropertyKeysForPlatform___block_invoke()
{
  v30[21] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v30[0] = @"DMFDeviceAvailableCapacityKey";
  v30[1] = @"DMFDeviceAwaitingConfigurationKey";
  v30[2] = @"DMFDeviceBatteryLevelKey";
  v30[3] = @"DMFDeviceBluetoothMACKey";
  v30[4] = @"DMFDeviceBuildVersionKey";
  v30[5] = @"DMFDeviceCapacityKey";
  v30[6] = @"DMFDeviceiTunesStoreAccountHashKey";
  v30[7] = @"DMFDeviceiTunesStoreAccountIsActiveKey";
  v30[8] = @"DMFDeviceIsAppleInternalKey";
  v30[9] = @"DMFDeviceIsDeviceLocatorServiceEnabledKey";
  v30[10] = @"DMFDeviceIsDNDInEffectKey";
  v30[11] = @"DMFDeviceIsLostModeEnabledKey";
  v30[12] = @"DMFDeviceMarketingNameKey";
  v30[13] = @"DMFDeviceModelKey";
  v30[14] = @"DMFDeviceModelNameKey";
  v30[15] = @"DMFDeviceNameKey";
  v30[16] = @"DMFDeviceOSVersionKey";
  v30[17] = @"DMFDeviceProductNameKey";
  v30[18] = @"DMFDeviceSerialNumberKey";
  v30[19] = @"DMFDeviceTypeKey";
  v30[20] = @"DMFDeviceWiFiMACKey";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:21];
  v2 = [v0 setWithArray:v1];

  v3 = MEMORY[0x1E695DFD8];
  v29[0] = @"DMFDeviceAppAnalyticsEnabledKey";
  v29[1] = @"DMFDeviceDiagnosticSubmissionEnabledKey";
  v29[2] = @"DMFDeviceIsCloudBackupEnabledKey";
  v29[3] = @"DMFDeviceIsSupervisedKey";
  v29[4] = @"DMFDeviceLastCloudBackupDateKey";
  v29[5] = @"DMFDeviceUniqueIdentifierKey";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 setByAddingObjectsFromSet:v5];

  v7 = MEMORY[0x1E695DFD8];
  v28[0] = @"DMFDeviceCarrierSettingsVersionKey";
  v28[1] = @"DMFDeviceCellularTechnologyKey";
  v28[2] = @"DMFDeviceCurrentCarrierNetworkKey";
  v28[3] = @"DMFDeviceCurrentMCCKey";
  v28[4] = @"DMFDeviceCurrentMNCKey";
  v28[5] = @"DMFDeviceDataRoamingEnabledKey";
  v28[6] = @"DMFDeviceEnforcedSoftwareUpdateDelayKey";
  v28[7] = @"DMFDeviceIsActivationLockEnabledKey";
  v28[8] = @"DMFDeviceEASIdentifierKey";
  v28[9] = @"DMFDeviceICCIDKey";
  v28[10] = @"DMFDeviceIMEIKey";
  v28[11] = @"DMFDeviceIsEphemeralMultiUserKey";
  v28[12] = @"DMFDeviceIsNetworkTetheredKey";
  v28[13] = @"DMFDeviceIsRoamingKey";
  v28[14] = @"DMFDeviceMaximumResidentUsersKey";
  v28[15] = @"DMFDeviceMEIDKey";
  v28[16] = @"DMFDeviceModemFirmwareVersionKey";
  v28[17] = @"DMFDevicePersonalHotspotEnabledKey";
  v28[18] = @"DMFDevicePhoneNumberKey";
  v28[19] = @"DMFDeviceSkippedSetupPanesKey";
  v28[20] = @"DMFDeviceSubscriberCarrierNetworkKey";
  v28[21] = @"DMFDeviceSubscriberMCCKey";
  v28[22] = @"DMFDeviceSubscriberMNCKey";
  v28[23] = @"DMFDeviceVoiceRoamingEnabledKey";
  v28[24] = @"DMFDeviceServiceSubscriptionsKey";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:25];
  v9 = [v7 setWithArray:v8];
  v10 = [v6 setByAddingObjectsFromSet:v9];

  v11 = MEMORY[0x1E695DFD8];
  v27[0] = @"DMFDeviceActiveManagedUsersKey";
  v27[1] = @"DMFDeviceAutoSetupAdminAccountsKey";
  v27[2] = @"DMFDeviceHostNameKey";
  v27[3] = @"DMFDeviceInstalledExtensionsKey";
  v27[4] = @"DMFDeviceLocalHostNameKey";
  v27[5] = @"DMFDeviceOSUpdateSettingsKey";
  v27[6] = @"DMFDeviceSystemIntegrityProtectionEnabledKey";
  v27[7] = @"DMFDeviceXsanConfigurationKey";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:8];
  v13 = [v11 setWithArray:v12];
  v14 = [v2 setByAddingObjectsFromSet:v13];

  v15 = MEMORY[0x1E695DFD8];
  v26[0] = @"DMFDeviceDestinationIdentifierKey";
  v26[1] = @"DMFDeviceDestinationIdentifierKey";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [v6 setByAddingObjectsFromSet:v17];

  v19 = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];
  v20 = [v6 setByAddingObjectsFromSet:v19];

  v24[0] = &unk_1F57B71B0;
  v24[1] = &unk_1F57B71C8;
  v25[0] = v10;
  v25[1] = v14;
  v24[2] = &unk_1F57B71F8;
  v24[3] = &unk_1F57B71E0;
  v25[2] = v18;
  v25[3] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v22 = devicePropertyKeysForPlatform__keysByPlatform;
  devicePropertyKeysForPlatform__keysByPlatform = v21;

  v23 = *MEMORY[0x1E69E9840];
}

@end