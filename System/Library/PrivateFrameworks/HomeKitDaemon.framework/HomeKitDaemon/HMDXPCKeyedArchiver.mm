@interface HMDXPCKeyedArchiver
- (NSData)encodedData;
- (id)initForWritingWithMessage:(id)message;
- (void)_configure;
- (void)_hh2Configure;
- (void)dealloc;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)finishEncoding;
@end

@implementation HMDXPCKeyedArchiver

- (NSData)encodedData
{
  archiver = [(HMDXPCKeyedArchiver *)self archiver];
  encodedData = [archiver encodedData];

  return encodedData;
}

- (void)finishEncoding
{
  archiver = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver finishEncoding];
}

- (void)encodeObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  archiver = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver encodeObject:objectCopy forKey:keyCopy];
}

- (void)_hh2Configure
{
  archiver = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver setClassName:@"HMHomeActivityStateSchedule" forClass:objc_opt_class()];

  archiver2 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver2 setClassName:@"HMRestrictedGuestHomeAccessSettings" forClass:objc_opt_class()];

  archiver3 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver3 setClassName:@"HMMatterCommandAction" forClass:objc_opt_class()];

  archiver4 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver4 setClassName:@"HMMatterBulletinBoardNotification" forClass:objc_opt_class()];

  archiver5 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver5 setClassName:@"HMMatterAttributeEvent" forClass:objc_opt_class()];
}

- (void)_configure
{
  archiver = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver setClassName:@"HMHome" forClass:objc_opt_class()];

  archiver2 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver2 setClassName:@"HMRoom" forClass:objc_opt_class()];

  archiver3 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver3 setClassName:@"HMZone" forClass:objc_opt_class()];

  archiver4 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver4 setClassName:@"HMServiceGroup" forClass:objc_opt_class()];

  archiver5 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver5 setClassName:@"HMTimerTrigger" forClass:objc_opt_class()];

  archiver6 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver6 setClassName:@"HMActionSet" forClass:objc_opt_class()];

  archiver7 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver7 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver8 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver8 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver9 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver9 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver10 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver10 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver11 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver11 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver12 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver12 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver13 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver13 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver14 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver14 setClassName:@"HMAccessory" forClass:objc_opt_class()];

  archiver15 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver15 setClassName:@"HMService" forClass:objc_opt_class()];

  archiver16 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver16 setClassName:@"HMCharacteristic" forClass:objc_opt_class()];

  archiver17 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver17 setClassName:@"HMCharacteristicWriteAction" forClass:objc_opt_class()];

  archiver18 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver18 setClassName:@"HMCharacteristicMetadata" forClass:objc_opt_class()];

  archiver19 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver19 setClassName:@"HMUser" forClass:objc_opt_class()];

  archiver20 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver20 setClassName:@"HMAssistantAccessControl" forClass:objc_opt_class()];

  archiver21 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver21 setClassName:@"HMCharacteristicEvent" forClass:objc_opt_class()];

  archiver22 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver22 setClassName:@"HMLocationEvent" forClass:objc_opt_class()];

  archiver23 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver23 setClassName:@"HMCalendarEvent" forClass:objc_opt_class()];

  archiver24 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver24 setClassName:@"HMSignificantTimeEvent" forClass:objc_opt_class()];

  archiver25 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver25 setClassName:@"HMDurationEvent" forClass:objc_opt_class()];

  archiver26 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver26 setClassName:@"HMCharacteristicThresholdRangeEvent" forClass:objc_opt_class()];

  archiver27 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver27 setClassName:@"HMPresenceEvent" forClass:objc_opt_class()];

  archiver28 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver28 setClassName:@"HMEventTrigger" forClass:objc_opt_class()];

  archiver29 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver29 setClassName:@"HMAccessoryInvitation" forClass:objc_opt_class()];

  archiver30 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver30 setClassName:@"HMHomeInvitation" forClass:objc_opt_class()];

  archiver31 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver31 setClassName:@"HMIncomingHomeInvitation" forClass:objc_opt_class()];

  archiver32 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver32 setClassName:@"HMOutgoingHomeInvitation" forClass:objc_opt_class()];

  archiver33 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver33 setClassName:@"HMDevice" forClass:objc_opt_class()];

  archiver34 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver34 setClassName:@"HMResidentDevice" forClass:objc_opt_class()];

  archiver35 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver35 setClassName:@"_HMAccessoryProfile" forClass:objc_opt_class()];

  archiver36 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver36 setClassName:@"_HMCameraProfile" forClass:objc_opt_class()];

  archiver37 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver37 setClassName:@"_HMLightProfile" forClass:objc_opt_class()];

  archiver38 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver38 setClassName:@"HMMediaPlaybackAction" forClass:objc_opt_class()];

  archiver39 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver39 setClassName:@"_HMMediaProfile" forClass:objc_opt_class()];

  archiver40 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver40 setClassName:@"_HMMediaProfile" forClass:objc_opt_class()];

  archiver41 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver41 setClassName:@"_HMMediaProfile" forClass:objc_opt_class()];

  archiver42 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver42 setClassName:@"HMMediaSession" forClass:objc_opt_class()];

  archiver43 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver43 setClassName:@"_HMSiriEndpointProfile" forClass:objc_opt_class()];

  archiver44 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver44 setClassName:@"HMSiriEndpointProfileAssistant" forClass:objc_opt_class()];

  archiver45 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver45 setClassName:@"_HMDoorbellChimeProfile" forClass:objc_opt_class()];

  archiver46 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver46 setClassName:@"_HMAccessorySetting" forClass:objc_opt_class()];

  archiver47 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver47 setClassName:@"_HMAccessorySettingGroup" forClass:objc_opt_class()];

  archiver48 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver48 setClassName:@"HMSoftwareUpdate" forClass:objc_opt_class()];

  archiver49 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver49 setClassName:@"HMRemoteLoginHandler" forClass:objc_opt_class()];

  archiver50 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver50 setClassName:@"HMRemoteLoginAnisetteDataProvider" forClass:objc_opt_class()];

  archiver51 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver51 setClassName:@"HMMediaSystem" forClass:objc_opt_class()];

  archiver52 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver52 setClassName:@"HMMediaSystemComponent" forClass:objc_opt_class()];

  archiver53 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver53 setClassName:@"HMBulletinBoardNotification" forClass:objc_opt_class()];

  archiver54 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver54 setClassName:@"HMSetting" forClass:objc_opt_class()];

  archiver55 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver55 setClassName:@"HMSettingGroup" forClass:objc_opt_class()];

  archiver56 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver56 setClassName:@"HMShortcutAction" forClass:objc_opt_class()];

  archiver57 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver57 setClassName:@"HMAccessoryNetworkAccessViolation" forClass:objc_opt_class()];

  archiver58 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver58 setClassName:@"HMAccessoryAllowedHost" forClass:objc_opt_class()];

  archiver59 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver59 setClassName:@"HMAccessoryNetworkProtectionGroup" forClass:objc_opt_class()];

  archiver60 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver60 setClassName:@"HMLightProfileNaturalLightingAction" forClass:objc_opt_class()];

  archiver61 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver61 setClassName:@"HMMediaDestinationController" forClass:objc_opt_class()];

  archiver62 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver62 setClassName:@"HMTriggerPolicy" forClass:objc_opt_class()];

  archiver63 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver63 setClassName:@"HMTriggerDeletePolicy" forClass:objc_opt_class()];

  archiver64 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver64 setClassName:@"HMTriggerDeleteAfterExecutionPolicy" forClass:objc_opt_class()];

  archiver65 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver65 setClassName:@"_HMAccessoryProfile" forClass:objc_opt_class()];

  archiver66 = [(HMDXPCKeyedArchiver *)self archiver];
  [archiver66 setClassName:@"HMAppleMediaAccessoryPowerAction" forClass:objc_opt_class()];

  [(HMDXPCKeyedArchiver *)self _hh2Configure];
}

- (void)dealloc
{
  archiver = [(HMDXPCKeyedArchiver *)self archiver];
  objc_removeAssociatedObjects(archiver);

  v4.receiver = self;
  v4.super_class = HMDXPCKeyedArchiver;
  [(HMDXPCKeyedArchiver *)&v4 dealloc];
}

- (id)initForWritingWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = HMDXPCKeyedArchiver;
  v5 = [(HMDXPCKeyedArchiver *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    archiver = v5->_archiver;
    v5->_archiver = v6;

    objc_setAssociatedObject(v5->_archiver, @"kXPCTransportTypeAssociationKey", MEMORY[0x277CBEC38], 0x301);
    if (messageCopy)
    {
      objc_setAssociatedObject(v5->_archiver, @"kXPCMessageKey", messageCopy, 0x301);
    }

    [(HMDXPCKeyedArchiver *)v5 _configure];
  }

  return v5;
}

@end