@interface HMDCharacteristic
+ (NSDictionary)currentTargetStateCharacteristicTypeMap;
+ (id)logCategory;
- (BOOL)deregisterNotificationForClientIdentifier:(id)a3;
- (BOOL)isClientNotificationEnabled;
- (BOOL)isNonBulletinNotificationEnabled;
- (BOOL)isNonClientNotificationEnabled;
- (BOOL)isNonHomeNotificationsEnabled;
- (BOOL)isNotificationEnabled;
- (BOOL)isNotificationEnabledForClientIdentifier:(id)a3;
- (BOOL)isNotificationEnabledForClientIdentifierPrefix:(id)a3;
- (BOOL)notificationRegisteredWithRemoteGateway;
- (BOOL)setNotificationEnabled:(BOOL)a3 forClientIdentifier:(id)a4 changeThreshold:(id)a5 removeLast:(BOOL)a6;
- (BOOL)shouldIgnoreCacheValueForRead;
- (BOOL)shouldUpdateValueFromHAPCharacteristic:(id)a3;
- (BOOL)supportsNotificationContext;
- (BOOL)updateWithDictionary:(id)a3;
- (HMDCharacteristic)init;
- (HMDCharacteristic)initWithCharacteristic:(id)a3 service:(id)a4;
- (HMDCharacteristic)initWithCoder:(id)a3;
- (HMDCharacteristicMetadata)metadata;
- (HMDHAPAccessory)accessory;
- (HMDService)service;
- (NSData)authorizationData;
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
- (id)_characteristicDictionaryWithAuthData:(BOOL)a3;
- (id)_initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (id)characteristicForHAPAccessory:(id)a3;
- (id)characteristicTypeDescription;
- (id)clientIdentifiersWithNotificationsEnabled;
- (id)contextDataForWriteRequestWithIdentifier:(id)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)fixedValueFromAccessoryIncludeSerialNumber:(BOOL)a3;
- (id)hapCharacteristicTupleWithIdentifier:(id)a3 linkType:(int64_t)a4;
- (id)lastKnownValue;
- (id)localClientIdentifiersWithNotificationsEnabled;
- (id)logIdentifier;
- (id)previousValue;
- (id)shortDescription;
- (id)validateValue:(id)a3 outValue:(id *)a4;
- (id)validateValueForNotify:(id)a3 outValue:(id *)a4;
- (id)validateValueForWrite:(id)a3 outValue:(id *)a4;
- (id)value;
- (int64_t)_characteristicPropertiesRelevantForCurrentUser:(int64_t)a3;
- (void)_encodeWithCoder:(id)a3;
- (void)configureWithCharacteristic:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getLastKnownValueUpdateTime:(id *)a3 stateNumber:(id *)a4 notificationContext:(id *)a5;
- (void)setHapCharacteristicTuples:(id)a3;
- (void)setLastKnownValue:(id)a3;
- (void)setLastKnownValueUpdateTime:(id)a3;
- (void)setNotificationContext:(id)a3;
- (void)setNotificationEnabledTime:(id)a3;
- (void)setNotificationRegisteredWithRemoteGateway:(BOOL)a3;
- (void)setPreviousValue:(id)a3;
- (void)setStateNumber:(id)a3;
- (void)unconfigure;
- (void)unconfigureForServerIdentifier:(id)a3 linkType:(int64_t)a4;
- (void)updateLastKnownValue;
- (void)updateValue:(id)a3 updatedTime:(id)a4 stateNumber:(id)a5 notificationContext:(id)a6;
@end

@implementation HMDCharacteristic

- (NSDictionary)bulletinContext
{
  v38[12] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCharacteristic *)self service];
  v4 = [(HMDCharacteristic *)self accessory];
  v5 = [v4 home];
  v6 = [v3 name];
  v7 = [v4 room];
  v8 = [v7 name];
  v9 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v27 = [HMDServiceNameComponents componentsWithRawServiceName:v6 rawRoomName:v8 localizedFormat:v9];

  v37[0] = @"home";
  v34 = [v5 contextID];
  v38[0] = v34;
  v37[1] = @"accessory";
  v33 = [v4 contextID];
  v38[1] = v33;
  v37[2] = @"service";
  v32 = [v3 contextID];
  v38[2] = v32;
  v37[3] = @"characteristic";
  v31 = [(HMDCharacteristic *)self contextID];
  v38[3] = v31;
  v37[4] = @"serviceType";
  v30 = [v3 type];
  v38[4] = v30;
  v37[5] = @"characteristicType";
  v29 = [(HMDCharacteristic *)self type];
  v38[5] = v29;
  v37[6] = *MEMORY[0x277CCF328];
  v28 = [v5 contextSPIUniqueIdentifier];
  v26 = [v28 UUIDString];
  v38[6] = v26;
  v37[7] = *MEMORY[0x277CCF318];
  v35 = v4;
  v25 = [v4 contextSPIUniqueIdentifier];
  v24 = [v25 UUIDString];
  v38[7] = v24;
  v37[8] = *MEMORY[0x277CCF340];
  v36 = v3;
  v10 = [v3 contextSPIUniqueIdentifier];
  v11 = [v10 UUIDString];
  v38[8] = v11;
  v37[9] = *MEMORY[0x277CCF320];
  v12 = [(HMDCharacteristic *)self contextSPIUniqueIdentifier];
  v13 = [v12 UUIDString];
  v38[9] = v13;
  v37[10] = *MEMORY[0x277CCF330];
  v14 = [v5 name];
  v38[10] = v14;
  v37[11] = *MEMORY[0x277CCF338];
  v15 = [v27 composedName];
  v38[11] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:12];
  v17 = [v16 mutableCopy];

  v18 = [(HMDCharacteristic *)self stateNumber];

  if (v18)
  {
    v19 = [(HMDCharacteristic *)self stateNumber];
    [v17 setObject:v19 forKeyedSubscript:@"stateNumber"];
  }

  v20 = [(HMDCharacteristic *)self value];
  [v17 setObject:v20 forKeyedSubscript:@"characteristicValue"];

  v21 = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
  [v17 setObject:v21 forKeyedSubscript:@"characteristicValueUpdatedTime"];

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSUUID)contextSPIUniqueIdentifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  v5 = [(HMDCharacteristic *)self service];
  v6 = [v5 contextSPIUniqueIdentifier];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(HMDCharacteristic *)self instanceID];
  v9 = [v7 stringWithFormat:@"%@", v8];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v4 hm_deriveUUIDFromBaseUUID:v6 identifierSalt:v3 withSalts:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSString)contextID
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCharacteristic *)self service];
  v5 = [v4 contextID];
  v6 = [(HMDCharacteristic *)self instanceID];
  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

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
  v31 = [(HMDCharacteristic *)self accessory];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v33 = [(HMDCharacteristic *)self type];
  v32 = HAPShortUUIDType();
  v30 = [v3 initWithName:@"Type Prefix" value:v32];
  v34[0] = v30;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v29 = [v31 uuid];
  v28 = [v29 shortDescription];
  v27 = [v4 initWithName:@"Accessory UUID" value:v28];
  v34[1] = v27;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = [(HMDCharacteristic *)self service];
  v25 = [v26 instanceID];
  v24 = [v5 initWithName:@"Service ID" value:v25];
  v34[2] = v24;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDCharacteristic *)self instanceID];
  v7 = [v6 initWithName:@"Instance ID" value:v23];
  v34[3] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDCharacteristic *)self lastKnownValue];
  v10 = [v8 initWithName:@"Last Known Value" value:v9];
  v34[4] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
  v13 = [v11 initWithName:@"Last Known Value Update Time" value:v12];
  v34[5] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDCharacteristic *)self previousValue];
  v16 = [v14 initWithName:@"Previous Value" value:v15];
  v34[6] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [(HMDCharacteristic *)self stateNumber];
  v19 = [v17 initWithName:@"State" value:v18];
  v34[7] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:8];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCharacteristic *)self accessory];
  v5 = [v4 uuid];
  v6 = [(HMDCharacteristic *)self service];
  v7 = [v6 instanceID];
  v8 = [(HMDCharacteristic *)self type];
  v9 = HAPShortUUIDType();
  v10 = [(HMDCharacteristic *)self instanceID];
  v11 = [v3 stringWithFormat:@"%@/%@/%@/%@", v5, v7, v9, v10];

  return v11;
}

- (void)_encodeWithCoder:(id)a3
{
  v45 = a3;
  v4 = [v45 hmd_isForXPCTransport];
  v5 = [v45 hmd_isForXPCTransportEntitledForSPIAccess];
  v6 = +[HMDHAPMetadata getSharedInstance];
  v7 = [(HMDCharacteristic *)self service];
  v8 = [(HMDCharacteristic *)self accessory];
  v9 = v8;
  if ([v45 hmd_isForXPCTransport])
  {
    v9 = accessoryToEncodeForXPCTransportForAccessory(v8);
  }

  [v45 encodeConditionalObject:v7 forKey:*MEMORY[0x277CD2580]];
  v10 = [(HMDCharacteristic *)self characteristicInstanceID];
  [v45 encodeObject:v10 forKey:*MEMORY[0x277CD2138]];

  v11 = [(HMDCharacteristic *)self characteristicType];
  [v45 encodeObject:v11 forKey:*MEMORY[0x277CD21A8]];

  v12 = [(HMDCharacteristic *)self characteristicProperties];
  v13 = v12;
  if (v4)
  {
    if (v5)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 0x47;
    }

    v15 = [(HMDCharacteristic *)self characteristicType];
    v16 = [v6 shouldNotCacheCharacteristicOfType:v15];

    if (v16)
    {
      v13 = v14 & 0xFFFFFFF9;
    }

    else
    {
      v13 = v14;
    }
  }

  [v45 encodeInt32:v13 forKey:*MEMORY[0x277CD2190]];
  if (([v45 hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    v17 = [(HMDCharacteristic *)self metadata];
    v18 = [v17 format];
    v19 = [v18 isEqual:@"unknown"];

    if ((v19 & 1) == 0)
    {
      v20 = [(HMDCharacteristic *)self metadata];
      [v45 encodeObject:v20 forKey:*MEMORY[0x277CD2148]];
    }

    v21 = [v45 hmd_isForLocalStore];
    v22 = [(NSData *)self->_authorizationData length];
    v23 = v22 != 0;
    if (v22 && (v21 & 1) == 0)
    {
      v23 = [v45 hmd_isForRemoteTransportOnSameAccount];
    }

    if ([v45 hmd_isHH2MigrationInProgress] && v23)
    {
      [v45 encodeObject:self->_authorizationData forKey:*MEMORY[0x277CD2100]];
    }

    if (!v21)
    {
LABEL_30:
      if (![v45 hmd_isForXPCTransport])
      {
        goto LABEL_46;
      }

      v30 = +[HMDHAPMetadata getSharedInstance];
      v31 = [(HMDCharacteristic *)self type];
      v32 = [v7 type];
      v33 = [v30 requiresDeviceUnlock:v31 forService:v32];

      v34 = [(HMDCharacteristic *)self notificationRegistrations];
      v35 = [v34 count] != 0;

      [v45 encodeBool:v35 forKey:*MEMORY[0x277CD2170]];
      if (v5)
      {
        v36 = 1;
      }

      else
      {
        v37 = [v45 hmd_message];
        v38 = [v8 vendorInfo];
        v36 = [v37 isEntitledForVendorAccessForAccessoryWithVendorInfo:v38];
      }

      v39 = [(HMDCharacteristic *)self fixedValueFromAccessoryIncludeSerialNumber:v36];
      if (v39)
      {
        [v45 encodeBool:1 forKey:*MEMORY[0x277CD2130]];
        v40 = v39;
      }

      else
      {
        v40 = [(HMDCharacteristic *)self value];
        if (!v40)
        {
LABEL_41:
          if ([v45 hmd_isForXPCTransportEntitledForSPIAccess])
          {
            if (v33)
            {
              [v45 encodeBool:1 forKey:@"HM.requiresDeviceUnlock"];
            }

            v41 = [(HMDCharacteristic *)self authorizationData];
            v42 = [v41 length] != 0;
            [v45 encodeBool:v42 forKey:*MEMORY[0x277CD2108]];

            v43 = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
            [v45 encodeObject:v43 forKey:*MEMORY[0x277CD21D8]];

            v44 = [(HMDCharacteristic *)self notificationEnabledTime];
            [v45 encodeObject:v44 forKey:*MEMORY[0x277CD2160]];
          }

          goto LABEL_46;
        }
      }

      if (isAllowedCharType() && ((isAppleTV() & v33) != 1 || [v45 hmd_isForXPCTransportEntitledForSPIAccess]))
      {
        [v45 encodeObject:v40 forKey:*MEMORY[0x277CD21B0]];
      }

      goto LABEL_41;
    }

    v24 = [(HMDCharacteristic *)self notificationRegistrations];
    v25 = [v24 na_map:&__block_literal_global_144_117329];

    if ([v25 count])
    {
      [v45 encodeObject:v25 forKey:*MEMORY[0x277CD2178]];
    }

    v26 = [(HMDCharacteristic *)self value];
    if (v13)
    {
      v27 = [(HMDCharacteristic *)self type];
      if (![v6 isStandardCharacteristicType:v27] || !v26 || !isAllowedCharType())
      {
        goto LABEL_28;
      }

      v28 = [(HMDCharacteristic *)self stateNumber];

      if (v28)
      {
        v29 = [(HMDCharacteristic *)self value];
        [v45 encodeObject:v29 forKey:*MEMORY[0x277CD21B0]];

        v27 = [(HMDCharacteristic *)self stateNumber];
        [v45 encodeObject:v27 forKey:*MEMORY[0x277CD21C8]];
LABEL_28:
      }
    }

    [v45 encodeBool:-[HMDCharacteristic broadcastNotificationEnabled](self forKey:{"broadcastNotificationEnabled"), @"characteristicBroadcastNotificationEnabled"}];

    goto LABEL_30;
  }

LABEL_46:
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(HMDCharacteristic *)self _encodeWithCoder:v5];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)a3
{
  v36[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCharacteristic *)self initWithCharacteristic:0 service:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2580]];
    objc_storeWeak(&v5->_service, v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD21A8]];
    v8 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v7];
    characteristicType = v5->_characteristicType;
    v5->_characteristicType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2138]];
    characteristicInstanceID = v5->_characteristicInstanceID;
    v5->_characteristicInstanceID = v10;

    v5->_characteristicProperties = -[HMDCharacteristic _characteristicPropertiesRelevantForCurrentUser:](v5, "_characteristicPropertiesRelevantForCurrentUser:", [v4 decodeInt32ForKey:*MEMORY[0x277CD2190]]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2148]];
    v13 = [HMFObjectCacheHMDCharacteristicMetadata cachedInstanceForCharacteristicMetadata:v12];
    metadata = v5->_metadata;
    v5->_metadata = v13;

    v15 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [v4 decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CD2178]];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 na_map:&__block_literal_global_141];
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
    if ([v4 containsValueForKey:*MEMORY[0x277CD2100]])
    {
      v25 = [v4 hmd_isHH2MigrationInProgress];
      if (v25)
      {
        v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v24];
      }

      else
      {
        v26 = 0;
      }

      objc_storeStrong(&v5->_authorizationData, v26);
      if (v25)
      {
      }
    }

    v27 = *MEMORY[0x277CD21B0];
    if ([v4 containsValueForKey:*MEMORY[0x277CD21B0]])
    {
      v28 = allowedCharValueTypes();
      v29 = [v4 decodeObjectOfClasses:v28 forKey:v27];
      lastKnownValue = v5->_lastKnownValue;
      v5->_lastKnownValue = v29;

      objc_storeStrong(&v5->_previousValue, v5->_lastKnownValue);
    }

    v31 = *MEMORY[0x277CD21C8];
    if ([v4 containsValueForKey:*MEMORY[0x277CD21C8]] && (v5->_characteristicProperties & 1) != 0)
    {
      v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v31];
      stateNumber = v5->_stateNumber;
      v5->_stateNumber = v32;
    }

    if ([v4 containsValueForKey:@"characteristicBroadcastNotificationEnabled"])
    {
      v5->_broadcastNotificationEnabled = [v4 decodeBoolForKey:@"characteristicBroadcastNotificationEnabled"];
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

- (HMDCharacteristic)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDCharacteristic *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)contextDataForWriteRequestWithIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDCharacteristic *)self supportsNotificationContext])
  {
    v5 = objc_alloc(MEMORY[0x277CFEA78]);
    v6 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:v4];
    v7 = [v5 initWithContextIdentifier:v6];

    v19 = 0;
    v8 = [v7 serializeWithError:&v19];
    v9 = v19;
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
        v27 = v4;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode context data:%@ with error:%@ identifier:%@", buf, 0x2Au);
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
        v25 = v4;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Context data:%@ for write request with identifier:%@", buf, 0x20u);
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
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Notification context is supported for characteristic:%@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    result = 1;
  }

  else
  {
    v3 = [(HMDCharacteristic *)self type];
    v4 = [v3 isEqualToString:*MEMORY[0x277CFE730]];

    if (v4)
    {
      v5 = [(HMDCharacteristic *)self service];
      v6 = [v5 findCharacteristicWithType:*MEMORY[0x277CFE608]];

      LOBYTE(v5) = [v6 supportsNotificationContext];
      v7 = *MEMORY[0x277D85DE8];
      return v5;
    }

    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldIgnoreCacheValueForRead
{
  v3 = [(HMDCharacteristic *)self type];
  if ([v3 isEqualToString:@"00000143-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"00000144-0000-1000-8000-0026BB765291") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"0000024B-0000-1000-8000-0026BB765291"))
  {
    v4 = 1;
  }

  else
  {
    v6 = [objc_opt_class() currentTargetStateCharacteristicTypeMap];
    v7 = [v6 objectForKey:v3];

    if (v7)
    {
      v8 = [(HMDCharacteristic *)self service];
      v9 = [v8 findCharacteristicWithType:v7];

      if (v9 && ([v9 lastKnownValue], v10 = objc_claimAutoreleasedReturnValue(), -[HMDCharacteristic value](self, "value"), v11 = objc_claimAutoreleasedReturnValue(), v12 = HMFEqualObjects(), v11, v10, (v12 & 1) == 0))
      {
        v13 = [MEMORY[0x277CBEAA8] date];
        v14 = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
        [v13 timeIntervalSinceDate:v14];
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

- (BOOL)deregisterNotificationForClientIdentifier:(id)a3
{
  [(HMDCharacteristic *)self setNotificationEnabled:0 forClientIdentifier:a3];
  v4 = [(HMDCharacteristic *)self notificationRegistrations];
  v5 = [v4 count] == 0;

  return v5;
}

- (BOOL)setNotificationEnabled:(BOOL)a3 forClientIdentifier:(id)a4 changeThreshold:(id)a5 removeLast:(BOOL)a6
{
  v8 = a3;
  v40 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [[HMDCharacteristicThresholdRegistration alloc] initWithClientID:v10 updateThreshold:v11];
    os_unfair_lock_lock_with_options();
    if (v8)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        [v11 floatValue];
        *buf = 138543874;
        v35 = v16;
        v36 = 2112;
        v37 = v10;
        v38 = 2048;
        v39 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Adding notification registration for client identifier: %@ threshold : %f", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      notificationRegistrations = v14->_notificationRegistrations;
      if (!notificationRegistrations)
      {
        v19 = [MEMORY[0x277CBEB58] setWithCapacity:1];
        v20 = v14->_notificationRegistrations;
        v14->_notificationRegistrations = v19;

        notificationRegistrations = v14->_notificationRegistrations;
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
      if (!a6 && v23 == 1)
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
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v27;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Removing notification registration for client identifier: %@", buf, 0x16u);
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
      v30 = [MEMORY[0x277CBEAA8] distantFuture];
      notificationEnabledTime = v25->_notificationEnabledTime;
      v25->_notificationEnabledTime = v30;
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
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 clientID];
        v10 = [v9 isEqual:@"com.apple.HomeKitDaemon.homeNotifications"];

        if ((v10 & 1) == 0)
        {
          v11 = [v8 updateThreshold];

          if (!v11)
          {

            goto LABEL_16;
          }

          v12 = [v8 updateThreshold];
          v13 = v12;
          if (v5)
          {
            v14 = [v5 compare:v12];

            if (v14 == 1)
            {
              v15 = [v8 updateThreshold];

              v5 = v15;
            }
          }

          else
          {
            v5 = v12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 updateThreshold];

        if (!v9)
        {

          goto LABEL_15;
        }

        v10 = [v8 updateThreshold];
        v11 = v10;
        if (v5)
        {
          v12 = [v5 compare:v10];

          if (v12 == 1)
          {
            v13 = [v8 updateThreshold];

            v5 = v13;
          }
        }

        else
        {
          v5 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setNotificationEnabledTime:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  if (-[NSDate isEqualToDate:](self->_notificationEnabledTime, "isEqualToDate:", v5) || [v6 isEqualToDate:v5])
  {
    objc_storeStrong(&self->_notificationEnabledTime, a3);
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

- (BOOL)isNotificationEnabledForClientIdentifierPrefix:(id)a3
{
  v4 = a3;
  v5 = [(HMDCharacteristic *)self notificationRegistrations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HMDCharacteristic_isNotificationEnabledForClientIdentifierPrefix___block_invoke;
  v9[3] = &unk_2786789F8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

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
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 na_map:&__block_literal_global_134];
  v4 = [v3 allObjects];

  return v4;
}

- (id)localClientIdentifiersWithNotificationsEnabled
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(HMDCharacteristic *)self notificationRegistrations];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(HMDCharacteristic *)self notificationRegistrations];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HMDCharacteristic_localClientIdentifiersWithNotificationsEnabled__block_invoke;
  v9[3] = &unk_278678A20;
  v7 = v5;
  v10 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

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

- (BOOL)isNotificationEnabledForClientIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDCharacteristic *)self notificationRegistrations];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__HMDCharacteristic_isNotificationEnabledForClientIdentifier___block_invoke;
    v8[3] = &unk_2786789F8;
    v9 = v4;
    v6 = [v5 na_any:v8];
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
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 na_any:&__block_literal_global_129_117356];

  return v3;
}

uint64_t __51__HMDCharacteristic_isNonClientNotificationEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientID];
  v3 = [v2 hasPrefix:@"com.apple.HomeKit.client."];

  return v3 ^ 1u;
}

- (BOOL)isNonBulletinNotificationEnabled
{
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 na_any:&__block_literal_global_127_117358];

  return v3;
}

uint64_t __53__HMDCharacteristic_isNonBulletinNotificationEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 clientID];
  if ([v3 isEqual:@"com.apple.HomeKitDaemon.bulletinNotificationManager"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 clientID];
    v4 = [v5 isEqual:@"com.apple.HomeKitDaemon.bulletinBoard"] ^ 1;
  }

  return v4;
}

- (BOOL)isNonHomeNotificationsEnabled
{
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 na_any:&__block_literal_global_125_117360];

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
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 na_any:&__block_literal_global_123_117362];

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
  v2 = [(HMDCharacteristic *)self notificationRegistrations];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)validateValue:(id)a3 outValue:(id *)a4
{
  v6 = a3;
  if (isAllowedCharType())
  {
    v7 = [(HMDCharacteristic *)self hapCharacteristicTuples];
    v8 = [v7 anyObject];

    if (v8)
    {
      v9 = [v8 hapCharacteristic];
      v10 = [v9 validateValue:v6 outValue:a4];

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

- (id)validateValueForNotify:(id)a3 outValue:(id *)a4
{
  v6 = a3;
  if (([(HMDCharacteristic *)self characteristicProperties]& 1) != 0)
  {
    [(HMDCharacteristic *)self validateValue:v6 outValue:a4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:7];
  }
  v7 = ;

  return v7;
}

- (id)validateValueForWrite:(id)a3 outValue:(id *)a4
{
  v6 = a3;
  if (([(HMDCharacteristic *)self characteristicProperties]& 4) != 0)
  {
    [(HMDCharacteristic *)self validateValue:v6 outValue:a4];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:5];
  }
  v7 = ;

  return v7;
}

- (NSData)authorizationData
{
  v3 = [(HMDCharacteristic *)self accessory];
  v4 = v3;
  if (v3 && ([v3 isDemoAccessory] & 1) == 0)
  {
    v6 = [v4 home];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 currentUser];
      if ([v8 isOwner])
      {
        v9 = [v8 ownerCharacteristicAuthorizationData];
        v10 = [v4 uuid];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = [(HMDCharacteristic *)self instanceID];
        [v11 objectForKeyedSubscript:v12];
      }

      else
      {
        v13 = [v7 homeManager];
        v9 = [v13 sharedUserPrivateSettingsManager];

        v10 = [(HMDCharacteristic *)self instanceID];
        v11 = [v4 uuid];
        v12 = [v7 uuid];
        [v9 authorizationDataForCharacteristicWithInstanceID:v10 accessoryUUID:v11 homeModelID:v12];
      }
      v5 = ;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStateNumber:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v6 = [(HMDCharacteristic *)self properties];
    v5 = v7;
    if (v6)
    {
      os_unfair_lock_lock_with_options();
      objc_storeStrong(&self->_stateNumber, a3);
      os_unfair_lock_unlock(&self->_lock);
      v5 = v7;
    }
  }
}

- (NSNumber)stateNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateNumber;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)shouldUpdateValueFromHAPCharacteristic:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = self->_lastKnownValue;
  v6 = self->_lastKnownValueUpdateTime;
  os_unfair_lock_unlock(&self->_lock);
  v7 = +[HMDHAPMetadata getSharedInstance];
  v8 = [v4 value];
  v9 = [HMDCharacteristic value:v8 differentThan:v5];

  v10 = [v4 valueUpdatedTime];
  v11 = [(NSDate *)v6 compare:v10];

  if (v11 == -1)
  {
    if (v9)
    {
      v16 = objc_autoreleasePoolPush();
      v21 = self;
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

    v23 = [(HMDCharacteristic *)self type];
    v24 = [v7 shouldNotCacheCharacteristicOfType:v23];

    if (v24)
    {
      v16 = objc_autoreleasePoolPush();
      v25 = self;
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

  v12 = [(HMDCharacteristic *)self type];
  v13 = [(HMDCharacteristic *)self service];
  v14 = [v13 type];
  v15 = [v7 generateNotificationOnConfigurationForCharacteristicType:v12 serviceType:v14];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v19;
      v20 = "%{public}@Declaring the value as different because Characteristic does not support caching";
LABEL_12:
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, v20, &v28, 0xCu);

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
        v9 = [v7 hapCharacteristic];
        v10 = [v9 valueUpdatedTime];
        LODWORD(lastKnownValueUpdateTime) = [(NSDate *)lastKnownValueUpdateTime compare:v10]== NSOrderedAscending;

        if (lastKnownValueUpdateTime)
        {
          objc_storeStrong(&self->_previousValue, self->_lastKnownValue);
          v11 = [v7 hapCharacteristic];
          v12 = [v11 value];
          lastKnownValue = self->_lastKnownValue;
          self->_lastKnownValue = v12;

          v14 = [v7 hapCharacteristic];
          v15 = [v14 valueUpdatedTime];
          v16 = self->_lastKnownValueUpdateTime;
          self->_lastKnownValueUpdateTime = v15;

          v17 = [v7 hapCharacteristic];
          v18 = [v17 notificationContext];
          notificationContext = self->_notificationContext;
          self->_notificationContext = v18;
        }
      }

      v4 = [(NSSet *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_lock);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)getLastKnownValueUpdateTime:(id *)a3 stateNumber:(id *)a4 notificationContext:(id *)a5
{
  os_unfair_lock_lock_with_options();
  if (a3)
  {
    *a3 = self->_lastKnownValueUpdateTime;
  }

  if (a4)
  {
    *a4 = self->_stateNumber;
  }

  if (a5)
  {
    *a5 = self->_notificationContext;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateValue:(id)a3 updatedTime:(id)a4 stateNumber:(id)a5 notificationContext:(id)a6
{
  v65 = *MEMORY[0x277D85DE8];
  obj = a3;
  v10 = a3;
  v11 = a4;
  v36 = a5;
  v12 = a5;
  v38 = a6;
  v13 = a6;
  os_unfair_lock_lock_with_options();
  v43 = v12;
  v14 = [(NSNumber *)self->_stateNumber isEqual:v12]^ 1;
  if (!v11)
  {
    LOBYTE(v14) = 1;
  }

  v15 = (v14 & 1) == 0 && [(NSDate *)self->_lastKnownValueUpdateTime compare:v11, v36, v38, obj]== NSOrderedDescending;
  if (v43)
  {
    stateNumber = self->_stateNumber;
    v17 = HAPCompareStateNumberWithRollover() == 1 || v15;
    if (v17 == 1)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        obja = v18;
        v21 = HMFGetLogIdentifier();
        lastKnownValue = v19->_lastKnownValue;
        v42 = self->_stateNumber;
        lastKnownValueUpdateTime = v19->_lastKnownValueUpdateTime;
        WeakRetained = objc_loadWeakRetained(&v19->_service);
        v23 = [WeakRetained accessory];
        v24 = [v23 identifier];
        *buf = 138545154;
        v50 = v21;
        v51 = 2112;
        v52 = v10;
        v53 = 2112;
        v54 = v43;
        v55 = 2112;
        v56 = v11;
        v57 = 2112;
        v58 = lastKnownValue;
        v59 = 2112;
        v60 = v42;
        v61 = 2112;
        v62 = lastKnownValueUpdateTime;
        v63 = 2112;
        v64 = v24;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring stale characteristic update value: %@, state number: %@, updated time: %@ Current value: %@ state number: %@, updated time: %@, accessory: %@", buf, 0x52u);

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
        v30 = [v29 hapCharacteristic];
        [v30 setValue:v10];

        v31 = [v29 hapCharacteristic];
        [v31 setNotificationContext:v13];
      }

      v26 = [(NSSet *)v25 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v26);
  }

  if (v11 && -[NSDate compare:](self->_lastKnownValueUpdateTime, "compare:", v11) == NSOrderedSame && [self->_lastKnownValue isEqual:v10])
  {
    objc_storeStrong(&self->_lastKnownValue, obj);
  }

  else
  {
    objc_storeStrong(&self->_previousValue, self->_lastKnownValue);
    objc_storeStrong(&self->_lastKnownValue, obj);
    if (!v11)
    {
      if (v10)
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

  v32 = v11;
  v33 = self->_lastKnownValueUpdateTime;
  self->_lastKnownValueUpdateTime = v32;
LABEL_31:

  if (v43)
  {
    objc_storeStrong(&self->_stateNumber, v36);
  }

  objc_storeStrong(&self->_notificationContext, v38);
LABEL_34:
  os_unfair_lock_unlock(&self->_lock);

  v35 = *MEMORY[0x277D85DE8];
}

- (id)value
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEAA8] distantPast];
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

      v9 = [*(*(&v25 + 1) + 8 * i) hapCharacteristic];
      v10 = [v9 valueUpdatedTime];
      v11 = [v3 compare:v10] == -1;

      if (v11)
      {
        v12 = v9;

        v13 = [v12 valueUpdatedTime];

        v3 = v13;
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
  v15 = [v6 value];
  v16 = [HMDCharacteristic value:lastKnownValue differentThan:v15];

  if (v16)
  {
    objc_storeStrong(&self->_previousValue, self->_lastKnownValue);
  }

  v17 = [v6 value];
  v18 = self->_lastKnownValue;
  self->_lastKnownValue = v17;

  objc_storeStrong(&self->_lastKnownValueUpdateTime, v3);
  v19 = [v6 notificationContext];
  notificationContext = self->_notificationContext;
  self->_notificationContext = v19;

  v21 = [v6 value];
  v22 = [v21 copy];

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)fixedValueFromAccessoryIncludeSerialNumber:(BOOL)a3
{
  v3 = a3;
  v5 = [(HMDCharacteristic *)self service];
  v6 = [v5 accessory];

  v7 = [(HMDCharacteristic *)self characteristicType];
  v8 = v7;
  if (v3 && [v7 isEqualToString:*MEMORY[0x277CCFA58]])
  {
    v9 = [v6 serialNumber];
LABEL_10:
    v10 = v9;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:*MEMORY[0x277CCF8B8]])
  {
    v9 = [v6 firmwareVersion];
    goto LABEL_10;
  }

  if ([v8 isEqualToString:*MEMORY[0x277CCF968]])
  {
    v9 = [v6 manufacturer];
    goto LABEL_10;
  }

  if ([v8 isEqualToString:*MEMORY[0x277CCF970]])
  {
    v9 = [v6 model];
    goto LABEL_10;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (int64_t)_characteristicPropertiesRelevantForCurrentUser:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = [WeakRetained accessory];
  v6 = [v5 home];
  v7 = [v6 currentUser];
  v8 = [v7 isRestrictedGuest];

  if (v8)
  {
    return a3 & 0xFFFFFFFFFFFFFFEFLL;
  }

  else
  {
    return a3;
  }
}

- (id)characteristicForHAPAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 server];
  v6 = [v5 identifier];
  v7 = [v4 linkType];

  v8 = [(HMDCharacteristic *)self hapCharacteristicTupleWithIdentifier:v6 linkType:v7];

  v9 = [v8 hapCharacteristic];

  return v9;
}

- (NSNumber)instanceID
{
  v2 = [(HMDCharacteristic *)self characteristicInstanceID];
  v3 = [v2 copy];

  return v3;
}

- (NSString)type
{
  v2 = [(HMDCharacteristic *)self characteristicType];
  v3 = [v2 copy];

  return v3;
}

- (void)unconfigureForServerIdentifier:(id)a3 linkType:(int64_t)a4
{
  v5 = [(HMDCharacteristic *)self hapCharacteristicTupleWithIdentifier:a3 linkType:a4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB58];
    v10 = v5;
    v7 = [(HMDCharacteristic *)self hapCharacteristicTuples];
    v8 = [v6 setWithSet:v7];

    [v8 removeObject:v10];
    v9 = [MEMORY[0x277CBEB98] setWithSet:v8];
    [(HMDCharacteristic *)self setHapCharacteristicTuples:v9];

    v5 = v10;
  }
}

- (void)unconfigure
{
  v3 = [(HMDCharacteristic *)self hapCharacteristicTuples];
  v8 = [v3 anyObject];

  if (v8)
  {
    v4 = MEMORY[0x277CBEB58];
    v5 = [(HMDCharacteristic *)self hapCharacteristicTuples];
    v6 = [v4 setWithSet:v5];

    [v6 removeObject:v8];
    v7 = [MEMORY[0x277CBEB98] setWithSet:v6];
    [(HMDCharacteristic *)self setHapCharacteristicTuples:v7];
  }
}

- (void)configureWithCharacteristic:(id)a3
{
  v21 = a3;
  v4 = [v21 service];
  v5 = [v4 accessory];

  v6 = [v21 value];

  if (v6)
  {
    v7 = [(HMDCharacteristic *)self lastKnownValue];
    [(HMDCharacteristic *)self setPreviousValue:v7];

    v8 = [v21 value];
    [(HMDCharacteristic *)self setLastKnownValue:v8];

    v9 = [v21 valueUpdatedTime];
    [(HMDCharacteristic *)self setLastKnownValueUpdateTime:v9];

    v10 = [v21 notificationContext];
    [(HMDCharacteristic *)self setNotificationContext:v10];
  }

  v11 = [v5 linkType];
  if (v11 == 1)
  {
    stateNumber = self->_stateNumber;
    self->_stateNumber = 0;
  }

  v13 = [v5 server];
  v14 = [v13 identifier];

  v15 = [(HMDCharacteristic *)self hapCharacteristicTupleWithIdentifier:v14 linkType:v11];
  v16 = MEMORY[0x277CBEB58];
  v17 = [(HMDCharacteristic *)self hapCharacteristicTuples];
  v18 = [v16 setWithSet:v17];

  if (v15)
  {
    [v18 removeObject:v15];
  }

  v19 = [[HAPCharacteristicTuple alloc] initWithHAPCharacteristic:v21 serverIdentifier:v14 linkType:v11];
  [v18 addObject:v19];
  v20 = [MEMORY[0x277CBEB98] setWithSet:v18];
  [(HMDCharacteristic *)self setHapCharacteristicTuples:v20];
}

- (id)_characteristicDictionaryWithAuthData:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  [v5 setObject:self->_characteristicInstanceID forKeyedSubscript:*MEMORY[0x277CD2138]];
  [v5 setObject:self->_characteristicType forKeyedSubscript:*MEMORY[0x277CD21A8]];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_characteristicProperties];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2190]];

  v7 = [(HMDCharacteristic *)self metadata];
  v8 = [v7 dictionaryRepresentation];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD2148]];

  if (v3)
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

- (BOOL)updateWithDictionary:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD2138]];
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

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD21A8]];
  v9 = v8;
  if (v8 && ([v8 isEqual:self->_characteristicType] & 1) == 0)
  {
    v10 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v9];
    characteristicType = self->_characteristicType;
    self->_characteristicType = v10;

    v7 = 1;
  }

  v12 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD2190]];
  v13 = [v12 integerValue];

  characteristicProperties = self->_characteristicProperties;
  v15 = [(HMDCharacteristic *)self accessory];
  v16 = [v15 findServiceWithServiceType:@"00000701-0000-1000-8000-0026BB765291"];
  v17 = characteristicProperties & 0x100 | v13;

  if (v16)
  {
    v17 |= self->_characteristicProperties & 0x80;
  }

  v18 = [(HMDCharacteristic *)self _characteristicPropertiesRelevantForCurrentUser:v17];
  if (v18 && self->_characteristicProperties != v18)
  {
    self->_characteristicProperties = v18;
    v7 = 1;
  }

  v19 = [v4 hmf_dictionaryForKey:*MEMORY[0x277CD2148]];
  if (v19)
  {
    v20 = [HMDCharacteristicMetadata characteristicMetadataWithDictionary:v19];
    if (v20 && ![(HMDCharacteristicMetadata *)self->_metadata isEqual:v20])
    {
      v21 = [HMFObjectCacheHMDCharacteristicMetadata cachedInstanceForCharacteristicMetadata:v20];
      metadata = self->_metadata;
      self->_metadata = v21;

      v7 = 1;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (id)hapCharacteristicTupleWithIdentifier:(id)a3 linkType:(int64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(HMDCharacteristic *)self hapCharacteristicTuples];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 linkType] == a4)
        {
          v13 = [v12 serverIdentifier];
          v14 = [v6 isEqualToString:v13];

          if (v14)
          {
            v15 = v12;
            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v3 = [(HMDCharacteristic *)self service];
  v4 = [v3 accessory];
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 serializedIdentifier];
  v7 = [v3 instanceID];
  v8 = [(HMDCharacteristic *)self instanceID];
  v9 = [v5 stringWithFormat:@"%@/%@/%@", v6, v7, v8];

  return v9;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [(HMDCharacteristic *)self characteristicProperties];
  v8 = v7;
  if ((v7 & 6) == 6)
  {
    v9 = @"RW";
LABEL_7:
    [v6 appendString:v9];
    goto LABEL_8;
  }

  if ((v7 & 2) != 0)
  {
    v9 = @"RO";
  }

  else
  {
    v9 = @"WO";
  }

  if ((v7 & 6) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v8 & 0x40) != 0)
  {
    [v6 appendString:@"H"];
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

  [v6 appendString:@"+E"];
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
  [v6 appendString:@"+B"];
  if ((v8 & 0x100) != 0)
  {
LABEL_12:
    [v6 appendString:@"+NC"];
  }

LABEL_13:
  v10 = +[HMDHAPMetadata getSharedInstance];
  v11 = [(HMDCharacteristic *)self type];
  v12 = [(HMDCharacteristic *)self service];
  v13 = [v12 type];
  v37 = v10;
  LODWORD(v10) = [v10 requiresDeviceUnlock:v11 forService:v13];

  if (v10)
  {
    [v6 appendString:@"+L"];
  }

  v14 = [MEMORY[0x277CCAB68] string];
  if ([(HMDCharacteristic *)self isNotificationEnabled])
  {
    v15 = [(HMDCharacteristic *)self notificationEnabledTime];
    v16 = [v15 hmf_localTimeDescription];
    [v14 appendFormat:@"YES(%@)", v16];

    if ([(HMDCharacteristic *)self notificationRegisteredWithRemoteGateway])
    {
      [v14 appendFormat:@"+RGW"];
    }

    if ([(HMDCharacteristic *)self broadcastNotificationEnabled])
    {
      [v14 appendFormat:@"+B"];
    }

    v17 = [(HMDCharacteristic *)self notificationRegistrations];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__HMDCharacteristic_dumpStateWithPrivacyLevel___block_invoke;
    v38[3] = &unk_2786789B0;
    v39 = v14;
    [v17 na_each:v38];
  }

  else
  {
    [v14 appendString:@"NO"];
  }

  v18 = [(HMDCharacteristic *)self value];

  v19 = 0x277CCA000uLL;
  if (v18)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = [(HMDCharacteristic *)self value];
    v22 = [(HMDCharacteristic *)self lastKnownValueUpdateTime];
    [v22 hmf_localTimeDescription];
    v36 = v8;
    v23 = v14;
    v24 = a3;
    v25 = v6;
    v27 = v26 = v5;
    v28 = [(HMDCharacteristic *)self previousValue];
    v29 = [v20 stringWithFormat:@"%@(%@), previousValue: %@", v21, v27, v28];

    v5 = v26;
    v6 = v25;
    a3 = v24;
    v14 = v23;
    v8 = v36;

    v19 = 0x277CCA000;
  }

  else
  {
    v29 = @"<nil>";
  }

  v30 = *(v19 + 3240);
  v31 = [(HMDCharacteristic *)self shortDescription];
  v32 = [v30 stringWithFormat:@"%@, properties: %@ (0x%tx), value: %@, notification: %@", v31, v6, v8, v29, v14];
  [v5 setObject:v32 forKeyedSubscript:*MEMORY[0x277D0F170]];

  v33 = [(HMDCharacteristic *)self metadata];
  v34 = [v33 dumpStateWithPrivacyLevel:a3];
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
  v3 = [(HMDCharacteristic *)self service];
  v4 = [v3 spiClientIdentifier];
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HMDCharacteristic *)self instanceID];
  v7 = [v5 stringWithFormat:@"%@", v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = spiClientIdentifierForUUIDAndSalts(v4, v8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)characteristicTypeDescription
{
  v2 = [(HMDCharacteristic *)self characteristicType];
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
  v4 = [(HMDCharacteristic *)self characteristicType];
  v5 = HAPShortUUIDType();
  v6 = [(HMDCharacteristic *)self service];
  v7 = [v6 instanceID];
  v8 = [(HMDCharacteristic *)self instanceID];
  v9 = [v3 stringWithFormat:@"Type: %@, sid: %@, iid: %@", v5, v7, v8];

  return v9;
}

- (void)setNotificationContext:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  notificationContext = self->_notificationContext;
  self->_notificationContext = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)notificationContext
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastKnownValueUpdateTime:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  lastKnownValueUpdateTime = self->_lastKnownValueUpdateTime;
  self->_lastKnownValueUpdateTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)lastKnownValueUpdateTime
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastKnownValueUpdateTime;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastKnownValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  lastKnownValue = self->_lastKnownValue;
  self->_lastKnownValue = v4;

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

- (void)setPreviousValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  previousValue = self->_previousValue;
  self->_previousValue = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)previousValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_previousValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHapCharacteristicTuples:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  hapCharacteristicTuples = self->_hapCharacteristicTuples;
  self->_hapCharacteristicTuples = v4;

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

- (void)setNotificationRegisteredWithRemoteGateway:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_notificationRegisteredWithRemoteGateway != v3)
  {
    self->_notificationRegisteredWithRemoteGateway = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v3 = [WeakRetained accessory];

  return v3;
}

- (HMDCharacteristic)initWithCharacteristic:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCharacteristic *)self init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD2118]];
    if ([v9 properties])
    {
      v10 = [v9 stateNumber];
      stateNumber = v8->_stateNumber;
      v8->_stateNumber = v10;
    }

    objc_storeWeak(&v8->_service, v7);
    [(HMDCharacteristic *)v8 updateWithDictionary:v6];
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

    v5 = [MEMORY[0x277CBEAA8] distantFuture];
    notificationEnabledTime = v2->_notificationEnabledTime;
    v2->_notificationEnabledTime = v5;

    notificationRegistrations = v2->_notificationRegistrations;
    v2->_notificationRegistrations = 0;

    v2->_notificationRegisteredWithRemoteGateway = 0;
    v8 = [MEMORY[0x277CBEAA8] distantPast];
    lastKnownValueUpdateTime = v2->_lastKnownValueUpdateTime;
    v2->_lastKnownValueUpdateTime = v8;
  }

  return v2;
}

+ (NSDictionary)currentTargetStateCharacteristicTypeMap
{
  if (currentTargetStateCharacteristicTypeMap_onceToken != -1)
  {
    dispatch_once(&currentTargetStateCharacteristicTypeMap_onceToken, &__block_literal_global_180);
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
  if (logCategory__hmf_once_t43_117440 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43_117440, &__block_literal_global_147_117441);
  }

  v3 = logCategory__hmf_once_v44_117442;

  return v3;
}

void __32__HMDCharacteristic_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v44_117442;
  logCategory__hmf_once_v44_117442 = v1;
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