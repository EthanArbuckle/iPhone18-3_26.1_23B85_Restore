@interface HMDCharacteristic
+ (id)currentTargetStateCharacteristicTypeMap;
+ (id)logCategory;
- (BOOL)deregisterNotificationForClientIdentifier:(id)identifier;
- (BOOL)isClientNotificationEnabled;
- (BOOL)isNonClientNotificationEnabled;
- (BOOL)isNonHomeNotificationsEnabled;
- (BOOL)isNotificationEnabled;
- (BOOL)isNotificationEnabledForClientIdentifier:(id)identifier;
- (BOOL)isNotificationEnabledForClientIdentifierPrefix:(id)prefix;
- (BOOL)notificationRegisteredWithRemoteGateway;
- (BOOL)setNotificationEnabled:(BOOL)enabled forClientIdentifier:(id)identifier changeThreshold:(id)threshold removeLast:(BOOL)last;
- (BOOL)shouldIgnoreCacheValueForRead;
- (BOOL)shouldUpdateValueFromHAPCharacteristic:(id)characteristic;
- (BOOL)supportsNotificationContext;
- (BOOL)updateWithDictionary:(id)dictionary;
- (HMDCharacteristic)init;
- (HMDCharacteristic)initWithCharacteristic:(id)characteristic service:(id)service;
- (HMDCharacteristic)initWithCoder:(id)coder;
- (HMDCharacteristicMetadata)metadata;
- (HMDHAPAccessory)accessory;
- (HMDService)service;
- (NSData)notificationContext;
- (NSDate)lastKnownValueUpdateTime;
- (NSDate)notificationEnabledTime;
- (NSDictionary)bulletinContext;
- (NSNumber)changeThresholdForEnabledNotifications;
- (NSNumber)changeThresholdForNonHomeClientEnabledNotifications;
- (NSNumber)instanceID;
- (NSNumber)stateNumber;
- (NSSet)hapCharacteristicTuples;
- (NSSet)notificationRegistrations;
- (NSString)contextID;
- (NSString)serializedIdentifier;
- (NSString)type;
- (NSUUID)contextSPIUniqueIdentifier;
- (NSUUID)spiClientIdentifier;
- (id)_characteristicDictionaryWithAuthData:(BOOL)data;
- (id)_initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (id)characteristicForHAPAccessory:(id)accessory;
- (id)characteristicTypeDescription;
- (id)clientIdentifiersWithNotificationsEnabled;
- (id)contextDataForWriteRequestWithIdentifier:(id)identifier;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)fixedValueFromAccessoryIncludeSerialNumber:(BOOL)number;
- (id)hapCharacteristicTupleWithIdentifier:(id)identifier linkType:(int64_t)type;
- (id)lastKnownValue;
- (id)localClientIdentifiersWithNotificationsEnabled;
- (id)logIdentifier;
- (id)previousValue;
- (id)shortDescription;
- (id)validateValue:(id)value outValue:(id *)outValue;
- (id)validateValueForNotify:(id)notify outValue:(id *)value;
- (id)validateValueForWrite:(id)write outValue:(id *)value;
- (id)value;
- (void)_encodeWithCoder:(id)coder;
- (void)configureWithCharacteristic:(id)characteristic;
- (void)encodeWithCoder:(id)coder;
- (void)getLastKnownValueUpdateTime:(id *)time stateNumber:(id *)number notificationContext:(id *)context;
- (void)setAuthorizationData:(id)data;
- (void)setHapCharacteristicTuples:(id)tuples;
- (void)setLastKnownValue:(id)value;
- (void)setLastKnownValueUpdateTime:(id)time;
- (void)setNotificationContext:(id)context;
- (void)setNotificationEnabledTime:(id)time;
- (void)setNotificationRegisteredWithRemoteGateway:(BOOL)gateway;
- (void)setPreviousValue:(id)value;
- (void)setStateNumber:(id)number;
- (void)unconfigure;
- (void)unconfigureForServerIdentifier:(id)identifier linkType:(int64_t)type;
- (void)updateLastKnownValue;
- (void)updateValue:(id)value updatedTime:(id)time stateNumber:(id)number notificationContext:(id)context;
@end

@implementation HMDCharacteristic

- (NSDictionary)bulletinContext
{
  v38[12] = *MEMORY[0x277D85DE8];
  service = [(HMDCharacteristic *)self service];
  accessory = [(HMDCharacteristic *)self accessory];
  home = [accessory home];
  name = [service name];
  room = [accessory room];
  name2 = [room name];
  v9 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v27 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v9];

  v37[0] = @"home";
  contextID = [home contextID];
  v38[0] = contextID;
  v37[1] = @"accessory";
  contextID2 = [accessory contextID];
  v38[1] = contextID2;
  v37[2] = @"service";
  contextID3 = [service contextID];
  v38[2] = contextID3;
  v37[3] = @"characteristic";
  contextID4 = [(HMDCharacteristic *)self contextID];
  v38[3] = contextID4;
  v37[4] = @"serviceType";
  type = [service type];
  v38[4] = type;
  v37[5] = @"characteristicType";
  type2 = [(HMDCharacteristic *)self type];
  v38[5] = type2;
  v37[6] = *MEMORY[0x277CCF328];
  contextSPIUniqueIdentifier = [home contextSPIUniqueIdentifier];
  uUIDString = [contextSPIUniqueIdentifier UUIDString];
  v38[6] = uUIDString;
  v37[7] = *MEMORY[0x277CCF318];
  v35 = accessory;
  contextSPIUniqueIdentifier2 = [accessory contextSPIUniqueIdentifier];
  uUIDString2 = [contextSPIUniqueIdentifier2 UUIDString];
  v38[7] = uUIDString2;
  v37[8] = *MEMORY[0x277CCF340];
  v36 = service;
  contextSPIUniqueIdentifier3 = [service contextSPIUniqueIdentifier];
  uUIDString3 = [contextSPIUniqueIdentifier3 UUIDString];
  v38[8] = uUIDString3;
  v37[9] = *MEMORY[0x277CCF320];
  contextSPIUniqueIdentifier4 = [(HMDCharacteristic *)self contextSPIUniqueIdentifier];
  uUIDString4 = [contextSPIUniqueIdentifier4 UUIDString];
  v38[9] = uUIDString4;
  v37[10] = *MEMORY[0x277CCF330];
  name3 = [home name];
  v38[10] = name3;
  v37[11] = *MEMORY[0x277CCF338];
  composedName = [v27 composedName];
  v38[11] = composedName;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:12];
  v17 = [v16 mutableCopy];

  stateNumber = [(HMDCharacteristic *)self stateNumber];

  if (stateNumber)
  {
    stateNumber2 = [(HMDCharacteristic *)self stateNumber];
    [v17 setObject:stateNumber2 forKeyedSubscript:@"stateNumber"];
  }

  value = [(HMDCharacteristic *)self value];
  [v17 setObject:value forKeyedSubscript:@"characteristicValue"];

  lastKnownValueUpdateTime = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
  [v17 setObject:lastKnownValueUpdateTime forKeyedSubscript:@"characteristicValueUpdatedTime"];

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSUUID)contextSPIUniqueIdentifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  service = [(HMDCharacteristic *)self service];
  contextSPIUniqueIdentifier = [service contextSPIUniqueIdentifier];
  v7 = MEMORY[0x277CCACA8];
  instanceID = [(HMDCharacteristic *)self instanceID];
  v9 = [v7 stringWithFormat:@"%@", instanceID];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v4 hm_deriveUUIDFromBaseUUID:contextSPIUniqueIdentifier identifierSalt:v3 withSalts:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)contextID
{
  v3 = MEMORY[0x277CCACA8];
  service = [(HMDCharacteristic *)self service];
  contextID = [service contextID];
  instanceID = [(HMDCharacteristic *)self instanceID];
  v7 = [v3 stringWithFormat:@"%@:%@", contextID, instanceID];

  return v7;
}

- (HMDService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v34[8] = *MEMORY[0x277D85DE8];
  accessory = [(HMDCharacteristic *)self accessory];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  type = [(HMDCharacteristic *)self type];
  v32 = HAPShortUUIDType();
  v30 = [v3 initWithName:@"Type Prefix" value:v32];
  v34[0] = v30;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [accessory uuid];
  shortDescription = [uuid shortDescription];
  v27 = [v4 initWithName:@"Accessory UUID" value:shortDescription];
  v34[1] = v27;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  service = [(HMDCharacteristic *)self service];
  instanceID = [service instanceID];
  v24 = [v5 initWithName:@"Service ID" value:instanceID];
  v34[2] = v24;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  instanceID2 = [(HMDCharacteristic *)self instanceID];
  v7 = [v6 initWithName:@"Instance ID" value:instanceID2];
  v34[3] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  lastKnownValue = [(HMDCharacteristic *)self lastKnownValue];
  v10 = [v8 initWithName:@"Last Known Value" value:lastKnownValue];
  v34[4] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  lastKnownValueUpdateTime = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
  v13 = [v11 initWithName:@"Last Known Value Update Time" value:lastKnownValueUpdateTime];
  v34[5] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  previousValue = [(HMDCharacteristic *)self previousValue];
  v16 = [v14 initWithName:@"Previous Value" value:previousValue];
  v34[6] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  stateNumber = [(HMDCharacteristic *)self stateNumber];
  v19 = [v17 initWithName:@"State" value:stateNumber];
  v34[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDCharacteristic *)self accessory];
  uuid = [accessory uuid];
  service = [(HMDCharacteristic *)self service];
  instanceID = [service instanceID];
  type = [(HMDCharacteristic *)self type];
  v9 = HAPShortUUIDType();
  instanceID2 = [(HMDCharacteristic *)self instanceID];
  v11 = [v3 stringWithFormat:@"%@/%@/%@/%@", uuid, instanceID, v9, instanceID2];

  return v11;
}

- (void)_encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  v6 = +[HMDHAPMetadata getSharedInstance];
  service = [(HMDCharacteristic *)self service];
  accessory = [(HMDCharacteristic *)self accessory];
  v9 = accessory;
  if ([coderCopy hmd_isForXPCTransport])
  {
    v9 = accessoryToEncodeForXPCTransportForAccessory(accessory);
  }

  [coderCopy encodeConditionalObject:service forKey:*MEMORY[0x277CD2580]];
  characteristicInstanceID = [(HMDCharacteristic *)self characteristicInstanceID];
  [coderCopy encodeObject:characteristicInstanceID forKey:*MEMORY[0x277CD2138]];

  characteristicType = [(HMDCharacteristic *)self characteristicType];
  [coderCopy encodeObject:characteristicType forKey:*MEMORY[0x277CD21A8]];

  characteristicProperties = [(HMDCharacteristic *)self characteristicProperties];
  v13 = characteristicProperties;
  if (hmd_isForXPCTransport)
  {
    if (hmd_isForXPCTransportEntitledForSPIAccess)
    {
      v14 = characteristicProperties;
    }

    else
    {
      v14 = characteristicProperties & 0x47;
    }

    characteristicType2 = [(HMDCharacteristic *)self characteristicType];
    v16 = [v6 shouldNotCacheCharacteristicOfType:characteristicType2];

    if (v16)
    {
      v13 = v14 & 0xFFFFFFF9;
    }

    else
    {
      v13 = v14;
    }
  }

  [coderCopy encodeInt32:v13 forKey:*MEMORY[0x277CD2190]];
  if (([coderCopy hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    metadata = [(HMDCharacteristic *)self metadata];
    [coderCopy encodeObject:metadata forKey:*MEMORY[0x277CD2148]];

    hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
    v19 = [(NSData *)self->_authorizationData length];
    if (!v19 || (hmd_isForLocalStore & 1) != 0)
    {
      if (!v19)
      {
        goto LABEL_17;
      }
    }

    else if (([coderCopy hmd_isForRemoteTransportOnSameAccount] & 1) == 0)
    {
LABEL_17:
      if (!hmd_isForLocalStore)
      {
        goto LABEL_28;
      }

      notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
      v21 = [notificationRegistrations na_map:&__block_literal_global_133_77144];

      if ([v21 count])
      {
        [coderCopy encodeObject:v21 forKey:*MEMORY[0x277CD2178]];
      }

      value = [(HMDCharacteristic *)self value];
      if (v13)
      {
        type = [(HMDCharacteristic *)self type];
        if (![v6 isStandardCharacteristicType:type] || !value || !isAllowedCharType())
        {
          goto LABEL_26;
        }

        stateNumber = [(HMDCharacteristic *)self stateNumber];

        if (stateNumber)
        {
          value2 = [(HMDCharacteristic *)self value];
          [coderCopy encodeObject:value2 forKey:*MEMORY[0x277CD21B0]];

          type = [(HMDCharacteristic *)self stateNumber];
          [coderCopy encodeObject:type forKey:*MEMORY[0x277CD21C8]];
LABEL_26:
        }
      }

      [coderCopy encodeBool:-[HMDCharacteristic broadcastNotificationEnabled](self forKey:{"broadcastNotificationEnabled"), @"characteristicBroadcastNotificationEnabled"}];

LABEL_28:
      if (![coderCopy hmd_isForXPCTransport])
      {
        goto LABEL_44;
      }

      v26 = +[HMDHAPMetadata getSharedInstance];
      type2 = [(HMDCharacteristic *)self type];
      type3 = [service type];
      v29 = [v26 requiresDeviceUnlock:type2 forService:type3];

      notificationRegistrations2 = [(HMDCharacteristic *)self notificationRegistrations];
      v31 = [notificationRegistrations2 count] != 0;

      [coderCopy encodeBool:v31 forKey:*MEMORY[0x277CD2170]];
      if (hmd_isForXPCTransportEntitledForSPIAccess)
      {
        v32 = 1;
      }

      else
      {
        hmd_message = [coderCopy hmd_message];
        vendorInfo = [accessory vendorInfo];
        v32 = [hmd_message isEntitledForVendorAccessForAccessoryWithVendorInfo:vendorInfo];
      }

      v35 = [(HMDCharacteristic *)self fixedValueFromAccessoryIncludeSerialNumber:v32];
      if (v35)
      {
        [coderCopy encodeBool:1 forKey:*MEMORY[0x277CD2130]];
        value3 = v35;
      }

      else
      {
        value3 = [(HMDCharacteristic *)self value];
        if (!value3)
        {
LABEL_39:
          if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
          {
            if (v29)
            {
              [coderCopy encodeBool:1 forKey:@"HM.requiresDeviceUnlock"];
            }

            authorizationData = [(HMDCharacteristic *)self authorizationData];
            v38 = [authorizationData length] != 0;
            [coderCopy encodeBool:v38 forKey:*MEMORY[0x277CD2108]];

            lastKnownValueUpdateTime = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
            [coderCopy encodeObject:lastKnownValueUpdateTime forKey:*MEMORY[0x277CD21D8]];

            notificationEnabledTime = [(HMDCharacteristic *)self notificationEnabledTime];
            [coderCopy encodeObject:notificationEnabledTime forKey:*MEMORY[0x277CD2160]];
          }

          goto LABEL_44;
        }
      }

      if (isAllowedCharType() && ((isAppleTV() & v29) != 1 || [coderCopy hmd_isForXPCTransportEntitledForSPIAccess]))
      {
        [coderCopy encodeObject:value3 forKey:*MEMORY[0x277CD21B0]];
      }

      goto LABEL_39;
    }

    [coderCopy encodeObject:self->_authorizationData forKey:*MEMORY[0x277CD2100]];
    goto LABEL_17;
  }

LABEL_44:
}

id __38__HMDCharacteristic__encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 clientID];
  if ([v3 hasPrefix:@"com.apple.HomeKitDaemon"])
  {

LABEL_4:
    v6 = 0;
    goto LABEL_6;
  }

  v4 = [v2 clientID];
  v5 = [v4 hasPrefix:@"com.apple.HomeKit.client."];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [v2 clientID];
LABEL_6:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDCharacteristic *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)coder
{
  v36[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDCharacteristic *)self initWithCharacteristic:0 service:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2580]];
    objc_storeWeak(&v5->_service, v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD21A8]];
    v8 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v7];
    characteristicType = v5->_characteristicType;
    v5->_characteristicType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2138]];
    characteristicInstanceID = v5->_characteristicInstanceID;
    v5->_characteristicInstanceID = v10;

    v5->_characteristicProperties = [coderCopy decodeInt32ForKey:*MEMORY[0x277CD2190]];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2148]];
    v13 = [HMFObjectCacheHMDCharacteristicMetadata cachedInstanceForCharacteristicMetadata:v12];
    metadata = v5->_metadata;
    v5->_metadata = v13;

    v15 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CD2178]];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 na_map:&__block_literal_global_130];
      v21 = [v20 mutableCopy];
      notificationRegistrations = v5->_notificationRegistrations;
      v5->_notificationRegistrations = v21;

      if (![(NSMutableSet *)v5->_notificationRegistrations count])
      {
        v23 = v5->_notificationRegistrations;
        v5->_notificationRegistrations = 0;
      }
    }

    v24 = *MEMORY[0x277CD2100];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CD2100]])
    {
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v24];
      authorizationData = v5->_authorizationData;
      v5->_authorizationData = v25;
    }

    v27 = *MEMORY[0x277CD21B0];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CD21B0]])
    {
      v28 = allowedCharValueTypes();
      v29 = [coderCopy decodeObjectOfClasses:v28 forKey:v27];
      lastKnownValue = v5->_lastKnownValue;
      v5->_lastKnownValue = v29;

      objc_storeStrong(&v5->_previousValue, v5->_lastKnownValue);
    }

    v31 = *MEMORY[0x277CD21C8];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CD21C8]] && (v5->_characteristicProperties & 1) != 0)
    {
      v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v31];
      stateNumber = v5->_stateNumber;
      v5->_stateNumber = v32;
    }

    if ([coderCopy containsValueForKey:@"characteristicBroadcastNotificationEnabled"])
    {
      v5->_broadcastNotificationEnabled = [coderCopy decodeBoolForKey:@"characteristicBroadcastNotificationEnabled"];
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v5;
}

HMDCharacteristicThresholdRegistration *__36__HMDCharacteristic__initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if (v4)
  {
    v5 = [[HMDCharacteristicThresholdRegistration alloc] initWithClientID:v4 updateThreshold:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HMDCharacteristic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDCharacteristic *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)contextDataForWriteRequestWithIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([(HMDCharacteristic *)self supportsNotificationContext])
  {
    v5 = objc_alloc(MEMORY[0x277CFEA78]);
    v6 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:identifierCopy];
    v7 = [v5 initWithContextIdentifier:v6];

    v19 = 0;
    v8 = [v7 serializeWithError:&v19];
    v9 = v19;
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138544130;
        v21 = v14;
        v22 = 2112;
        v23 = v7;
        v24 = 2112;
        v25 = v9;
        v26 = 2112;
        v27 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode context data:%@ with error:%@ identifier:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v16;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Context data:%@ for write request with identifier:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = v8;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)supportsNotificationContext
{
  v18 = *MEMORY[0x277D85DE8];
  if ((self->_characteristicProperties & 0x100) != 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = selfCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notification context is supported for characteristic:%@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    result = 1;
  }

  else
  {
    type = [(HMDCharacteristic *)self type];
    v4 = [type isEqualToString:*MEMORY[0x277CFE730]];

    if (v4)
    {
      service = [(HMDCharacteristic *)self service];
      v6 = [service findCharacteristicWithType:*MEMORY[0x277CFE608]];

      LOBYTE(service) = [v6 supportsNotificationContext];
      v7 = *MEMORY[0x277D85DE8];
      return service;
    }

    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldIgnoreCacheValueForRead
{
  type = [(HMDCharacteristic *)self type];
  if ([type isEqualToString:@"00000143-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"00000144-0000-1000-8000-0026BB765291") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"0000024B-0000-1000-8000-0026BB765291"))
  {
    v4 = 1;
  }

  else
  {
    currentTargetStateCharacteristicTypeMap = [objc_opt_class() currentTargetStateCharacteristicTypeMap];
    v7 = [currentTargetStateCharacteristicTypeMap objectForKey:type];

    if (v7)
    {
      service = [(HMDCharacteristic *)self service];
      v9 = [service findCharacteristicWithType:v7];

      if (v9 && ([v9 lastKnownValue], v10 = objc_claimAutoreleasedReturnValue(), -[HMDCharacteristic value](self, "value"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, (v12 & 1) == 0))
      {
        date = [MEMORY[0x277CBEAA8] date];
        lastKnownValueUpdateTime = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
        [date timeIntervalSinceDate:lastKnownValueUpdateTime];
        v16 = v15;

        if (v16 <= 0xF)
        {
          v4 = 0;
        }

        else
        {
          v4 = -1;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

- (BOOL)deregisterNotificationForClientIdentifier:(id)identifier
{
  [(HMDCharacteristic *)self setNotificationEnabled:0 forClientIdentifier:identifier];
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v5 = [notificationRegistrations count] == 0;

  return v5;
}

- (BOOL)setNotificationEnabled:(BOOL)enabled forClientIdentifier:(id)identifier changeThreshold:(id)threshold removeLast:(BOOL)last
{
  enabledCopy = enabled;
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  thresholdCopy = threshold;
  if (identifierCopy)
  {
    v12 = [[HMDCharacteristicThresholdRegistration alloc] initWithClientID:identifierCopy updateThreshold:thresholdCopy];
    os_unfair_lock_lock_with_options();
    if (enabledCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        [thresholdCopy floatValue];
        *buf = 138543874;
        v35 = v16;
        v36 = 2112;
        v37 = identifierCopy;
        v38 = 2048;
        v39 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Adding notification registration for client identifier: %@ threshold : %f", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      notificationRegistrations = selfCopy->_notificationRegistrations;
      if (!notificationRegistrations)
      {
        v19 = [MEMORY[0x277CBEB58] setWithCapacity:1];
        v20 = selfCopy->_notificationRegistrations;
        selfCopy->_notificationRegistrations = v19;

        notificationRegistrations = selfCopy->_notificationRegistrations;
      }

      [(NSMutableSet *)notificationRegistrations addObject:v12];
      v21 = 0;
      goto LABEL_22;
    }

    v22 = self->_notificationRegistrations;
    if (v22 && [(NSMutableSet *)v22 count]== 1)
    {
      v23 = [(NSMutableSet *)self->_notificationRegistrations containsObject:v12];
      v21 = v23;
      if (!last && v23 == 1)
      {
LABEL_22:
        os_unfair_lock_unlock(&self->_lock);

        goto LABEL_23;
      }
    }

    else
    {
      v21 = 0;
    }

    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v27;
      v36 = 2112;
      v37 = identifierCopy;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Removing notification registration for client identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = self->_notificationRegistrations;
    if (!v28)
    {
      goto LABEL_21;
    }

    [(NSMutableSet *)v28 removeObject:v12];
    if (![(NSMutableSet *)self->_notificationRegistrations count])
    {
      v29 = self->_notificationRegistrations;
      self->_notificationRegistrations = 0;
    }

    if (!self->_notificationRegistrations)
    {
LABEL_21:
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      notificationEnabledTime = selfCopy2->_notificationEnabledTime;
      selfCopy2->_notificationEnabledTime = distantFuture;
    }

    goto LABEL_22;
  }

  v21 = 0;
LABEL_23:

  v32 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NSNumber)changeThresholdForNonHomeClientEnabledNotifications
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [notificationRegistrations countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(notificationRegistrations);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        clientID = [v8 clientID];
        v10 = [clientID isEqual:@"com.apple.HomeKitDaemon.homeNotifications"];

        if ((v10 & 1) == 0)
        {
          updateThreshold = [v8 updateThreshold];

          if (!updateThreshold)
          {

            goto LABEL_16;
          }

          updateThreshold2 = [v8 updateThreshold];
          v13 = updateThreshold2;
          if (v5)
          {
            v14 = [v5 compare:updateThreshold2];

            if (v14 == 1)
            {
              updateThreshold3 = [v8 updateThreshold];

              v5 = updateThreshold3;
            }
          }

          else
          {
            v5 = updateThreshold2;
          }
        }
      }

      v4 = [notificationRegistrations countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_16:
    v5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSNumber)changeThresholdForEnabledNotifications
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [notificationRegistrations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(notificationRegistrations);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        updateThreshold = [v8 updateThreshold];

        if (!updateThreshold)
        {

          goto LABEL_15;
        }

        updateThreshold2 = [v8 updateThreshold];
        v11 = updateThreshold2;
        if (v5)
        {
          v12 = [v5 compare:updateThreshold2];

          if (v12 == 1)
          {
            updateThreshold3 = [v8 updateThreshold];

            v5 = updateThreshold3;
          }
        }

        else
        {
          v5 = updateThreshold2;
        }
      }

      v4 = [notificationRegistrations countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_15:
    v5 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setNotificationEnabledTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  if (-[NSDate isEqualToDate:](self->_notificationEnabledTime, "isEqualToDate:", distantFuture) || [timeCopy isEqualToDate:distantFuture])
  {
    objc_storeStrong(&self->_notificationEnabledTime, time);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)notificationEnabledTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationEnabledTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isNotificationEnabledForClientIdentifierPrefix:(id)prefix
{
  prefixCopy = prefix;
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HMDCharacteristic_isNotificationEnabledForClientIdentifierPrefix___block_invoke;
  v9[3] = &unk_279728AC8;
  v10 = prefixCopy;
  v6 = prefixCopy;
  v7 = [notificationRegistrations na_any:v9];

  return v7;
}

uint64_t __68__HMDCharacteristic_isNotificationEnabledForClientIdentifierPrefix___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientID];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

- (id)clientIdentifiersWithNotificationsEnabled
{
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [notificationRegistrations na_map:&__block_literal_global_123];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)localClientIdentifiersWithNotificationsEnabled
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v5 = [v3 initWithCapacity:{objc_msgSend(notificationRegistrations, "count")}];

  notificationRegistrations2 = [(HMDCharacteristic *)self notificationRegistrations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HMDCharacteristic_localClientIdentifiersWithNotificationsEnabled__block_invoke;
  v9[3] = &unk_279728AF0;
  v7 = v5;
  v10 = v7;
  [notificationRegistrations2 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  return v7;
}

void __67__HMDCharacteristic_localClientIdentifiersWithNotificationsEnabled__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 clientID];
  v4 = [v3 hasPrefix:@"com.apple.HomeKitDaemon.Local"];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 clientID];
    [v5 addObject:v6];
  }
}

- (BOOL)isNotificationEnabledForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__HMDCharacteristic_isNotificationEnabledForClientIdentifier___block_invoke;
    v8[3] = &unk_279728AC8;
    v9 = identifierCopy;
    v6 = [notificationRegistrations na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __62__HMDCharacteristic_isNotificationEnabledForClientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clientID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)isNonClientNotificationEnabled
{
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [notificationRegistrations na_any:&__block_literal_global_118_77171];

  return v3;
}

uint64_t __51__HMDCharacteristic_isNonClientNotificationEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientID];
  v3 = [v2 hasPrefix:@"com.apple.HomeKit.client."];

  return v3 ^ 1u;
}

- (BOOL)isNonHomeNotificationsEnabled
{
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [notificationRegistrations na_any:&__block_literal_global_116_77173];

  return v3;
}

uint64_t __50__HMDCharacteristic_isNonHomeNotificationsEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 clientID];
  if ([v3 hasPrefix:@"com.apple.HomeKitDaemon"])
  {
    v4 = [v2 clientID];
    v5 = [v4 isEqual:@"com.apple.HomeKitDaemon.homeNotifications"] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isClientNotificationEnabled
{
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [notificationRegistrations na_any:&__block_literal_global_114_77175];

  return v3;
}

uint64_t __48__HMDCharacteristic_isClientNotificationEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientID];
  v3 = [v2 hasPrefix:@"com.apple.HomeKit.client."];

  return v3;
}

- (BOOL)isNotificationEnabled
{
  notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [notificationRegistrations count] != 0;

  return v3;
}

- (id)validateValue:(id)value outValue:(id *)outValue
{
  valueCopy = value;
  if (isAllowedCharType())
  {
    hapCharacteristicTuples = [(HMDCharacteristic *)self hapCharacteristicTuples];
    anyObject = [hapCharacteristicTuples anyObject];

    if (anyObject)
    {
      hapCharacteristic = [anyObject hapCharacteristic];
      v10 = [hapCharacteristic validateValue:valueCopy outValue:outValue];

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:43];
  }

  return v11;
}

- (id)validateValueForNotify:(id)notify outValue:(id *)value
{
  notifyCopy = notify;
  if (([(HMDCharacteristic *)self characteristicProperties]& 1) != 0)
  {
    [(HMDCharacteristic *)self validateValue:notifyCopy outValue:value];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:7];
  }
  v7 = ;

  return v7;
}

- (id)validateValueForWrite:(id)write outValue:(id *)value
{
  writeCopy = write;
  if (([(HMDCharacteristic *)self characteristicProperties]& 4) != 0)
  {
    [(HMDCharacteristic *)self validateValue:writeCopy outValue:value];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:5];
  }
  v7 = ;

  return v7;
}

- (void)setAuthorizationData:(id)data
{
  v4 = [data copy];
  authorizationData = self->_authorizationData;
  self->_authorizationData = v4;

  MEMORY[0x2821F96F8](v4, authorizationData);
}

- (void)setStateNumber:(id)number
{
  numberCopy = number;
  v6 = numberCopy;
  if (numberCopy)
  {
    v7 = numberCopy;
    numberCopy = [(HMDCharacteristic *)self properties];
    v6 = v7;
    if (numberCopy)
    {
      os_unfair_lock_lock_with_options();
      objc_storeStrong(&self->_stateNumber, number);
      os_unfair_lock_unlock(&self->_lock);
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](numberCopy, v6);
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)shouldUpdateValueFromHAPCharacteristic:(id)characteristic
{
  v30 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  os_unfair_lock_lock_with_options();
  v5 = self->_lastKnownValue;
  v6 = self->_lastKnownValueUpdateTime;
  os_unfair_lock_unlock(&self->_lock);
  v7 = +[HMDHAPMetadata getSharedInstance];
  value = [characteristicCopy value];
  v9 = [HMDCharacteristic value:value differentThan:v5];

  valueUpdatedTime = [characteristicCopy valueUpdatedTime];
  v11 = [(NSDate *)v6 compare:valueUpdatedTime];

  if (v11 == -1)
  {
    if (v9)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v19;
        v20 = "%{public}@Declaring the value as different because update time is earlier than hap update time";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v16);
      v22 = 1;
      goto LABEL_14;
    }

    type = [(HMDCharacteristic *)self type];
    v24 = [v7 shouldNotCacheCharacteristicOfType:type];

    if (v24)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v19;
        v20 = "%{public}@Declaring the value as different because characteristic generates notification on configuration";
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  type2 = [(HMDCharacteristic *)self type];
  service = [(HMDCharacteristic *)self service];
  type3 = [service type];
  v15 = [v7 generateNotificationOnConfigurationForCharacteristicType:type2 serviceType:type3];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v19;
      v20 = "%{public}@Declaring the value as different because Characteristic does not support caching";
LABEL_12:
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, v20, &v28, 0xCu);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v22 = 0;
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)updateLastKnownValue
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_hapCharacteristicTuples;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        lastKnownValueUpdateTime = self->_lastKnownValueUpdateTime;
        hapCharacteristic = [v7 hapCharacteristic];
        valueUpdatedTime = [hapCharacteristic valueUpdatedTime];
        LODWORD(lastKnownValueUpdateTime) = [(NSDate *)lastKnownValueUpdateTime compare:valueUpdatedTime]== NSOrderedAscending;

        if (lastKnownValueUpdateTime)
        {
          objc_storeStrong(&self->_previousValue, self->_lastKnownValue);
          hapCharacteristic2 = [v7 hapCharacteristic];
          value = [hapCharacteristic2 value];
          lastKnownValue = self->_lastKnownValue;
          self->_lastKnownValue = value;

          hapCharacteristic3 = [v7 hapCharacteristic];
          valueUpdatedTime2 = [hapCharacteristic3 valueUpdatedTime];
          v16 = self->_lastKnownValueUpdateTime;
          self->_lastKnownValueUpdateTime = valueUpdatedTime2;

          hapCharacteristic4 = [v7 hapCharacteristic];
          notificationContext = [hapCharacteristic4 notificationContext];
          notificationContext = self->_notificationContext;
          self->_notificationContext = notificationContext;
        }
      }

      v4 = [(NSSet *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)getLastKnownValueUpdateTime:(id *)time stateNumber:(id *)number notificationContext:(id *)context
{
  os_unfair_lock_lock_with_options();
  if (time)
  {
    *time = self->_lastKnownValueUpdateTime;
  }

  if (number)
  {
    *number = self->_stateNumber;
  }

  if (context)
  {
    *context = self->_notificationContext;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateValue:(id)value updatedTime:(id)time stateNumber:(id)number notificationContext:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  obj = value;
  valueCopy = value;
  timeCopy = time;
  numberCopy = number;
  numberCopy2 = number;
  contextCopy = context;
  contextCopy2 = context;
  os_unfair_lock_lock_with_options();
  v43 = numberCopy2;
  v14 = [(NSNumber *)self->_stateNumber isEqual:numberCopy2]^ 1;
  if (!timeCopy)
  {
    LOBYTE(v14) = 1;
  }

  v15 = (v14 & 1) == 0 && [(NSDate *)self->_lastKnownValueUpdateTime compare:timeCopy, numberCopy, contextCopy, obj]== NSOrderedDescending;
  if (v43)
  {
    stateNumber = self->_stateNumber;
    v17 = HAPCompareStateNumberWithRollover() == 1 || v15;
    if (v17 == 1)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        obja = v18;
        v21 = HMFGetLogIdentifier();
        lastKnownValue = selfCopy->_lastKnownValue;
        v42 = self->_stateNumber;
        lastKnownValueUpdateTime = selfCopy->_lastKnownValueUpdateTime;
        WeakRetained = objc_loadWeakRetained(&selfCopy->_service);
        accessory = [WeakRetained accessory];
        identifier = [accessory identifier];
        *buf = 138545154;
        v50 = v21;
        v51 = 2112;
        v52 = valueCopy;
        v53 = 2112;
        v54 = v43;
        v55 = 2112;
        v56 = timeCopy;
        v57 = 2112;
        v58 = lastKnownValue;
        v59 = 2112;
        v60 = v42;
        v61 = 2112;
        v62 = lastKnownValueUpdateTime;
        v63 = 2112;
        v64 = identifier;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring stale characteristic update value: %@, state number: %@, updated time: %@ Current value: %@ state number: %@, updated time: %@, accessory: %@", buf, 0x52u);

        v18 = obja;
      }

      objc_autoreleasePoolPop(v18);
      goto LABEL_34;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = self->_hapCharacteristicTuples;
  v26 = [(NSSet *)v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v26)
  {
    v27 = *v45;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v44 + 1) + 8 * i);
        hapCharacteristic = [v29 hapCharacteristic];
        [hapCharacteristic setValue:valueCopy];

        hapCharacteristic2 = [v29 hapCharacteristic];
        [hapCharacteristic2 setNotificationContext:contextCopy2];
      }

      v26 = [(NSSet *)v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v26);
  }

  if (timeCopy && -[NSDate compare:](self->_lastKnownValueUpdateTime, "compare:", timeCopy) == NSOrderedSame && [self->_lastKnownValue isEqual:valueCopy])
  {
    objc_storeStrong(&self->_lastKnownValue, obj);
  }

  else
  {
    objc_storeStrong(&self->_previousValue, self->_lastKnownValue);
    objc_storeStrong(&self->_lastKnownValue, obj);
    if (!timeCopy)
    {
      if (valueCopy)
      {
        [MEMORY[0x277CBEAA8] date];
      }

      else
      {
        [MEMORY[0x277CBEAA8] distantPast];
      }
      v34 = ;
      objc_storeStrong(&self->_lastKnownValueUpdateTime, v34);
      v33 = v34;
      goto LABEL_31;
    }
  }

  v32 = timeCopy;
  v33 = self->_lastKnownValueUpdateTime;
  self->_lastKnownValueUpdateTime = v32;
LABEL_31:

  if (v43)
  {
    objc_storeStrong(&self->_stateNumber, numberCopy);
  }

  objc_storeStrong(&self->_notificationContext, contextCopy);
LABEL_34:
  os_unfair_lock_unlock(&self->_lock);

  v35 = *MEMORY[0x277D85DE8];
}

- (id)value
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = self->_hapCharacteristicTuples;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v5)
  {

LABEL_15:
    v22 = self->_lastKnownValue;
    goto LABEL_16;
  }

  v6 = 0;
  v7 = *v26;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v4);
      }

      hapCharacteristic = [*(*(&v25 + 1) + 8 * i) hapCharacteristic];
      valueUpdatedTime = [hapCharacteristic valueUpdatedTime];
      v11 = [distantPast compare:valueUpdatedTime] == -1;

      if (v11)
      {
        v12 = hapCharacteristic;

        valueUpdatedTime2 = [v12 valueUpdatedTime];

        distantPast = valueUpdatedTime2;
        v6 = v12;
      }
    }

    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v5);

  if (!v6)
  {
    goto LABEL_15;
  }

  lastKnownValue = self->_lastKnownValue;
  value = [v6 value];
  v16 = [HMDCharacteristic value:lastKnownValue differentThan:value];

  if (v16)
  {
    objc_storeStrong(&self->_previousValue, self->_lastKnownValue);
  }

  value2 = [v6 value];
  v18 = self->_lastKnownValue;
  self->_lastKnownValue = value2;

  objc_storeStrong(&self->_lastKnownValueUpdateTime, distantPast);
  notificationContext = [v6 notificationContext];
  notificationContext = self->_notificationContext;
  self->_notificationContext = notificationContext;

  value3 = [v6 value];
  v22 = [value3 copy];

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)fixedValueFromAccessoryIncludeSerialNumber:(BOOL)number
{
  numberCopy = number;
  service = [(HMDCharacteristic *)self service];
  accessory = [service accessory];

  characteristicType = [(HMDCharacteristic *)self characteristicType];
  v8 = characteristicType;
  if (numberCopy && [characteristicType isEqualToString:*MEMORY[0x277CCFA58]])
  {
    serialNumber = [accessory serialNumber];
LABEL_10:
    v10 = serialNumber;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:*MEMORY[0x277CCF8B8]])
  {
    serialNumber = [accessory firmwareVersion];
    goto LABEL_10;
  }

  if ([v8 isEqualToString:*MEMORY[0x277CCF968]])
  {
    serialNumber = [accessory manufacturer];
    goto LABEL_10;
  }

  if ([v8 isEqualToString:*MEMORY[0x277CCF970]])
  {
    serialNumber = [accessory model];
    goto LABEL_10;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)characteristicForHAPAccessory:(id)accessory
{
  accessoryCopy = accessory;
  server = [accessoryCopy server];
  identifier = [server identifier];
  linkType = [accessoryCopy linkType];

  v8 = [(HMDCharacteristic *)self hapCharacteristicTupleWithIdentifier:identifier linkType:linkType];

  hapCharacteristic = [v8 hapCharacteristic];

  return hapCharacteristic;
}

- (NSNumber)instanceID
{
  characteristicInstanceID = [(HMDCharacteristic *)self characteristicInstanceID];
  v3 = [characteristicInstanceID copy];

  return v3;
}

- (NSString)type
{
  characteristicType = [(HMDCharacteristic *)self characteristicType];
  v3 = [characteristicType copy];

  return v3;
}

- (void)unconfigureForServerIdentifier:(id)identifier linkType:(int64_t)type
{
  v5 = [(HMDCharacteristic *)self hapCharacteristicTupleWithIdentifier:identifier linkType:type];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB58];
    v10 = v5;
    hapCharacteristicTuples = [(HMDCharacteristic *)self hapCharacteristicTuples];
    v8 = [v6 setWithSet:hapCharacteristicTuples];

    [v8 removeObject:v10];
    v9 = [MEMORY[0x277CBEB98] setWithSet:v8];
    [(HMDCharacteristic *)self setHapCharacteristicTuples:v9];

    v5 = v10;
  }
}

- (void)unconfigure
{
  hapCharacteristicTuples = [(HMDCharacteristic *)self hapCharacteristicTuples];
  anyObject = [hapCharacteristicTuples anyObject];

  if (anyObject)
  {
    v4 = MEMORY[0x277CBEB58];
    hapCharacteristicTuples2 = [(HMDCharacteristic *)self hapCharacteristicTuples];
    v6 = [v4 setWithSet:hapCharacteristicTuples2];

    [v6 removeObject:anyObject];
    v7 = [MEMORY[0x277CBEB98] setWithSet:v6];
    [(HMDCharacteristic *)self setHapCharacteristicTuples:v7];
  }
}

- (void)configureWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  accessory = [service accessory];

  value = [characteristicCopy value];

  if (value)
  {
    lastKnownValue = [(HMDCharacteristic *)self lastKnownValue];
    [(HMDCharacteristic *)self setPreviousValue:lastKnownValue];

    value2 = [characteristicCopy value];
    [(HMDCharacteristic *)self setLastKnownValue:value2];

    valueUpdatedTime = [characteristicCopy valueUpdatedTime];
    [(HMDCharacteristic *)self setLastKnownValueUpdateTime:valueUpdatedTime];

    notificationContext = [characteristicCopy notificationContext];
    [(HMDCharacteristic *)self setNotificationContext:notificationContext];
  }

  linkType = [accessory linkType];
  if (linkType == 1)
  {
    stateNumber = self->_stateNumber;
    self->_stateNumber = 0;
  }

  server = [accessory server];
  identifier = [server identifier];

  v15 = [(HMDCharacteristic *)self hapCharacteristicTupleWithIdentifier:identifier linkType:linkType];
  v16 = MEMORY[0x277CBEB58];
  hapCharacteristicTuples = [(HMDCharacteristic *)self hapCharacteristicTuples];
  v18 = [v16 setWithSet:hapCharacteristicTuples];

  if (v15)
  {
    [v18 removeObject:v15];
  }

  v19 = [[HAPCharacteristicTuple alloc] initWithHAPCharacteristic:characteristicCopy serverIdentifier:identifier linkType:linkType];
  [v18 addObject:v19];
  v20 = [MEMORY[0x277CBEB98] setWithSet:v18];
  [(HMDCharacteristic *)self setHapCharacteristicTuples:v20];
}

- (id)_characteristicDictionaryWithAuthData:(BOOL)data
{
  dataCopy = data;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  [v5 setObject:self->_characteristicInstanceID forKeyedSubscript:*MEMORY[0x277CD2138]];
  [v5 setObject:self->_characteristicType forKeyedSubscript:*MEMORY[0x277CD21A8]];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_characteristicProperties];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2190]];

  metadata = [(HMDCharacteristic *)self metadata];
  dictionaryRepresentation = [metadata dictionaryRepresentation];
  [v5 setObject:dictionaryRepresentation forKeyedSubscript:*MEMORY[0x277CD2148]];

  if (dataCopy)
  {
    authorizationData = self->_authorizationData;
  }

  else
  {
    authorizationData = 0;
  }

  [v5 setObject:authorizationData forKeyedSubscript:*MEMORY[0x277CD2100]];

  return v5;
}

- (BOOL)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD2138]];
  v6 = v5;
  if (v5 && ([v5 isEqual:self->_characteristicInstanceID] & 1) == 0)
  {
    objc_storeStrong(&self->_characteristicInstanceID, v6);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD21A8]];
  v9 = v8;
  if (v8 && ([v8 isEqual:self->_characteristicType] & 1) == 0)
  {
    v10 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v9];
    characteristicType = self->_characteristicType;
    self->_characteristicType = v10;

    v7 = 1;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD2190]];
  integerValue = [v12 integerValue];

  characteristicProperties = self->_characteristicProperties;
  accessory = [(HMDCharacteristic *)self accessory];
  v16 = [accessory findServiceWithServiceType:@"00000701-0000-1000-8000-0026BB765291"];
  v17 = characteristicProperties & 0x100 | integerValue;

  if (v16)
  {
    v17 |= self->_characteristicProperties & 0x80;
  }

  if (v17 && v17 != self->_characteristicProperties)
  {
    self->_characteristicProperties = v17;
    v7 = 1;
  }

  v18 = [dictionaryCopy hmf_dictionaryForKey:*MEMORY[0x277CD2148]];
  if (v18)
  {
    v19 = [HMDCharacteristicMetadata characteristicMetadataWithDictionary:v18];
    if (v19 && ![(HMDCharacteristicMetadata *)self->_metadata isEqual:v19])
    {
      v20 = [HMFObjectCacheHMDCharacteristicMetadata cachedInstanceForCharacteristicMetadata:v19];
      metadata = self->_metadata;
      self->_metadata = v20;

      v7 = 1;
    }
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD2100]];
  v23 = v22;
  if (v22 && ([v22 isEqual:self->_authorizationData] & 1) == 0)
  {
    objc_storeStrong(&self->_authorizationData, v23);
    home = [accessory home];
    [home setWatchSkipVersionCheck:1];

    v7 = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (id)hapCharacteristicTupleWithIdentifier:(id)identifier linkType:(int64_t)type
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  hapCharacteristicTuples = [(HMDCharacteristic *)self hapCharacteristicTuples];
  v8 = [hapCharacteristicTuples countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(hapCharacteristicTuples);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 linkType] == type)
        {
          serverIdentifier = [v12 serverIdentifier];
          v14 = [identifierCopy isEqualToString:serverIdentifier];

          if (v14)
          {
            v15 = v12;
            goto LABEL_12;
          }
        }
      }

      v9 = [hapCharacteristicTuples countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSString)serializedIdentifier
{
  service = [(HMDCharacteristic *)self service];
  accessory = [service accessory];
  v5 = MEMORY[0x277CCACA8];
  serializedIdentifier = [accessory serializedIdentifier];
  instanceID = [service instanceID];
  instanceID2 = [(HMDCharacteristic *)self instanceID];
  v9 = [v5 stringWithFormat:@"%@/%@/%@", serializedIdentifier, instanceID, instanceID2];

  return v9;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  string = [MEMORY[0x277CCAB68] string];
  characteristicProperties = [(HMDCharacteristic *)self characteristicProperties];
  v8 = characteristicProperties;
  if ((characteristicProperties & 6) == 6)
  {
    v9 = @"RW";
LABEL_7:
    [string appendString:v9];
    goto LABEL_8;
  }

  if ((characteristicProperties & 2) != 0)
  {
    v9 = @"RO";
  }

  else
  {
    v9 = @"WO";
  }

  if ((characteristicProperties & 6) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v8 & 0x40) != 0)
  {
    [string appendString:@"H"];
    if ((v8 & 1) == 0)
    {
LABEL_10:
      if ((v8 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  [string appendString:@"+E"];
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  [string appendString:@"+B"];
  if ((v8 & 0x100) != 0)
  {
LABEL_12:
    [string appendString:@"+NC"];
  }

LABEL_13:
  v10 = +[HMDHAPMetadata getSharedInstance];
  type = [(HMDCharacteristic *)self type];
  service = [(HMDCharacteristic *)self service];
  type2 = [service type];
  v37 = v10;
  LODWORD(v10) = [v10 requiresDeviceUnlock:type forService:type2];

  if (v10)
  {
    [string appendString:@"+L"];
  }

  string2 = [MEMORY[0x277CCAB68] string];
  if ([(HMDCharacteristic *)self isNotificationEnabled])
  {
    notificationEnabledTime = [(HMDCharacteristic *)self notificationEnabledTime];
    hmf_localTimeDescription = [notificationEnabledTime hmf_localTimeDescription];
    [string2 appendFormat:@"YES(%@)", hmf_localTimeDescription];

    if ([(HMDCharacteristic *)self notificationRegisteredWithRemoteGateway])
    {
      [string2 appendFormat:@"+RGW"];
    }

    if ([(HMDCharacteristic *)self broadcastNotificationEnabled])
    {
      [string2 appendFormat:@"+B"];
    }

    notificationRegistrations = [(HMDCharacteristic *)self notificationRegistrations];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__HMDCharacteristic_dumpStateWithPrivacyLevel___block_invoke;
    v38[3] = &unk_279728A80;
    v39 = string2;
    [notificationRegistrations na_each:v38];
  }

  else
  {
    [string2 appendString:@"NO"];
  }

  value = [(HMDCharacteristic *)self value];

  v19 = 0x277CCA000uLL;
  if (value)
  {
    v20 = MEMORY[0x277CCACA8];
    value2 = [(HMDCharacteristic *)self value];
    lastKnownValueUpdateTime = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
    [lastKnownValueUpdateTime hmf_localTimeDescription];
    v36 = v8;
    v23 = string2;
    levelCopy = level;
    v25 = string;
    v27 = v26 = v5;
    previousValue = [(HMDCharacteristic *)self previousValue];
    v29 = [v20 stringWithFormat:@"%@(%@), previousValue: %@", value2, v27, previousValue];

    v5 = v26;
    string = v25;
    level = levelCopy;
    string2 = v23;
    v8 = v36;

    v19 = 0x277CCA000;
  }

  else
  {
    v29 = @"<nil>";
  }

  v30 = *(v19 + 3240);
  shortDescription = [(HMDCharacteristic *)self shortDescription];
  v32 = [v30 stringWithFormat:@"%@, properties: %@ (0x%tx), value: %@, notification: %@", shortDescription, string, v8, v29, string2];
  [v5 setObject:v32 forKeyedSubscript:*MEMORY[0x277D0F170]];

  metadata = [(HMDCharacteristic *)self metadata];
  v34 = [metadata dumpStateWithPrivacyLevel:level];
  [v5 setObject:v34 forKeyedSubscript:*MEMORY[0x277D0F100]];

  return v5;
}

void __47__HMDCharacteristic_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientID];
  [v2 appendFormat:@"\n\t%@", v3];
}

- (NSUUID)spiClientIdentifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  service = [(HMDCharacteristic *)self service];
  spiClientIdentifier = [service spiClientIdentifier];
  v5 = MEMORY[0x277CCACA8];
  instanceID = [(HMDCharacteristic *)self instanceID];
  v7 = [v5 stringWithFormat:@"%@", instanceID];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = spiClientIdentifierForUUIDAndSalts(spiClientIdentifier, v8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)characteristicTypeDescription
{
  characteristicType = [(HMDCharacteristic *)self characteristicType];
  v3 = localizationKeyForCharacteristicType();
  v4 = HMDLocalizedStringForKey(v3);

  return v4;
}

- (NSSet)notificationRegistrations
{
  os_unfair_lock_lock_with_options();
  notificationRegistrations = self->_notificationRegistrations;
  if (notificationRegistrations)
  {
    v4 = [(NSMutableSet *)notificationRegistrations copy];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  characteristicType = [(HMDCharacteristic *)self characteristicType];
  v5 = HAPShortUUIDType();
  service = [(HMDCharacteristic *)self service];
  instanceID = [service instanceID];
  instanceID2 = [(HMDCharacteristic *)self instanceID];
  v9 = [v3 stringWithFormat:@"Type: %@, sid: %@, iid: %@", v5, instanceID, instanceID2];

  return v9;
}

- (void)setNotificationContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_lock_with_options();
  notificationContext = self->_notificationContext;
  self->_notificationContext = contextCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)notificationContext
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastKnownValueUpdateTime:(id)time
{
  timeCopy = time;
  os_unfair_lock_lock_with_options();
  lastKnownValueUpdateTime = self->_lastKnownValueUpdateTime;
  self->_lastKnownValueUpdateTime = timeCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastKnownValueUpdateTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastKnownValueUpdateTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastKnownValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  lastKnownValue = self->_lastKnownValue;
  self->_lastKnownValue = valueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)lastKnownValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastKnownValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDCharacteristicMetadata)metadata
{
  os_unfair_lock_lock_with_options();
  v3 = self->_metadata;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPreviousValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  previousValue = self->_previousValue;
  self->_previousValue = valueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)previousValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_previousValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHapCharacteristicTuples:(id)tuples
{
  tuplesCopy = tuples;
  os_unfair_lock_lock_with_options();
  hapCharacteristicTuples = self->_hapCharacteristicTuples;
  self->_hapCharacteristicTuples = tuplesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSSet)hapCharacteristicTuples
{
  os_unfair_lock_lock_with_options();
  v3 = self->_hapCharacteristicTuples;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)notificationRegisteredWithRemoteGateway
{
  os_unfair_lock_lock_with_options();
  notificationRegisteredWithRemoteGateway = self->_notificationRegisteredWithRemoteGateway;
  os_unfair_lock_unlock(&self->_lock);
  return notificationRegisteredWithRemoteGateway;
}

- (void)setNotificationRegisteredWithRemoteGateway:(BOOL)gateway
{
  gatewayCopy = gateway;
  os_unfair_lock_lock_with_options();
  if (self->_notificationRegisteredWithRemoteGateway != gatewayCopy)
  {
    self->_notificationRegisteredWithRemoteGateway = gatewayCopy;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  accessory = [WeakRetained accessory];

  return accessory;
}

- (HMDCharacteristic)initWithCharacteristic:(id)characteristic service:(id)service
{
  characteristicCopy = characteristic;
  serviceCopy = service;
  v8 = [(HMDCharacteristic *)self init];
  if (v8)
  {
    v9 = [characteristicCopy objectForKeyedSubscript:*MEMORY[0x277CD2118]];
    if ([v9 properties])
    {
      stateNumber = [v9 stateNumber];
      stateNumber = v8->_stateNumber;
      v8->_stateNumber = stateNumber;
    }

    objc_storeWeak(&v8->_service, serviceCopy);
    [(HMDCharacteristic *)v8 updateWithDictionary:characteristicCopy];
  }

  return v8;
}

- (HMDCharacteristic)init
{
  v11.receiver = self;
  v11.super_class = HMDCharacteristic;
  v2 = [(HMDCharacteristic *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    hapCharacteristicTuples = v2->_hapCharacteristicTuples;
    v2->_hapCharacteristicTuples = v3;

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    notificationEnabledTime = v2->_notificationEnabledTime;
    v2->_notificationEnabledTime = distantFuture;

    notificationRegistrations = v2->_notificationRegistrations;
    v2->_notificationRegistrations = 0;

    v2->_notificationRegisteredWithRemoteGateway = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastKnownValueUpdateTime = v2->_lastKnownValueUpdateTime;
    v2->_lastKnownValueUpdateTime = distantPast;
  }

  return v2;
}

+ (id)currentTargetStateCharacteristicTypeMap
{
  if (currentTargetStateCharacteristicTypeMap_onceToken != -1)
  {
    dispatch_once(&currentTargetStateCharacteristicTypeMap_onceToken, &__block_literal_global_169_77250);
  }

  v3 = currentTargetStateCharacteristicTypeMap_characteristicsMap;

  return v3;
}

void __60__HMDCharacteristic_currentTargetStateCharacteristicTypeMap__block_invoke()
{
  v16[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCFB68];
  v1 = *MEMORY[0x277CCF818];
  v15[0] = *MEMORY[0x277CCF868];
  v15[1] = v1;
  v2 = *MEMORY[0x277CCFB20];
  v16[0] = v0;
  v16[1] = v2;
  v3 = *MEMORY[0x277CCFB58];
  v4 = *MEMORY[0x277CCF800];
  v15[2] = *MEMORY[0x277CCF850];
  v15[3] = v4;
  v5 = *MEMORY[0x277CCFB08];
  v16[2] = v3;
  v16[3] = v5;
  v6 = *MEMORY[0x277CCFB40];
  v7 = *MEMORY[0x277CCF820];
  v15[4] = *MEMORY[0x277CCF838];
  v15[5] = v7;
  v8 = *MEMORY[0x277CCFB28];
  v16[4] = v6;
  v16[5] = v8;
  v9 = *MEMORY[0x277CCFB50];
  v10 = *MEMORY[0x277CCF858];
  v15[6] = *MEMORY[0x277CCF848];
  v15[7] = v10;
  v11 = *MEMORY[0x277CCFB60];
  v16[6] = v9;
  v16[7] = v11;
  v15[8] = *MEMORY[0x277CCF878];
  v16[8] = *MEMORY[0x277CCFB78];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];
  v13 = currentTargetStateCharacteristicTypeMap_characteristicsMap;
  currentTargetStateCharacteristicTypeMap_characteristicsMap = v12;

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t43_77253 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43_77253, &__block_literal_global_136);
  }

  v3 = logCategory__hmf_once_v44_77254;

  return v3;
}

uint64_t __32__HMDCharacteristic_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v44_77254;
  logCategory__hmf_once_v44_77254 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

uint64_t __62__HMDCharacteristic_sortComparatorForCharacteristicDictionary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277CD2138];
  v5 = a3;
  v6 = [a2 hmf_numberForKey:v4];
  v7 = [v5 hmf_numberForKey:v4];

  if (v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7 != 0;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = [v6 compare:v7];
  }

  return v8;
}

@end