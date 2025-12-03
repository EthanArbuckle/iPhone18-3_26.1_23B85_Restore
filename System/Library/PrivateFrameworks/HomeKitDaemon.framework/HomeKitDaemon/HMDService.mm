@interface HMDService
+ (BOOL)_parseOperatingStateResponseValue:(id)value intoState:(id *)state abnormalReasons:(id *)reasons;
+ (BOOL)_processUpdateOnPowerManagementServiceForCharacteristicType:(id)type value:(id)value serviceType:(id)serviceType accessory:(id)accessory accessoryTransaction:(id)transaction;
+ (BOOL)processUpdateForCharacteristicType:(id)type value:(id)value serviceType:(id)serviceType service:(id)service serviceTransactionGetter:(id)getter accessory:(id)accessory accessoryTransaction:(id)transaction accessoryTransactionChanged:(BOOL *)self0;
+ (BOOL)validateProvidedName:(id)name;
+ (id)generateUUIDWithAccessoryUUID:(id)d serviceID:(id)iD;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_supportsBulletinNotification;
- (BOOL)isCustom;
- (BOOL)isEmptyConfiguredNameAllowed;
- (BOOL)isReadingRequiredForBTLEServiceCharacteristic:(id)characteristic;
- (BOOL)shouldEnableDaemonRelaunch;
- (BOOL)shouldIncludePresenceForDeviceWithDestination:(id)destination;
- (BOOL)shouldUpdateLastSeenConfiguredName:(id)name;
- (BOOL)updateAssociatedServiceType:(id)type error:(id *)error;
- (BOOL)updateCharacteristics:(id)characteristics;
- (HMDApplicationData)appData;
- (HMDHAPAccessory)accessory;
- (HMDService)init;
- (HMDService)initWithAccessory:(id)accessory owner:(id)owner instance:(id)instance uuid:(id)uuid;
- (HMDService)initWithCoder:(id)coder;
- (HMDService)initWithTransaction:(id)transaction accessory:(id)accessory owner:(id)owner;
- (HMDServiceOwner)owner;
- (NSArray)characteristics;
- (NSDictionary)assistantObject;
- (NSNumber)instanceID;
- (NSString)configuredName;
- (NSString)contextID;
- (NSString)description;
- (NSString)expectedConfiguredName;
- (NSString)lastSeenConfiguredName;
- (NSString)name;
- (NSString)providedName;
- (NSString)serviceIdentifier;
- (NSString)type;
- (NSString)urlString;
- (NSUUID)contextSPIUniqueIdentifier;
- (NSUUID)spiClientIdentifier;
- (NSUUID)uuid;
- (id)_checkIfDefaultNameChanged;
- (id)_deriveDefaultName;
- (id)_initWithCoder:(id)coder;
- (id)_messagesForConfiguredNameChange;
- (id)_sanitizeNameToWriteToAccessory:(id)accessory;
- (id)_serviceSubtypeFromLinkedServicesForServiceType:(id)type accessoryCategory:(id)category;
- (id)_updateProvidedName:(id)name;
- (id)backingStoreObjects:(int64_t)objects;
- (id)configureWithService:(id)service accessory:(id)accessory shouldRead:(BOOL)read added:(BOOL)added;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)findCharacteristic:(id)characteristic;
- (id)findCharacteristicWithType:(id)type;
- (id)getConfiguredName;
- (id)getConfiguredNameForXPCClients;
- (id)getLastSeenConfiguredName;
- (id)home;
- (id)logIdentifier;
- (id)messagesForUpdatedRoom:(id)room;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)nameChangedMessage;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (void)_createAndRunTransactionWithName:(id)name transaction:(id)transaction message:(id)message;
- (void)_createNotification;
- (void)_encodeWithCoder:(id)coder;
- (void)_handleSetAppData:(id)data;
- (void)_processTransactionForNameComponents:(id)components messagesToSendToAccessory:(id)accessory result:(id)result;
- (void)_recalculateUUID;
- (void)_registerForMessages;
- (void)_saveCurrentNameAsExpectedAndLastSeen:(id)seen;
- (void)_saveForExpectedConfiguredNameUpdate;
- (void)_saveForLastSeenConfiguredNameUpdate;
- (void)_saveLastSeenAndExpectedConfiguredName:(id)name;
- (void)_shouldServiceBeHidden;
- (void)_transactionServiceUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)_updateDefaultName;
- (void)_writeConfiguredNameToAccessory:(id)accessory;
- (void)appDataRemoved:(id)removed message:(id)message;
- (void)appDataUpdated:(id)updated message:(id)message;
- (void)configureBulletinNotification;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fillCharacteristicsInServiceBackingStoreObject:(id)object;
- (void)persistMediaSourceDisplayOrder:(id)order requestMessage:(id)message;
- (void)populateModelObjectWithChangeType:(id)type version:(int64_t)version;
- (void)setAppData:(id)data;
- (void)setCharacteristics:(id)characteristics;
- (void)setConfiguredName:(id)name;
- (void)setExpectedConfiguredName:(id)name;
- (void)setLastSeenConfiguredName:(id)name;
- (void)setProvidedName:(id)name;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigure;
- (void)updateLastKnownValues;
- (void)updatePresenceRequestTimeForDeviceWithDestination:(id)destination;
@end

@implementation HMDService

- (NSUUID)contextSPIUniqueIdentifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  accessory = [(HMDService *)self accessory];
  contextSPIUniqueIdentifier = [accessory contextSPIUniqueIdentifier];
  v7 = MEMORY[0x277CCACA8];
  instanceID = [(HMDService *)self instanceID];
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
  accessory = [(HMDService *)self accessory];
  contextID = [accessory contextID];
  instanceID = [(HMDService *)self instanceID];
  v7 = [v3 stringWithFormat:@"%@:%@", contextID, instanceID];

  return v7;
}

- (HMDServiceOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)shouldUpdateLastSeenConfiguredName:(id)name
{
  nameCopy = name;
  lastSeenConfiguredName = [(HMDService *)self lastSeenConfiguredName];
  v6 = HMFEqualObjects();

  return v6 ^ 1;
}

- (void)_writeConfiguredNameToAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_initWeak(&location, self);
  owner = [(HMDService *)self owner];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDService__writeConfiguredNameToAccessory___block_invoke;
  v7[3] = &unk_278687540;
  objc_copyWeak(&v9, &location);
  v6 = accessoryCopy;
  v8 = v6;
  [owner makeServiceNameConsistent:self withName:v6 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __46__HMDService__writeConfiguredNameToAccessory___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to update configured name to %@ - error %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (v8)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully updated configured name and last seen configured name to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setConfiguredName:*(a1 + 32)];
    [v6 setLastSeenConfiguredName:*(a1 + 32)];
    [v6 _saveForLastSeenConfiguredNameUpdate];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_saveCurrentNameAsExpectedAndLastSeen:(id)seen
{
  seenCopy = seen;
  owner = [(HMDService *)self owner];
  uuid = [(HMDService *)self uuid];
  v6 = [owner createUpdateServiceTransactionWithServiceUUID:uuid];

  [v6 setLastSeenConfiguredNameLocal:seenCopy];
  v7 = [owner backingStoreTransactionWithName:@"NewNameOnPairVerify"];
  [v7 add:v6 withMessage:0];
  [v7 run];
}

- (id)backingStoreObjects:(int64_t)objects
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDService *)self modelObjectWithChangeType:1];
  [array addObject:v6];

  appData = [(HMDService *)self appData];

  if (objects >= 3 && appData)
  {
    appData2 = [(HMDService *)self appData];
    v9 = [appData2 modelObjectWithChangeType:1];
    [array addObject:v9];
  }

  return array;
}

- (void)fillCharacteristicsInServiceBackingStoreObject:(id)object
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  characteristics = [(HMDService *)self characteristics];
  if ([characteristics count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristics, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = characteristics;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          getCharacteristicDictionary = [*(*(&v16 + 1) + 8 * v11) getCharacteristicDictionary];
          [v6 addObject:getCharacteristicDictionary];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = +[HMDCharacteristic sortComparatorForCharacteristicDictionary];
  [v6 sortUsingComparator:v13];

  v14 = [v6 copy];
  [objectCopy setCharacteristics:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)populateModelObjectWithChangeType:(id)type version:(int64_t)version
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = typeCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  name = [(HMDService *)self name];
  [v7 setName:name];

  instanceID = [(HMDService *)self instanceID];
  [v7 setInstanceID:instanceID];

  providedName = [(HMDService *)self providedName];
  [v7 setProvidedName:providedName];

  serviceType = [(HMDService *)self serviceType];
  [v7 setServiceType:serviceType];

  associatedServiceType = [(HMDService *)self associatedServiceType];
  [v7 setAssociatedServiceType:associatedServiceType];

  serviceSubtype = [(HMDService *)self serviceSubtype];
  [v7 setServiceSubtype:serviceSubtype];

  labelIndex = [(HMDService *)self labelIndex];
  [v7 setLabelIndex:labelIndex];

  labelNamespace = [(HMDService *)self labelNamespace];
  [v7 setLabelNamespace:labelNamespace];

  linkedServices = [(HMDService *)self linkedServices];
  v17 = [linkedServices copy];
  [v7 setLinkedServices:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDService serviceProperties](self, "serviceProperties")}];
  [v7 setServiceProperties:v18];

  matterEndpointID = [(HMDService *)self matterEndpointID];
  [v7 setMatterEndpointID:matterEndpointID];

  if (version >= 4)
  {
    configurationState = [(HMDService *)self configurationState];
    [v7 setConfigurationState:configurationState];

    expectedConfiguredName = [(HMDService *)self expectedConfiguredName];
    [v7 setExpectedConfiguredName:expectedConfiguredName];

    lastKnownOperatingState = [(HMDService *)self lastKnownOperatingState];
    [v7 setLastKnownOperatingState:lastKnownOperatingState];

    lastKnownOperatingStateAbnormalReasons = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];
    [v7 setLastKnownOperatingStateAbnormalReasons:lastKnownOperatingStateAbnormalReasons];

    mediaSourceIdentifier = [(HMDService *)self mediaSourceIdentifier];
    [v7 setMediaSourceIdentifier:mediaSourceIdentifier];

    mediaSourceDisplayOrder = [(HMDService *)self mediaSourceDisplayOrder];
    [v7 setMediaSourceDisplayOrder:mediaSourceDisplayOrder];
  }

  [(HMDService *)self fillCharacteristicsInServiceBackingStoreObject:v7];
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v4 = [(HMDService *)self transactionWithObjectChangeType:type];
  [(HMDService *)self populateModelObjectWithChangeType:v4 version:4];

  return v4;
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDServiceTransaction alloc];
  uuid = [(HMDService *)self uuid];
  accessory = [(HMDService *)self accessory];
  uuid2 = [accessory uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (void)_registerForMessages
{
  v9[2] = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    home = [(HMDService *)self home];
    administratorHandler = [home administratorHandler];
    v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v9[0] = v5;
    v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
    v9[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    [administratorHandler registerForMessage:@"kSetAppDataRequestKey" receiver:self policies:v7 selector:sel__handleSetAppData_];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createAndRunTransactionWithName:(id)name transaction:(id)transaction message:(id)message
{
  messageCopy = message;
  transactionCopy = transaction;
  nameCopy = name;
  owner = [(HMDService *)self owner];
  v12 = [owner backingStoreTransactionWithName:nameCopy];

  [v12 add:transactionCopy withMessage:messageCopy];
  [v12 run];
}

- (void)persistMediaSourceDisplayOrder:(id)order requestMessage:(id)message
{
  messageCopy = message;
  orderCopy = order;
  owner = [(HMDService *)self owner];
  uuid = [(HMDService *)self uuid];
  v10 = [owner createUpdateServiceTransactionWithServiceUUID:uuid];

  [v10 setMediaSourceDisplayOrder:orderCopy];
  [(HMDService *)self _createAndRunTransactionWithName:@"PersistMediaSourceDisplayOrder" transaction:v10 message:messageCopy];
}

- (BOOL)isEmptyConfiguredNameAllowed
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(HMDService *)self characteristics];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v20;
    v7 = *MEMORY[0x277CCF7E0];
    v8 = *MEMORY[0x277CFE680];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      type = [v10 type];
      v12 = [type isEqualToString:v7];

      if (v12)
      {
        v4 = 1;
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        type2 = [v10 type];
        v14 = [type2 isEqualToString:v8];

        v5 |= v14;
        if (v5)
        {
LABEL_10:
          if (v4)
          {
            v15 = 1;
            goto LABEL_15;
          }
        }
      }

      if (v3 == ++v9)
      {
        v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)updateCharacteristics:(id)characteristics
{
  v77 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  characteristics = [(HMDService *)self characteristics];
  v50 = [characteristics mutableCopy];

  array2 = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  accessory = [(HMDService *)self accessory];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = characteristicsCopy;
  v52 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v52)
  {
    v47 = 0;
    v49 = *v67;
    v48 = *MEMORY[0x277CD21A8];
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v67 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v66 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:v48];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v9 = v50;
        v10 = [v9 countByEnumeratingWithState:&v62 objects:v75 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v63;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v63 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v62 + 1) + 8 * v13);
            characteristicType = [v14 characteristicType];
            v16 = [characteristicType isEqual:v8];

            if (v16)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v62 objects:v75 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v17 = v14;

          if (!v17)
          {
            goto LABEL_17;
          }

          v47 |= [(HMDCharacteristic *)v17 updateWithDictionary:v7];
          [v9 removeObject:v17];
        }

        else
        {
LABEL_14:

LABEL_17:
          v17 = [[HMDCharacteristic alloc] initWithCharacteristic:v7 service:selfCopy];
          v18 = encodeRootObjectForIncomingXPCMessage(v17, 0);
          instanceID = [(HMDCharacteristic *)v17 instanceID];
          [dictionary setObject:v18 forKeyedSubscript:instanceID];
        }

        [array2 addObject:v17];
      }

      v52 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v52);
  }

  else
  {
    LOBYTE(v47) = 0;
  }

  [(HMDService *)selfCopy setCharacteristics:array2];
  bulletinBoardNotification = [(HMDService *)selfCopy bulletinBoardNotification];
  [bulletinBoardNotification updateRegistrations];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v21 = v50;
  v22 = [v21 countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v59;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v59 != v24)
        {
          objc_enumerationMutation(v21);
        }

        instanceID2 = [*(*(&v58 + 1) + 8 * j) instanceID];
        [array addObject:instanceID2];
      }

      v23 = [v21 countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v23);
  }

  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  if ([array count])
  {
    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v31;
      v72 = 2112;
      v73 = array;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Service removed characteristics with instance IDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    [v27 setObject:array forKey:@"kRemovedCharacteristicIDsForAccessoryKey"];
    LOBYTE(v47) = 1;
  }

  if ([dictionary count])
  {
    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      allKeys = [dictionary allKeys];
      *buf = 138543618;
      v71 = v35;
      v72 = 2112;
      v73 = allKeys;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Service added characteristics with instance IDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    [v27 setObject:dictionary forKey:@"kAddedCharacteristicsForAccessoryKey"];
    LOBYTE(v47) = 1;
  }

  workQueue = [(HMDService *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDService_updateCharacteristics___block_invoke;
  block[3] = &unk_278685AA8;
  v54 = accessory;
  v55 = selfCopy;
  v56 = v27;
  v57 = v47 & 1;
  v38 = v27;
  v39 = accessory;
  dispatch_async(workQueue, block);

  v40 = *MEMORY[0x277D85DE8];
  return v47 & 1;
}

void __36__HMDService_updateCharacteristics___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configureService:*(a1 + 40)];
  if ([v2 count])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [v2 allKeys];
      *buf = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Service modified characteristics with instance IDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 48) setObject:v2 forKey:@"kModifiedCharacteristicsForAccessoryKey"];
  }

  if ((*(a1 + 56) & 1) != 0 || [v2 count])
  {
    [*(a1 + 40) _shouldServiceBeHidden];
    v8 = *(a1 + 32);
    v11 = @"HMDAccessoryKey";
    v12 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    logAndPostNotification(@"kHMDNotificationCharacteristicsUpdated", *(a1 + 32), v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)appDataRemoved:(id)removed message:(id)message
{
  messageCopy = message;
  [(HMDService *)self setAppData:0];
  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)appDataUpdated:(id)updated message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  appData = [(HMDService *)self appData];

  if (appData)
  {
    appData2 = [(HMDService *)self appData];
    [appData2 updateWithModel:updatedCopy];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    appDataDictionary = [updatedCopy appDataDictionary];
    uuid = [(HMDService *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:appDataDictionary parentUUID:uuid];
    [(HMDService *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      appDataDictionary2 = [updatedCopy appDataDictionary];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = appDataDictionary2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = removedCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [(HMDService *)self appDataRemoved:v10 message:messageCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = objc_opt_class();
      v15 = v25;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    responseHandler = [messageCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [messageCopy responseHandler];
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (responseHandler2)[2](responseHandler2, v18, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_transactionServiceUpdated:(id)updated newValues:(id)values message:(id)message
{
  v152[2] = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  v11 = MEMORY[0x277CBEB18];
  v12 = +[HMDHAPAccessoryTransaction properties];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

  v132 = updatedCopy;
  configurationTracker = [updatedCopy configurationTracker];
  v15 = configurationTracker;
  if (configurationTracker)
  {
    dispatch_group_enter(configurationTracker);
  }

  [(HMDService *)self _processTransactionForNameComponents:valuesCopy messagesToSendToAccessory:v13 result:transactionResult];
  serviceType = [valuesCopy serviceType];
  if (serviceType)
  {
    v17 = serviceType;
    serviceType2 = [(HMDService *)self serviceType];
    serviceType3 = [valuesCopy serviceType];
    v20 = [serviceType2 isEqual:serviceType3];

    if ((v20 & 1) == 0)
    {
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
      serviceType4 = [valuesCopy serviceType];
      [(HMDService *)self setServiceType:serviceType4];
    }
  }

  matterEndpointID = [valuesCopy matterEndpointID];
  if (matterEndpointID)
  {
    v23 = matterEndpointID;
    matterEndpointID2 = [(HMDService *)self matterEndpointID];
    matterEndpointID3 = [valuesCopy matterEndpointID];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      matterEndpointID4 = [valuesCopy matterEndpointID];
      [(HMDService *)self setMatterEndpointID:matterEndpointID4];

      [transactionResult markChanged];
    }
  }

  if ([valuesCopy propertyWasSet:@"associatedServiceType"])
  {
    associatedServiceType = [valuesCopy associatedServiceType];
    associatedServiceType2 = [(HMDService *)self associatedServiceType];
    v30 = HMFEqualObjects();

    if ((v30 & 1) == 0)
    {
      associatedServiceType3 = [valuesCopy associatedServiceType];
      associatedServiceType = self->_associatedServiceType;
      self->_associatedServiceType = associatedServiceType3;

      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
    }
  }

  serviceSubtype = [valuesCopy serviceSubtype];
  if (serviceSubtype)
  {
    v34 = serviceSubtype;
    serviceSubtype2 = [(HMDService *)self serviceSubtype];
    serviceSubtype3 = [valuesCopy serviceSubtype];
    v37 = [serviceSubtype2 isEqual:serviceSubtype3];

    if ((v37 & 1) == 0)
    {
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
      serviceSubtype4 = [valuesCopy serviceSubtype];
      [(HMDService *)self setServiceSubtype:serviceSubtype4];

      v151[0] = *MEMORY[0x277CD25F8];
      instanceID = [(HMDService *)self instanceID];
      v152[0] = instanceID;
      v151[1] = *MEMORY[0x277CD2640];
      serviceSubtype5 = [valuesCopy serviceSubtype];
      v152[1] = serviceSubtype5;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:2];

      v42 = MEMORY[0x277D0F818];
      v43 = *MEMORY[0x277CD2648];
      identifier = [messageCopy identifier];
      v45 = [v42 entitledMessageWithName:v43 identifier:identifier messagePayload:v41];

      [v13 addObject:v45];
    }
  }

  labelIndex = [valuesCopy labelIndex];
  if (labelIndex)
  {
    v47 = labelIndex;
    labelIndex2 = [(HMDService *)self labelIndex];
    labelIndex3 = [valuesCopy labelIndex];
    v50 = [labelIndex2 isEqual:labelIndex3];

    if ((v50 & 1) == 0)
    {
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
      labelIndex4 = [valuesCopy labelIndex];
      [(HMDService *)self setLabelIndex:labelIndex4];

      _checkIfDefaultNameChanged = [(HMDService *)self _checkIfDefaultNameChanged];
      if (_checkIfDefaultNameChanged)
      {
        [v13 addObject:_checkIfDefaultNameChanged];
      }
    }
  }

  labelNamespace = [valuesCopy labelNamespace];
  if (labelNamespace)
  {
    v54 = labelNamespace;
    labelNamespace2 = [(HMDService *)self labelNamespace];
    labelNamespace3 = [valuesCopy labelNamespace];
    v57 = [labelNamespace2 isEqual:labelNamespace3];

    if ((v57 & 1) == 0)
    {
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
      labelNamespace4 = [valuesCopy labelNamespace];
      [(HMDService *)self setLabelNamespace:labelNamespace4];
    }
  }

  configurationState = [valuesCopy configurationState];
  if (configurationState)
  {
    v60 = configurationState;
    configurationState2 = [(HMDService *)self configurationState];
    configurationState3 = [valuesCopy configurationState];
    v63 = [configurationState2 isEqual:configurationState3];

    if ((v63 & 1) == 0)
    {
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
      configurationState4 = [valuesCopy configurationState];
      [(HMDService *)self setConfigurationState:configurationState4];

      v149[0] = *MEMORY[0x277CD25F8];
      instanceID2 = [(HMDService *)self instanceID];
      v150[0] = instanceID2;
      v149[1] = *MEMORY[0x277CD2590];
      configurationState5 = [valuesCopy configurationState];
      v150[1] = configurationState5;
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];

      v68 = MEMORY[0x277D0F818];
      v69 = *MEMORY[0x277CD2598];
      identifier2 = [messageCopy identifier];
      v71 = [v68 entitledMessageWithName:v69 identifier:identifier2 messagePayload:v67];

      [v13 addObject:v71];
    }
  }

  linkedServices = [valuesCopy linkedServices];
  if (linkedServices)
  {
    v73 = linkedServices;
    linkedServices2 = [(HMDService *)self linkedServices];
    linkedServices3 = [valuesCopy linkedServices];
    v76 = [linkedServices2 isEqualToArray:linkedServices3];

    if ((v76 & 1) == 0)
    {
      linkedServices4 = [valuesCopy linkedServices];
      [(HMDService *)self setLinkedServices:linkedServices4];

      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
    }
  }

  accessory = [(HMDService *)self accessory];
  serviceProperties = [valuesCopy serviceProperties];
  if (serviceProperties)
  {
    v80 = serviceProperties;
    serviceProperties2 = [(HMDService *)self serviceProperties];
    serviceProperties3 = [valuesCopy serviceProperties];
    unsignedIntegerValue = [serviceProperties3 unsignedIntegerValue];

    if (serviceProperties2 != unsignedIntegerValue)
    {
      [transactionResult markChanged];
      serviceProperties4 = [valuesCopy serviceProperties];
      -[HMDService setServiceProperties:](self, "setServiceProperties:", [serviceProperties4 unsignedIntegerValue]);

      LODWORD(serviceProperties4) = [(HMDService *)self isPrimary];
      [(HMDService *)self setPrimary:[(HMDService *)self serviceProperties]& 1];
      if (serviceProperties4 != [(HMDService *)self isPrimary])
      {
        [accessory updatePrimaryServiceIfNeeded];
      }

      [(HMDService *)self _shouldServiceBeHidden];
    }
  }

  supportsTargetController = [accessory supportsTargetController];
  if ([valuesCopy propertyWasSet:@"lastKnownOperatingState"])
  {
    lastKnownOperatingState = [valuesCopy lastKnownOperatingState];
    lastKnownOperatingState2 = [(HMDService *)self lastKnownOperatingState];
    v87 = HMFEqualObjects();

    if ((v87 & 1) == 0)
    {
      lastKnownOperatingState3 = [valuesCopy lastKnownOperatingState];
      [(HMDService *)self setLastKnownOperatingState:lastKnownOperatingState3];

      [transactionResult markChanged];
    }
  }

  if ([valuesCopy propertyWasSet:@"lastKnownOperatingStateAbnormalReasons"])
  {
    lastKnownOperatingStateAbnormalReasons = [valuesCopy lastKnownOperatingStateAbnormalReasons];
    lastKnownOperatingStateAbnormalReasons2 = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];
    v91 = HMFEqualObjects();

    if ((v91 & 1) == 0)
    {
      lastKnownOperatingStateAbnormalReasons3 = [valuesCopy lastKnownOperatingStateAbnormalReasons];
      [(HMDService *)self setLastKnownOperatingStateAbnormalReasons:lastKnownOperatingStateAbnormalReasons3];

      [transactionResult markChanged];
    }
  }

  v134 = accessory;
  mediaSourceIdentifier = [valuesCopy mediaSourceIdentifier];
  if (mediaSourceIdentifier)
  {
    v94 = mediaSourceIdentifier;
    mediaSourceIdentifier2 = [valuesCopy mediaSourceIdentifier];
    mediaSourceIdentifier3 = [(HMDService *)self mediaSourceIdentifier];
    v97 = [mediaSourceIdentifier2 isEqual:mediaSourceIdentifier3];

    if ((v97 & 1) == 0)
    {
      mediaSourceIdentifier4 = [valuesCopy mediaSourceIdentifier];
      [(HMDService *)self setMediaSourceIdentifier:mediaSourceIdentifier4];

      v147[0] = *MEMORY[0x277CD25F8];
      instanceID3 = [(HMDService *)self instanceID];
      v148[0] = instanceID3;
      v147[1] = *MEMORY[0x277CD0D88];
      mediaSourceIdentifier5 = [valuesCopy mediaSourceIdentifier];
      v148[1] = mediaSourceIdentifier5;
      v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:2];

      v102 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD0D90] messagePayload:v101];
      [v13 addObject:v102];

      [transactionResult markChanged];
    }
  }

  v103 = v13;
  v104 = messageCopy;
  name = [messageCopy name];
  v106 = [name isEqualToString:*MEMORY[0x277CD1238]];

  mediaSourceDisplayOrder = [valuesCopy mediaSourceDisplayOrder];
  if (!mediaSourceDisplayOrder)
  {
    goto LABEL_45;
  }

  v108 = mediaSourceDisplayOrder;
  mediaSourceDisplayOrder2 = [valuesCopy mediaSourceDisplayOrder];
  mediaSourceDisplayOrder3 = [(HMDService *)self mediaSourceDisplayOrder];
  v111 = [mediaSourceDisplayOrder2 isEqualToArray:mediaSourceDisplayOrder3];

  v104 = messageCopy;
  if ((v111 & 1) == 0)
  {
    mediaSourceDisplayOrder4 = [valuesCopy mediaSourceDisplayOrder];
    [(HMDService *)self setMediaSourceDisplayOrder:mediaSourceDisplayOrder4];

    [transactionResult markChanged];
  }

  else
  {
LABEL_45:
    if (!v106)
    {
      goto LABEL_49;
    }
  }

  v145[0] = *MEMORY[0x277CD25F8];
  instanceID4 = [(HMDService *)self instanceID];
  v146[0] = instanceID4;
  v145[1] = *MEMORY[0x277CD1230];
  mediaSourceDisplayOrder5 = [valuesCopy mediaSourceDisplayOrder];
  v146[1] = mediaSourceDisplayOrder5;
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:2];

  v116 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD1240] messagePayload:v115];
  [v103 addObject:v116];

LABEL_49:
  characteristics = [valuesCopy characteristics];

  if (characteristics)
  {
    characteristics2 = [valuesCopy characteristics];
    v119 = [(HMDService *)self updateCharacteristics:characteristics2];

    if (v119)
    {
      [transactionResult markChanged];
      [transactionResult markSaveToAssistant];
    }
  }

  v131 = transactionResult;
  v120 = dispatch_group_create();
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = v103;
  v121 = [obj countByEnumeratingWithState:&v140 objects:v144 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v141;
    do
    {
      for (i = 0; i != v122; ++i)
      {
        if (*v141 != v123)
        {
          objc_enumerationMutation(obj);
        }

        v125 = *(*(&v140 + 1) + 8 * i);
        dispatch_group_enter(v120);
        if (v104)
        {
          identifier3 = [v104 identifier];
          [v125 setIdentifier:identifier3];
        }

        msgDispatcher = [v134 msgDispatcher];
        uuid = [v134 uuid];
        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = __59__HMDService__transactionServiceUpdated_newValues_message___block_invoke;
        v138[3] = &unk_27868A728;
        v139 = v120;
        [msgDispatcher sendMessage:v125 target:uuid andInvokeCompletionHandler:v138];

        v104 = messageCopy;
      }

      v122 = [obj countByEnumeratingWithState:&v140 objects:v144 count:16];
    }

    while (v122);
  }

  dispatch_group_wait(v120, 0);
  [v104 respondWithPayload:0];
  if (v15)
  {
    dispatch_group_leave(v15);
  }

  if (supportsTargetController != [v134 supportsTargetController])
  {
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = __59__HMDService__transactionServiceUpdated_newValues_message___block_invoke_2;
    v136[3] = &unk_27868A250;
    v137 = v134;
    [v137 configureTargetControllerWithCompletion:v136];
  }

  v129 = *MEMORY[0x277D85DE8];
}

- (void)_processTransactionForNameComponents:(id)components messagesToSendToAccessory:(id)accessory result:(id)result
{
  v70 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  accessoryCopy = accessory;
  resultCopy = result;
  name = [(HMDService *)self name];
  getConfiguredNameForXPCClients = [(HMDService *)self getConfiguredNameForXPCClients];
  lastSeenConfiguredNameLocal = [componentsCopy lastSeenConfiguredNameLocal];

  if (lastSeenConfiguredNameLocal)
  {
    lastSeenConfiguredName = [(HMDService *)self lastSeenConfiguredName];
    lastSeenConfiguredNameLocal2 = [componentsCopy lastSeenConfiguredNameLocal];
    v16 = HMFEqualObjects();

    if (v16)
    {
      setProperties = [componentsCopy setProperties];
      v18 = [setProperties containsObject:@"expectedConfiguredName"];

      if (v18)
      {
        expectedConfiguredName = [componentsCopy expectedConfiguredName];
        [(HMDService *)self setExpectedConfiguredName:expectedConfiguredName];
      }

      v20 = 0;
      goto LABEL_15;
    }

    lastSeenConfiguredNameLocal3 = [componentsCopy lastSeenConfiguredNameLocal];
    hm_truncatedNameString = [lastSeenConfiguredNameLocal3 hm_truncatedNameString];
    [(HMDService *)self _saveLastSeenAndExpectedConfiguredName:hm_truncatedNameString];

    [(HMDService *)self _saveForExpectedConfiguredNameUpdate];
LABEL_14:
    v20 = 1;
    goto LABEL_15;
  }

  setProperties2 = [componentsCopy setProperties];
  v22 = [setProperties2 containsObject:@"expectedConfiguredName"];

  v65 = accessoryCopy;
  if (!v22)
  {
    setProperties3 = [componentsCopy setProperties];
    v41 = [setProperties3 containsObject:@"name"];

    if (v41 && (-[HMDService getConfiguredName](self, "getConfiguredName"), v42 = objc_claimAutoreleasedReturnValue(), [componentsCopy name], v43 = objc_claimAutoreleasedReturnValue(), v44 = HMFEqualObjects(), v43, v42, (v44 & 1) == 0))
    {
      name2 = [componentsCopy name];
      [(HMDService *)self setConfiguredName:name2];

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    providedName = [componentsCopy providedName];
    if (!providedName)
    {
      accessoryCopy = v65;
      goto LABEL_15;
    }

    v52 = providedName;
    providedName2 = [(HMDService *)self providedName];
    providedName3 = [componentsCopy providedName];
    v55 = [providedName2 isEqual:providedName3];

    accessoryCopy = v65;
    if ((v55 & 1) == 0)
    {
      providedName4 = [(HMDService *)self providedName];
      providedName5 = [componentsCopy providedName];
      hm_truncatedNameString2 = [providedName5 hm_truncatedNameString];
      v59 = [(HMDService *)self _updateProvidedName:hm_truncatedNameString2];

      accessoryCopy = v65;
      if (v59)
      {
        [v65 addObject:v59];
      }

      if (providedName4)
      {
        _checkIfDefaultNameChanged = [(HMDService *)self _checkIfDefaultNameChanged];

        if (_checkIfDefaultNameChanged)
        {
          [v65 addObject:_checkIfDefaultNameChanged];
          v59 = _checkIfDefaultNameChanged;
        }

        else
        {
          v59 = 0;
        }
      }

      goto LABEL_14;
    }

    goto LABEL_15;
  }

  expectedConfiguredName2 = [(HMDService *)self expectedConfiguredName];
  expectedConfiguredName3 = [componentsCopy expectedConfiguredName];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    expectedConfiguredName4 = [componentsCopy expectedConfiguredName];
    hm_truncatedNameString3 = [expectedConfiguredName4 hm_truncatedNameString];

    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    v64 = hm_truncatedNameString3;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v67 = v30;
      v68 = 2112;
      v69 = v64;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Updating expected configured name to %@", buf, 0x16u);

      hm_truncatedNameString3 = v64;
    }

    objc_autoreleasePoolPop(context);
    [(HMDService *)selfCopy setExpectedConfiguredName:hm_truncatedNameString3];
    accessory = [(HMDService *)selfCopy accessory];
    home = [accessory home];
    if ([home isOwnerUser])
    {
      [(HMDService *)selfCopy getConfiguredName];
      v33 = contexta = v25;
      lastSeenConfiguredName2 = [(HMDService *)selfCopy lastSeenConfiguredName];
      v61 = HMFEqualObjects();

      accessoryCopy = v65;
      v25 = contexta;

      if (!v61)
      {
LABEL_24:

        goto LABEL_25;
      }

      accessory = [(HMDService *)selfCopy _sanitizeNameToWriteToAccessory:v64];
      [(HMDService *)selfCopy _writeConfiguredNameToAccessory:accessory];
    }

    else
    {
    }

    goto LABEL_24;
  }

LABEL_25:
  v20 = v25 ^ 1;
  setProperties4 = [componentsCopy setProperties];
  if (![setProperties4 containsObject:@"name"])
  {

    goto LABEL_15;
  }

  getConfiguredName = [(HMDService *)self getConfiguredName];
  name3 = [componentsCopy name];
  v48 = HMFEqualObjects();

  accessoryCopy = v65;
  if ((v48 & 1) == 0)
  {
    name4 = [componentsCopy name];
    [(HMDService *)self setConfiguredName:name4];

    accessoryCopy = v65;
    goto LABEL_14;
  }

LABEL_15:
  name5 = [(HMDService *)self name];
  getConfiguredNameForXPCClients2 = [(HMDService *)self getConfiguredNameForXPCClients];
  if (!HMFEqualObjects() || (v20 | HMFEqualObjects() ^ 1) == 1)
  {
    [resultCopy markChanged];
    [resultCopy markSaveToAssistant];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_saveLastSeenAndExpectedConfiguredName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(HMDService *)self setLastSeenConfiguredName:nameCopy];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    lastSeenConfiguredName = [(HMDService *)selfCopy lastSeenConfiguredName];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = lastSeenConfiguredName;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating last seen configured (and configured/expected configured name to %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDService *)selfCopy setExpectedConfiguredName:nameCopy];
  [(HMDService *)selfCopy setConfiguredName:nameCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_saveForLastSeenConfiguredNameUpdate
{
  v34 = *MEMORY[0x277D85DE8];
  accessory = [(HMDService *)self accessory];
  v4 = *MEMORY[0x277CD2550];
  home = [accessory home];
  backingStore = [home backingStore];
  v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v8 = [backingStore transaction:v4 options:v7];

  v9 = [HMDServiceTransaction alloc];
  uuid = [(HMDService *)self uuid];
  uuid2 = [accessory uuid];
  v12 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    getConfiguredName = [(HMDService *)selfCopy getConfiguredName];
    lastSeenConfiguredName = [(HMDService *)selfCopy lastSeenConfiguredName];
    *buf = 138543874;
    v29 = v16;
    v30 = 2112;
    v31 = getConfiguredName;
    v32 = 2112;
    v33 = lastSeenConfiguredName;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Creating save transaction for update of configured '%@; and lastSeen configured name '%@'", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  getConfiguredName2 = [(HMDService *)selfCopy getConfiguredName];
  [(HMDServiceTransaction *)v12 setName:getConfiguredName2];

  lastSeenConfiguredName2 = [(HMDService *)selfCopy lastSeenConfiguredName];
  [(HMDServiceTransaction *)v12 setLastSeenConfiguredNameLocal:lastSeenConfiguredName2];

  [v8 add:v12 withMessage:0];
  objc_initWeak(buf, selfCopy);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __50__HMDService__saveForLastSeenConfiguredNameUpdate__block_invoke;
  v24[3] = &unk_278685D08;
  objc_copyWeak(&v27, buf);
  v21 = v4;
  v25 = v21;
  v22 = v12;
  v26 = v22;
  [v8 save:v24];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

void __50__HMDService__saveForLastSeenConfiguredNameUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained accessory];
  v3 = [v2 home];
  [v3 saveWithReason:*(a1 + 32) postSyncNotification:0 objectChange:*(a1 + 40) != 0];
}

- (void)_saveForExpectedConfiguredNameUpdate
{
  v28 = *MEMORY[0x277D85DE8];
  accessory = [(HMDService *)self accessory];
  home = [accessory home];
  backingStore = [home backingStore];
  v6 = *MEMORY[0x277CD2550];
  v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v8 = [backingStore transaction:v6 options:v7];

  v9 = [HMDServiceTransaction alloc];
  uuid = [(HMDService *)self uuid];
  uuid2 = [accessory uuid];
  v12 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    getConfiguredName = [(HMDService *)selfCopy getConfiguredName];
    expectedConfiguredName = [(HMDService *)selfCopy expectedConfiguredName];
    v22 = 138543874;
    v23 = v16;
    v24 = 2112;
    v25 = getConfiguredName;
    v26 = 2112;
    v27 = expectedConfiguredName;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Creating save transaction for update of configured '%@; and expected configured name '%@'", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  getConfiguredName2 = [(HMDService *)selfCopy getConfiguredName];
  [(HMDServiceTransaction *)v12 setName:getConfiguredName2];

  expectedConfiguredName2 = [(HMDService *)selfCopy expectedConfiguredName];
  [(HMDServiceTransaction *)v12 setExpectedConfiguredName:expectedConfiguredName2];

  [v8 add:v12 withMessage:0];
  [v8 run];

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_messagesForConfiguredNameChange
{
  v7[1] = *MEMORY[0x277D85DE8];
  nameChangedMessage = [(HMDService *)self nameChangedMessage];
  v3 = nameChangedMessage;
  if (nameChangedMessage)
  {
    v7[0] = nameChangedMessage;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = valuesCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDService *)self _transactionServiceUpdated:0 newValues:v12 message:messageCopy];
    responseHandler2 = valuesCopy;
LABEL_15:

    goto LABEL_16;
  }

  responseHandler2 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = responseHandler2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    [(HMDService *)self appDataUpdated:v15 message:messageCopy];
    goto LABEL_15;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = responseHandler2;
    v28 = 2112;
    v29 = objc_opt_class();
    v20 = v29;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(responseHandler2 + 2))(responseHandler2, v22, 0);

    goto LABEL_15;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_encodeWithCoder:(id)coder
{
  v70 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  accessory = [(HMDService *)self accessory];
  v6 = accessory;
  if ([coderCopy hmd_isForXPCTransport])
  {
    uuid = [accessory uuid];
    [coderCopy encodeObject:uuid forKey:*MEMORY[0x277CD0DC8]];

    v6 = accessoryToEncodeForXPCTransportForAccessory(accessory);
  }

  [coderCopy encodeConditionalObject:v6 forKey:@"accessory"];
  uuid2 = [(HMDService *)self uuid];
  [coderCopy encodeObject:uuid2 forKey:*MEMORY[0x277CD2660]];

  serviceType = [(HMDService *)self serviceType];
  [coderCopy encodeObject:serviceType forKey:*MEMORY[0x277CD2650]];

  instanceID = [(HMDService *)self instanceID];
  [coderCopy encodeObject:instanceID forKey:*MEMORY[0x277CD25F0]];

  associatedServiceType = [(HMDService *)self associatedServiceType];
  [coderCopy encodeObject:associatedServiceType forKey:@"associatedServiceType"];

  matterEndpointID = [(HMDService *)self matterEndpointID];
  [coderCopy encodeObject:matterEndpointID forKey:*MEMORY[0x277CD2610]];

  if ([coderCopy hmd_isForXPCTransport])
  {
    v62 = v6;
    v64 = accessory;
    v13 = MEMORY[0x277CBEB18];
    characteristics = [(HMDService *)self characteristics];
    v15 = [v13 arrayWithCapacity:{objc_msgSend(characteristics, "count")}];

    v16 = +[HMDHAPMetadata getSharedInstance];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    selfCopy = self;
    characteristics2 = [(HMDService *)self characteristics];
    v18 = [characteristics2 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v66;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v66 != v20)
          {
            objc_enumerationMutation(characteristics2);
          }

          v22 = *(*(&v65 + 1) + 8 * i);
          type = [v22 type];
          v24 = [v16 shouldFilterCharacteristicOfTypeFromApp:type];

          if ((v24 & 1) == 0)
          {
            [v15 addObject:v22];
          }
        }

        v19 = [characteristics2 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v19);
    }

    v25 = [v15 copy];
    [coderCopy encodeObject:v25 forKey:*MEMORY[0x277CD2578]];

    accessory = v64;
    primaryService = [v64 primaryService];
    self = selfCopy;
    v27 = primaryService == selfCopy;

    [coderCopy encodeBool:v27 forKey:@"HM.primary"];
    v6 = v62;
  }

  else
  {
    characteristics3 = [(HMDService *)self characteristics];
    [coderCopy encodeObject:characteristics3 forKey:*MEMORY[0x277CD2578]];

    [coderCopy encodeBool:-[HMDService isPrimary](self forKey:{"isPrimary"), @"HM.primary"}];
    [coderCopy encodeInt:-[HMDService serviceProperties](self forKey:{"serviceProperties"), @"HM.serviceProperties"}];
  }

  [coderCopy encodeBool:-[HMDService isHidden](self forKey:{"isHidden"), @"HM.hidden"}];
  linkedServices = [(HMDService *)self linkedServices];
  [coderCopy encodeObject:linkedServices forKey:@"HM.linkedServices"];

  if (([coderCopy hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    if ([coderCopy hmd_isForXPCTransport])
    {
      name = [(HMDService *)self name];
      v31 = MEMORY[0x277CD2618];
    }

    else
    {
      [coderCopy encodeObject:self->_configuredName forKey:*MEMORY[0x277CD2618]];
      providedName = [(HMDService *)self providedName];
      [coderCopy encodeObject:providedName forKey:*MEMORY[0x277CD2628]];

      labelIndex = [(HMDService *)self labelIndex];
      [coderCopy encodeObject:labelIndex forKey:*MEMORY[0x277CD2600]];

      labelNamespace = [(HMDService *)self labelNamespace];
      [coderCopy encodeObject:labelNamespace forKey:*MEMORY[0x277CD2608]];

      serviceSubtype = [(HMDService *)self serviceSubtype];
      [coderCopy encodeObject:serviceSubtype forKey:*MEMORY[0x277CD2638]];

      name = [(HMDService *)self configurationState];
      v31 = MEMORY[0x277CD2588];
    }

    [coderCopy encodeObject:name forKey:*v31];
  }

  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  appData = [(HMDService *)self appData];
  getConfiguredNameForXPCClients = appData;
  if (!hmd_isForXPCTransport)
  {
    [coderCopy encodeObject:appData forKey:@"HM.appDataRepository"];
    goto LABEL_24;
  }

  [appData encodeForXPCTransportWithCoder:coderCopy key:@"HM.appData"];

  if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    getConfiguredNameForXPCClients = [(HMDService *)self getConfiguredNameForXPCClients];
    [coderCopy encodeObject:getConfiguredNameForXPCClients forKey:*MEMORY[0x277CD25A0]];
    defaultName = [(HMDService *)self defaultName];
    [coderCopy encodeObject:defaultName forKey:*MEMORY[0x277CD25A8]];

    serviceSubtype2 = [(HMDService *)self serviceSubtype];
    [coderCopy encodeObject:serviceSubtype2 forKey:*MEMORY[0x277CD2638]];

    configurationState = [(HMDService *)self configurationState];
    [coderCopy encodeObject:configurationState forKey:*MEMORY[0x277CD2588]];

LABEL_24:
  }

  if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForXPCTransport"))
  {
    bulletinBoardNotification = [(HMDService *)self bulletinBoardNotification];
    [coderCopy encodeObject:bulletinBoardNotification forKey:@"HM.BulletinBoardNotification"];
  }

  if (![coderCopy hmd_isForXPCTransport] || objc_msgSend(coderCopy, "hmd_isForXPCTransport") && objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    lastKnownOperatingState = [(HMDService *)self lastKnownOperatingState];

    if (lastKnownOperatingState)
    {
      lastKnownOperatingState2 = [(HMDService *)self lastKnownOperatingState];
      [coderCopy encodeObject:lastKnownOperatingState2 forKey:*MEMORY[0x277CD0D68]];
    }

    lastKnownOperatingStateAbnormalReasons = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];

    if (lastKnownOperatingStateAbnormalReasons)
    {
      lastKnownOperatingStateAbnormalReasons2 = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];
      [coderCopy encodeObject:lastKnownOperatingStateAbnormalReasons2 forKey:*MEMORY[0x277CD0D60]];
    }
  }

  mediaSourceIdentifier = [(HMDService *)self mediaSourceIdentifier];

  if (mediaSourceIdentifier)
  {
    mediaSourceIdentifier2 = [(HMDService *)self mediaSourceIdentifier];
    [coderCopy encodeObject:mediaSourceIdentifier2 forKey:*MEMORY[0x277CD0D80]];
  }

  mediaSourceDisplayOrder = [(HMDService *)self mediaSourceDisplayOrder];
  v50 = [mediaSourceDisplayOrder count];

  if (v50)
  {
    mediaSourceDisplayOrder2 = [(HMDService *)self mediaSourceDisplayOrder];
    [coderCopy encodeObject:mediaSourceDisplayOrder2 forKey:*MEMORY[0x277CD0D70]];
  }

  v52 = [(HMDService *)self findCharacteristicWithType:@"00000136-0000-1000-8000-0026BB765291"];
  supportsWrite = [v52 supportsWrite];
  [coderCopy encodeBool:supportsWrite forKey:*MEMORY[0x277CD0D78]];
  v54 = [(HMDService *)self findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
  v55 = v54;
  if (v54)
  {
    supportsWrite2 = [v54 supportsWrite];
  }

  else
  {
    supportsWrite2 = 1;
  }

  [coderCopy encodeBool:supportsWrite2 forKey:*MEMORY[0x277CD0D98]];
  if (([coderCopy hmd_isForXPCTransport] & 1) == 0)
  {
    expectedConfiguredName = [(HMDService *)self expectedConfiguredName];

    if (expectedConfiguredName)
    {
      expectedConfiguredName2 = [(HMDService *)self expectedConfiguredName];
      [coderCopy encodeObject:expectedConfiguredName2 forKey:@"HMDServiceExpectedConfiguredNameKey"];
    }
  }

  if ([coderCopy hmd_isForLocalStore])
  {
    lastSeenConfiguredName = [(HMDService *)self lastSeenConfiguredName];

    if (lastSeenConfiguredName)
    {
      lastSeenConfiguredName2 = [(HMDService *)self lastSeenConfiguredName];
      [coderCopy encodeObject:lastSeenConfiguredName2 forKey:@"HMDLastSeenConfiguredNameKey"];
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDService *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)coder
{
  v76 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD25F0]];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2660]];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v12 = v11 = v6;
      uUIDString = [v7 UUIDString];
      *buf = 138543618;
      v73 = v12;
      v74 = 2112;
      v75 = uUIDString;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@HMDService decoding with uuid %@", buf, 0x16u);

      v6 = v11;
    }

    objc_autoreleasePoolPop(v8);
  }

  v14 = [(HMDService *)self initWithAccessory:v5 owner:v5 instance:v6 uuid:v7];
  if (v14)
  {
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2650]];
    v16 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v15];
    serviceType = v14->_serviceType;
    v14->_serviceType = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedServiceType"];

    v19 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v18];
    associatedServiceType = v14->_associatedServiceType;
    v14->_associatedServiceType = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2638]];

    v22 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v21];
    serviceSubtype = v14->_serviceSubtype;
    v14->_serviceSubtype = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2628]];
    hm_truncatedNameString = [v24 hm_truncatedNameString];
    providedName = v14->_providedName;
    v14->_providedName = hm_truncatedNameString;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2618]];
    hm_truncatedNameString2 = [v27 hm_truncatedNameString];
    configuredName = v14->_configuredName;
    v14->_configuredName = hm_truncatedNameString2;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDServiceExpectedConfiguredNameKey"];
    hm_truncatedNameString3 = [v30 hm_truncatedNameString];
    expectedConfiguredName = v14->_expectedConfiguredName;
    v14->_expectedConfiguredName = hm_truncatedNameString3;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDLastSeenConfiguredNameKey"];
    hm_truncatedNameString4 = [v33 hm_truncatedNameString];
    lastSeenConfiguredName = v14->_lastSeenConfiguredName;
    v14->_lastSeenConfiguredName = hm_truncatedNameString4;

    [(HMDService *)v14 _updateDefaultName];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D68]];
    lastKnownOperatingState = v14->_lastKnownOperatingState;
    v14->_lastKnownOperatingState = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D60]];
    lastKnownOperatingStateAbnormalReasons = v14->_lastKnownOperatingStateAbnormalReasons;
    v14->_lastKnownOperatingStateAbnormalReasons = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D80]];
    mediaSourceIdentifier = v14->_mediaSourceIdentifier;
    v14->_mediaSourceIdentifier = v40;

    v42 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D70]];
    mediaSourceDisplayOrder = v14->_mediaSourceDisplayOrder;
    v14->_mediaSourceDisplayOrder = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2600]];
    labelIndex = v14->_labelIndex;
    v14->_labelIndex = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2608]];
    labelNamespace = v14->_labelNamespace;
    v14->_labelNamespace = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2588]];
    configurationState = v14->_configurationState;
    v14->_configurationState = v48;

    v50 = MEMORY[0x277CBEB98];
    v71[0] = objc_opt_class();
    v71[1] = objc_opt_class();
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    v52 = [v50 setWithArray:v51];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:*MEMORY[0x277CD2578]];
    characteristics = v14->_characteristics;
    v14->_characteristics = v53;

    v14->_serviceProperties = [coderCopy decodeIntForKey:@"HM.serviceProperties"];
    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2610]];
    matterEndpointID = v14->_matterEndpointID;
    v14->_matterEndpointID = v55;

    v57 = MEMORY[0x277CBEB98];
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    v59 = [v57 setWithArray:v58];
    v60 = [coderCopy decodeObjectOfClasses:v59 forKey:@"HM.linkedServices"];
    linkedServices = v14->_linkedServices;
    v14->_linkedServices = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v14->_appData;
    v14->_appData = v62;

    v64 = v14->_appData;
    uuid = [(HMDService *)v14 uuid];
    [(HMDApplicationData *)v64 updateParentUUIDIfNil:uuid];

    if ([(HMDService *)v14 _supportsBulletinNotification])
    {
      v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotification"];
      bulletinBoardNotification = v14->_bulletinBoardNotification;
      v14->_bulletinBoardNotification = v66;
    }
  }

  v68 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDService *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)updatePresenceRequestTimeForDeviceWithDestination:(id)destination
{
  v21 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  if (destinationCopy)
  {
    deviceLastRequestPresenceDateMap = [(HMDService *)self deviceLastRequestPresenceDateMap];

    if (!deviceLastRequestPresenceDateMap)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(HMDService *)self setDeviceLastRequestPresenceDateMap:dictionary];
    }

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      uuid = [(HMDService *)selfCopy uuid];
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = uuid;
      v19 = 2112;
      v20 = destinationCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[%@] Update presence request time for %@.", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    date = [MEMORY[0x277CBEAA8] date];
    deviceLastRequestPresenceDateMap2 = [(HMDService *)selfCopy deviceLastRequestPresenceDateMap];
    [deviceLastRequestPresenceDateMap2 setObject:date forKeyedSubscript:destinationCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldIncludePresenceForDeviceWithDestination:(id)destination
{
  v26 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  if (destinationCopy)
  {
    deviceLastRequestPresenceDateMap = [(HMDService *)self deviceLastRequestPresenceDateMap];
    v6 = [deviceLastRequestPresenceDateMap objectForKeyedSubscript:destinationCopy];

    if (v6)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:v6];
      v9 = v8;

      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        uuid = [(HMDService *)selfCopy uuid];
        v18 = 138544130;
        v19 = v13;
        v20 = 2112;
        v21 = uuid;
        v22 = 2112;
        v23 = destinationCopy;
        v24 = 2048;
        v25 = v9;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] Check if we need to include presence in notification for %@. Interval since last update %lf.", &v18, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      v15 = v9 <= 86400.0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)shouldEnableDaemonRelaunch
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  characteristics = [(HMDService *)self characteristics];
  v4 = [characteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(characteristics);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        type = [v8 type];
        service = [v8 service];
        type2 = [service type];
        v12 = [HMDBulletinBoard isBulletinSupportedForCharacteristicType:type serviceType:type2];

        if (v12)
        {
          bulletinBoardNotification = [(HMDService *)self bulletinBoardNotification];
          isEnabled = [bulletinBoardNotification isEnabled];

          if (isEnabled)
          {
            v15 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [characteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
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

- (void)configureBulletinNotification
{
  bulletinBoardNotification = [(HMDService *)self bulletinBoardNotification];
  [bulletinBoardNotification configureBulletinNotification];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  v20 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
LABEL_9:
    _HMFPreconditionFailure();
  }

  v8 = dispatcherCopy;
  if (!dispatcherCopy)
  {
    goto LABEL_9;
  }

  [(HMDService *)self setWorkQueue:queueCopy];
  objc_storeStrong(&self->_messageDispatcher, dispatcher);
  [(HMDService *)self _registerForMessages];
  [(HMDService *)self _shouldServiceBeHidden];
  [(HMDService *)self _createNotification];
  bulletinBoardNotification = [(HMDService *)self bulletinBoardNotification];
  [bulletinBoardNotification configureWithWorkQueue:queueCopy messageDispatcher:v8];

  if (self->_instanceID == &unk_283E72B78)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDService *)selfCopy dumpStateWithPrivacyLevel:0];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@*** DEBUG THIS : File a Radar : HomeKit | New Bugs ***: Service dump : [%@]", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateLastKnownValues
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  characteristics = [(HMDService *)self characteristics];
  v3 = [characteristics countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(characteristics);
        }

        [*(*(&v8 + 1) + 8 * v6++) updateLastKnownValue];
      }

      while (v4 != v6);
      v4 = [characteristics countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getLastSeenConfiguredName
{
  v2 = [(NSString *)self->_lastSeenConfiguredName copy];

  return v2;
}

- (id)getConfiguredNameForXPCClients
{
  expectedConfiguredName = [(HMDService *)self expectedConfiguredName];
  if (!expectedConfiguredName)
  {
    expectedConfiguredName = self->_configuredName;
    if (!expectedConfiguredName)
    {
      expectedConfiguredName = self->_defaultName;
    }
  }

  v4 = expectedConfiguredName;
  v5 = [(NSString *)expectedConfiguredName copy];

  return v5;
}

- (id)getConfiguredName
{
  v2 = [(NSString *)self->_configuredName copy];

  return v2;
}

- (BOOL)updateAssociatedServiceType:(id)type error:(id *)error
{
  typeCopy = type;
  v8 = +[HMDHAPMetadata getSharedInstance];
  serviceType = [(HMDService *)self serviceType];
  v10 = [v8 validateAssociatedServiceType:typeCopy forService:serviceType];

  if (v10)
  {
    if (error)
    {
      v11 = v10;
      *error = v10;
    }
  }

  else
  {
    objc_storeStrong(&self->_associatedServiceType, type);
  }

  return v10 == 0;
}

- (id)messagesForUpdatedRoom:(id)room
{
  serviceType = [(HMDService *)self serviceType];
  v5 = [serviceType isEqualToString:*MEMORY[0x277CD0F20]];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    getConfiguredNameForXPCClients = [(HMDService *)self getConfiguredNameForXPCClients];
    name = [(HMDService *)self name];
    _checkIfDefaultNameChanged = [(HMDService *)self _checkIfDefaultNameChanged];
    if (_checkIfDefaultNameChanged)
    {
      [v6 addObject:_checkIfDefaultNameChanged];
    }

    getConfiguredNameForXPCClients2 = [(HMDService *)self getConfiguredNameForXPCClients];
    if (HMFEqualObjects())
    {
      name2 = [(HMDService *)self name];
      if ((HMFEqualObjects() & 1) == 0)
      {
        nameChangedMessage = [(HMDService *)self nameChangedMessage];
        if (nameChangedMessage)
        {
          [v6 addObject:nameChangedMessage];
        }
      }
    }

    else
    {
      name2 = [(HMDService *)self _messagesForConfiguredNameChange];
      [v6 addObjectsFromArray:name2];
    }

    v13 = [v6 copy];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

- (id)nameChangedMessage
{
  v21[3] = *MEMORY[0x277D85DE8];
  accessory = [(HMDService *)self accessory];
  home = [accessory home];
  name = [(HMDService *)self name];
  v6 = name;
  v7 = 0;
  if (home && name)
  {
    v20[0] = *MEMORY[0x277CD25F8];
    instanceID = [(HMDService *)self instanceID];
    v9 = *MEMORY[0x277CD2620];
    v21[0] = instanceID;
    v21[1] = v6;
    v10 = *MEMORY[0x277CD0640];
    v20[1] = v9;
    v20[2] = v10;
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    v21[2] = uUIDString;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

    getConfiguredNameForXPCClients = [(HMDService *)self getConfiguredNameForXPCClients];
    if (getConfiguredNameForXPCClients)
    {
      v7 = [MEMORY[0x277D0F818] nonSPIEntitledMessageWithName:*MEMORY[0x277CD2630] messagePayload:v13];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D0F820]);
      uuid2 = [accessory uuid];
      v17 = [v15 initWithTarget:uuid2];

      v7 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD2630] destination:v17 payload:v13];
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_checkIfDefaultNameChanged
{
  v37 = *MEMORY[0x277D85DE8];
  expectedConfiguredName = [(HMDService *)self expectedConfiguredName];
  defaultName = [(HMDService *)self defaultName];
  [(HMDService *)self _updateDefaultName];
  defaultName2 = [(HMDService *)self defaultName];
  accessory = [(HMDService *)self accessory];
  home = [accessory home];
  if (home && (HMFEqualObjects() & 1) == 0)
  {
    v9 = [(HMDService *)self findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
    if ([v9 supportsWrite] && (!expectedConfiguredName || HMFEqualObjects()))
    {
      v30 = v9;
      backingStore = [home backingStore];
      v11 = *MEMORY[0x277CD2550];
      v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v29 = [backingStore transaction:v11 options:v12];

      v13 = [HMDServiceTransaction alloc];
      uuid = [(HMDService *)self uuid];
      uuid2 = [accessory uuid];
      v16 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v20 = v28 = v17;
        *buf = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = defaultName2;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Creating run transaction for update of expected configured name '%@' due to defaultName change", buf, 0x16u);

        v17 = v28;
      }

      objc_autoreleasePoolPop(v17);
      [(HMDServiceTransaction *)v16 setExpectedConfiguredName:defaultName2];
      [v29 add:v16 withMessage:0];
      [v29 run];

      v9 = v30;
    }

    v31[0] = *MEMORY[0x277CD25F8];
    instanceID = [(HMDService *)self instanceID];
    v31[1] = *MEMORY[0x277CD2620];
    v32[0] = instanceID;
    v32[1] = defaultName2;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    v23 = objc_alloc(MEMORY[0x277D0F820]);
    uuid3 = [accessory uuid];
    v25 = [v23 initWithTarget:uuid3];

    v8 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD25B0] destination:v25 payload:v22];
  }

  else
  {
    v8 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_updateDefaultName
{
  _deriveDefaultName = [(HMDService *)self _deriveDefaultName];
  [(HMDService *)self setDefaultName:_deriveDefaultName];
}

- (id)_deriveDefaultName
{
  serviceType = [(HMDService *)self serviceType];
  v4 = [serviceType isEqualToString:*MEMORY[0x277CD0F38]];

  if (!v4)
  {
    serviceType2 = [(HMDService *)self serviceType];
    if ([serviceType2 isEqualToString:*MEMORY[0x277CD0F20]])
    {
    }

    else
    {
      serviceType3 = [(HMDService *)self serviceType];
      v15 = [serviceType3 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"];

      if (!v15)
      {
        providedName = [(HMDService *)self providedName];
        goto LABEL_14;
      }
    }

    accessory = [(HMDService *)self accessory];
    room = [accessory room];
    providedName = [room name];

LABEL_11:
    goto LABEL_14;
  }

  labelIndex = [(HMDService *)self labelIndex];

  if (labelIndex)
  {
    serviceSubtype = [(HMDService *)self serviceSubtype];
    v7 = [serviceSubtype isEqualToString:*MEMORY[0x277CD0DA8]];

    if (v7)
    {
      v8 = @"DEFAULT_SPRINKLER_VALVE";
    }

    else
    {
      v8 = @"DEFAULT_FAUCET_VALVE";
    }

    accessory = HMDLocalizedStringForKey(v8);
    v10 = MEMORY[0x277CCACA8];
    labelIndex2 = [(HMDService *)self labelIndex];
    providedName = [v10 stringWithFormat:@"%@ %@", accessory, labelIndex2];

    goto LABEL_11;
  }

  providedName = 0;
LABEL_14:

  return providedName;
}

- (NSString)name
{
  v3 = 96;
  if ([(NSString *)self->_expectedConfiguredName length]|| (v3 = 88, [(NSString *)self->_configuredName length]))
  {
    defaultName3 = *(&self->super.super.isa + v3);
LABEL_4:
    name = defaultName3;
    goto LABEL_5;
  }

  defaultName = [(HMDService *)self defaultName];
  if ([defaultName length])
  {
    defaultName2 = [(HMDService *)self defaultName];
    providedName = [(HMDService *)self providedName];
    v11 = [defaultName2 isEqualToString:providedName];

    if ((v11 & 1) == 0)
    {
      defaultName3 = [(HMDService *)self defaultName];
      goto LABEL_4;
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  name = [WeakRetained name];

LABEL_5:
  v6 = [name copy];

  return v6;
}

- (id)findCharacteristicWithType:(id)type
{
  v19 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  characteristics = [(HMDService *)self characteristics];
  v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        type = [v9 type];
        v11 = [type isEqual:typeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [characteristics countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)findCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  characteristics = [(HMDService *)self characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__HMDService_findCharacteristic___block_invoke;
  v9[3] = &unk_278687EB0;
  v10 = characteristicCopy;
  v6 = characteristicCopy;
  v7 = [characteristics na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __33__HMDService_findCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 instanceID];
  v4 = *(a1 + 32);
  v5 = HAPEqualInstanceIDs();

  return v5;
}

void __66__HMDService__readRequiredCharacteristicValuesForceReadFWVersion___block_invoke(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  v55 = WeakRetained;
  if (WeakRetained && v5)
  {
    v7 = [HMDServiceTransaction alloc];
    v8 = [WeakRetained uuid];
    v9 = [v6 uuid];
    v53 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:2 uuid:v8 parentUUID:v9];

    v63 = 0;
    v49 = v6;
    v54 = [v6 transactionWithObjectChangeType:2];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v50 = v3;
    obj = v3;
    v56 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    v10 = 0;
    if (v56)
    {
      v52 = *v60;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v59 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v14 = v55;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = HMFGetLogIdentifier();
            *buf = 138543618;
            v65 = v16;
            v66 = 2112;
            v67 = v12;
            _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Got response %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v17 = [v12 request];
          v18 = [v17 characteristic];

          v19 = [v12 value];
          v20 = [v12 valueUpdatedTime];
          v21 = [v12 stateNumber];
          v22 = [v12 notificationContext];
          [v18 updateValue:v19 updatedTime:v20 stateNumber:v21 notificationContext:v22];

          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __66__HMDService__readRequiredCharacteristicValuesForceReadFWVersion___block_invoke_159;
          aBlock[3] = &unk_278678710;
          v58 = v53;
          v23 = _Block_copy(aBlock);
          v24 = [v18 type];
          v25 = [v12 value];
          v26 = [v14 serviceType];
          v27 = [v14 accessory];
          LOBYTE(v21) = [HMDService processUpdateForCharacteristicType:v24 value:v25 serviceType:v26 service:v14 serviceTransactionGetter:v23 accessory:v27 accessoryTransaction:v54 accessoryTransactionChanged:&v63];

          v10 |= v21;
        }

        v56 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v56);
    }

    v6 = v49;
    v28 = [v49 home];
    v29 = [(HMDServiceTransaction *)v53 providedName];

    if (v29)
    {
      v30 = [v28 backingStore];
      v31 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
      v32 = [v30 transaction:@"ServiceUpdated" options:v31];

      v33 = [HMDServiceTransaction alloc];
      v34 = [v55 uuid];
      v35 = [v49 uuid];
      v36 = [(HMDBackingStoreModelObject *)v33 initWithObjectChangeType:2 uuid:v34 parentUUID:v35];

      v37 = [(HMDServiceTransaction *)v53 providedName];
      [(HMDServiceTransaction *)v36 setProvidedName:v37];

      [(HMDServiceTransaction *)v53 setProvidedName:0];
      [v32 add:v36 withMessage:0];
      [v32 run];
    }

    if (v10)
    {
      v38 = [v28 backingStore];
      v39 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v40 = [v38 transaction:@"ServiceUpdated" options:v39];

      [v40 add:v53 withMessage:0];
      [v40 run];
    }

    if (v63 == 1)
    {
      v41 = [v28 backingStore];
      v42 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v43 = [v41 transaction:@"AccessoryUpdated" options:v42];

      [v43 add:v54 withMessage:0];
      [v43 run];
    }

    v3 = v50;
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = WeakRetained;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v47;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Service or accessory is no more valid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReadingRequiredForBTLEServiceCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  type = [characteristicCopy type];
  v6 = [type isEqualToString:*MEMORY[0x277CCF988]];

  if (v6)
  {
    providedName = [(HMDService *)self providedName];
  }

  else
  {
    type2 = [characteristicCopy type];
    v9 = [type2 isEqualToString:*MEMORY[0x277CCF7E0]];

    if (v9)
    {
      providedName = [(HMDService *)self getLastSeenConfiguredName];
    }

    else
    {
      serviceType = [(HMDService *)self serviceType];
      if ([serviceType isEqualToString:*MEMORY[0x277CD0E78]])
      {
        type3 = [characteristicCopy type];
        v13 = [type3 isEqualToString:*MEMORY[0x277CCF8E8]];

        if (v13)
        {
          providedName = [(HMDService *)self mediaSourceIdentifier];
          goto LABEL_5;
        }
      }

      else
      {
      }

      serviceType2 = [(HMDService *)self serviceType];
      if ([serviceType2 isEqualToString:@"00000221-0000-1000-8000-0026BB765291"])
      {
        type4 = [characteristicCopy type];
        v16 = [type4 isEqualToString:@"00000251-0000-1000-8000-0026BB765291"];

        if (v16)
        {
          LODWORD(self) = ![(HMDService *)self powerManagementSupportedSleepCharRead];
          goto LABEL_6;
        }
      }

      else
      {
      }

      serviceType3 = [(HMDService *)self serviceType];
      if ([serviceType3 isEqualToString:*MEMORY[0x277CD0F20]])
      {
        type5 = [characteristicCopy type];
        v19 = [type5 isEqualToString:@"00000136-0000-1000-8000-0026BB765291"];

        if (v19)
        {
          mediaSourceDisplayOrder = [(HMDService *)self mediaSourceDisplayOrder];
          LOBYTE(self) = [mediaSourceDisplayOrder count] == 0;

          goto LABEL_6;
        }
      }

      else
      {
      }

      type6 = [characteristicCopy type];
      v22 = [type6 isEqualToString:@"000000CB-0000-1000-8000-0026BB765291"];

      if (v22)
      {
        providedName = [(HMDService *)self labelIndex];
      }

      else
      {
        type7 = [characteristicCopy type];
        v24 = [type7 isEqualToString:@"000000CD-0000-1000-8000-0026BB765291"];

        if (v24)
        {
          providedName = [(HMDService *)self labelNamespace];
        }

        else
        {
          type8 = [characteristicCopy type];
          v26 = [type8 isEqualToString:@"000000D5-0000-1000-8000-0026BB765291"];

          if (v26)
          {
            providedName = [(HMDService *)self serviceSubtype];
          }

          else
          {
            type9 = [characteristicCopy type];
            v28 = [type9 isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];

            if (!v28)
            {
              LOBYTE(self) = 0;
              goto LABEL_6;
            }

            providedName = [(HMDService *)self configurationState];
          }
        }
      }
    }
  }

LABEL_5:
  LOBYTE(self) = providedName == 0;

LABEL_6:
  return self;
}

- (id)_updateProvidedName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  name = [(HMDService *)self name];
  if ([HMDService validateProvidedName:nameCopy])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = nameCopy;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Filling provided name with %@ from name characteristic", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDService *)selfCopy setProvidedName:nameCopy];
    name2 = [(HMDService *)selfCopy name];
    v11 = [name isEqualToString:name2];

    if ((v11 & 1) == 0)
    {
      nameChangedMessage = [(HMDService *)selfCopy nameChangedMessage];
      goto LABEL_8;
    }
  }

  else
  {
    providedName = self->_providedName;
    self->_providedName = 0;
  }

  nameChangedMessage = 0;
LABEL_8:

  v14 = *MEMORY[0x277D85DE8];

  return nameChangedMessage;
}

- (void)_shouldServiceBeHidden
{
  selfCopy = self;
  v29 = *MEMORY[0x277D85DE8];
  if ((-[HMDService serviceProperties](self, "serviceProperties") & 2) != 0 || (-[HMDService type](selfCopy, "type"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:*MEMORY[0x277CD0DD0]], v3, v4))
  {
    v5 = *MEMORY[0x277D85DE8];

    [(HMDService *)selfCopy setHidden:1];
  }

  else
  {
    characteristics = [(HMDService *)selfCopy characteristics];
    if ([characteristics count])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = characteristics;
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v22 = characteristics;
        v23 = selfCopy;
        v10 = *v25;
        v11 = *MEMORY[0x277CCF988];
        v12 = *MEMORY[0x277CCF7E0];
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v24 + 1) + 8 * i);
            type = [v14 type];
            if ([type isEqualToString:v11])
            {
            }

            else
            {
              type2 = [v14 type];
              v17 = [type2 isEqualToString:v12];

              if ((v17 & 1) == 0 && ([v14 properties] & 0x40) == 0)
              {
                v18 = 0;
                goto LABEL_21;
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

        v18 = 1;
LABEL_21:
        characteristics = v22;
        selfCopy = v23;
      }

      else
      {
        v18 = 1;
      }

      v19 = selfCopy;
      v20 = v18;
    }

    else
    {
      v19 = selfCopy;
      v20 = 0;
    }

    [(HMDService *)v19 setHidden:v20];

    v21 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)_supportsBulletinNotification
{
  if (!+[HMDDeviceCapabilities supportsBulletinBoard])
  {
    return 0;
  }

  serviceType = [(HMDService *)self serviceType];
  if ([HMDBulletinBoard isBulletinSupportedForCharacteristicType:0 serviceType:serviceType])
  {
    v4 = 1;
  }

  else
  {
    serviceType2 = [(HMDService *)self serviceType];
    v4 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:serviceType2];
  }

  return v4;
}

- (void)_createNotification
{
  if ([(HMDService *)self _supportsBulletinNotification])
  {
    bulletinBoardNotification = [(HMDService *)self bulletinBoardNotification];

    if (!bulletinBoardNotification)
    {
      home = [(HMDService *)self home];
      accessoryBulletinNotificationManager = [home accessoryBulletinNotificationManager];

      v5 = [accessoryBulletinNotificationManager bulletinBoardNotificationForService:self];
      bulletinBoardNotification = self->_bulletinBoardNotification;
      self->_bulletinBoardNotification = v5;
    }
  }
}

- (id)configureWithService:(id)service accessory:(id)accessory shouldRead:(BOOL)read added:(BOOL)added
{
  readCopy = read;
  v169 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accessoryCopy = accessory;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  characteristics = [(HMDService *)self characteristics];
  v10 = MEMORY[0x277CBEB18];
  v138 = serviceCopy;
  characteristics2 = [serviceCopy characteristics];
  v143 = [v10 arrayWithArray:characteristics2];

  v12 = +[HMDHAPMetadata getSharedInstance];
  selfCopy = self;
  accessory = [(HMDService *)self accessory];
  home = [accessory home];
  notificationRegistrations = [home notificationRegistrations];
  v136 = [notificationRegistrations count];

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = characteristics;
  v141 = v12;
  v144 = [obj countByEnumeratingWithState:&v149 objects:v168 count:16];
  if (v144)
  {
    v142 = *v150;
    v135 = *MEMORY[0x277CFE810];
    v14 = @"H";
    if (!v136)
    {
      v14 = &stru_283CF9D50;
    }

    v122 = v14;
    v126 = *MEMORY[0x277CD21B8];
    v125 = *MEMORY[0x277CD21E0];
    v124 = *MEMORY[0x277CD21D0];
    v123 = *MEMORY[0x277CD2168];
    v121 = *MEMORY[0x277CD2150];
    do
    {
      for (i = 0; i != v144; ++i)
      {
        if (*v150 != v142)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v149 + 1) + 8 * i);
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v17 = v143;
        v18 = [v17 countByEnumeratingWithState:&v145 objects:v167 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v146;
LABEL_10:
          v21 = 0;
          while (1)
          {
            if (*v146 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v145 + 1) + 8 * v21);
            characteristicType = [v16 characteristicType];
            type = [v22 type];
            v25 = [characteristicType isEqual:type];

            if (v25)
            {
              break;
            }

            if (v19 == ++v21)
            {
              v19 = [v17 countByEnumeratingWithState:&v145 objects:v167 count:16];
              if (v19)
              {
                goto LABEL_10;
              }

              v26 = v17;
              v12 = v141;
              goto LABEL_61;
            }
          }

          v26 = v22;

          v12 = v141;
          if (!v26)
          {
            continue;
          }

          lastKnownValueUpdateTime = [v16 lastKnownValueUpdateTime];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = lastKnownValueUpdateTime;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          [v16 configureWithCharacteristic:v26];
          type2 = [v26 type];
          type3 = [v138 type];
          [v26 setProhibitCaching:{objc_msgSend(v141, "requiresDeviceUnlock:forService:", type2, type3)}];

          type4 = [v16 type];
          LOBYTE(type3) = [type4 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

          if ((type3 & 1) == 0)
          {
            type5 = [(HMDService *)selfCopy type];
            v137 = v29;
            if ([type5 isEqualToString:v135])
            {
              type6 = [v16 type];
              v35 = [type6 isEqualToString:@"000000A6-0000-1000-8000-0026BB765291"];
            }

            else
            {
              v35 = 0;
            }

            service = [v16 service];
            type7 = [v16 type];
            type8 = [(HMDService *)selfCopy type];
            v39 = [v141 shouldAutoEnableNotificationForCharacteristic:type7 ofService:type8];

            if (v136)
            {
              type9 = [v16 type];
              type10 = [service type];
              v42 = [v141 shouldEnableHomeNotificationForCharacteristicType:type9 serviceType:type10];
            }

            else
            {
              v42 = 0;
            }

            type11 = [v16 type];
            type12 = [(HMDService *)selfCopy type];
            v45 = [v141 shouldFilterEnableNotificationsForCharacteristicType:type11 serviceType:type12];

            if ([v16 properties])
            {
              v46 = (v45 ^ 1) & v42;
              if ((v39 | v35 | v46))
              {
                v47 = v46 == 0;
                v48 = @"com.apple.HomeKitDaemon";
                if (!v47)
                {
                  v48 = @"com.apple.HomeKitDaemon.homeNotifications";
                }

                if (v39)
                {
                  v48 = @"com.apple.HomeKitDaemon.autoEnableNotification";
                }

                v49 = v48;
                isWatch();
                v50 = objc_autoreleasePoolPush();
                v51 = selfCopy;
                v52 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  HMFGetLogIdentifier();
                  v53 = v131 = v49;
                  v54 = &stru_283CF9D50;
                  if (v39)
                  {
                    v55 = @"A";
                  }

                  else
                  {
                    v55 = &stru_283CF9D50;
                  }

                  if (v35)
                  {
                    v54 = @"F";
                  }

                  v128 = v54;
                  v129 = v55;
                  accessory2 = [(HMDService *)v51 accessory];
                  name = [accessory2 name];
                  [v16 instanceID];
                  v57 = v133 = service;
                  [v16 type];
                  v58 = v132 = v50;
                  v59 = HAPShortUUIDType();
                  *buf = 138544898;
                  v154 = v53;
                  v155 = 2112;
                  v156 = v129;
                  v157 = 2112;
                  v158 = v128;
                  v159 = 2112;
                  v160 = v122;
                  v161 = 2112;
                  v162 = name;
                  v163 = 2112;
                  v164 = v57;
                  v165 = 2112;
                  v166 = v59;
                  _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@Enabling notifications on behalf of homed(%@%@%@) for characteristic %@(%@/%@)", buf, 0x48u);

                  v50 = v132;
                  service = v133;

                  v49 = v131;
                }

                objc_autoreleasePoolPop(v50);
                [v16 setNotificationEnabled:1 forClientIdentifier:v49];
              }
            }

            v12 = v141;
            v29 = v137;
            if ([v16 isNotificationEnabled])
            {
              v60 = objc_autoreleasePoolPush();
              v61 = selfCopy;
              v62 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v63 = v134 = service;
                shortDescription = [v16 shortDescription];
                notificationRegistrations2 = [v16 notificationRegistrations];
                *buf = 138543874;
                v154 = v63;
                v155 = 2112;
                v156 = shortDescription;
                v157 = 2112;
                v158 = notificationRegistrations2;
                _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Notifications are enabled for characteristic %@ on behalf of %@", buf, 0x20u);

                v12 = v141;
                service = v134;
              }

              objc_autoreleasePoolPop(v60);
            }
          }

          valueUpdatedTime = [v26 valueUpdatedTime];
          if ([v29 compare:valueUpdatedTime] == -1)
          {
            valueUpdatedTime2 = [v26 valueUpdatedTime];
            distantPast = [MEMORY[0x277CBEAA8] distantPast];
            v69 = [valueUpdatedTime2 isEqualToDate:distantPast];

            if ((v69 & 1) == 0)
            {
              valueUpdatedTime = [MEMORY[0x277CBEB38] dictionary];
              value = [v26 value];
              if (value)
              {
                [v26 value];
              }

              else
              {
                [MEMORY[0x277CBEB68] null];
              }
              v71 = ;
              [valueUpdatedTime setObject:v71 forKeyedSubscript:v126];

              valueUpdatedTime3 = [v26 valueUpdatedTime];
              [valueUpdatedTime setObject:valueUpdatedTime3 forKeyedSubscript:v125];

              stateNumber = [v26 stateNumber];
              if (stateNumber)
              {
                [v26 stateNumber];
              }

              else
              {
                [MEMORY[0x277CBEB68] null];
              }
              v74 = ;
              [valueUpdatedTime setObject:v74 forKeyedSubscript:v124];

              notificationEnabledTime = [v16 notificationEnabledTime];
              [valueUpdatedTime setObject:notificationEnabledTime forKeyedSubscript:v123];

              notificationContext = [v26 notificationContext];

              if (notificationContext)
              {
                notificationContext2 = [v26 notificationContext];
                [valueUpdatedTime setObject:notificationContext2 forKeyedSubscript:v121];
              }

              instanceID = [v26 instanceID];
              [dictionary setObject:valueUpdatedTime forKey:instanceID];

              goto LABEL_59;
            }
          }

          else
          {
LABEL_59:
          }

          goto LABEL_61;
        }

        v26 = v17;
LABEL_61:
      }

      v144 = [obj countByEnumeratingWithState:&v149 objects:v168 count:16];
    }

    while (v144);
  }

  v79 = v138;
  if (readCopy)
  {
    type13 = [v138 type];
    if ([type13 isEqualToString:*MEMORY[0x277CD0DD0]])
    {
    }

    else
    {
      type14 = [v138 type];
      v82 = [type14 isEqualToString:*MEMORY[0x277CFE818]];

      if (!v82)
      {
LABEL_71:
        [(HMDService *)selfCopy _readRequiredCharacteristicValuesForceReadFWVersion:v82];
        goto LABEL_72;
      }
    }

    accessory3 = [v138 accessory];
    server = [accessory3 server];
    configNumber = [server configNumber];
    configNumber2 = [accessory configNumber];
    v47 = configNumber == configNumber2;
    v82 = configNumber != configNumber2;
    if (!v47)
    {
      [accessory setConfigNumber:{objc_msgSend(server, "configNumber")}];
    }

    goto LABEL_71;
  }

LABEL_72:
  v87 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  if ([dictionary count])
  {
    [v87 setObject:dictionary forKey:@"kModifiedCharacteristicsForAccessoryKey"];
  }

  [(HMDService *)selfCopy _updateDefaultName];
  v88 = [(HMDService *)selfCopy findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
  v89 = v88;
  if (v88)
  {
    value2 = [v88 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = value2;
    }

    else
    {
      v91 = 0;
    }

    v92 = v91;

    if (![(__CFString *)v92 length])
    {

      v92 = 0;
    }

    if ([(HMDService *)selfCopy shouldUpdateLastSeenConfiguredName:v92])
    {
      v93 = objc_autoreleasePoolPush();
      v94 = selfCopy;
      v95 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v96 = HMFGetLogIdentifier();
        *buf = 138543618;
        v154 = v96;
        v155 = 2112;
        v156 = v92;
        _os_log_impl(&dword_229538000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@Creating a transaction to save accessory reported name (%@) as expected and configured name", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v93);
      [(HMDService *)v94 _saveCurrentNameAsExpectedAndLastSeen:v92];
    }

    else if ([home isOwnerUser])
    {
      if ([v89 supportsWrite])
      {
        expectedConfiguredName = [(HMDService *)selfCopy expectedConfiguredName];
        v98 = HMFEqualObjects();

        if ((v98 & 1) == 0)
        {
          lastSeenConfiguredName = [(HMDService *)selfCopy lastSeenConfiguredName];
          v100 = HMFEqualObjects();

          if (v100)
          {
            expectedConfiguredName2 = [(HMDService *)selfCopy expectedConfiguredName];
            v102 = [(HMDService *)selfCopy _sanitizeNameToWriteToAccessory:expectedConfiguredName2];

            v103 = objc_autoreleasePoolPush();
            v104 = selfCopy;
            v105 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              v106 = HMFGetLogIdentifier();
              name2 = [(HMDService *)v104 name];
              lastSeenConfiguredName2 = [(HMDService *)v104 lastSeenConfiguredName];
              *buf = 138544130;
              v154 = v106;
              v155 = 2112;
              v156 = v102;
              v157 = 2112;
              v158 = name2;
              v159 = 2112;
              v160 = lastSeenConfiguredName2;
              _os_log_impl(&dword_229538000, v105, OS_LOG_TYPE_DEFAULT, "%{public}@Overwriting configured name since expected name does not match expected: %@, name: %@, lastSeen: %@", buf, 0x2Au);

              v79 = v138;
              v12 = v141;
            }

            objc_autoreleasePoolPop(v103);
            [(HMDService *)v104 _writeConfiguredNameToAccessory:v102];
          }
        }
      }
    }
  }

  type15 = [v79 type];
  v110 = [type15 isEqualToString:*MEMORY[0x277CD0E08]];

  if (v110)
  {
    v111 = objc_autoreleasePoolPush();
    v112 = selfCopy;
    v113 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      v114 = HMFGetLogIdentifier();
      *buf = 138543362;
      v154 = v114;
      _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_DEBUG, "%{public}@Service is camera recording management, sending kick notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v111);
    logAndPostNotification(@"HMDRecordingManagementServiceDidUpdateNotification", accessory, 0);
  }

  v115 = *MEMORY[0x277D85DE8];

  return v87;
}

- (id)_sanitizeNameToWriteToAccessory:(id)accessory
{
  v29 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  hm_truncatedNameString = [accessoryCopy hm_truncatedNameString];
  if (![hm_truncatedNameString length])
  {
    defaultName = [(HMDService *)self defaultName];

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = defaultName;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Name to write to accessory is nil, writing defaultName %@ to the accessory", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDService *)selfCopy findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
    metadata = [v11 metadata];
    maxLength = [metadata maxLength];
    unsignedIntegerValue = [maxLength unsignedIntegerValue];

    if ([defaultName length] > unsignedIntegerValue)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [defaultName length];
        v23 = 138543874;
        v24 = v18;
        v25 = 2048;
        v26 = v19;
        v27 = 2048;
        v28 = unsignedIntegerValue;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@DefaultName length %lu larger than accessory supported length %lu - truncating", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [defaultName substringToIndex:unsignedIntegerValue];

      defaultName = v20;
    }

    hm_truncatedNameString = defaultName;
  }

  v21 = *MEMORY[0x277D85DE8];

  return hm_truncatedNameString;
}

- (void)_handleSetAppData:(id)data
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  accessory = [(HMDService *)self accessory];
  home = [accessory home];
  if (home)
  {
    v7 = @"com.apple.homekit-entitledclient.identifer";
    v29 = 0;
    v8 = [dataCopy appDataDictionaryWithError:&v29];
    v9 = v29;
    if (v8)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v13;
        v32 = 2112;
        v33 = @"com.apple.homekit-entitledclient.identifer";
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating application data for: %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      appData = [(HMDService *)selfCopy appData];
      uuid = [(HMDService *)selfCopy uuid];
      v16 = [HMDApplicationDataModel modelWithAppDataPayload:v8 existingAppData:appData parentUUID:uuid];

      if (v16)
      {
        backingStore = [home backingStore];
        name = [dataCopy name];
        v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v20 = [backingStore transaction:name options:v19];

        [v20 add:v16 withMessage:dataCopy];
        [v20 run];
      }

      else
      {
        [dataCopy respondWithSuccess];
      }
    }

    else
    {
      [dataCopy respondWithError:v9];
    }

    responseHandler = @"com.apple.homekit-entitledclient.identifer";
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      name2 = [accessory name];
      name3 = [(HMDService *)selfCopy2 name];
      *buf = 138543874;
      v31 = v24;
      v32 = 2112;
      v33 = name2;
      v34 = 2112;
      v35 = name3;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Attempt to set appData on an accessory %@ service '%@' that is no longer part of a home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    responseHandler = [dataCopy responseHandler];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
    (responseHandler->data)(responseHandler, v9, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setAppData:(id)data
{
  dataCopy = data;
  os_unfair_recursive_lock_lock_with_options();
  appData = self->_appData;
  self->_appData = dataCopy;

  os_unfair_recursive_lock_unlock();
}

- (HMDApplicationData)appData
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_appData;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDService *)self accessory];
  uuid = [accessory uuid];
  type = [(HMDService *)self type];
  v7 = HAPShortUUIDType();
  instanceID = [(HMDService *)self instanceID];
  v9 = [v3 stringWithFormat:@"%@/%@/%@", uuid, v7, instanceID];

  return v9;
}

- (void)setLastSeenConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_recursive_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  lastSeenConfiguredName = self->_lastSeenConfiguredName;
  self->_lastSeenConfiguredName = hm_truncatedNameString;

  os_unfair_recursive_lock_unlock();
}

- (NSString)lastSeenConfiguredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lastSeenConfiguredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setExpectedConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_recursive_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  expectedConfiguredName = self->_expectedConfiguredName;
  self->_expectedConfiguredName = hm_truncatedNameString;

  os_unfair_recursive_lock_unlock();
}

- (NSString)expectedConfiguredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_expectedConfiguredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_recursive_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  configuredName = self->_configuredName;
  self->_configuredName = hm_truncatedNameString;

  os_unfair_recursive_lock_unlock();
}

- (NSString)configuredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setProvidedName:(id)name
{
  nameCopy = name;
  os_unfair_recursive_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  providedName = self->_providedName;
  self->_providedName = hm_truncatedNameString;

  os_unfair_recursive_lock_unlock();
}

- (NSString)providedName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_providedName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (BOOL)isCustom
{
  serviceType = [(HMDService *)self serviceType];
  v3 = [serviceType substringFromIndex:8];

  LOBYTE(serviceType) = [v3 isEqualToString:@"-0000-1000-8000-0026BB765291"];
  return serviceType ^ 1;
}

- (id)home
{
  accessory = [(HMDService *)self accessory];
  home = [accessory home];

  return home;
}

- (NSString)serviceIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  accessory = [(HMDService *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  instanceID = [(HMDService *)self instanceID];
  v8 = [v3 stringWithFormat:@"%@:%@", uUIDString, instanceID];

  return v8;
}

- (NSNumber)instanceID
{
  v2 = [(NSNumber *)self->_instanceID copy];

  return v2;
}

- (NSString)type
{
  serviceType = [(HMDService *)self serviceType];
  v3 = [serviceType copy];

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v119 = *MEMORY[0x277D85DE8];
  v97 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  associatedServiceType = [(HMDService *)self associatedServiceType];

  if (associatedServiceType)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = +[HMDHAPMetadata getSharedInstance];
    associatedServiceType2 = [(HMDService *)self associatedServiceType];
    v9 = [v7 descriptionForServiceType:associatedServiceType2];
    v108 = [v6 stringWithFormat:@", associatedServiceType: %@", v9];
  }

  else
  {
    v108 = &stru_283CF9D50;
  }

  serviceType = [(HMDService *)self serviceType];
  v11 = *MEMORY[0x277CFE988];
  if ([serviceType hasSuffix:*MEMORY[0x277CFE988]])
  {
    v12 = [serviceType substringToIndex:{objc_msgSend(serviceType, "length") - objc_msgSend(v11, "length")}];

    v107 = v12;
  }

  else
  {
    v107 = serviceType;
  }

  string = [MEMORY[0x277CCACA8] string];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  selfCopy = self;
  linkedServices = [(HMDService *)self linkedServices];
  v15 = [linkedServices countByEnumeratingWithState:&v113 objects:v118 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v114;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v114 != v17)
        {
          objc_enumerationMutation(linkedServices);
        }

        v19 = *(*(&v113 + 1) + 8 * i);
        if ([string length])
        {
          v20 = [string stringByAppendingFormat:@", "];

          string = v20;
        }

        v21 = string;
        string = [string stringByAppendingFormat:@"%@", v19];
      }

      v16 = [linkedServices countByEnumeratingWithState:&v113 objects:v118 count:16];
    }

    while (v16);
  }

  v22 = MEMORY[0x277CCACA8];
  instanceID = [(HMDService *)selfCopy instanceID];
  name = [(HMDService *)selfCopy name];
  serviceProperties = [(HMDService *)selfCopy serviceProperties];
  [(HMDService *)selfCopy isPrimary];
  v104 = HMFBooleanToString();
  [(HMDService *)selfCopy isCustom];
  v103 = HMFBooleanToString();
  [(HMDService *)selfCopy isHidden];
  v102 = HMFBooleanToString();
  isHidden = [(HMDService *)selfCopy isHidden];
  v100 = v22;
  if (isHidden)
  {
    v86 = &stru_283CF9D50;
  }

  else
  {
    v24 = MEMORY[0x277CCACA8];
    urlString = [(HMDService *)selfCopy urlString];
    v86 = [v24 stringWithFormat:@", assistantIdentifier: %@", urlString];
  }

  v84 = [string length];
  if (v84)
  {
    v96 = [MEMORY[0x277CCACA8] stringWithFormat:@", Links: %@", string];
  }

  else
  {
    v96 = &stru_283CF9D50;
  }

  serviceSubtype = [(HMDService *)selfCopy serviceSubtype];
  if (serviceSubtype)
  {
    v25 = MEMORY[0x277CCACA8];
    serviceSubtype2 = [(HMDService *)selfCopy serviceSubtype];
    v95 = [v25 stringWithFormat:@", subType: %@", serviceSubtype2];
  }

  else
  {
    v95 = &stru_283CF9D50;
  }

  labelIndex = [(HMDService *)selfCopy labelIndex];
  if (labelIndex)
  {
    v27 = MEMORY[0x277CCACA8];
    labelIndex2 = [(HMDService *)selfCopy labelIndex];
    v94 = [v27 stringWithFormat:@", labelIndex: %@", labelIndex2];
  }

  else
  {
    v94 = &stru_283CF9D50;
  }

  labelNamespace = [(HMDService *)selfCopy labelNamespace];
  if (labelNamespace)
  {
    v29 = MEMORY[0x277CCACA8];
    labelNamespace2 = [(HMDService *)selfCopy labelNamespace];
    v93 = [v29 stringWithFormat:@", labelNamespace: %@", labelNamespace2];
  }

  else
  {
    v93 = &stru_283CF9D50;
  }

  configurationState = [(HMDService *)selfCopy configurationState];
  if (configurationState)
  {
    v31 = MEMORY[0x277CCACA8];
    configurationState2 = [(HMDService *)selfCopy configurationState];
    v92 = [v31 stringWithFormat:@", configurationState: %@", configurationState2];
  }

  else
  {
    v92 = &stru_283CF9D50;
  }

  expectedConfiguredName = [(HMDService *)selfCopy expectedConfiguredName];
  if (expectedConfiguredName)
  {
    v33 = MEMORY[0x277CCACA8];
    expectedConfiguredName2 = [(HMDService *)selfCopy expectedConfiguredName];
    v91 = [v33 stringWithFormat:@", expectedConfiguredName: %@", expectedConfiguredName2];
  }

  else
  {
    v91 = &stru_283CF9D50;
  }

  lastSeenConfiguredName = [(HMDService *)selfCopy lastSeenConfiguredName];
  if (lastSeenConfiguredName)
  {
    v34 = MEMORY[0x277CCACA8];
    lastSeenConfiguredName2 = [(HMDService *)selfCopy lastSeenConfiguredName];
    v90 = [v34 stringWithFormat:@", lastSeenConfiguredName: %@", lastSeenConfiguredName2];
  }

  else
  {
    v90 = &stru_283CF9D50;
  }

  lastKnownDiscoveryMode = [(HMDService *)selfCopy lastKnownDiscoveryMode];
  if (lastKnownDiscoveryMode)
  {
    v35 = MEMORY[0x277CCACA8];
    lastKnownDiscoveryMode2 = [(HMDService *)selfCopy lastKnownDiscoveryMode];
    v89 = [v35 stringWithFormat:@", lastKnownDiscoveryMode: %@", lastKnownDiscoveryMode2];
  }

  else
  {
    v89 = &stru_283CF9D50;
  }

  v82 = labelIndex;
  lastKnownOperatingState = [(HMDService *)selfCopy lastKnownOperatingState];
  v81 = labelNamespace;
  if (lastKnownOperatingState)
  {
    v36 = MEMORY[0x277CCACA8];
    lastKnownOperatingState2 = [(HMDService *)selfCopy lastKnownOperatingState];
    [lastKnownOperatingState2 integerValue];
    v68 = HAPOperatingStateAsString();
    v88 = [v36 stringWithFormat:@", lastKnownOperatingState: %@", v68];
  }

  else
  {
    v88 = &stru_283CF9D50;
  }

  lastKnownOperatingStateAbnormalReasons = [(HMDService *)selfCopy lastKnownOperatingStateAbnormalReasons];
  v79 = configurationState;
  if (lastKnownOperatingStateAbnormalReasons)
  {
    v38 = MEMORY[0x277CCACA8];
    lastKnownOperatingStateAbnormalReasons2 = [(HMDService *)selfCopy lastKnownOperatingStateAbnormalReasons];
    [lastKnownOperatingStateAbnormalReasons2 unsignedIntegerValue];
    v66 = HAPOperatingStateAbnormalReasonsAsString();
    v87 = [v38 stringWithFormat:@", lastKnownOperatingStateAbnormalReasons: %@", v66];
  }

  else
  {
    v87 = &stru_283CF9D50;
  }

  v78 = expectedConfiguredName;
  mediaSourceIdentifier = [(HMDService *)selfCopy mediaSourceIdentifier];
  if (mediaSourceIdentifier)
  {
    v40 = MEMORY[0x277CCACA8];
    mediaSourceIdentifier2 = [(HMDService *)selfCopy mediaSourceIdentifier];
    v41 = [v40 stringWithFormat:@", mediaSourceIdentifier: %@", mediaSourceIdentifier2];
  }

  else
  {
    v41 = &stru_283CF9D50;
  }

  mediaSourceDisplayOrder = [(HMDService *)selfCopy mediaSourceDisplayOrder];
  if (mediaSourceDisplayOrder)
  {
    v43 = isHidden;
    v44 = MEMORY[0x277CCACA8];
    mediaSourceDisplayOrder2 = [(HMDService *)selfCopy mediaSourceDisplayOrder];
    v46 = [v44 stringWithFormat:@", mediaSourceDisplayOrder: %@", mediaSourceDisplayOrder2];
    v101 = [v100 stringWithFormat:@"instanceID: %@, type: %@, name: %@, properties: 0x%lx, primary: %@, custom: %@, hidden: %@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", instanceID, v107, name, serviceProperties, v104, v103, v102, v86, v108, v96, v95, v94, v93, v92, v91, v90, v89, v88, v87, v41, v46];

    isHidden = v43;
  }

  else
  {
    v101 = [v100 stringWithFormat:@"instanceID: %@, type: %@, name: %@, properties: 0x%lx, primary: %@, custom: %@, hidden: %@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", instanceID, v107, name, serviceProperties, v104, v103, v102, v86, v108, v96, v95, v94, v93, v92, v91, v90, v89, v88, v87, v41, &stru_283CF9D50];
  }

  if (mediaSourceIdentifier)
  {
  }

  if (lastKnownOperatingStateAbnormalReasons)
  {
  }

  if (lastKnownOperatingState)
  {
  }

  v47 = v97;
  if (lastKnownDiscoveryMode)
  {
  }

  if (lastSeenConfiguredName)
  {
  }

  if (v78)
  {
  }

  if (v79)
  {
  }

  if (v81)
  {
  }

  if (v82)
  {
  }

  if (serviceSubtype)
  {
  }

  if (v84)
  {
  }

  if (!isHidden)
  {
  }

  [v97 setObject:v101 forKeyedSubscript:*MEMORY[0x277D0F170]];
  appData = [(HMDService *)selfCopy appData];
  v49 = [appData dumpStateWithPrivacyLevel:level];
  [v97 setObject:v49 forKeyedSubscript:*MEMORY[0x277D0F050]];

  characteristics = [(HMDService *)selfCopy characteristics];
  if ([characteristics count])
  {
    v51 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristics, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v52 = characteristics;
    v53 = [v52 countByEnumeratingWithState:&v109 objects:v117 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v110;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v110 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = [*(*(&v109 + 1) + 8 * j) dumpStateWithPrivacyLevel:level];
          [v51 addObject:v57];
        }

        v54 = [v52 countByEnumeratingWithState:&v109 objects:v117 count:16];
      }

      while (v54);
    }

    v47 = v97;
    [v97 setObject:v51 forKeyedSubscript:*MEMORY[0x277D0F088]];
  }

  bulletinBoardNotification = [(HMDService *)selfCopy bulletinBoardNotification];

  if (bulletinBoardNotification)
  {
    bulletinBoardNotification2 = [(HMDService *)selfCopy bulletinBoardNotification];
    v60 = [bulletinBoardNotification2 dumpStateWithPrivacyLevel:level];
    [v47 setObject:v60 forKeyedSubscript:*MEMORY[0x277D0F080]];
  }

  v61 = v47;

  v62 = *MEMORY[0x277D85DE8];
  return v47;
}

- (NSString)description
{
  accessory = [(HMDService *)self accessory];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  name = [accessory name];
  uuid = [accessory uuid];
  type = [(HMDService *)self type];
  v9 = HAPShortUUIDType();
  instanceID = [(HMDService *)self instanceID];
  v11 = [v4 stringWithFormat:@"%@ %@/%@/%@/%@", v5, name, uuid, v9, instanceID];

  return v11;
}

- (void)setCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [characteristicsCopy copy];
  characteristics = self->_characteristics;
  self->_characteristics = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSArray)characteristics
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_characteristics;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (NSUUID)spiClientIdentifier
{
  v10[1] = *MEMORY[0x277D85DE8];
  accessory = [(HMDService *)self accessory];
  spiClientIdentifier = [accessory spiClientIdentifier];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_instanceID];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = spiClientIdentifierForUUIDAndSalts(spiClientIdentifier, v6);

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSUUID)uuid
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_recursive_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    uuid = [WeakRetained uuid];
    v6 = [uuid isEqual:self->_cachedAccessoryUUID];

    if ((v6 & 1) == 0)
    {
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = HMFGetLogIdentifier();
        uUIDString = [(NSUUID *)selfCopy->_uuid UUIDString];
        uuid2 = [v4 uuid];
        uUIDString2 = [uuid2 UUIDString];
        uUIDString3 = [(NSUUID *)self->_cachedAccessoryUUID UUIDString];
        *buf = 138544130;
        v19 = v9;
        v20 = 2112;
        v21 = uUIDString;
        v22 = 2112;
        v23 = uUIDString2;
        v24 = 2112;
        v25 = uUIDString3;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@HMDService %@ Accessory UUID is stale (%@!=%@).", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      [(HMDService *)selfCopy _recalculateUUID];
    }
  }

  v14 = self->_uuid;

  os_unfair_recursive_lock_unlock();
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_recalculateUUID
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = self->_uuid;
  accessory = [(HMDService *)self accessory];
  uuid = [accessory uuid];
  cachedAccessoryUUID = self->_cachedAccessoryUUID;
  self->_cachedAccessoryUUID = uuid;

  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  uuid2 = [WeakRetained uuid];
  v9 = [HMDService generateUUIDWithAccessoryUUID:uuid2 serviceID:self->_instanceID];
  uuid = self->_uuid;
  self->_uuid = v9;

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v14 = v22 = v11;
    [(NSUUID *)v3 UUIDString];
    v15 = v23 = v3;
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    v17 = objc_loadWeakRetained(&self->_accessory);
    uuid3 = [v17 uuid];
    uUIDString2 = [uuid3 UUIDString];
    instanceID = self->_instanceID;
    *buf = 138544386;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = uUIDString;
    v30 = 2112;
    v31 = uUIDString2;
    v32 = 2112;
    v33 = instanceID;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@recalculated UUID of service %@ -> %@ (%@/%@)", buf, 0x34u);

    v3 = v23;
    v11 = v22;
  }

  objc_autoreleasePoolPop(v11);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  messageDispatcher = [(HMDService *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  home = [(HMDService *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  [(HMDService *)self unconfigure];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Unconfigured and dealloc'd the service", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = selfCopy;
  v8.super_class = HMDService;
  [(HMDService *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDService)initWithAccessory:(id)accessory owner:(id)owner instance:(id)instance uuid:(id)uuid
{
  v52 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  ownerCopy = owner;
  instanceCopy = instance;
  uuidCopy = uuid;
  v41.receiver = self;
  v41.super_class = HMDService;
  v14 = [(HMDService *)&v41 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, accessoryCopy);
    objc_storeWeak(&v15->_owner, ownerCopy);
    v16 = HAPInstanceIDFromValue();
    instanceID = v15->_instanceID;
    v15->_instanceID = v16;

    if (!v15->_instanceID)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v15;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v21 = v40 = ownerCopy;
        *buf = 138543874;
        v43 = v21;
        v44 = 2112;
        v45 = accessoryCopy;
        v46 = 2112;
        v47 = &unk_283E72B78;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@*** DEBUG THIS : FATAL ERROR : File a Radar : HomeKit | New Bugs *** :Service ID cannot be null for accessory : %@Assigning a default instance ID : %@", buf, 0x20u);

        ownerCopy = v40;
      }

      objc_autoreleasePoolPop(v18);
      v22 = v15->_instanceID;
      v15->_instanceID = &unk_283E72B78;
    }

    uuid = [accessoryCopy uuid];
    v24 = [HMDService generateUUIDWithAccessoryUUID:uuid serviceID:v15->_instanceID];

    p_uuid = &v15->_uuid;
    if (uuidCopy)
    {
      objc_storeStrong(p_uuid, uuid);
      if ([uuidCopy isEqual:v24])
      {
LABEL_14:
        uuid2 = [accessoryCopy uuid];
        cachedAccessoryUUID = v15->_cachedAccessoryUUID;
        v15->_cachedAccessoryUUID = uuid2;

        goto LABEL_15;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = v15;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        [accessoryCopy uuid];
        v31 = v30 = ownerCopy;
        *buf = 138544386;
        v43 = v29;
        v44 = 2112;
        v45 = uuidCopy;
        v46 = 2112;
        v47 = v24;
        v48 = 2112;
        v49 = v31;
        v50 = 2112;
        v51 = instanceCopy;
        v32 = "%{public}@HMDService initWithAccessory Service UUID %@ but has a calculated UUID of %@ (%@/%@)";
        v33 = v28;
        v34 = 52;
LABEL_12:
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);

        ownerCopy = v30;
      }
    }

    else
    {
      objc_storeStrong(p_uuid, v24);
      v26 = objc_autoreleasePoolPush();
      v35 = v15;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        [v24 UUIDString];
        v31 = v30 = ownerCopy;
        *buf = 138543618;
        v43 = v29;
        v44 = 2112;
        v45 = v31;
        v32 = "%{public}@HMDService initWithAccessory, calculated UUID of %@ (using calc'd value)";
        v33 = v28;
        v34 = 22;
        goto LABEL_12;
      }
    }

    objc_autoreleasePoolPop(v26);
    goto LABEL_14;
  }

LABEL_15:

  v38 = *MEMORY[0x277D85DE8];
  return v15;
}

- (HMDService)initWithTransaction:(id)transaction accessory:(id)accessory owner:(id)owner
{
  v82 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  accessoryCopy = accessory;
  ownerCopy = owner;
  instanceID = [transactionCopy instanceID];
  if (instanceID && (v12 = instanceID, [transactionCopy uuid], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    instanceID2 = [transactionCopy instanceID];
    uuid = [transactionCopy uuid];
    v16 = [(HMDService *)self initWithAccessory:accessoryCopy owner:ownerCopy instance:instanceID2 uuid:uuid];

    if (v16)
    {
      v72 = accessoryCopy;
      name = [transactionCopy name];
      hm_truncatedNameString = [name hm_truncatedNameString];
      configuredName = v16->_configuredName;
      v16->_configuredName = hm_truncatedNameString;

      providedName = [transactionCopy providedName];
      hm_truncatedNameString2 = [providedName hm_truncatedNameString];
      providedName = v16->_providedName;
      v16->_providedName = hm_truncatedNameString2;

      serviceType = [transactionCopy serviceType];
      serviceType = v16->_serviceType;
      v16->_serviceType = serviceType;

      associatedServiceType = [transactionCopy associatedServiceType];
      associatedServiceType = v16->_associatedServiceType;
      v16->_associatedServiceType = associatedServiceType;

      serviceSubtype = [transactionCopy serviceSubtype];
      serviceSubtype = v16->_serviceSubtype;
      v16->_serviceSubtype = serviceSubtype;

      labelIndex = [transactionCopy labelIndex];
      labelIndex = v16->_labelIndex;
      v16->_labelIndex = labelIndex;

      labelNamespace = [transactionCopy labelNamespace];
      labelNamespace = v16->_labelNamespace;
      v16->_labelNamespace = labelNamespace;

      configurationState = [transactionCopy configurationState];
      configurationState = v16->_configurationState;
      v16->_configurationState = configurationState;

      linkedServices = [transactionCopy linkedServices];
      linkedServices = v16->_linkedServices;
      v16->_linkedServices = linkedServices;

      serviceProperties = [transactionCopy serviceProperties];
      v16->_serviceProperties = [serviceProperties unsignedIntegerValue];

      expectedConfiguredName = [transactionCopy expectedConfiguredName];
      hm_truncatedNameString3 = [expectedConfiguredName hm_truncatedNameString];
      expectedConfiguredName = v16->_expectedConfiguredName;
      v16->_expectedConfiguredName = hm_truncatedNameString3;

      lastSeenConfiguredNameLocal = [transactionCopy lastSeenConfiguredNameLocal];
      hm_truncatedNameString4 = [lastSeenConfiguredNameLocal hm_truncatedNameString];
      lastSeenConfiguredName = v16->_lastSeenConfiguredName;
      v16->_lastSeenConfiguredName = hm_truncatedNameString4;

      lastKnownOperatingState = [transactionCopy lastKnownOperatingState];
      lastKnownOperatingState = v16->_lastKnownOperatingState;
      v16->_lastKnownOperatingState = lastKnownOperatingState;

      lastKnownOperatingStateAbnormalReasons = [transactionCopy lastKnownOperatingStateAbnormalReasons];
      lastKnownOperatingStateAbnormalReasons = v16->_lastKnownOperatingStateAbnormalReasons;
      v16->_lastKnownOperatingStateAbnormalReasons = lastKnownOperatingStateAbnormalReasons;

      mediaSourceIdentifier = [transactionCopy mediaSourceIdentifier];
      mediaSourceIdentifier = v16->_mediaSourceIdentifier;
      v16->_mediaSourceIdentifier = mediaSourceIdentifier;

      mediaSourceDisplayOrder = [transactionCopy mediaSourceDisplayOrder];
      mediaSourceDisplayOrder = v16->_mediaSourceDisplayOrder;
      v16->_mediaSourceDisplayOrder = mediaSourceDisplayOrder;

      matterEndpointID = [transactionCopy matterEndpointID];
      matterEndpointID = v16->_matterEndpointID;
      v16->_matterEndpointID = matterEndpointID;

      v54 = MEMORY[0x277CBEB18];
      characteristics = [transactionCopy characteristics];
      v56 = [v54 arrayWithCapacity:{objc_msgSend(characteristics, "count")}];

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      characteristics2 = [transactionCopy characteristics];
      v58 = [characteristics2 countByEnumeratingWithState:&v73 objects:v77 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v74;
        do
        {
          v61 = 0;
          do
          {
            if (*v74 != v60)
            {
              objc_enumerationMutation(characteristics2);
            }

            v62 = [[HMDCharacteristic alloc] initWithCharacteristic:*(*(&v73 + 1) + 8 * v61) service:v16];
            [v56 addObject:v62];

            ++v61;
          }

          while (v59 != v61);
          v59 = [characteristics2 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v59);
      }

      v63 = [v56 copy];
      characteristics = v16->_characteristics;
      v16->_characteristics = v63;

      [(HMDService *)v16 _updateDefaultName];
      [(HMDService *)v16 _createNotification];

      accessoryCopy = v72;
    }

    selfCopy = v16;
    v66 = selfCopy;
  }

  else
  {
    v67 = objc_autoreleasePoolPush();
    selfCopy = self;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543618;
      v79 = v69;
      v80 = 2112;
      v81 = transactionCopy;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@unable to init service with a transaction (null instance ID?): %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v67);
    v66 = 0;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v66;
}

- (HMDService)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v16[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  name = [messageCopy name];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7, v8];
    v16[1] = v9;
    v10 = objc_opt_new();
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

    name2 = [messageCopy name];
    v13 = HMFCreateMessageBinding();
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)_parseOperatingStateResponseValue:(id)value intoState:(id *)state abnormalReasons:(id *)reasons
{
  v33 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = valueCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v26 = 0;
    v11 = [MEMORY[0x277CFEC18] parsedFromData:valueCopy error:&v26];
    v12 = v26;
    if (v11)
    {
      state = [v11 state];
      v14 = state;
      if (state)
      {
        state = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(state, "value")}];
      }

      v15 = *state;
      *state = state;

      abnormalReasons = [v11 abnormalReasons];
      v17 = abnormalReasons;
      if (abnormalReasons)
      {
        abnormalReasons = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(abnormalReasons, "value")}];
      }

      v18 = *reasons;
      *reasons = abnormalReasons;

      v19 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v23;
    v29 = 2112;
    v30 = valueCopy;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse operating state response value %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v19 = 0;
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)_processUpdateOnPowerManagementServiceForCharacteristicType:(id)type value:(id)value serviceType:(id)serviceType accessory:(id)accessory accessoryTransaction:(id)transaction
{
  v63 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  valueCopy = value;
  serviceTypeCopy = serviceType;
  accessoryCopy = accessory;
  transactionCopy = transaction;
  if (([serviceTypeCopy isEqualToString:@"00000221-0000-1000-8000-0026BB765291"] & 1) == 0)
  {
    v51 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Invalid service type was passed." userInfo:0];
    objc_exception_throw(v51);
  }

  identifier = [accessoryCopy identifier];
  v18 = identifier;
  if (identifier)
  {
    identifier2 = identifier;
  }

  else
  {
    hapAccessoryLocal = [transactionCopy hapAccessoryLocal];
    identifier2 = [hapAccessoryLocal identifier];
  }

  if (![typeCopy isEqualToString:@"00000222-0000-1000-8000-0026BB765291"])
  {
    if (![typeCopy isEqualToString:@"00000251-0000-1000-8000-0026BB765291"])
    {
      v40 = 0;
      v22 = 0;
      v41 = 0;
      goto LABEL_20;
    }

    v54 = identifier2;
    v55 = 0;
    v31 = [HMDSupportedSleepConfigurationTLV parsedFromData:valueCopy error:&v55];
    v22 = v55;
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v53 = typeCopy;
      v35 = accessoryCopy;
      v36 = serviceTypeCopy;
      v37 = valueCopy;
      v39 = v38 = transactionCopy;
      *buf = 138543874;
      v58 = v39;
      v59 = 2112;
      v60 = v31;
      v61 = 2112;
      v62 = v22;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Parsed supportedSleepConfiguration: %@ with error: %@", buf, 0x20u);

      transactionCopy = v38;
      valueCopy = v37;
      serviceTypeCopy = v36;
      accessoryCopy = v35;
      typeCopy = v53;
    }

    objc_autoreleasePoolPop(v32);
    if (v22 || ([accessoryCopy isSuspendCapable] & 1) != 0)
    {

      goto LABEL_16;
    }

    [transactionCopy setSuspendCapable:MEMORY[0x277CBEC38]];

    v40 = 0;
LABEL_29:
    v22 = 0;
    v41 = 1;
    goto LABEL_18;
  }

  v54 = identifier2;
  v56 = 0;
  v21 = [HMDWakeConfiguration parsedFromData:valueCopy error:&v56];
  v22 = v56;
  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v52 = typeCopy;
    v26 = accessoryCopy;
    v27 = serviceTypeCopy;
    v28 = valueCopy;
    v30 = v29 = transactionCopy;
    *buf = 138543874;
    v58 = v30;
    v59 = 2112;
    v60 = v21;
    v61 = 2112;
    v62 = v22;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Parsed HMDWakeConfiguration: %@ with error: %@", buf, 0x20u);

    transactionCopy = v29;
    valueCopy = v28;
    serviceTypeCopy = v27;
    accessoryCopy = v26;
    typeCopy = v52;
  }

  objc_autoreleasePoolPop(v23);
  if (!v22)
  {
    v40 = [HMFConnectivityInfo connectivityInfoWithAccessoryIdentifier:v54 wakeConfiguration:v21];

    if (!v40)
    {
      v22 = 0;
      goto LABEL_17;
    }

    v44 = transactionCopy;
    connectivityInfo = [accessoryCopy connectivityInfo];
    v46 = HMFEqualObjects();

    if (v46)
    {
      v22 = 0;
      v41 = 0;
      transactionCopy = v44;
      goto LABEL_18;
    }

    transactionCopy = v44;
    [v44 setConnectivityInfo:v40];
    [v44 setSuspendCapable:MEMORY[0x277CBEC38]];
    v47 = objc_autoreleasePoolPush();
    v48 = selfCopy2;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543874;
      v58 = v50;
      v59 = 2112;
      v60 = v40;
      v61 = 2112;
      v62 = v44;
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Setting connectivityInfo %@ to accessory transaction: %@", buf, 0x20u);

      transactionCopy = v44;
    }

    objc_autoreleasePoolPop(v47);
    goto LABEL_29;
  }

LABEL_16:
  v40 = 0;
LABEL_17:
  v41 = 0;
LABEL_18:
  identifier2 = v54;
LABEL_20:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

+ (BOOL)processUpdateForCharacteristicType:(id)type value:(id)value serviceType:(id)serviceType service:(id)service serviceTransactionGetter:(id)getter accessory:(id)accessory accessoryTransaction:(id)transaction accessoryTransactionChanged:(BOOL *)self0
{
  v114 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  valueCopy = value;
  serviceTypeCopy = serviceType;
  serviceCopy = service;
  getterCopy = getter;
  accessoryCopy = accessory;
  transactionCopy = transaction;
  v106 = +[HMDHAPMetadata getSharedInstance];
  if (([serviceTypeCopy isEqualToString:*MEMORY[0x277CD0DD0]] & 1) != 0 || (objc_msgSend(serviceTypeCopy, "isEqualToString:", *MEMORY[0x277CFE818]) & 1) != 0 || objc_msgSend(serviceTypeCopy, "isEqualToString:", @"00000239-0000-1000-8000-0026BB765291"))
  {
    v22 = [accessoryCopy updateAccessoryInformationWithCharacteristicType:typeCopy serviceType:serviceTypeCopy value:valueCopy accessoryTransaction:transactionCopy];
    if (changed)
    {
      if (v22)
      {
        *changed = 1;
      }
    }
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277CCF988]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([HMDService validateProvidedName:valueCopy])
      {
        if (!serviceCopy)
        {
          goto LABEL_65;
        }

        [serviceCopy providedName];
        selfCopy = self;
        v24 = transactionCopy;
        v26 = v25 = accessoryCopy;
        v27 = HMFEqualObjects();

        accessoryCopy = v25;
        transactionCopy = v24;
        self = selfCopy;
        if ((v27 & 1) == 0)
        {
LABEL_65:
          v76 = transactionCopy;
          v77 = accessoryCopy;
          if ([accessoryCopy supportsCHIP] && (objc_msgSend(accessoryCopy, "home"), v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "isCurrentDevicePrimaryResident"), v78, v79))
          {
            v80 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v82 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              v83 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v83;
              _os_log_impl(&dword_229538000, v82, OS_LOG_TYPE_INFO, "%{public}@Ignoring service transaction name update for matter", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v80);
            v37 = 0;
            v29 = getterCopy;
          }

          else
          {
            v29 = getterCopy;
            v86 = getterCopy[2](getterCopy);
            [v86 setProvidedName:valueCopy];

            v37 = 0;
          }

          accessoryCopy = v77;
          transactionCopy = v76;
          goto LABEL_102;
        }
      }
    }
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277CCF7E0]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = valueCopy;
      if (![v28 length])
      {

        v28 = 0;
      }

      v29 = getterCopy;
      if ([serviceCopy shouldUpdateLastSeenConfiguredName:v28])
      {
        v103 = transactionCopy;
        v104 = accessoryCopy;
        v30 = serviceCopy;
        v31 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          lastSeenConfiguredName = [v30 lastSeenConfiguredName];
          *buf = 138543874;
          *&buf[4] = v34;
          v110 = 2112;
          v111 = v28;
          v112 = 2112;
          v113 = lastSeenConfiguredName;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@nameFromAccessory %@  lastSeenConfiguredName %@", buf, 0x20u);

          v29 = getterCopy;
        }

        objc_autoreleasePoolPop(v31);
        v36 = v29[2](v29);
        [v36 setLastSeenConfiguredNameLocal:v28];

        serviceCopy = v30;
        transactionCopy = v103;
        accessoryCopy = v104;
      }

      v37 = 1;
      goto LABEL_102;
    }
  }

  if ([typeCopy isEqualToString:*MEMORY[0x277CCFA78]])
  {
    v37 = 0;
    v29 = getterCopy;
    goto LABEL_102;
  }

  v29 = getterCopy;
  if ([typeCopy isEqualToString:@"00000232-0000-1000-8000-0026BB765291"])
  {
    v108 = 0;
    *buf = 0;
    if ([self _parseOperatingStateResponseValue:valueCopy intoState:buf abnormalReasons:&v108])
    {
      v38 = transactionCopy;
      v39 = accessoryCopy;
      if (!serviceCopy)
      {
        goto LABEL_71;
      }

      [serviceCopy lastKnownOperatingState];
      v41 = v40 = serviceCopy;
      v42 = HMFEqualObjects();

      serviceCopy = v40;
      if (!v42)
      {
        goto LABEL_71;
      }

      lastKnownOperatingStateAbnormalReasons = [v40 lastKnownOperatingStateAbnormalReasons];
      v44 = HMFEqualObjects();

      serviceCopy = v40;
      if (v44)
      {
        v37 = 0;
      }

      else
      {
LABEL_71:
        getterCopy[2](getterCopy);
        v85 = v84 = serviceCopy;
        [v85 setLastKnownOperatingState:*buf];
        [v85 setLastKnownOperatingStateAbnormalReasons:v108];

        serviceCopy = v84;
        v37 = 1;
      }

      accessoryCopy = v39;
      transactionCopy = v38;
    }

    else
    {
      v37 = 0;
    }

    goto LABEL_102;
  }

  v105 = accessoryCopy;
  if ([serviceTypeCopy isEqualToString:*MEMORY[0x277CD0E78]])
  {
    if ([typeCopy isEqualToString:*MEMORY[0x277CCF8E8]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!serviceCopy)
        {
          goto LABEL_93;
        }

        [serviceCopy mediaSourceIdentifier];
        selfCopy4 = self;
        v46 = transactionCopy;
        v48 = v47 = serviceCopy;
        v49 = HMFEqualObjects();

        serviceCopy = v47;
        transactionCopy = v46;
        self = selfCopy4;
        if ((v49 & 1) == 0)
        {
LABEL_93:
          getterCopy[2](getterCopy);
          v100 = v99 = serviceCopy;
          [v100 setMediaSourceIdentifier:valueCopy];
          goto LABEL_95;
        }
      }
    }
  }

  if ([serviceTypeCopy isEqualToString:*MEMORY[0x277CD0F20]])
  {
    if ([typeCopy isEqualToString:@"00000136-0000-1000-8000-0026BB765291"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = parseMediaSourceDisplayOrder(valueCopy);
        if (v50)
        {
          v51 = transactionCopy;
          if (!serviceCopy || ([serviceCopy mediaSourceDisplayOrder], v52 = serviceCopy, v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v50, "isEqualToArray:", v53), v53, serviceCopy = v52, (v54 & 1) == 0))
          {
            v29 = getterCopy;
            getterCopy[2](getterCopy);
            v56 = v55 = serviceCopy;
            [v56 setMediaSourceDisplayOrder:v50];
LABEL_98:

            serviceCopy = v55;
            v37 = 1;
            goto LABEL_99;
          }

          goto LABEL_47;
        }

        goto LABEL_96;
      }
    }
  }

  if ([serviceTypeCopy isEqualToString:@"000000D0-0000-1000-8000-0026BB765291"])
  {
    if ([typeCopy isEqualToString:@"000000D5-0000-1000-8000-0026BB765291"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v106 serviceSubtypeForValue:valueCopy forServiceType:@"000000D0-0000-1000-8000-0026BB765291"];
        if (v50)
        {
          v51 = transactionCopy;
          if (!serviceCopy || ([serviceCopy serviceSubtype], v57 = serviceCopy, v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v50, "isEqual:", v58), v58, serviceCopy = v57, (v59 & 1) == 0))
          {
            v29 = getterCopy;
            getterCopy[2](getterCopy);
            v56 = v55 = serviceCopy;
            [v56 setServiceSubtype:v50];
            goto LABEL_98;
          }

LABEL_47:
          v37 = 0;
          v29 = getterCopy;
LABEL_99:
          transactionCopy = v51;
          goto LABEL_100;
        }

LABEL_96:
        v37 = 0;
LABEL_100:

        goto LABEL_101;
      }
    }
  }

  if ([typeCopy isEqualToString:@"000000CB-0000-1000-8000-0026BB765291"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!serviceCopy)
      {
        goto LABEL_91;
      }

      [serviceCopy labelIndex];
      selfCopy5 = self;
      v61 = transactionCopy;
      v63 = v62 = serviceCopy;
      v64 = [valueCopy isEqual:v63];

      serviceCopy = v62;
      transactionCopy = v61;
      self = selfCopy5;
      if ((v64 & 1) == 0)
      {
LABEL_91:
        getterCopy[2](getterCopy);
        v100 = v99 = serviceCopy;
        [v100 setLabelIndex:valueCopy];
LABEL_95:

        serviceCopy = v99;
        v37 = 1;
LABEL_101:
        accessoryCopy = v105;
        goto LABEL_102;
      }
    }
  }

  if ([typeCopy isEqualToString:@"000000CD-0000-1000-8000-0026BB765291"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!serviceCopy)
      {
        goto LABEL_92;
      }

      [serviceCopy labelNamespace];
      selfCopy6 = self;
      v66 = transactionCopy;
      v68 = v67 = serviceCopy;
      v69 = [valueCopy isEqual:v68];

      serviceCopy = v67;
      transactionCopy = v66;
      self = selfCopy6;
      if ((v69 & 1) == 0)
      {
LABEL_92:
        getterCopy[2](getterCopy);
        v100 = v99 = serviceCopy;
        [v100 setLabelNamespace:valueCopy];
        goto LABEL_95;
      }
    }
  }

  if ([typeCopy isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!serviceCopy)
      {
        goto LABEL_94;
      }

      [serviceCopy configurationState];
      selfCopy7 = self;
      v71 = transactionCopy;
      v73 = v72 = serviceCopy;
      v74 = [valueCopy isEqual:v73];

      serviceCopy = v72;
      transactionCopy = v71;
      self = selfCopy7;
      if ((v74 & 1) == 0)
      {
LABEL_94:
        getterCopy[2](getterCopy);
        v100 = v99 = serviceCopy;
        [v100 setConfigurationState:valueCopy];
        goto LABEL_95;
      }
    }
  }

  if ([serviceTypeCopy isEqualToString:@"00000221-0000-1000-8000-0026BB765291"])
  {
    accessoryCopy = v105;
    v75 = [self _processUpdateOnPowerManagementServiceForCharacteristicType:typeCopy value:valueCopy serviceType:serviceTypeCopy accessory:v105 accessoryTransaction:transactionCopy];
    if (changed && v75)
    {
      *changed = 1;
    }

    [serviceCopy setPowerManagementSupportedSleepCharRead:1];
    goto LABEL_90;
  }

  accessoryCopy = v105;
  if ([typeCopy isEqualToString:*MEMORY[0x277CCFB98]])
  {
    if ([serviceTypeCopy isEqualToString:*MEMORY[0x277CD0F48]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:valueCopy];
        if (v87)
        {
          if (!serviceCopy)
          {
            goto LABEL_82;
          }

          [v105 primaryProfileVersion];
          v88 = transactionCopy;
          v90 = v89 = serviceCopy;
          v91 = [v87 isEqualToVersion:v90];

          serviceCopy = v89;
          transactionCopy = v88;
          if ((v91 & 1) == 0)
          {
LABEL_82:
            [v87 versionString];
            v92 = transactionCopy;
            v94 = v93 = serviceCopy;
            [v92 setPrimaryProfileVersion:v94];

            serviceCopy = v93;
            transactionCopy = v92;
            if (changed)
            {
              *changed = 1;
            }
          }
        }

        v37 = 0;
        v29 = getterCopy;
        goto LABEL_101;
      }
    }
  }

  if (![serviceTypeCopy isEqualToString:@"0000022A-0000-1000-8000-0026BB765291"] || !objc_msgSend(typeCopy, "isEqualToString:", @"0000022C-0000-1000-8000-0026BB765291") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_90:
    v37 = 0;
    goto LABEL_102;
  }

  v95 = transactionCopy;
  v96 = serviceCopy;
  wiFiTransportCapabilities = [v105 wiFiTransportCapabilities];
  v98 = [wiFiTransportCapabilities isEqualToNumber:valueCopy];

  if (v98)
  {
    v37 = 0;
    serviceCopy = v96;
  }

  else
  {
    [v95 setWiFiTransportCapabilities:valueCopy];
    serviceCopy = v96;
    v37 = 0;
    if (changed)
    {
      *changed = 1;
    }
  }

  accessoryCopy = v105;
  transactionCopy = v95;
LABEL_102:

  v101 = *MEMORY[0x277D85DE8];
  return v37;
}

+ (BOOL)validateProvidedName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = nameCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    alphanumericCharacterSet = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
    v8 = [v6 rangeOfCharacterFromSet:alphanumericCharacterSet options:129];
    v9 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v13;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Name %@ does not contain allowed characters", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = nameCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Name %@ is not an NSString", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_114016 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_114016, &__block_literal_global_114017);
  }

  v3 = logCategory__hmf_once_v19_114018;

  return v3;
}

void __25__HMDService_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_114018;
  logCategory__hmf_once_v19_114018 = v1;
}

+ (id)generateUUIDWithAccessoryUUID:(id)d serviceID:(id)iD
{
  v11[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = HAPInstanceIDFromValue();
  stringValue = [v5 stringValue];
  v11[0] = stringValue;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v8 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:dCopy identifierSalt:0 withSalts:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSDictionary)assistantObject
{
  v157 = *MEMORY[0x277D85DE8];
  accessory = [(HMDService *)self accessory];
  hostAccessory = [accessory hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = hostAccessory;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v117 = accessory;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = accessory;
  }

  v8 = v7;
  name = [(HMDService *)self name];
  home = [v8 home];
  v11 = home;
  if (home)
  {
    name2 = [(HMDService *)home name];

    if (name2 && name != 0)
    {
      array = [MEMORY[0x277CBEB18] array];
      v18 = +[HMDHAPMetadata getSharedInstance];
      type = [(HMDService *)self type];
      v116 = v18;
      v20 = [v18 shouldFilterServiceOfTypeFromApp:type];

      if (v20)
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
LABEL_20:

LABEL_21:
          objc_autoreleasePoolPop(v21);
          v29 = 0;
LABEL_106:

          goto LABEL_107;
        }

        name3 = HMFGetLogIdentifier();
        *buf = 138543618;
        v150 = name3;
        v151 = 2112;
        v152 = selfCopy;
        v25 = "%{public}@Service (%@) is hidden from apps not sending to siri";
        p_super = v23;
        v27 = OS_LOG_TYPE_DEBUG;
        v28 = 22;
LABEL_19:
        _os_log_impl(&dword_229538000, p_super, v27, v25, buf, v28);

        goto LABEL_20;
      }

      v112 = v8;
      v113 = v11;
      v110 = name;
      v111 = v6;
      type2 = [(HMDService *)self type];
      v120 = [type2 isEqualToString:@"000000D0-0000-1000-8000-0026BB765291"];

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      characteristics = [(HMDService *)self characteristics];
      v32 = [characteristics copy];

      obj = v32;
      v33 = [v32 countByEnumeratingWithState:&v139 objects:v148 count:16];
      if (v33)
      {
        v34 = v33;
        v118 = 0;
        v35 = *v140;
        v36 = v116;
        do
        {
          v37 = 0;
          v122 = v34;
          do
          {
            if (*v140 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v139 + 1) + 8 * v37);
            type3 = [(HMDService *)v38 type];
            v40 = [v36 mapToAssistantCharacteristicName:type3];
            type4 = [(HMDService *)v38 type];
            v42 = [v36 shouldFilterCharacteristicOfTypeFromApp:type4];

            if (v42)
            {
              v43 = v35;
              v44 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                v47 = HMFGetLogIdentifier();
                *buf = 138543618;
                v150 = v47;
                v151 = 2112;
                v152 = v38;
                _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic (%@) is hidden from apps not sending to siri", buf, 0x16u);

                v36 = v116;
              }

              objc_autoreleasePoolPop(v44);
              v35 = v43;
              v34 = v122;
            }

            else
            {
              if (v40 && ([v40 isEqualToString:@"IDENTIFY"] & 1) == 0)
              {
                [array addObject:type3];
              }

              if (v120)
              {
                v118 |= [type3 isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];
              }
            }

            ++v37;
          }

          while (v34 != v37);
          v34 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
        }

        while (v34);
      }

      else
      {
        v118 = 0;
      }

      if ([array count])
      {
        v6 = v111;
        v8 = v112;
        name = v110;
        v11 = v113;
        if ((v120 & v118) == 1)
        {
          configurationState = [(HMDService *)self configurationState];
          if (!configurationState || (v49 = configurationState, -[HMDService configurationState](self, "configurationState"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 integerValue], v50, v49, !v51))
          {
            v21 = objc_autoreleasePoolPush();
            selfCopy = HMFGetOSLogHandle();
            if (!os_log_type_enabled(&selfCopy->super.super, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            v23 = HMFGetLogIdentifier();
            name3 = [(HMDService *)v113 name];
            *buf = 138544130;
            v150 = v23;
            v151 = 2112;
            v152 = v113;
            v153 = 2112;
            v154 = name3;
            v155 = 2112;
            v156 = v110;
            v25 = "%{public}@Skipping because service is not user configured: service.accessory.home %@  service.accessory.home.name %@  service.name %@";
            p_super = &selfCopy->super.super;
            v27 = OS_LOG_TYPE_DEFAULT;
            v28 = 42;
            goto LABEL_19;
          }
        }

        v52 = objc_alloc(MEMORY[0x277CBEB38]);
        v147[0] = *MEMORY[0x277D48170];
        v146[0] = @"objectType";
        v146[1] = @"objectIdentifier";
        urlString = [(HMDService *)self urlString];
        v147[1] = urlString;
        v146[2] = @"objectServiceType";
        type5 = [(HMDService *)self type];
        v147[2] = type5;
        v146[3] = @"objectHome";
        name4 = [(HMDService *)v113 name];
        v147[3] = name4;
        v146[4] = @"objectHomeIdentifier";
        urlString2 = [(HMDService *)v113 urlString];
        v147[4] = urlString2;
        v147[5] = self;
        v146[5] = @"objectReference";
        v146[6] = @"objectName";
        v146[7] = @"objectCharacteristics";
        v147[6] = v110;
        v147[7] = array;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:8];
        v58 = [v52 initWithDictionary:v57];

        if (v120)
        {
          v59 = 0;
        }

        else
        {
          category = [v112 category];
          categoryType = [category categoryType];
          if (categoryType)
          {
            serviceType = [(HMDService *)self serviceType];
            v59 = [v116 mapToAssistantServiceSubtypeName:serviceType accessoryCategory:categoryType];

            if (!v59)
            {
              serviceType2 = [(HMDService *)self serviceType];
              v64 = [v116 getServiceTypeAlias:serviceType2];
              v59 = [v116 mapToAssistantServiceSubtypeName:v64 accessoryCategory:categoryType];

              if (!v59)
              {
                serviceType3 = [(HMDService *)self serviceType];
                v59 = [(HMDService *)self _serviceSubtypeFromLinkedServicesForServiceType:serviceType3 accessoryCategory:categoryType];
              }
            }
          }

          else
          {
            v59 = 0;
          }
        }

        associatedServiceType = [(HMDService *)self associatedServiceType];

        if (associatedServiceType)
        {
          associatedServiceType2 = [(HMDService *)self associatedServiceType];
          [v58 setObject:associatedServiceType2 forKey:@"objectAssociatedServiceType"];

          if (!v59)
          {
            associatedServiceType3 = [(HMDService *)self associatedServiceType];
            v59 = [v116 mapToAssistantServiceSubtypeName:associatedServiceType3];
          }
        }

        serviceSubtype = [(HMDService *)self serviceSubtype];

        if (serviceSubtype && !v59)
        {
          serviceSubtype2 = [(HMDService *)self serviceSubtype];
          v59 = [v116 mapToAssistantServiceSubtypeName:serviceSubtype2];
        }

        if (v59)
        {
          [v58 setObject:v59 forKey:@"objectServiceSubType"];
        }

        name5 = [v112 name];

        if (name5)
        {
          name6 = [v112 name];
          [v58 setObject:name6 forKey:@"objectAccessory"];

          urlString3 = [v112 urlString];
          [v58 setObject:urlString3 forKey:@"objectAccessoryIdentifier"];
        }

        v115 = v58;
        array2 = [MEMORY[0x277CBEB18] array];
        array3 = [MEMORY[0x277CBEB18] array];
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        serviceGroups = [(HMDService *)v113 serviceGroups];
        v123 = [serviceGroups countByEnumeratingWithState:&v135 objects:v145 count:16];
        if (v123)
        {
          v121 = *v136;
          do
          {
            v76 = 0;
            do
            {
              if (*v136 != v121)
              {
                objc_enumerationMutation(serviceGroups);
              }

              obja = v76;
              v77 = *(*(&v135 + 1) + 8 * v76);
              v131 = 0u;
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              serviceUUIDs = [v77 serviceUUIDs];
              v79 = [serviceUUIDs countByEnumeratingWithState:&v131 objects:v144 count:16];
              if (v79)
              {
                v80 = v79;
                v81 = *v132;
                do
                {
                  for (i = 0; i != v80; ++i)
                  {
                    if (*v132 != v81)
                    {
                      objc_enumerationMutation(serviceUUIDs);
                    }

                    v83 = *(*(&v131 + 1) + 8 * i);
                    uuid = [(HMDService *)self uuid];
                    LODWORD(v83) = [uuid hmf_isEqualToUUIDString:v83];

                    if (v83)
                    {
                      name7 = [v77 name];
                      [array2 addObject:name7];

                      urlString4 = [v77 urlString];
                      [array3 addObject:urlString4];
                    }
                  }

                  v80 = [serviceUUIDs countByEnumeratingWithState:&v131 objects:v144 count:16];
                }

                while (v80);
              }

              v76 = obja + 1;
            }

            while (obja + 1 != v123);
            v123 = [serviceGroups countByEnumeratingWithState:&v135 objects:v145 count:16];
          }

          while (v123);
        }

        if ([array2 count])
        {
          [v115 setObject:array2 forKey:@"objectGroups"];
          [v115 setObject:array3 forKey:@"objectGroupIdentifiers"];
        }

        v87 = MEMORY[0x277CBEB18];
        linkedServices = [(HMDService *)self linkedServices];
        objb = [v87 arrayWithCapacity:{objc_msgSend(linkedServices, "count")}];

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        linkedServices2 = [(HMDService *)self linkedServices];
        v90 = [linkedServices2 countByEnumeratingWithState:&v127 objects:v143 count:16];
        if (v90)
        {
          v91 = v90;
          v92 = *v128;
          do
          {
            for (j = 0; j != v91; ++j)
            {
              if (*v128 != v92)
              {
                objc_enumerationMutation(linkedServices2);
              }

              v94 = [v117 findService:*(*(&v127 + 1) + 8 * j)];
              v95 = v94;
              if (v94)
              {
                configurationState2 = [v94 configurationState];
                if (!configurationState2 || (v97 = configurationState2, [v95 configurationState], v98 = objc_claimAutoreleasedReturnValue(), v99 = objc_msgSend(v98, "integerValue"), v98, v97, v99))
                {
                  urlString5 = [v95 urlString];
                  [objb addObject:urlString5];
                }
              }
            }

            v91 = [linkedServices2 countByEnumeratingWithState:&v127 objects:v143 count:16];
          }

          while (v91);
        }

        if (([objb hmf_isEmpty] & 1) == 0)
        {
          v101 = [objb copy];
          [v115 setObject:v101 forKey:@"objectRelatedIdentifiers"];
        }

        room = [v112 room];
        name8 = [room name];
        if (name8)
        {
          name9 = [(HMDService *)v113 name];
          v105 = [name8 isEqualToString:name9];

          if ((v105 & 1) == 0)
          {
            [v115 setObject:name8 forKey:@"objectRoom"];
            urlString6 = [room urlString];
            [v115 setObject:urlString6 forKey:@"objectRoomIdentifier"];
          }
        }

        v29 = [v115 copy];
      }

      else
      {
        v29 = 0;
      }

      v6 = v111;
      v8 = v112;
      name = v110;
      v11 = v113;
      goto LABEL_106;
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    if (v11)
    {
      name10 = [(HMDService *)v11 name];
    }

    else
    {
      name10 = 0;
    }

    *buf = 138544130;
    v150 = v16;
    v151 = 2112;
    v152 = v11;
    v153 = 2112;
    v154 = name10;
    v155 = 2112;
    v156 = name;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
    if (v11)
    {
    }
  }

  objc_autoreleasePoolPop(v14);
  v29 = 0;
LABEL_107:

  v107 = *MEMORY[0x277D85DE8];

  return v29;
}

- (NSString)urlString
{
  v17[1] = *MEMORY[0x277D85DE8];
  accessory = [(HMDService *)self accessory];
  hostAccessory = [accessory hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = hostAccessory;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = *MEMORY[0x277CCF2A8];
  uuid = [v6 uuid];

  uuid2 = uuid;
  if (!uuid)
  {
    uuid2 = [accessory uuid];
  }

  v10 = MEMORY[0x277CCACA8];
  instanceID = [(HMDService *)self instanceID];
  v12 = [v10 stringWithFormat:@"%@", instanceID];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = hm_assistantIdentifierWithSalts();

  if (!uuid)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_serviceSubtypeFromLinkedServicesForServiceType:(id)type accessoryCategory:(id)category
{
  v24 = *MEMORY[0x277D85DE8];
  if ([type isEqualToString:{*MEMORY[0x277CD0E60], category}])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    linkedServices = [(HMDService *)self linkedServices];
    v6 = [linkedServices countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v9 = *MEMORY[0x277CD0F38];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(linkedServices);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          accessory = [(HMDService *)self accessory];
          v13 = [accessory findService:v11];

          if (v13)
          {
            type = [v13 type];
            v15 = [type isEqualToString:v9];

            if (v15)
            {
              v16 = *MEMORY[0x277D48240];

              goto LABEL_14;
            }
          }
        }

        v7 = [linkedServices countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_14:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end