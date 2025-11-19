@interface HMDXPCKeyedArchiver
- (NSData)encodedData;
- (id)initForWritingWithMessage:(id)a3;
- (void)_configure;
- (void)dealloc;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)finishEncoding;
@end

@implementation HMDXPCKeyedArchiver

- (NSData)encodedData
{
  v2 = [(HMDXPCKeyedArchiver *)self archiver];
  v3 = [v2 encodedData];

  return v3;
}

- (void)finishEncoding
{
  v2 = [(HMDXPCKeyedArchiver *)self archiver];
  [v2 finishEncoding];
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDXPCKeyedArchiver *)self archiver];
  [v8 encodeObject:v7 forKey:v6];
}

- (void)_configure
{
  v3 = [(HMDXPCKeyedArchiver *)self archiver];
  [v3 setClassName:@"HMHome" forClass:objc_opt_class()];

  v4 = [(HMDXPCKeyedArchiver *)self archiver];
  [v4 setClassName:@"HMRoom" forClass:objc_opt_class()];

  v5 = [(HMDXPCKeyedArchiver *)self archiver];
  [v5 setClassName:@"HMZone" forClass:objc_opt_class()];

  v6 = [(HMDXPCKeyedArchiver *)self archiver];
  [v6 setClassName:@"HMServiceGroup" forClass:objc_opt_class()];

  v7 = [(HMDXPCKeyedArchiver *)self archiver];
  [v7 setClassName:@"HMTimerTrigger" forClass:objc_opt_class()];

  v8 = [(HMDXPCKeyedArchiver *)self archiver];
  [v8 setClassName:@"HMActionSet" forClass:objc_opt_class()];

  v9 = [(HMDXPCKeyedArchiver *)self archiver];
  [v9 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v10 = [(HMDXPCKeyedArchiver *)self archiver];
  [v10 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v11 = [(HMDXPCKeyedArchiver *)self archiver];
  [v11 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v12 = [(HMDXPCKeyedArchiver *)self archiver];
  [v12 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v13 = [(HMDXPCKeyedArchiver *)self archiver];
  [v13 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v14 = [(HMDXPCKeyedArchiver *)self archiver];
  [v14 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v15 = [(HMDXPCKeyedArchiver *)self archiver];
  [v15 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v16 = [(HMDXPCKeyedArchiver *)self archiver];
  [v16 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v17 = [(HMDXPCKeyedArchiver *)self archiver];
  [v17 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v18 = [(HMDXPCKeyedArchiver *)self archiver];
  [v18 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v19 = [(HMDXPCKeyedArchiver *)self archiver];
  [v19 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  v20 = [(HMDXPCKeyedArchiver *)self archiver];
  [v20 setClassName:@"HMService" forClass:objc_opt_class()];

  v21 = [(HMDXPCKeyedArchiver *)self archiver];
  [v21 setClassName:@"HMCharacteristic" forClass:objc_opt_class()];

  v22 = [(HMDXPCKeyedArchiver *)self archiver];
  [v22 setClassName:@"HMCharacteristicWriteAction" forClass:objc_opt_class()];

  v23 = [(HMDXPCKeyedArchiver *)self archiver];
  [v23 setClassName:@"HMCharacteristicMetadata" forClass:objc_opt_class()];

  v24 = [(HMDXPCKeyedArchiver *)self archiver];
  [v24 setClassName:@"HMUser" forClass:objc_opt_class()];

  v25 = [(HMDXPCKeyedArchiver *)self archiver];
  [v25 setClassName:@"HMAssistantAccessControl" forClass:objc_opt_class()];

  v26 = [(HMDXPCKeyedArchiver *)self archiver];
  [v26 setClassName:@"HMCharacteristicEvent" forClass:objc_opt_class()];

  v27 = [(HMDXPCKeyedArchiver *)self archiver];
  [v27 setClassName:@"HMLocationEvent" forClass:objc_opt_class()];

  v28 = [(HMDXPCKeyedArchiver *)self archiver];
  [v28 setClassName:@"HMCalendarEvent" forClass:objc_opt_class()];

  v29 = [(HMDXPCKeyedArchiver *)self archiver];
  [v29 setClassName:@"HMSignificantTimeEvent" forClass:objc_opt_class()];

  v30 = [(HMDXPCKeyedArchiver *)self archiver];
  [v30 setClassName:@"HMDurationEvent" forClass:objc_opt_class()];

  v31 = [(HMDXPCKeyedArchiver *)self archiver];
  [v31 setClassName:@"HMCharacteristicThresholdRangeEvent" forClass:objc_opt_class()];

  v32 = [(HMDXPCKeyedArchiver *)self archiver];
  [v32 setClassName:@"HMPresenceEvent" forClass:objc_opt_class()];

  v33 = [(HMDXPCKeyedArchiver *)self archiver];
  [v33 setClassName:@"HMEventTrigger" forClass:objc_opt_class()];

  v34 = [(HMDXPCKeyedArchiver *)self archiver];
  [v34 setClassName:@"HMAccessoryInvitation" forClass:objc_opt_class()];

  v35 = [(HMDXPCKeyedArchiver *)self archiver];
  [v35 setClassName:@"HMHomeInvitation" forClass:objc_opt_class()];

  v36 = [(HMDXPCKeyedArchiver *)self archiver];
  [v36 setClassName:@"HMIncomingHomeInvitation" forClass:objc_opt_class()];

  v37 = [(HMDXPCKeyedArchiver *)self archiver];
  [v37 setClassName:@"HMOutgoingHomeInvitation" forClass:objc_opt_class()];

  v38 = [(HMDXPCKeyedArchiver *)self archiver];
  [v38 setClassName:@"HMDevice" forClass:objc_opt_class()];

  v39 = [(HMDXPCKeyedArchiver *)self archiver];
  [v39 setClassName:@"HMResidentDevice" forClass:objc_opt_class()];

  v40 = [(HMDXPCKeyedArchiver *)self archiver];
  [v40 setClassName:@"_HMAccessoryProfile" forClass:objc_opt_class()];

  v41 = [(HMDXPCKeyedArchiver *)self archiver];
  [v41 setClassName:@"_HMCameraProfile" forClass:objc_opt_class()];

  v42 = [(HMDXPCKeyedArchiver *)self archiver];
  [v42 setClassName:@"_HMLightProfile" forClass:objc_opt_class()];

  v43 = [(HMDXPCKeyedArchiver *)self archiver];
  [v43 setClassName:@"HMMediaPlaybackAction" forClass:objc_opt_class()];

  v44 = [(HMDXPCKeyedArchiver *)self archiver];
  [v44 setClassName:@"_HMMediaProfile" forClass:objc_opt_class()];

  v45 = [(HMDXPCKeyedArchiver *)self archiver];
  [v45 setClassName:@"_HMMediaProfile" forClass:objc_opt_class()];

  v46 = [(HMDXPCKeyedArchiver *)self archiver];
  [v46 setClassName:@"_HMMediaProfile" forClass:objc_opt_class()];

  v47 = [(HMDXPCKeyedArchiver *)self archiver];
  [v47 setClassName:@"HMMediaSession" forClass:objc_opt_class()];

  v48 = [(HMDXPCKeyedArchiver *)self archiver];
  [v48 setClassName:@"_HMSiriEndpointProfile" forClass:objc_opt_class()];

  v49 = [(HMDXPCKeyedArchiver *)self archiver];
  [v49 setClassName:@"HMSiriEndpointProfileAssistant" forClass:objc_opt_class()];

  v50 = [(HMDXPCKeyedArchiver *)self archiver];
  [v50 setClassName:@"_HMDoorbellChimeProfile" forClass:objc_opt_class()];

  v51 = [(HMDXPCKeyedArchiver *)self archiver];
  [v51 setClassName:@"_HMAccessorySetting" forClass:objc_opt_class()];

  v52 = [(HMDXPCKeyedArchiver *)self archiver];
  [v52 setClassName:@"_HMAccessorySettingGroup" forClass:objc_opt_class()];

  v53 = [(HMDXPCKeyedArchiver *)self archiver];
  [v53 setClassName:@"HMSoftwareUpdate" forClass:objc_opt_class()];

  v54 = [(HMDXPCKeyedArchiver *)self archiver];
  [v54 setClassName:@"HMRemoteLoginHandler" forClass:objc_opt_class()];

  v55 = [(HMDXPCKeyedArchiver *)self archiver];
  [v55 setClassName:@"HMRemoteLoginAnisetteDataProvider" forClass:objc_opt_class()];

  v56 = [(HMDXPCKeyedArchiver *)self archiver];
  [v56 setClassName:@"HMMediaSystem" forClass:objc_opt_class()];

  v57 = [(HMDXPCKeyedArchiver *)self archiver];
  [v57 setClassName:@"HMMediaSystem" forClass:objc_opt_class()];

  v58 = [(HMDXPCKeyedArchiver *)self archiver];
  [v58 setClassName:@"HMMediaSystem" forClass:objc_opt_class()];

  v59 = [(HMDXPCKeyedArchiver *)self archiver];
  [v59 setClassName:@"HMMediaSystemComponent" forClass:objc_opt_class()];

  v60 = [(HMDXPCKeyedArchiver *)self archiver];
  [v60 setClassName:@"HMBulletinBoardNotification" forClass:objc_opt_class()];

  v61 = [(HMDXPCKeyedArchiver *)self archiver];
  [v61 setClassName:@"HMSetting" forClass:objc_opt_class()];

  v62 = [(HMDXPCKeyedArchiver *)self archiver];
  [v62 setClassName:@"HMSettingGroup" forClass:objc_opt_class()];

  v63 = [(HMDXPCKeyedArchiver *)self archiver];
  [v63 setClassName:@"HMShortcutAction" forClass:objc_opt_class()];

  v64 = [(HMDXPCKeyedArchiver *)self archiver];
  [v64 setClassName:@"HMAccessoryNetworkAccessViolation" forClass:objc_opt_class()];

  v65 = [(HMDXPCKeyedArchiver *)self archiver];
  [v65 setClassName:@"HMAccessoryAllowedHost" forClass:objc_opt_class()];

  v66 = [(HMDXPCKeyedArchiver *)self archiver];
  [v66 setClassName:@"HMAccessoryNetworkProtectionGroup" forClass:objc_opt_class()];

  v67 = [(HMDXPCKeyedArchiver *)self archiver];
  [v67 setClassName:@"HMLightProfileNaturalLightingAction" forClass:objc_opt_class()];

  v68 = [(HMDXPCKeyedArchiver *)self archiver];
  [v68 setClassName:@"HMMediaDestinationController" forClass:objc_opt_class()];

  v69 = [(HMDXPCKeyedArchiver *)self archiver];
  [v69 setClassName:@"HMTriggerPolicy" forClass:objc_opt_class()];

  v70 = [(HMDXPCKeyedArchiver *)self archiver];
  [v70 setClassName:@"HMTriggerDeletePolicy" forClass:objc_opt_class()];

  v71 = [(HMDXPCKeyedArchiver *)self archiver];
  [v71 setClassName:@"HMTriggerDeleteAfterExecutionPolicy" forClass:objc_opt_class()];

  v72 = [(HMDXPCKeyedArchiver *)self archiver];
  [v72 setClassName:@"_HMAccessoryProfile" forClass:objc_opt_class()];
}

- (void)dealloc
{
  v3 = [(HMDXPCKeyedArchiver *)self archiver];
  objc_removeAssociatedObjects(v3);

  v4.receiver = self;
  v4.super_class = HMDXPCKeyedArchiver;
  [(HMDXPCKeyedArchiver *)&v4 dealloc];
}

- (id)initForWritingWithMessage:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDXPCKeyedArchiver;
  v5 = [(HMDXPCKeyedArchiver *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    archiver = v5->_archiver;
    v5->_archiver = v6;

    objc_setAssociatedObject(v5->_archiver, @"kXPCTransportTypeAssociationKey", MEMORY[0x277CBEC38], 0x301);
    if (v4)
    {
      objc_setAssociatedObject(v5->_archiver, @"kXPCMessageKey", v4, 0x301);
    }

    [(HMDXPCKeyedArchiver *)v5 _configure];
  }

  return v5;
}

@end