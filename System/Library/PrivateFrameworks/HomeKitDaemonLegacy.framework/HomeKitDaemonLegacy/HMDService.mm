@interface HMDService
+ (BOOL)_parseOperatingStateResponseValue:(id)a3 intoState:(id *)a4 abnormalReasons:(id *)a5;
+ (BOOL)_processUpdateOnPowerManagementServiceForCharacteristicType:(id)a3 value:(id)a4 serviceType:(id)a5 accessory:(id)a6 accessoryTransaction:(id)a7;
+ (BOOL)processUpdateForCharacteristicType:(id)a3 value:(id)a4 serviceType:(id)a5 service:(id)a6 serviceTransactionGetter:(id)a7 accessory:(id)a8 accessoryTransaction:(id)a9 accessoryTransactionChanged:(BOOL *)a10;
+ (BOOL)validateProvidedName:(id)a3;
+ (id)generateUUIDWithAccessoryUUID:(id)a3 serviceID:(id)a4;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)_supportsBulletinNotification;
- (BOOL)isCustom;
- (BOOL)isEmptyConfiguredNameAllowed;
- (BOOL)isReadingRequiredForBTLEServiceCharacteristic:(id)a3;
- (BOOL)shouldEnableDaemonRelaunch;
- (BOOL)shouldIncludePresenceForDeviceWithDestination:(id)a3;
- (BOOL)shouldUpdateLastSeenConfiguredName:(id)a3;
- (BOOL)updateAssociatedServiceType:(id)a3 error:(id *)a4;
- (BOOL)updateCharacteristics:(id)a3;
- (HMDApplicationData)appData;
- (HMDHAPAccessory)accessory;
- (HMDService)init;
- (HMDService)initWithAccessory:(id)a3 owner:(id)a4 instance:(id)a5 uuid:(id)a6;
- (HMDService)initWithCoder:(id)a3;
- (HMDService)initWithTransaction:(id)a3 accessory:(id)a4 owner:(id)a5;
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
- (id)_initWithCoder:(id)a3;
- (id)_messagesForConfiguredNameChange;
- (id)_sanitizeNameToWriteToAccessory:(id)a3;
- (id)_serviceSubtypeFromLinkedServicesForServiceType:(id)a3 accessoryCategory:(id)a4;
- (id)_updateProvidedName:(id)a3;
- (id)backingStoreObjects:(int64_t)a3;
- (id)configureWithService:(id)a3 accessory:(id)a4 shouldRead:(BOOL)a5 added:(BOOL)a6;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)findCharacteristic:(id)a3;
- (id)findCharacteristicWithType:(id)a3;
- (id)getConfiguredName;
- (id)getConfiguredNameForXPCClients;
- (id)getLastSeenConfiguredName;
- (id)home;
- (id)logIdentifier;
- (id)messagesForUpdatedRoom:(id)a3;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (id)nameChangedMessage;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (void)_createAndRunTransactionWithName:(id)a3 transaction:(id)a4 message:(id)a5;
- (void)_createNotification;
- (void)_encodeWithCoder:(id)a3;
- (void)_handleSetAppData:(id)a3;
- (void)_processTransactionForNameComponents:(id)a3 messagesToSendToAccessory:(id)a4 result:(id)a5;
- (void)_recalculateUUID;
- (void)_registerForMessages;
- (void)_saveCurrentNameAsExpectedAndLastSeen:(id)a3;
- (void)_saveForExpectedConfiguredNameUpdate;
- (void)_saveForLastSeenConfiguredNameUpdate;
- (void)_saveLastSeenAndExpectedConfiguredName:(id)a3;
- (void)_shouldServiceBeHidden;
- (void)_transactionServiceUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)_updateDefaultName;
- (void)_writeConfiguredNameToAccessory:(id)a3;
- (void)appDataRemoved:(id)a3 message:(id)a4;
- (void)appDataUpdated:(id)a3 message:(id)a4;
- (void)configureBulletinNotification;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fillCharacteristicsInServiceBackingStoreObject:(id)a3;
- (void)persistMediaSourceDisplayOrder:(id)a3 requestMessage:(id)a4;
- (void)populateModelObjectWithChangeType:(id)a3 version:(int64_t)a4;
- (void)setAppData:(id)a3;
- (void)setCharacteristics:(id)a3;
- (void)setConfiguredName:(id)a3;
- (void)setExpectedConfiguredName:(id)a3;
- (void)setLastSeenConfiguredName:(id)a3;
- (void)setProvidedName:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unconfigure;
- (void)updateLastKnownValues;
- (void)updatePresenceRequestTimeForDeviceWithDestination:(id)a3;
@end

@implementation HMDService

- (NSUUID)contextSPIUniqueIdentifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = +[HMDProcessInfo privateClientIdentifierSalt];
  v4 = MEMORY[0x277CCAD78];
  v5 = [(HMDService *)self accessory];
  v6 = [v5 contextSPIUniqueIdentifier];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(HMDService *)self instanceID];
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
  v4 = [(HMDService *)self accessory];
  v5 = [v4 contextID];
  v6 = [(HMDService *)self instanceID];
  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

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

- (BOOL)shouldUpdateLastSeenConfiguredName:(id)a3
{
  v4 = a3;
  v5 = [(HMDService *)self lastSeenConfiguredName];
  v6 = HMFEqualObjects();

  return v6 ^ 1;
}

- (void)_writeConfiguredNameToAccessory:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDService *)self owner];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDService__writeConfiguredNameToAccessory___block_invoke;
  v7[3] = &unk_2797338E8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 makeServiceNameConsistent:self withName:v6 completionHandler:v7];

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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to update configured name to %@ - error %@", &v14, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully updated configured name and last seen configured name to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setConfiguredName:*(a1 + 32)];
    [v6 setLastSeenConfiguredName:*(a1 + 32)];
    [v6 _saveForLastSeenConfiguredNameUpdate];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_saveCurrentNameAsExpectedAndLastSeen:(id)a3
{
  v4 = a3;
  v8 = [(HMDService *)self owner];
  v5 = [(HMDService *)self uuid];
  v6 = [v8 createUpdateServiceTransactionWithServiceUUID:v5];

  [v6 setLastSeenConfiguredNameLocal:v4];
  v7 = [v8 backingStoreTransactionWithName:@"NewNameOnPairVerify"];
  [v7 add:v6 withMessage:0];
  [v7 run];
}

- (id)backingStoreObjects:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDService *)self modelObjectWithChangeType:1];
  [v5 addObject:v6];

  v7 = [(HMDService *)self appData];

  if (a3 >= 3 && v7)
  {
    v8 = [(HMDService *)self appData];
    v9 = [v8 modelObjectWithChangeType:1];
    [v5 addObject:v9];
  }

  return v5;
}

- (void)fillCharacteristicsInServiceBackingStoreObject:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDService *)self characteristics];
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
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

          v12 = [*(*(&v16 + 1) + 8 * v11) getCharacteristicDictionary];
          [v6 addObject:v12];

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
  [v4 setCharacteristics:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)populateModelObjectWithChangeType:(id)a3 version:(int64_t)a4
{
  v26 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v26;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(HMDService *)self name];
  [v7 setName:v8];

  v9 = [(HMDService *)self instanceID];
  [v7 setInstanceID:v9];

  v10 = [(HMDService *)self providedName];
  [v7 setProvidedName:v10];

  v11 = [(HMDService *)self serviceType];
  [v7 setServiceType:v11];

  v12 = [(HMDService *)self associatedServiceType];
  [v7 setAssociatedServiceType:v12];

  v13 = [(HMDService *)self serviceSubtype];
  [v7 setServiceSubtype:v13];

  v14 = [(HMDService *)self labelIndex];
  [v7 setLabelIndex:v14];

  v15 = [(HMDService *)self labelNamespace];
  [v7 setLabelNamespace:v15];

  v16 = [(HMDService *)self linkedServices];
  v17 = [v16 copy];
  [v7 setLinkedServices:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDService serviceProperties](self, "serviceProperties")}];
  [v7 setServiceProperties:v18];

  v19 = [(HMDService *)self matterEndpointID];
  [v7 setMatterEndpointID:v19];

  if (a4 >= 4)
  {
    v20 = [(HMDService *)self configurationState];
    [v7 setConfigurationState:v20];

    v21 = [(HMDService *)self expectedConfiguredName];
    [v7 setExpectedConfiguredName:v21];

    v22 = [(HMDService *)self lastKnownOperatingState];
    [v7 setLastKnownOperatingState:v22];

    v23 = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];
    [v7 setLastKnownOperatingStateAbnormalReasons:v23];

    v24 = [(HMDService *)self mediaSourceIdentifier];
    [v7 setMediaSourceIdentifier:v24];

    v25 = [(HMDService *)self mediaSourceDisplayOrder];
    [v7 setMediaSourceDisplayOrder:v25];
  }

  [(HMDService *)self fillCharacteristicsInServiceBackingStoreObject:v7];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v4 = [(HMDService *)self transactionWithObjectChangeType:a3];
  [(HMDService *)self populateModelObjectWithChangeType:v4 version:4];

  return v4;
}

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [HMDServiceTransaction alloc];
  v6 = [(HMDService *)self uuid];
  v7 = [(HMDService *)self accessory];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (void)_registerForMessages
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDService *)self home];
  v4 = [v3 administratorHandler];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v9[0] = v5;
  v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v4 registerForMessage:@"kSetAppDataRequestKey" receiver:self policies:v7 selector:sel__handleSetAppData_];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createAndRunTransactionWithName:(id)a3 transaction:(id)a4 message:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDService *)self owner];
  v12 = [v11 backingStoreTransactionWithName:v10];

  [v12 add:v9 withMessage:v8];
  [v12 run];
}

- (void)persistMediaSourceDisplayOrder:(id)a3 requestMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDService *)self owner];
  v9 = [(HMDService *)self uuid];
  v10 = [v8 createUpdateServiceTransactionWithServiceUUID:v9];

  [v10 setMediaSourceDisplayOrder:v7];
  [(HMDService *)self _createAndRunTransactionWithName:@"PersistMediaSourceDisplayOrder" transaction:v10 message:v6];
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
      v11 = [v10 type];
      v12 = [v11 isEqualToString:v7];

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
        v13 = [v10 type];
        v14 = [v13 isEqualToString:v8];

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

- (BOOL)updateCharacteristics:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45 = [MEMORY[0x277CBEB18] array];
  v47 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HMDService *)self characteristics];
  v52 = [v5 mutableCopy];

  v54 = [MEMORY[0x277CBEB18] array];
  v48 = self;
  v53 = [(HMDService *)self accessory];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v4;
  v55 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v55)
  {
    v49 = 0;
    v51 = *v70;
    v50 = *MEMORY[0x277CD21A8];
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v70 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v69 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:v50];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v9 = v52;
        v10 = [v9 countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v66;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v66 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v65 + 1) + 8 * v13);
            v15 = [v14 characteristicType];
            v16 = [v15 isEqual:v8];

            if (v16)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v65 objects:v78 count:16];
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

          v49 |= [(HMDCharacteristic *)v17 updateWithDictionary:v7];
          [v9 removeObject:v17];
        }

        else
        {
LABEL_14:

LABEL_17:
          v17 = [[HMDCharacteristic alloc] initWithCharacteristic:v7 service:v48];
          v18 = encodeRootObjectForIncomingXPCMessage(v17, 0);
          v19 = [(HMDCharacteristic *)v17 instanceID];
          [v47 setObject:v18 forKeyedSubscript:v19];
        }

        [v54 addObject:v17];
      }

      v55 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v55);
  }

  else
  {
    LOBYTE(v49) = 0;
  }

  [(HMDService *)v48 setCharacteristics:v54];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v20 = v52;
  v21 = [v20 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v62;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v62 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v61 + 1) + 8 * j);
        v26 = [v25 instanceID];
        [v45 addObject:v26];

        v27 = [v53 home];
        [v27 removeCharacteristic:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v22);
  }

  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v29 = v49;
  if ([v45 count])
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v48;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v74 = v33;
      v75 = 2112;
      v76 = v45;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Service removed characteristics with instance IDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    [v28 setObject:v45 forKey:@"kRemovedCharacteristicIDsForAccessoryKey"];
    v29 = 1;
  }

  if ([v47 count])
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v48;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v47 allKeys];
      *buf = 138543618;
      v74 = v37;
      v75 = 2112;
      v76 = v38;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Service added characteristics with instance IDs: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    [v28 setObject:v47 forKey:@"kAddedCharacteristicsForAccessoryKey"];
    v29 = 1;
  }

  v39 = [(HMDService *)v48 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDService_updateCharacteristics___block_invoke;
  block[3] = &unk_279731C38;
  v57 = v53;
  v58 = v48;
  v59 = v28;
  v40 = v29 & 1;
  v60 = v29 & 1;
  v41 = v28;
  v42 = v53;
  dispatch_async(v39, block);

  v43 = *MEMORY[0x277D85DE8];
  return v40;
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
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Service modified characteristics with instance IDs: %@", buf, 0x16u);
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

- (void)appDataRemoved:(id)a3 message:(id)a4
{
  v5 = a4;
  [(HMDService *)self setAppData:0];
  v6 = [v5 transactionResult];
  [v6 markChanged];
  [v5 respondWithPayload:0];
}

- (void)appDataUpdated:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDService *)self appData];

  if (v8)
  {
    v9 = [(HMDService *)self appData];
    [v9 updateWithModel:v6];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    v11 = [v6 appDataDictionary];
    v12 = [(HMDService *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:v11 parentUUID:v12];
    [(HMDService *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 appDataDictionary];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = [v7 transactionResult];
  [v19 markChanged];
  [v7 respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    [(HMDService *)self appDataRemoved:v10 message:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [v7 responseHandler];

    if (v16)
    {
      v17 = [v7 responseHandler];
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (v17)[2](v17, v18, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_transactionServiceUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v149[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v134 = a5;
  v10 = [v134 transactionResult];
  v11 = MEMORY[0x277CBEB18];
  v12 = +[HMDHAPAccessoryTransaction properties];
  v13 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

  v131 = v8;
  v14 = [v8 configurationTracker];
  v15 = v14;
  if (v14)
  {
    dispatch_group_enter(v14);
  }

  [(HMDService *)self _processTransactionForNameComponents:v9 messagesToSendToAccessory:v13 result:v10, v15];
  v16 = [v9 serviceType];
  if (v16)
  {
    v17 = v16;
    v18 = [(HMDService *)self serviceType];
    v19 = [v9 serviceType];
    v20 = [v18 isEqual:v19];

    if ((v20 & 1) == 0)
    {
      [v10 markChanged];
      [v10 markSaveToAssistant];
      v21 = [v9 serviceType];
      [(HMDService *)self setServiceType:v21];
    }
  }

  v22 = [v9 matterEndpointID];
  if (v22)
  {
    v23 = v22;
    v24 = [(HMDService *)self matterEndpointID];
    v25 = [v9 matterEndpointID];
    v26 = HMFEqualObjects();

    if ((v26 & 1) == 0)
    {
      v27 = [v9 matterEndpointID];
      [(HMDService *)self setMatterEndpointID:v27];

      [v10 markChanged];
    }
  }

  if ([v9 propertyWasSet:@"associatedServiceType"])
  {
    v28 = [v9 associatedServiceType];
    v29 = [(HMDService *)self associatedServiceType];
    v30 = HMFEqualObjects();

    if ((v30 & 1) == 0)
    {
      v31 = [v9 associatedServiceType];
      associatedServiceType = self->_associatedServiceType;
      self->_associatedServiceType = v31;

      [v10 markChanged];
      [v10 markSaveToAssistant];
    }
  }

  v33 = [v9 serviceSubtype];
  if (v33)
  {
    v34 = v33;
    v35 = [(HMDService *)self serviceSubtype];
    v36 = [v9 serviceSubtype];
    v37 = [v35 isEqual:v36];

    if ((v37 & 1) == 0)
    {
      [v10 markChanged];
      [v10 markSaveToAssistant];
      v38 = [v9 serviceSubtype];
      [(HMDService *)self setServiceSubtype:v38];

      v148[0] = *MEMORY[0x277CD25F8];
      v39 = [(HMDService *)self instanceID];
      v149[0] = v39;
      v148[1] = *MEMORY[0x277CD2640];
      v40 = [v9 serviceSubtype];
      v149[1] = v40;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];

      v42 = MEMORY[0x277D0F818];
      v43 = *MEMORY[0x277CD2648];
      v44 = [v134 identifier];
      v45 = [v42 entitledMessageWithName:v43 identifier:v44 messagePayload:v41];

      [v13 addObject:v45];
    }
  }

  v46 = [v9 labelIndex];
  if (v46)
  {
    v47 = v46;
    v48 = [(HMDService *)self labelIndex];
    v49 = [v9 labelIndex];
    v50 = [v48 isEqual:v49];

    if ((v50 & 1) == 0)
    {
      [v10 markChanged];
      [v10 markSaveToAssistant];
      v51 = [v9 labelIndex];
      [(HMDService *)self setLabelIndex:v51];

      v52 = [(HMDService *)self _checkIfDefaultNameChanged];
      if (v52)
      {
        [v13 addObject:v52];
      }
    }
  }

  v53 = [v9 labelNamespace];
  if (v53)
  {
    v54 = v53;
    v55 = [(HMDService *)self labelNamespace];
    v56 = [v9 labelNamespace];
    v57 = [v55 isEqual:v56];

    if ((v57 & 1) == 0)
    {
      [v10 markChanged];
      [v10 markSaveToAssistant];
      v58 = [v9 labelNamespace];
      [(HMDService *)self setLabelNamespace:v58];
    }
  }

  v59 = [v9 configurationState];
  if (v59)
  {
    v60 = v59;
    v61 = [(HMDService *)self configurationState];
    v62 = [v9 configurationState];
    v63 = [v61 isEqual:v62];

    if ((v63 & 1) == 0)
    {
      [v10 markChanged];
      [v10 markSaveToAssistant];
      v64 = [v9 configurationState];
      [(HMDService *)self setConfigurationState:v64];

      v146[0] = *MEMORY[0x277CD25F8];
      v65 = [(HMDService *)self instanceID];
      v147[0] = v65;
      v146[1] = *MEMORY[0x277CD2590];
      v66 = [v9 configurationState];
      v147[1] = v66;
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];

      v68 = MEMORY[0x277D0F818];
      v69 = *MEMORY[0x277CD2598];
      v70 = [v134 identifier];
      v71 = [v68 entitledMessageWithName:v69 identifier:v70 messagePayload:v67];

      [v13 addObject:v71];
    }
  }

  v72 = [v9 linkedServices];
  if (v72)
  {
    v73 = v72;
    v74 = [(HMDService *)self linkedServices];
    v75 = [v9 linkedServices];
    v76 = [v74 isEqualToArray:v75];

    if ((v76 & 1) == 0)
    {
      v77 = [v9 linkedServices];
      [(HMDService *)self setLinkedServices:v77];

      [v10 markChanged];
      [v10 markSaveToAssistant];
    }
  }

  v133 = [(HMDService *)self accessory];
  v78 = [v9 serviceProperties];
  if (v78)
  {
    v79 = v78;
    v80 = [(HMDService *)self serviceProperties];
    v81 = [v9 serviceProperties];
    v82 = [v81 unsignedIntegerValue];

    if (v80 != v82)
    {
      [v10 markChanged];
      v83 = [v9 serviceProperties];
      -[HMDService setServiceProperties:](self, "setServiceProperties:", [v83 unsignedIntegerValue]);

      LODWORD(v83) = [(HMDService *)self isPrimary];
      [(HMDService *)self setPrimary:[(HMDService *)self serviceProperties]& 1];
      if (v83 != [(HMDService *)self isPrimary])
      {
        [v133 updatePrimaryServiceIfNeeded];
      }

      [(HMDService *)self _shouldServiceBeHidden];
    }
  }

  if ([v9 propertyWasSet:@"lastKnownOperatingState"])
  {
    v84 = [v9 lastKnownOperatingState];
    v85 = [(HMDService *)self lastKnownOperatingState];
    v86 = HMFEqualObjects();

    if ((v86 & 1) == 0)
    {
      v87 = [v9 lastKnownOperatingState];
      [(HMDService *)self setLastKnownOperatingState:v87];

      [v10 markChanged];
    }
  }

  if ([v9 propertyWasSet:@"lastKnownOperatingStateAbnormalReasons"])
  {
    v88 = [v9 lastKnownOperatingStateAbnormalReasons];
    v89 = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];
    v90 = HMFEqualObjects();

    if ((v90 & 1) == 0)
    {
      v91 = [v9 lastKnownOperatingStateAbnormalReasons];
      [(HMDService *)self setLastKnownOperatingStateAbnormalReasons:v91];

      [v10 markChanged];
    }
  }

  v92 = [v9 mediaSourceIdentifier];
  if (v92)
  {
    v93 = v92;
    v94 = [v9 mediaSourceIdentifier];
    v95 = [(HMDService *)self mediaSourceIdentifier];
    v96 = [v94 isEqual:v95];

    if ((v96 & 1) == 0)
    {
      v97 = [v9 mediaSourceIdentifier];
      [(HMDService *)self setMediaSourceIdentifier:v97];

      v144[0] = *MEMORY[0x277CD25F8];
      v98 = [(HMDService *)self instanceID];
      v145[0] = v98;
      v144[1] = *MEMORY[0x277CD0D88];
      v99 = [v9 mediaSourceIdentifier];
      v145[1] = v99;
      v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:2];

      v101 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD0D90] messagePayload:v100];
      [v13 addObject:v101];

      [v10 markChanged];
    }
  }

  v102 = v13;
  v103 = [v134 name];
  v104 = [v103 isEqualToString:*MEMORY[0x277CD1238]];

  v105 = [v9 mediaSourceDisplayOrder];
  if (!v105)
  {
    goto LABEL_45;
  }

  v106 = v105;
  v107 = [v9 mediaSourceDisplayOrder];
  v108 = [(HMDService *)self mediaSourceDisplayOrder];
  v109 = [v107 isEqualToArray:v108];

  if ((v109 & 1) == 0)
  {
    v110 = [v9 mediaSourceDisplayOrder];
    [(HMDService *)self setMediaSourceDisplayOrder:v110];

    [v10 markChanged];
  }

  else
  {
LABEL_45:
    if (!v104)
    {
      goto LABEL_49;
    }
  }

  v142[0] = *MEMORY[0x277CD25F8];
  v111 = [(HMDService *)self instanceID];
  v143[0] = v111;
  v142[1] = *MEMORY[0x277CD1230];
  v112 = [v9 mediaSourceDisplayOrder];
  v143[1] = v112;
  v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:2];

  v114 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD1240] messagePayload:v113];
  [v102 addObject:v114];

LABEL_49:
  v115 = [v9 characteristics];

  if (v115)
  {
    v116 = [v9 characteristics];
    v117 = [(HMDService *)self updateCharacteristics:v116];

    if (v117)
    {
      [v10 markChanged];
      [v10 markSaveToAssistant];
    }
  }

  v130 = v10;
  v118 = dispatch_group_create();
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = v102;
  v119 = [obj countByEnumeratingWithState:&v137 objects:v141 count:16];
  v120 = v134;
  if (v119)
  {
    v121 = v119;
    v122 = *v138;
    do
    {
      for (i = 0; i != v121; ++i)
      {
        if (*v138 != v122)
        {
          objc_enumerationMutation(obj);
        }

        v124 = *(*(&v137 + 1) + 8 * i);
        dispatch_group_enter(v118);
        if (v120)
        {
          v125 = [v120 identifier];
          [v124 setIdentifier:v125];
        }

        v126 = [v133 msgDispatcher];
        v127 = [v133 uuid];
        v135[0] = MEMORY[0x277D85DD0];
        v135[1] = 3221225472;
        v135[2] = __59__HMDService__transactionServiceUpdated_newValues_message___block_invoke;
        v135[3] = &unk_279735D00;
        v136 = v118;
        [v126 sendMessage:v124 target:v127 andInvokeCompletionHandler:v135];

        v120 = v134;
      }

      v121 = [obj countByEnumeratingWithState:&v137 objects:v141 count:16];
    }

    while (v121);
  }

  dispatch_group_wait(v118, 0);
  [v120 respondWithPayload:0];
  if (group)
  {
    dispatch_group_leave(group);
  }

  v128 = *MEMORY[0x277D85DE8];
}

- (void)_processTransactionForNameComponents:(id)a3 messagesToSendToAccessory:(id)a4 result:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDService *)self name];
  v12 = [(HMDService *)self getConfiguredNameForXPCClients];
  v13 = [v8 lastSeenConfiguredNameLocal];

  if (v13)
  {
    v14 = [(HMDService *)self lastSeenConfiguredName];
    v15 = [v8 lastSeenConfiguredNameLocal];
    v16 = HMFEqualObjects();

    if (v16)
    {
      v17 = [v8 setProperties];
      v18 = [v17 containsObject:@"expectedConfiguredName"];

      if (v18)
      {
        v19 = [v8 expectedConfiguredName];
        [(HMDService *)self setExpectedConfiguredName:v19];
      }

      v20 = 0;
      goto LABEL_15;
    }

    v35 = [v8 lastSeenConfiguredNameLocal];
    v36 = [v35 hm_truncatedNameString];
    [(HMDService *)self _saveLastSeenAndExpectedConfiguredName:v36];

    [(HMDService *)self _saveForExpectedConfiguredNameUpdate];
LABEL_14:
    v20 = 1;
    goto LABEL_15;
  }

  v21 = [v8 setProperties];
  v22 = [v21 containsObject:@"expectedConfiguredName"];

  v65 = v9;
  if (!v22)
  {
    v40 = [v8 setProperties];
    v41 = [v40 containsObject:@"name"];

    if (v41 && (-[HMDService getConfiguredName](self, "getConfiguredName"), v42 = objc_claimAutoreleasedReturnValue(), [v8 name], v43 = objc_claimAutoreleasedReturnValue(), v44 = HMFEqualObjects(), v43, v42, (v44 & 1) == 0))
    {
      v50 = [v8 name];
      [(HMDService *)self setConfiguredName:v50];

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    v51 = [v8 providedName];
    if (!v51)
    {
      v9 = v65;
      goto LABEL_15;
    }

    v52 = v51;
    v53 = [(HMDService *)self providedName];
    v54 = [v8 providedName];
    v55 = [v53 isEqual:v54];

    v9 = v65;
    if ((v55 & 1) == 0)
    {
      v56 = [(HMDService *)self providedName];
      v57 = [v8 providedName];
      v58 = [v57 hm_truncatedNameString];
      v59 = [(HMDService *)self _updateProvidedName:v58];

      v9 = v65;
      if (v59)
      {
        [v65 addObject:v59];
      }

      if (v56)
      {
        v60 = [(HMDService *)self _checkIfDefaultNameChanged];

        if (v60)
        {
          [v65 addObject:v60];
          v59 = v60;
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

  v23 = [(HMDService *)self expectedConfiguredName];
  v24 = [v8 expectedConfiguredName];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    v26 = [v8 expectedConfiguredName];
    v27 = [v26 hm_truncatedNameString];

    context = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    v64 = v27;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v67 = v30;
      v68 = 2112;
      v69 = v64;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Updating expected configured name to %@", buf, 0x16u);

      v27 = v64;
    }

    objc_autoreleasePoolPop(context);
    [(HMDService *)v28 setExpectedConfiguredName:v27];
    v31 = [(HMDService *)v28 accessory];
    v32 = [v31 home];
    if ([v32 isOwnerUser])
    {
      [(HMDService *)v28 getConfiguredName];
      v33 = contexta = v25;
      v34 = [(HMDService *)v28 lastSeenConfiguredName];
      v61 = HMFEqualObjects();

      v9 = v65;
      v25 = contexta;

      if (!v61)
      {
LABEL_24:

        goto LABEL_25;
      }

      v31 = [(HMDService *)v28 _sanitizeNameToWriteToAccessory:v64];
      [(HMDService *)v28 _writeConfiguredNameToAccessory:v31];
    }

    else
    {
    }

    goto LABEL_24;
  }

LABEL_25:
  v20 = v25 ^ 1;
  v45 = [v8 setProperties];
  if (![v45 containsObject:@"name"])
  {

    goto LABEL_15;
  }

  v46 = [(HMDService *)self getConfiguredName];
  v47 = [v8 name];
  v48 = HMFEqualObjects();

  v9 = v65;
  if ((v48 & 1) == 0)
  {
    v49 = [v8 name];
    [(HMDService *)self setConfiguredName:v49];

    v9 = v65;
    goto LABEL_14;
  }

LABEL_15:
  v37 = [(HMDService *)self name];
  v38 = [(HMDService *)self getConfiguredNameForXPCClients];
  if (!HMFEqualObjects() || (v20 | HMFEqualObjects() ^ 1) == 1)
  {
    [v10 markChanged];
    [v10 markSaveToAssistant];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_saveLastSeenAndExpectedConfiguredName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMDService *)self setLastSeenConfiguredName:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDService *)v6 lastSeenConfiguredName];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating last seen configured (and configured/expected configured name to %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDService *)v6 setExpectedConfiguredName:v4];
  [(HMDService *)v6 setConfiguredName:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_saveForLastSeenConfiguredNameUpdate
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDService *)self accessory];
  v4 = *MEMORY[0x277CD2550];
  v5 = [v3 home];
  v6 = [v5 backingStore];
  v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v8 = [v6 transaction:v4 options:v7];

  v9 = [HMDServiceTransaction alloc];
  v10 = [(HMDService *)self uuid];
  v11 = [v3 uuid];
  v12 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:2 uuid:v10 parentUUID:v11];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [(HMDService *)v14 getConfiguredName];
    v18 = [(HMDService *)v14 lastSeenConfiguredName];
    *buf = 138543874;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Creating save transaction for update of configured '%@; and lastSeen configured name '%@'", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMDService *)v14 getConfiguredName];
  [(HMDServiceTransaction *)v12 setName:v19];

  v20 = [(HMDService *)v14 lastSeenConfiguredName];
  [(HMDServiceTransaction *)v12 setLastSeenConfiguredNameLocal:v20];

  [v8 add:v12 withMessage:0];
  objc_initWeak(buf, v14);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __50__HMDService__saveForLastSeenConfiguredNameUpdate__block_invoke;
  v24[3] = &unk_279731988;
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
  v3 = [(HMDService *)self accessory];
  v4 = [v3 home];
  v5 = [v4 backingStore];
  v6 = *MEMORY[0x277CD2550];
  v7 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v8 = [v5 transaction:v6 options:v7];

  v9 = [HMDServiceTransaction alloc];
  v10 = [(HMDService *)self uuid];
  v11 = [v3 uuid];
  v12 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:2 uuid:v10 parentUUID:v11];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [(HMDService *)v14 getConfiguredName];
    v18 = [(HMDService *)v14 expectedConfiguredName];
    v22 = 138543874;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Creating save transaction for update of configured '%@; and expected configured name '%@'", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMDService *)v14 getConfiguredName];
  [(HMDServiceTransaction *)v12 setName:v19];

  v20 = [(HMDService *)v14 expectedConfiguredName];
  [(HMDServiceTransaction *)v12 setExpectedConfiguredName:v20];

  [v8 add:v12 withMessage:0];
  [v8 run];

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_messagesForConfiguredNameChange
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(HMDService *)self nameChangedMessage];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDService *)self _transactionServiceUpdated:0 newValues:v12 message:v10];
    v13 = v9;
LABEL_15:

    goto LABEL_16;
  }

  v13 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    [(HMDService *)self appDataUpdated:v15 message:v10];
    goto LABEL_15;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = objc_opt_class();
    v20 = v29;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [v10 responseHandler];

  if (v21)
  {
    v13 = [v10 responseHandler];
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v13 + 2))(v13, v22, 0);

    goto LABEL_15;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_encodeWithCoder:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDService *)self accessory];
  v6 = v5;
  if ([v4 hmd_isForXPCTransport])
  {
    v7 = [v5 uuid];
    [v4 encodeObject:v7 forKey:*MEMORY[0x277CD0DC8]];

    v6 = accessoryToEncodeForXPCTransportForAccessory(v5);
  }

  [v4 encodeConditionalObject:v6 forKey:@"accessory"];
  v8 = [(HMDService *)self uuid];
  [v4 encodeObject:v8 forKey:*MEMORY[0x277CD2660]];

  v9 = [(HMDService *)self serviceType];
  [v4 encodeObject:v9 forKey:*MEMORY[0x277CD2650]];

  v10 = [(HMDService *)self instanceID];
  [v4 encodeObject:v10 forKey:*MEMORY[0x277CD25F0]];

  v11 = [(HMDService *)self associatedServiceType];
  [v4 encodeObject:v11 forKey:@"associatedServiceType"];

  v12 = [(HMDService *)self matterEndpointID];
  [v4 encodeObject:v12 forKey:*MEMORY[0x277CD2610]];

  if ([v4 hmd_isForXPCTransport])
  {
    v62 = v6;
    v64 = v5;
    v13 = MEMORY[0x277CBEB18];
    v14 = [(HMDService *)self characteristics];
    v15 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

    v16 = +[HMDHAPMetadata getSharedInstance];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v63 = self;
    v17 = [(HMDService *)self characteristics];
    v18 = [v17 countByEnumeratingWithState:&v65 objects:v69 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v65 + 1) + 8 * i);
          v23 = [v22 type];
          v24 = [v16 shouldFilterCharacteristicOfTypeFromApp:v23];

          if ((v24 & 1) == 0)
          {
            [v15 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v19);
    }

    v25 = [v15 copy];
    [v4 encodeObject:v25 forKey:*MEMORY[0x277CD2578]];

    v5 = v64;
    v26 = [v64 primaryService];
    self = v63;
    v27 = v26 == v63;

    [v4 encodeBool:v27 forKey:@"HM.primary"];
    v6 = v62;
  }

  else
  {
    v28 = [(HMDService *)self characteristics];
    [v4 encodeObject:v28 forKey:*MEMORY[0x277CD2578]];

    [v4 encodeBool:-[HMDService isPrimary](self forKey:{"isPrimary"), @"HM.primary"}];
    [v4 encodeInt:-[HMDService serviceProperties](self forKey:{"serviceProperties"), @"HM.serviceProperties"}];
  }

  [v4 encodeBool:-[HMDService isHidden](self forKey:{"isHidden"), @"HM.hidden"}];
  v29 = [(HMDService *)self linkedServices];
  [v4 encodeObject:v29 forKey:@"HM.linkedServices"];

  if (([v4 hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    if ([v4 hmd_isForXPCTransport])
    {
      v30 = [(HMDService *)self name];
      v31 = MEMORY[0x277CD2618];
    }

    else
    {
      [v4 encodeObject:self->_configuredName forKey:*MEMORY[0x277CD2618]];
      v32 = [(HMDService *)self providedName];
      [v4 encodeObject:v32 forKey:*MEMORY[0x277CD2628]];

      v33 = [(HMDService *)self labelIndex];
      [v4 encodeObject:v33 forKey:*MEMORY[0x277CD2600]];

      v34 = [(HMDService *)self labelNamespace];
      [v4 encodeObject:v34 forKey:*MEMORY[0x277CD2608]];

      v35 = [(HMDService *)self serviceSubtype];
      [v4 encodeObject:v35 forKey:*MEMORY[0x277CD2638]];

      v30 = [(HMDService *)self configurationState];
      v31 = MEMORY[0x277CD2588];
    }

    [v4 encodeObject:v30 forKey:*v31];
  }

  v36 = [v4 hmd_isForXPCTransport];
  v37 = [(HMDService *)self appData];
  v38 = v37;
  if (!v36)
  {
    [v4 encodeObject:v37 forKey:@"HM.appDataRepository"];
    goto LABEL_24;
  }

  [v37 encodeForXPCTransportWithCoder:v4 key:@"HM.appData"];

  if ([v4 hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v38 = [(HMDService *)self getConfiguredNameForXPCClients];
    [v4 encodeObject:v38 forKey:*MEMORY[0x277CD25A0]];
    v39 = [(HMDService *)self defaultName];
    [v4 encodeObject:v39 forKey:*MEMORY[0x277CD25A8]];

    v40 = [(HMDService *)self serviceSubtype];
    [v4 encodeObject:v40 forKey:*MEMORY[0x277CD2638]];

    v41 = [(HMDService *)self configurationState];
    [v4 encodeObject:v41 forKey:*MEMORY[0x277CD2588]];

LABEL_24:
  }

  if (([v4 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v4, "hmd_isForXPCTransport"))
  {
    v42 = [(HMDService *)self bulletinBoardNotification];
    [v4 encodeObject:v42 forKey:@"HM.BulletinBoardNotification"];
  }

  if (![v4 hmd_isForXPCTransport] || objc_msgSend(v4, "hmd_isForXPCTransport") && objc_msgSend(v4, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    v43 = [(HMDService *)self lastKnownOperatingState];

    if (v43)
    {
      v44 = [(HMDService *)self lastKnownOperatingState];
      [v4 encodeObject:v44 forKey:*MEMORY[0x277CD0D68]];
    }

    v45 = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];

    if (v45)
    {
      v46 = [(HMDService *)self lastKnownOperatingStateAbnormalReasons];
      [v4 encodeObject:v46 forKey:*MEMORY[0x277CD0D60]];
    }
  }

  v47 = [(HMDService *)self mediaSourceIdentifier];

  if (v47)
  {
    v48 = [(HMDService *)self mediaSourceIdentifier];
    [v4 encodeObject:v48 forKey:*MEMORY[0x277CD0D80]];
  }

  v49 = [(HMDService *)self mediaSourceDisplayOrder];
  v50 = [v49 count];

  if (v50)
  {
    v51 = [(HMDService *)self mediaSourceDisplayOrder];
    [v4 encodeObject:v51 forKey:*MEMORY[0x277CD0D70]];
  }

  v52 = [(HMDService *)self findCharacteristicWithType:@"00000136-0000-1000-8000-0026BB765291"];
  v53 = [v52 supportsWrite];
  [v4 encodeBool:v53 forKey:*MEMORY[0x277CD0D78]];
  v54 = [(HMDService *)self findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
  v55 = v54;
  if (v54)
  {
    v56 = [v54 supportsWrite];
  }

  else
  {
    v56 = 1;
  }

  [v4 encodeBool:v56 forKey:*MEMORY[0x277CD0D98]];
  if (([v4 hmd_isForXPCTransport] & 1) == 0)
  {
    v57 = [(HMDService *)self expectedConfiguredName];

    if (v57)
    {
      v58 = [(HMDService *)self expectedConfiguredName];
      [v4 encodeObject:v58 forKey:@"HMDServiceExpectedConfiguredNameKey"];
    }
  }

  if ([v4 hmd_isForLocalStore])
  {
    v59 = [(HMDService *)self lastSeenConfiguredName];

    if (v59)
    {
      v60 = [(HMDService *)self lastSeenConfiguredName];
      [v4 encodeObject:v60 forKey:@"HMDLastSeenConfiguredNameKey"];
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(HMDService *)self _encodeWithCoder:v5];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD25F0]];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2660]];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v12 = v11 = v6;
      v13 = [v7 UUIDString];
      *buf = 138543618;
      v73 = v12;
      v74 = 2112;
      v75 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@HMDService decoding with uuid %@", buf, 0x16u);

      v6 = v11;
    }

    objc_autoreleasePoolPop(v8);
  }

  v14 = [(HMDService *)self initWithAccessory:v5 owner:v5 instance:v6 uuid:v7];
  if (v14)
  {
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2650]];
    v16 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v15];
    serviceType = v14->_serviceType;
    v14->_serviceType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedServiceType"];

    v19 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v18];
    associatedServiceType = v14->_associatedServiceType;
    v14->_associatedServiceType = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2638]];

    v22 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v21];
    serviceSubtype = v14->_serviceSubtype;
    v14->_serviceSubtype = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2628]];
    v25 = [v24 hm_truncatedNameString];
    providedName = v14->_providedName;
    v14->_providedName = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2618]];
    v28 = [v27 hm_truncatedNameString];
    configuredName = v14->_configuredName;
    v14->_configuredName = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDServiceExpectedConfiguredNameKey"];
    v31 = [v30 hm_truncatedNameString];
    expectedConfiguredName = v14->_expectedConfiguredName;
    v14->_expectedConfiguredName = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDLastSeenConfiguredNameKey"];
    v34 = [v33 hm_truncatedNameString];
    lastSeenConfiguredName = v14->_lastSeenConfiguredName;
    v14->_lastSeenConfiguredName = v34;

    [(HMDService *)v14 _updateDefaultName];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D68]];
    lastKnownOperatingState = v14->_lastKnownOperatingState;
    v14->_lastKnownOperatingState = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D60]];
    lastKnownOperatingStateAbnormalReasons = v14->_lastKnownOperatingStateAbnormalReasons;
    v14->_lastKnownOperatingStateAbnormalReasons = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D80]];
    mediaSourceIdentifier = v14->_mediaSourceIdentifier;
    v14->_mediaSourceIdentifier = v40;

    v42 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D70]];
    mediaSourceDisplayOrder = v14->_mediaSourceDisplayOrder;
    v14->_mediaSourceDisplayOrder = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2600]];
    labelIndex = v14->_labelIndex;
    v14->_labelIndex = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2608]];
    labelNamespace = v14->_labelNamespace;
    v14->_labelNamespace = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2588]];
    configurationState = v14->_configurationState;
    v14->_configurationState = v48;

    v50 = MEMORY[0x277CBEB98];
    v71[0] = objc_opt_class();
    v71[1] = objc_opt_class();
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
    v52 = [v50 setWithArray:v51];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:*MEMORY[0x277CD2578]];
    characteristics = v14->_characteristics;
    v14->_characteristics = v53;

    v14->_serviceProperties = [v4 decodeIntForKey:@"HM.serviceProperties"];
    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2610]];
    matterEndpointID = v14->_matterEndpointID;
    v14->_matterEndpointID = v55;

    v57 = MEMORY[0x277CBEB98];
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    v59 = [v57 setWithArray:v58];
    v60 = [v4 decodeObjectOfClasses:v59 forKey:@"HM.linkedServices"];
    linkedServices = v14->_linkedServices;
    v14->_linkedServices = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v14->_appData;
    v14->_appData = v62;

    v64 = v14->_appData;
    v65 = [(HMDService *)v14 uuid];
    [(HMDApplicationData *)v64 updateParentUUIDIfNil:v65];

    if ([(HMDService *)v14 _supportsBulletinNotification])
    {
      v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.BulletinBoardNotification"];
      bulletinBoardNotification = v14->_bulletinBoardNotification;
      v14->_bulletinBoardNotification = v66;
    }
  }

  v68 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDService)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDService *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)updatePresenceRequestTimeForDeviceWithDestination:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDService *)self deviceLastRequestPresenceDateMap];

    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      [(HMDService *)self setDeviceLastRequestPresenceDateMap:v6];
    }

    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDService *)v8 uuid];
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[%@] Update presence request time for %@.", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [MEMORY[0x277CBEAA8] date];
    v13 = [(HMDService *)v8 deviceLastRequestPresenceDateMap];
    [v13 setObject:v12 forKeyedSubscript:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldIncludePresenceForDeviceWithDestination:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDService *)self deviceLastRequestPresenceDateMap];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEAA8] date];
      [v7 timeIntervalSinceDate:v6];
      v9 = v8;

      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [(HMDService *)v11 uuid];
        v18 = 138544130;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        v22 = 2112;
        v23 = v4;
        v24 = 2048;
        v25 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%@] Check if we need to include presence in notification for %@. Interval since last update %lf.", &v18, 0x2Au);
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
  v3 = [(HMDService *)self characteristics];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 type];
        v10 = [v8 service];
        v11 = [v10 type];
        v12 = [HMDBulletinBoard isBulletinSupportedForCharacteristicType:v9 serviceType:v11];

        if (v12)
        {
          v13 = [(HMDService *)self bulletinBoardNotification];
          v14 = [v13 isEnabled];

          if (v14)
          {
            v15 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v2 = [(HMDService *)self bulletinBoardNotification];
  [v2 configureBulletinNotification];
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_9:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  [(HMDService *)self setWorkQueue:v6];
  objc_storeStrong(&self->_messageDispatcher, a4);
  [(HMDService *)self _registerForMessages];
  [(HMDService *)self _shouldServiceBeHidden];
  [(HMDService *)self _createNotification];
  v9 = [(HMDService *)self bulletinBoardNotification];
  [v9 configureWithWorkQueue:v6 messageDispatcher:v8];

  if (self->_instanceID == &unk_2866284C8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDService *)v11 dumpStateWithPrivacyLevel:0];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@*** DEBUG THIS : File a Radar : HomeKit | New Bugs ***: Service dump : [%@]", &v16, 0x16u);
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
  v2 = [(HMDService *)self characteristics];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) updateLastKnownValue];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v3 = [(HMDService *)self expectedConfiguredName];
  if (!v3)
  {
    v3 = self->_configuredName;
    if (!v3)
    {
      v3 = self->_defaultName;
    }
  }

  v4 = v3;
  v5 = [(NSString *)v3 copy];

  return v5;
}

- (id)getConfiguredName
{
  v2 = [(NSString *)self->_configuredName copy];

  return v2;
}

- (BOOL)updateAssociatedServiceType:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = +[HMDHAPMetadata getSharedInstance];
  v9 = [(HMDService *)self serviceType];
  v10 = [v8 validateAssociatedServiceType:v7 forService:v9];

  if (v10)
  {
    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }
  }

  else
  {
    objc_storeStrong(&self->_associatedServiceType, a3);
  }

  return v10 == 0;
}

- (id)messagesForUpdatedRoom:(id)a3
{
  v4 = [(HMDService *)self serviceType];
  v5 = [v4 isEqualToString:*MEMORY[0x277CD0F20]];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v7 = [(HMDService *)self getConfiguredNameForXPCClients];
    v8 = [(HMDService *)self name];
    v9 = [(HMDService *)self _checkIfDefaultNameChanged];
    if (v9)
    {
      [v6 addObject:v9];
    }

    v10 = [(HMDService *)self getConfiguredNameForXPCClients];
    if (HMFEqualObjects())
    {
      v11 = [(HMDService *)self name];
      if ((HMFEqualObjects() & 1) == 0)
      {
        v12 = [(HMDService *)self nameChangedMessage];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }
    }

    else
    {
      v11 = [(HMDService *)self _messagesForConfiguredNameChange];
      [v6 addObjectsFromArray:v11];
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
  v3 = [(HMDService *)self accessory];
  v4 = [v3 home];
  v5 = [(HMDService *)self name];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v20[0] = *MEMORY[0x277CD25F8];
    v8 = [(HMDService *)self instanceID];
    v9 = *MEMORY[0x277CD2620];
    v21[0] = v8;
    v21[1] = v6;
    v10 = *MEMORY[0x277CD0640];
    v20[1] = v9;
    v20[2] = v10;
    v11 = [v4 uuid];
    v12 = [v11 UUIDString];
    v21[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

    v14 = [(HMDService *)self getConfiguredNameForXPCClients];
    if (v14)
    {
      v7 = [MEMORY[0x277D0F818] nonSPIEntitledMessageWithName:*MEMORY[0x277CD2630] messagePayload:v13];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D0F820]);
      v16 = [v3 uuid];
      v17 = [v15 initWithTarget:v16];

      v7 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD2630] destination:v17 payload:v13];
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_checkIfDefaultNameChanged
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HMDService *)self expectedConfiguredName];
  v4 = [(HMDService *)self defaultName];
  [(HMDService *)self _updateDefaultName];
  v5 = [(HMDService *)self defaultName];
  v6 = [(HMDService *)self accessory];
  v7 = [v6 home];
  if (v7 && (HMFEqualObjects() & 1) == 0)
  {
    v9 = [(HMDService *)self findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
    if ([v9 supportsWrite] && (!v3 || HMFEqualObjects()))
    {
      v30 = v9;
      v10 = [v7 backingStore];
      v11 = *MEMORY[0x277CD2550];
      v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v29 = [v10 transaction:v11 options:v12];

      v13 = [HMDServiceTransaction alloc];
      v14 = [(HMDService *)self uuid];
      v15 = [v6 uuid];
      v16 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:2 uuid:v14 parentUUID:v15];

      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v20 = v28 = v17;
        *buf = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = v5;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Creating run transaction for update of expected configured name '%@' due to defaultName change", buf, 0x16u);

        v17 = v28;
      }

      objc_autoreleasePoolPop(v17);
      [(HMDServiceTransaction *)v16 setExpectedConfiguredName:v5];
      [v29 add:v16 withMessage:0];
      [v29 run];

      v9 = v30;
    }

    v31[0] = *MEMORY[0x277CD25F8];
    v21 = [(HMDService *)self instanceID];
    v31[1] = *MEMORY[0x277CD2620];
    v32[0] = v21;
    v32[1] = v5;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    v23 = objc_alloc(MEMORY[0x277D0F820]);
    v24 = [v6 uuid];
    v25 = [v23 initWithTarget:v24];

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
  v3 = [(HMDService *)self _deriveDefaultName];
  [(HMDService *)self setDefaultName:v3];
}

- (id)_deriveDefaultName
{
  v3 = [(HMDService *)self serviceType];
  v4 = [v3 isEqualToString:*MEMORY[0x277CD0F38]];

  if (!v4)
  {
    v13 = [(HMDService *)self serviceType];
    if ([v13 isEqualToString:*MEMORY[0x277CD0F20]])
    {
    }

    else
    {
      v14 = [(HMDService *)self serviceType];
      v15 = [v14 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"];

      if (!v15)
      {
        v12 = [(HMDService *)self providedName];
        goto LABEL_14;
      }
    }

    v9 = [(HMDService *)self accessory];
    v16 = [v9 room];
    v12 = [v16 name];

LABEL_11:
    goto LABEL_14;
  }

  v5 = [(HMDService *)self labelIndex];

  if (v5)
  {
    v6 = [(HMDService *)self serviceSubtype];
    v7 = [v6 isEqualToString:*MEMORY[0x277CD0DA8]];

    if (v7)
    {
      v8 = @"DEFAULT_SPRINKLER_VALVE";
    }

    else
    {
      v8 = @"DEFAULT_FAUCET_VALVE";
    }

    v9 = HMDLocalizedStringForKey(v8);
    v10 = MEMORY[0x277CCACA8];
    v11 = [(HMDService *)self labelIndex];
    v12 = [v10 stringWithFormat:@"%@ %@", v9, v11];

    goto LABEL_11;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (NSString)name
{
  v3 = 96;
  if ([(NSString *)self->_expectedConfiguredName length]|| (v3 = 88, [(NSString *)self->_configuredName length]))
  {
    v4 = *(&self->super.super.isa + v3);
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  v8 = [(HMDService *)self defaultName];
  if ([v8 length])
  {
    v9 = [(HMDService *)self defaultName];
    v10 = [(HMDService *)self providedName];
    v11 = [v9 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v4 = [(HMDService *)self defaultName];
      goto LABEL_4;
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  v5 = [WeakRetained name];

LABEL_5:
  v6 = [v5 copy];

  return v6;
}

- (id)findCharacteristicWithType:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDService *)self characteristics];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)findCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HMDService *)self characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__HMDService_findCharacteristic___block_invoke;
  v9[3] = &unk_279733D48;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

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
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Got response %@", buf, 0x16u);
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
          aBlock[2] = __66__HMDService__readRequiredCharacteristicValuesForceReadFWVersion___block_invoke_150;
          aBlock[3] = &unk_2797288A8;
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
      _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Service or accessory is no more valid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReadingRequiredForBTLEServiceCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCF988]];

  if (v6)
  {
    v7 = [(HMDService *)self providedName];
  }

  else
  {
    v8 = [v4 type];
    v9 = [v8 isEqualToString:*MEMORY[0x277CCF7E0]];

    if (v9)
    {
      v7 = [(HMDService *)self getLastSeenConfiguredName];
    }

    else
    {
      v11 = [(HMDService *)self serviceType];
      if ([v11 isEqualToString:*MEMORY[0x277CD0E78]])
      {
        v12 = [v4 type];
        v13 = [v12 isEqualToString:*MEMORY[0x277CCF8E8]];

        if (v13)
        {
          v7 = [(HMDService *)self mediaSourceIdentifier];
          goto LABEL_5;
        }
      }

      else
      {
      }

      v14 = [(HMDService *)self serviceType];
      if ([v14 isEqualToString:@"00000221-0000-1000-8000-0026BB765291"])
      {
        v15 = [v4 type];
        v16 = [v15 isEqualToString:@"00000251-0000-1000-8000-0026BB765291"];

        if (v16)
        {
          LODWORD(self) = ![(HMDService *)self powerManagementSupportedSleepCharRead];
          goto LABEL_6;
        }
      }

      else
      {
      }

      v17 = [(HMDService *)self serviceType];
      if ([v17 isEqualToString:*MEMORY[0x277CD0F20]])
      {
        v18 = [v4 type];
        v19 = [v18 isEqualToString:@"00000136-0000-1000-8000-0026BB765291"];

        if (v19)
        {
          v20 = [(HMDService *)self mediaSourceDisplayOrder];
          LOBYTE(self) = [v20 count] == 0;

          goto LABEL_6;
        }
      }

      else
      {
      }

      v21 = [v4 type];
      v22 = [v21 isEqualToString:@"000000CB-0000-1000-8000-0026BB765291"];

      if (v22)
      {
        v7 = [(HMDService *)self labelIndex];
      }

      else
      {
        v23 = [v4 type];
        v24 = [v23 isEqualToString:@"000000CD-0000-1000-8000-0026BB765291"];

        if (v24)
        {
          v7 = [(HMDService *)self labelNamespace];
        }

        else
        {
          v25 = [v4 type];
          v26 = [v25 isEqualToString:@"000000D5-0000-1000-8000-0026BB765291"];

          if (v26)
          {
            v7 = [(HMDService *)self serviceSubtype];
          }

          else
          {
            v27 = [v4 type];
            v28 = [v27 isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];

            if (!v28)
            {
              LOBYTE(self) = 0;
              goto LABEL_6;
            }

            v7 = [(HMDService *)self configurationState];
          }
        }
      }
    }
  }

LABEL_5:
  LOBYTE(self) = v7 == 0;

LABEL_6:
  return self;
}

- (id)_updateProvidedName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDService *)self name];
  if ([HMDService validateProvidedName:v4])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Filling provided name with %@ from name characteristic", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDService *)v7 setProvidedName:v4];
    v10 = [(HMDService *)v7 name];
    v11 = [v5 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      v12 = [(HMDService *)v7 nameChangedMessage];
      goto LABEL_8;
    }
  }

  else
  {
    providedName = self->_providedName;
    self->_providedName = 0;
  }

  v12 = 0;
LABEL_8:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_shouldServiceBeHidden
{
  v2 = self;
  v25 = *MEMORY[0x277D85DE8];
  if ((-[HMDService serviceProperties](self, "serviceProperties") & 2) != 0 || (-[HMDService type](v2, "type"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:*MEMORY[0x277CD0DD0]], v3, v4))
  {
    v5 = *MEMORY[0x277D85DE8];

    [(HMDService *)v2 setHidden:1];
  }

  else
  {
    [(HMDService *)v2 characteristics];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v19 = v2;
      v9 = *v21;
      v10 = *MEMORY[0x277CCF988];
      v11 = *MEMORY[0x277CCF7E0];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 type];
          if ([v14 isEqualToString:v10])
          {
          }

          else
          {
            v15 = [v13 type];
            v16 = [v15 isEqualToString:v11];

            if ((v16 & 1) == 0 && ([v13 properties] & 0x40) == 0)
            {
              v17 = 0;
              goto LABEL_19;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

      v17 = 1;
LABEL_19:
      v2 = v19;
    }

    else
    {
      v17 = 1;
    }

    [(HMDService *)v2 setHidden:v17];
    v18 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)_supportsBulletinNotification
{
  if (!+[HMDDeviceCapabilities supportsBulletinBoard])
  {
    return 0;
  }

  v3 = [(HMDService *)self serviceType];
  if ([HMDBulletinBoard isBulletinSupportedForCharacteristicType:0 serviceType:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMDService *)self serviceType];
    v4 = [HMDBulletinBoardNotification supportsBulletinNotificationGroup:v5];
  }

  return v4;
}

- (void)_createNotification
{
  if ([(HMDService *)self _supportsBulletinNotification])
  {
    v3 = [(HMDService *)self bulletinBoardNotification];

    if (!v3)
    {
      v4 = [[HMDBulletinBoardNotification alloc] initWithService:self];
      bulletinBoardNotification = self->_bulletinBoardNotification;
      self->_bulletinBoardNotification = v4;

      MEMORY[0x2821F96F8](v4, bulletinBoardNotification);
    }
  }
}

- (id)configureWithService:(id)a3 accessory:(id)a4 shouldRead:(BOOL)a5 added:(BOOL)a6
{
  LODWORD(v117) = a6;
  HIDWORD(v117) = a5;
  v169 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v119 = a4;
  v134 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(HMDService *)self characteristics];
  v10 = MEMORY[0x277CBEB18];
  v137 = v8;
  v11 = [v8 characteristics];
  v143 = [v10 arrayWithArray:v11];

  v12 = +[HMDHAPMetadata getSharedInstance];
  v140 = self;
  v121 = [(HMDService *)self accessory];
  v120 = [v121 home];
  v13 = [v120 notificationRegistrations];
  v136 = [v13 count];

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = v9;
  v141 = v12;
  v144 = [obj countByEnumeratingWithState:&v149 objects:v168 count:16];
  if (v144)
  {
    v142 = *v150;
    v135 = *MEMORY[0x277CFE810];
    v14 = @"H";
    if (!v136)
    {
      v14 = &stru_286509E58;
    }

    v122 = v14;
    v133 = *MEMORY[0x277CD21B8];
    v132 = *MEMORY[0x277CD21E0];
    v131 = *MEMORY[0x277CD21D0];
    v130 = *MEMORY[0x277CD2168];
    v123 = *MEMORY[0x277CD2150];
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
            v23 = [v16 characteristicType];
            v24 = [v22 type];
            v25 = [v23 isEqual:v24];

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
              goto LABEL_63;
            }
          }

          v26 = v22;

          v12 = v141;
          if (!v26)
          {
            continue;
          }

          v27 = [v16 lastKnownValueUpdateTime];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          [v16 configureWithCharacteristic:v26];
          v30 = [v26 type];
          v31 = [v137 type];
          [v26 setProhibitCaching:{objc_msgSend(v141, "requiresDeviceUnlock:forService:", v30, v31)}];

          v32 = [v16 type];
          LOBYTE(v31) = [v32 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

          if ((v31 & 1) == 0)
          {
            v33 = [(HMDService *)v140 type];
            if ([v33 isEqualToString:v135])
            {
              v34 = [v16 type];
              v35 = [v34 isEqualToString:@"000000A6-0000-1000-8000-0026BB765291"];
            }

            else
            {
              v35 = 0;
            }

            v138 = v29;

            v36 = [v16 service];
            v37 = [v16 type];
            v38 = [(HMDService *)v140 type];
            v39 = [v141 shouldAutoEnableNotificationForCharacteristic:v37 ofService:v38];

            if (v136)
            {
              v40 = [v16 type];
              v41 = [v36 type];
              v42 = [v141 shouldEnableHomeNotificationForCharacteristicType:v40 serviceType:v41];
            }

            else
            {
              v42 = 0;
            }

            v43 = [v16 type];
            v44 = [(HMDService *)v140 type];
            v45 = [v141 shouldFilterEnableNotificationsForCharacteristicType:v43 serviceType:v44];

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
                if (!isWatch())
                {
                  v50 = objc_autoreleasePoolPush();
                  v51 = v140;
                  v52 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    v129 = HMFGetLogIdentifier();
                    v53 = &stru_286509E58;
                    if (v39)
                    {
                      v54 = @"A";
                    }

                    else
                    {
                      v54 = &stru_286509E58;
                    }

                    if (v35)
                    {
                      v53 = @"F";
                    }

                    v124 = v53;
                    v125 = v54;
                    v127 = [(HMDService *)v51 accessory];
                    v55 = [v127 name];
                    [v16 instanceID];
                    v56 = v128 = v50;
                    v57 = [v16 type];
                    v126 = HAPShortUUIDType();
                    *buf = 138544898;
                    v154 = v129;
                    v155 = 2112;
                    v156 = v125;
                    v157 = 2112;
                    v158 = v124;
                    v159 = 2112;
                    v160 = v122;
                    v161 = 2112;
                    v162 = v55;
                    v163 = 2112;
                    v164 = v56;
                    v165 = 2112;
                    v166 = v126;
                    _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@Enabling notifications on behalf of homed(%@%@%@) for characteristic %@(%@/%@)", buf, 0x48u);

                    v50 = v128;
                  }

                  objc_autoreleasePoolPop(v50);
                  [v16 setNotificationEnabled:1 forClientIdentifier:v49];
                }
              }
            }

            v12 = v141;
            v29 = v138;
            if ([v16 isNotificationEnabled])
            {
              v58 = objc_autoreleasePoolPush();
              v59 = v140;
              v60 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                v61 = HMFGetLogIdentifier();
                v62 = [v16 shortDescription];
                v63 = [v16 notificationRegistrations];
                *buf = 138543874;
                v154 = v61;
                v155 = 2112;
                v156 = v62;
                v157 = 2112;
                v158 = v63;
                _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Notifications are enabled for characteristic %@ on behalf of %@", buf, 0x20u);

                v29 = v138;
                v12 = v141;
              }

              objc_autoreleasePoolPop(v58);
            }
          }

          v64 = [v26 valueUpdatedTime];
          if ([v29 compare:v64] == -1)
          {
            v65 = [v26 valueUpdatedTime];
            v66 = [MEMORY[0x277CBEAA8] distantPast];
            v67 = [v65 isEqualToDate:v66];

            if ((v67 & 1) == 0)
            {
              v64 = [MEMORY[0x277CBEB38] dictionary];
              v68 = [v26 value];
              if (v68)
              {
                [v26 value];
              }

              else
              {
                [MEMORY[0x277CBEB68] null];
              }
              v69 = ;
              [v64 setObject:v69 forKeyedSubscript:v133];

              v70 = [v26 valueUpdatedTime];
              [v64 setObject:v70 forKeyedSubscript:v132];

              v71 = [v26 stateNumber];
              if (v71)
              {
                [v26 stateNumber];
              }

              else
              {
                [MEMORY[0x277CBEB68] null];
              }
              v72 = ;
              [v64 setObject:v72 forKeyedSubscript:v131];

              v73 = [v16 notificationEnabledTime];
              [v64 setObject:v73 forKeyedSubscript:v130];

              v74 = [v26 notificationContext];

              if (v74)
              {
                v75 = [v26 notificationContext];
                [v64 setObject:v75 forKeyedSubscript:v123];
              }

              v76 = [v26 instanceID];
              [v134 setObject:v64 forKey:v76];

              goto LABEL_61;
            }
          }

          else
          {
LABEL_61:
          }

          goto LABEL_63;
        }

        v26 = v17;
LABEL_63:
      }

      v144 = [obj countByEnumeratingWithState:&v149 objects:v168 count:16];
    }

    while (v144);
  }

  v77 = v137;
  if (HIDWORD(v117))
  {
    v78 = [v137 type];
    if ([v78 isEqualToString:*MEMORY[0x277CD0DD0]])
    {
    }

    else
    {
      v79 = [v137 type];
      v80 = [v79 isEqualToString:*MEMORY[0x277CFE818]];

      if (!v80)
      {
LABEL_73:
        [(HMDService *)v140 _readRequiredCharacteristicValuesForceReadFWVersion:v80, v117];
        goto LABEL_74;
      }
    }

    v81 = [v137 accessory];
    v82 = [v81 server];
    v83 = [v82 configNumber];
    v84 = [v121 configNumber];
    v47 = v83 == v84;
    v80 = v83 != v84;
    if (!v47)
    {
      [v121 setConfigNumber:{objc_msgSend(v82, "configNumber")}];
    }

    goto LABEL_73;
  }

LABEL_74:
  v85 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{3, v117}];
  if ([v134 count])
  {
    [v85 setObject:v134 forKey:@"kModifiedCharacteristicsForAccessoryKey"];
  }

  [(HMDService *)v140 _updateDefaultName];
  v86 = [(HMDService *)v140 findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
  v87 = v86;
  if (v86)
  {
    v88 = [v86 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = v88;
    }

    else
    {
      v89 = 0;
    }

    v90 = v89;

    if (![(__CFString *)v90 length])
    {

      v90 = 0;
    }

    if ([(HMDService *)v140 shouldUpdateLastSeenConfiguredName:v90])
    {
      v91 = objc_autoreleasePoolPush();
      v92 = v140;
      v93 = HMFGetOSLogHandle();
      v94 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
      if (v118)
      {
        if (v94)
        {
          v95 = HMFGetLogIdentifier();
          *buf = 138543618;
          v154 = v95;
          v155 = 2112;
          v156 = v90;
          _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@Saving accessory reported name (%@) as expected and configured name", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v91);
        [(HMDService *)v92 _saveLastSeenAndExpectedConfiguredName:v90];
      }

      else
      {
        if (v94)
        {
          v108 = HMFGetLogIdentifier();
          *buf = 138543618;
          v154 = v108;
          v155 = 2112;
          v156 = v90;
          _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@Creating a transaction to save accessory reported name (%@) as expected and configured name", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v91);
        [(HMDService *)v92 _saveCurrentNameAsExpectedAndLastSeen:v90];
      }
    }

    else
    {
      if (![v120 isOwnerUser])
      {
        goto LABEL_98;
      }

      if (![v87 supportsWrite])
      {
        goto LABEL_98;
      }

      v96 = [(HMDService *)v140 expectedConfiguredName];
      v97 = HMFEqualObjects();

      if (v97)
      {
        goto LABEL_98;
      }

      v98 = [(HMDService *)v140 lastSeenConfiguredName];
      v99 = HMFEqualObjects();

      if (!v99)
      {
        goto LABEL_98;
      }

      v100 = [(HMDService *)v140 expectedConfiguredName];
      v101 = [(HMDService *)v140 _sanitizeNameToWriteToAccessory:v100];

      v102 = objc_autoreleasePoolPush();
      v103 = v140;
      v104 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = HMFGetLogIdentifier();
        v106 = [(HMDService *)v103 name];
        v107 = [(HMDService *)v103 lastSeenConfiguredName];
        *buf = 138544130;
        v154 = v105;
        v155 = 2112;
        v156 = v101;
        v157 = 2112;
        v158 = v106;
        v159 = 2112;
        v160 = v107;
        _os_log_impl(&dword_2531F8000, v104, OS_LOG_TYPE_DEFAULT, "%{public}@Overwriting configured name since expected name does not match expected: %@, name: %@, lastSeen: %@", buf, 0x2Au);

        v77 = v137;
      }

      objc_autoreleasePoolPop(v102);
      [(HMDService *)v103 _writeConfiguredNameToAccessory:v101];
    }

    v12 = v141;
LABEL_98:
  }

  v109 = [v77 type];
  v110 = [v109 isEqualToString:*MEMORY[0x277CD0E08]];

  if (v110)
  {
    v111 = objc_autoreleasePoolPush();
    v112 = v140;
    v113 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      v114 = HMFGetLogIdentifier();
      *buf = 138543362;
      v154 = v114;
      _os_log_impl(&dword_2531F8000, v113, OS_LOG_TYPE_DEBUG, "%{public}@Service is camera recording management, sending kick notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v111);
    logAndPostNotification(@"HMDRecordingManagementServiceDidUpdateNotification", v121, 0);
  }

  v115 = *MEMORY[0x277D85DE8];

  return v85;
}

- (id)_sanitizeNameToWriteToAccessory:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hm_truncatedNameString];
  if (![v5 length])
  {
    v6 = [(HMDService *)self defaultName];

    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v10;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Name to write to accessory is nil, writing defaultName %@ to the accessory", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMDService *)v8 findCharacteristicWithType:*MEMORY[0x277CCF7E0]];
    v12 = [v11 metadata];
    v13 = [v12 maxLength];
    v14 = [v13 unsignedIntegerValue];

    if ([v6 length] > v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v8;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v6 length];
        v23 = 138543874;
        v24 = v18;
        v25 = 2048;
        v26 = v19;
        v27 = 2048;
        v28 = v14;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@DefaultName length %lu larger than accessory supported length %lu - truncating", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [v6 substringToIndex:v14];

      v6 = v20;
    }

    v5 = v6;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_handleSetAppData:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDService *)self accessory];
  v6 = [v5 home];
  if (v6)
  {
    v7 = @"com.apple.homekit-entitledclient.identifer";
    v29 = 0;
    v8 = [v4 appDataDictionaryWithError:&v29];
    v9 = v29;
    if (v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
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
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating application data for: %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [(HMDService *)v11 appData];
      v15 = [(HMDService *)v11 uuid];
      v16 = [HMDApplicationDataModel modelWithAppDataPayload:v8 existingAppData:v14 parentUUID:v15];

      if (v16)
      {
        v17 = [v6 backingStore];
        v18 = [v4 name];
        v19 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
        v20 = [v17 transaction:v18 options:v19];

        [v20 add:v16 withMessage:v4];
        [v20 run];
      }

      else
      {
        [v4 respondWithSuccess];
      }
    }

    else
    {
      [v4 respondWithError:v9];
    }

    v27 = @"com.apple.homekit-entitledclient.identifer";
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v5 name];
      v26 = [(HMDService *)v22 name];
      *buf = 138543874;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Attempt to set appData on an accessory %@ service '%@' that is no longer part of a home", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = [v4 responseHandler];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
    (v27->data)(v27, v9, 0);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setAppData:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  appData = self->_appData;
  self->_appData = v4;

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
  v4 = [(HMDService *)self accessory];
  v5 = [v4 uuid];
  v6 = [(HMDService *)self type];
  v7 = HAPShortUUIDType();
  v8 = [(HMDService *)self instanceID];
  v9 = [v3 stringWithFormat:@"%@/%@/%@", v5, v7, v8];

  return v9;
}

- (void)setLastSeenConfiguredName:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  lastSeenConfiguredName = self->_lastSeenConfiguredName;
  self->_lastSeenConfiguredName = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)lastSeenConfiguredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_lastSeenConfiguredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setExpectedConfiguredName:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  expectedConfiguredName = self->_expectedConfiguredName;
  self->_expectedConfiguredName = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)expectedConfiguredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_expectedConfiguredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setConfiguredName:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  configuredName = self->_configuredName;
  self->_configuredName = v4;

  os_unfair_recursive_lock_unlock();
}

- (NSString)configuredName
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setProvidedName:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  providedName = self->_providedName;
  self->_providedName = v4;

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
  v2 = [(HMDService *)self serviceType];
  v3 = [v2 substringFromIndex:8];

  LOBYTE(v2) = [v3 isEqualToString:@"-0000-1000-8000-0026BB765291"];
  return v2 ^ 1;
}

- (id)home
{
  v2 = [(HMDService *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (NSString)serviceIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDService *)self accessory];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMDService *)self instanceID];
  v8 = [v3 stringWithFormat:@"%@:%@", v6, v7];

  return v8;
}

- (NSNumber)instanceID
{
  v2 = [(NSNumber *)self->_instanceID copy];

  return v2;
}

- (NSString)type
{
  v2 = [(HMDService *)self serviceType];
  v3 = [v2 copy];

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v119 = *MEMORY[0x277D85DE8];
  v97 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v5 = [(HMDService *)self associatedServiceType];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = +[HMDHAPMetadata getSharedInstance];
    v8 = [(HMDService *)self associatedServiceType];
    v9 = [v7 descriptionForServiceType:v8];
    v108 = [v6 stringWithFormat:@", associatedServiceType: %@", v9];
  }

  else
  {
    v108 = &stru_286509E58;
  }

  v10 = [(HMDService *)self serviceType];
  v11 = *MEMORY[0x277CFE988];
  if ([v10 hasSuffix:*MEMORY[0x277CFE988]])
  {
    v12 = [v10 substringToIndex:{objc_msgSend(v10, "length") - objc_msgSend(v11, "length")}];

    v107 = v12;
  }

  else
  {
    v107 = v10;
  }

  v13 = [MEMORY[0x277CCACA8] string];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v85 = self;
  v14 = [(HMDService *)self linkedServices];
  v15 = [v14 countByEnumeratingWithState:&v113 objects:v118 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v113 + 1) + 8 * i);
        if ([v13 length])
        {
          v20 = [v13 stringByAppendingFormat:@", "];

          v13 = v20;
        }

        v21 = v13;
        v13 = [v13 stringByAppendingFormat:@"%@", v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v113 objects:v118 count:16];
    }

    while (v16);
  }

  v22 = MEMORY[0x277CCACA8];
  v106 = [(HMDService *)v85 instanceID];
  v105 = [(HMDService *)v85 name];
  v80 = [(HMDService *)v85 serviceProperties];
  [(HMDService *)v85 isPrimary];
  v104 = HMFBooleanToString();
  [(HMDService *)v85 isCustom];
  v103 = HMFBooleanToString();
  [(HMDService *)v85 isHidden];
  v102 = HMFBooleanToString();
  v23 = [(HMDService *)v85 isHidden];
  v100 = v22;
  if (v23)
  {
    v86 = &stru_286509E58;
  }

  else
  {
    v24 = MEMORY[0x277CCACA8];
    v64 = [(HMDService *)v85 urlString];
    v86 = [v24 stringWithFormat:@", assistantIdentifier: %@", v64];
  }

  v84 = [v13 length];
  if (v84)
  {
    v96 = [MEMORY[0x277CCACA8] stringWithFormat:@", Links: %@", v13];
  }

  else
  {
    v96 = &stru_286509E58;
  }

  v83 = [(HMDService *)v85 serviceSubtype];
  if (v83)
  {
    v25 = MEMORY[0x277CCACA8];
    v76 = [(HMDService *)v85 serviceSubtype];
    v95 = [v25 stringWithFormat:@", subType: %@", v76];
  }

  else
  {
    v95 = &stru_286509E58;
  }

  v26 = [(HMDService *)v85 labelIndex];
  if (v26)
  {
    v27 = MEMORY[0x277CCACA8];
    v75 = [(HMDService *)v85 labelIndex];
    v94 = [v27 stringWithFormat:@", labelIndex: %@", v75];
  }

  else
  {
    v94 = &stru_286509E58;
  }

  v28 = [(HMDService *)v85 labelNamespace];
  if (v28)
  {
    v29 = MEMORY[0x277CCACA8];
    v74 = [(HMDService *)v85 labelNamespace];
    v93 = [v29 stringWithFormat:@", labelNamespace: %@", v74];
  }

  else
  {
    v93 = &stru_286509E58;
  }

  v30 = [(HMDService *)v85 configurationState];
  if (v30)
  {
    v31 = MEMORY[0x277CCACA8];
    v73 = [(HMDService *)v85 configurationState];
    v92 = [v31 stringWithFormat:@", configurationState: %@", v73];
  }

  else
  {
    v92 = &stru_286509E58;
  }

  v32 = [(HMDService *)v85 expectedConfiguredName];
  if (v32)
  {
    v33 = MEMORY[0x277CCACA8];
    v72 = [(HMDService *)v85 expectedConfiguredName];
    v91 = [v33 stringWithFormat:@", expectedConfiguredName: %@", v72];
  }

  else
  {
    v91 = &stru_286509E58;
  }

  v99 = [(HMDService *)v85 lastSeenConfiguredName];
  if (v99)
  {
    v34 = MEMORY[0x277CCACA8];
    v71 = [(HMDService *)v85 lastSeenConfiguredName];
    v90 = [v34 stringWithFormat:@", lastSeenConfiguredName: %@", v71];
  }

  else
  {
    v90 = &stru_286509E58;
  }

  v98 = [(HMDService *)v85 lastKnownDiscoveryMode];
  if (v98)
  {
    v35 = MEMORY[0x277CCACA8];
    v70 = [(HMDService *)v85 lastKnownDiscoveryMode];
    v89 = [v35 stringWithFormat:@", lastKnownDiscoveryMode: %@", v70];
  }

  else
  {
    v89 = &stru_286509E58;
  }

  v82 = v26;
  v77 = [(HMDService *)v85 lastKnownOperatingState];
  v81 = v28;
  if (v77)
  {
    v36 = MEMORY[0x277CCACA8];
    v69 = [(HMDService *)v85 lastKnownOperatingState];
    [v69 integerValue];
    v68 = HAPOperatingStateAsString();
    v88 = [v36 stringWithFormat:@", lastKnownOperatingState: %@", v68];
  }

  else
  {
    v88 = &stru_286509E58;
  }

  v37 = [(HMDService *)v85 lastKnownOperatingStateAbnormalReasons];
  v79 = v30;
  if (v37)
  {
    v38 = MEMORY[0x277CCACA8];
    v67 = [(HMDService *)v85 lastKnownOperatingStateAbnormalReasons];
    [v67 unsignedIntegerValue];
    v66 = HAPOperatingStateAbnormalReasonsAsString();
    v87 = [v38 stringWithFormat:@", lastKnownOperatingStateAbnormalReasons: %@", v66];
  }

  else
  {
    v87 = &stru_286509E58;
  }

  v78 = v32;
  v39 = [(HMDService *)v85 mediaSourceIdentifier];
  if (v39)
  {
    v40 = MEMORY[0x277CCACA8];
    v65 = [(HMDService *)v85 mediaSourceIdentifier];
    v41 = [v40 stringWithFormat:@", mediaSourceIdentifier: %@", v65];
  }

  else
  {
    v41 = &stru_286509E58;
  }

  v42 = [(HMDService *)v85 mediaSourceDisplayOrder];
  if (v42)
  {
    v43 = v23;
    v44 = MEMORY[0x277CCACA8];
    v45 = [(HMDService *)v85 mediaSourceDisplayOrder];
    v46 = [v44 stringWithFormat:@", mediaSourceDisplayOrder: %@", v45];
    v101 = [v100 stringWithFormat:@"instanceID: %@, type: %@, name: %@, properties: 0x%lx, primary: %@, custom: %@, hidden: %@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", v106, v107, v105, v80, v104, v103, v102, v86, v108, v96, v95, v94, v93, v92, v91, v90, v89, v88, v87, v41, v46];

    v23 = v43;
  }

  else
  {
    v101 = [v100 stringWithFormat:@"instanceID: %@, type: %@, name: %@, properties: 0x%lx, primary: %@, custom: %@, hidden: %@%@%@%@%@%@%@%@%@%@%@%@%@%@%@", v106, v107, v105, v80, v104, v103, v102, v86, v108, v96, v95, v94, v93, v92, v91, v90, v89, v88, v87, v41, &stru_286509E58];
  }

  if (v39)
  {
  }

  if (v37)
  {
  }

  if (v77)
  {
  }

  v47 = v97;
  if (v98)
  {
  }

  if (v99)
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

  if (v83)
  {
  }

  if (v84)
  {
  }

  if (!v23)
  {
  }

  [v97 setObject:v101 forKeyedSubscript:*MEMORY[0x277D0F170]];
  v48 = [(HMDService *)v85 appData];
  v49 = [v48 dumpStateWithPrivacyLevel:a3];
  [v97 setObject:v49 forKeyedSubscript:*MEMORY[0x277D0F050]];

  v50 = [(HMDService *)v85 characteristics];
  if ([v50 count])
  {
    v51 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v50, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v52 = v50;
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

          v57 = [*(*(&v109 + 1) + 8 * j) dumpStateWithPrivacyLevel:a3];
          [v51 addObject:v57];
        }

        v54 = [v52 countByEnumeratingWithState:&v109 objects:v117 count:16];
      }

      while (v54);
    }

    v47 = v97;
    [v97 setObject:v51 forKeyedSubscript:*MEMORY[0x277D0F088]];
  }

  v58 = [(HMDService *)v85 bulletinBoardNotification];

  if (v58)
  {
    v59 = [(HMDService *)v85 bulletinBoardNotification];
    v60 = [v59 dumpStateWithPrivacyLevel:a3];
    [v47 setObject:v60 forKeyedSubscript:*MEMORY[0x277D0F080]];
  }

  v61 = v47;

  v62 = *MEMORY[0x277D85DE8];
  return v47;
}

- (NSString)description
{
  v3 = [(HMDService *)self accessory];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [v3 name];
  v7 = [v3 uuid];
  v8 = [(HMDService *)self type];
  v9 = HAPShortUUIDType();
  v10 = [(HMDService *)self instanceID];
  v11 = [v4 stringWithFormat:@"%@ %@/%@/%@/%@", v5, v6, v7, v9, v10];

  return v11;
}

- (void)setCharacteristics:(id)a3
{
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v4 = [v6 copy];
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
  v3 = [(HMDService *)self accessory];
  v4 = [v3 spiClientIdentifier];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_instanceID];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = spiClientIdentifierForUUIDAndSalts(v4, v6);

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
    v5 = [WeakRetained uuid];
    v6 = [v5 isEqual:self->_cachedAccessoryUUID];

    if ((v6 & 1) == 0)
    {
      context = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [(NSUUID *)v7->_uuid UUIDString];
        v11 = [v4 uuid];
        v12 = [v11 UUIDString];
        v13 = [(NSUUID *)self->_cachedAccessoryUUID UUIDString];
        *buf = 138544130;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@HMDService %@ Accessory UUID is stale (%@!=%@).", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
      [(HMDService *)v7 _recalculateUUID];
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
  v4 = [(HMDService *)self accessory];
  v5 = [v4 uuid];
  cachedAccessoryUUID = self->_cachedAccessoryUUID;
  self->_cachedAccessoryUUID = v5;

  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  v8 = [WeakRetained uuid];
  v9 = [HMDService generateUUIDWithAccessoryUUID:v8 serviceID:self->_instanceID];
  uuid = self->_uuid;
  self->_uuid = v9;

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v14 = v22 = v11;
    [(NSUUID *)v3 UUIDString];
    v15 = v23 = v3;
    v16 = [(NSUUID *)self->_uuid UUIDString];
    v17 = objc_loadWeakRetained(&self->_accessory);
    v18 = [v17 uuid];
    v19 = [v18 UUIDString];
    instanceID = self->_instanceID;
    *buf = 138544386;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = instanceID;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@recalculated UUID of service %@ -> %@ (%@/%@)", buf, 0x34u);

    v3 = v23;
    v11 = v22;
  }

  objc_autoreleasePoolPop(v11);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v3 = [(HMDService *)self messageDispatcher];
  [v3 deregisterReceiver:self];

  v5 = [(HMDService *)self home];
  v4 = [v5 administratorHandler];
  [v4 deregisterReceiver:self];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  [(HMDService *)self unconfigure];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Unconfigured and dealloc'd the service", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDService;
  [(HMDService *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDService)initWithAccessory:(id)a3 owner:(id)a4 instance:(id)a5 uuid:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v41.receiver = self;
  v41.super_class = HMDService;
  v14 = [(HMDService *)&v41 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_accessory, v10);
    objc_storeWeak(&v15->_owner, v11);
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
        v21 = v40 = v11;
        *buf = 138543874;
        v43 = v21;
        v44 = 2112;
        v45 = v10;
        v46 = 2112;
        v47 = &unk_2866284C8;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@*** DEBUG THIS : FATAL ERROR : File a Radar : HomeKit | New Bugs *** :Service ID cannot be null for accessory : %@Assigning a default instance ID : %@", buf, 0x20u);

        v11 = v40;
      }

      objc_autoreleasePoolPop(v18);
      v22 = v15->_instanceID;
      v15->_instanceID = &unk_2866284C8;
    }

    v23 = [v10 uuid];
    v24 = [HMDService generateUUIDWithAccessoryUUID:v23 serviceID:v15->_instanceID];

    p_uuid = &v15->_uuid;
    if (v13)
    {
      objc_storeStrong(p_uuid, a6);
      if ([v13 isEqual:v24])
      {
LABEL_14:
        v36 = [v10 uuid];
        cachedAccessoryUUID = v15->_cachedAccessoryUUID;
        v15->_cachedAccessoryUUID = v36;

        goto LABEL_15;
      }

      v26 = objc_autoreleasePoolPush();
      v27 = v15;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        [v10 uuid];
        v31 = v30 = v11;
        *buf = 138544386;
        v43 = v29;
        v44 = 2112;
        v45 = v13;
        v46 = 2112;
        v47 = v24;
        v48 = 2112;
        v49 = v31;
        v50 = 2112;
        v51 = v12;
        v32 = "%{public}@HMDService initWithAccessory Service UUID %@ but has a calculated UUID of %@ (%@/%@)";
        v33 = v28;
        v34 = 52;
LABEL_12:
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);

        v11 = v30;
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
        v31 = v30 = v11;
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

- (HMDService)initWithTransaction:(id)a3 accessory:(id)a4 owner:(id)a5
{
  v82 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 instanceID];
  if (v11 && (v12 = v11, [v8 uuid], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [v8 instanceID];
    v15 = [v8 uuid];
    v16 = [(HMDService *)self initWithAccessory:v9 owner:v10 instance:v14 uuid:v15];

    if (v16)
    {
      v72 = v9;
      v17 = [v8 name];
      v18 = [v17 hm_truncatedNameString];
      configuredName = v16->_configuredName;
      v16->_configuredName = v18;

      v20 = [v8 providedName];
      v21 = [v20 hm_truncatedNameString];
      providedName = v16->_providedName;
      v16->_providedName = v21;

      v23 = [v8 serviceType];
      serviceType = v16->_serviceType;
      v16->_serviceType = v23;

      v25 = [v8 associatedServiceType];
      associatedServiceType = v16->_associatedServiceType;
      v16->_associatedServiceType = v25;

      v27 = [v8 serviceSubtype];
      serviceSubtype = v16->_serviceSubtype;
      v16->_serviceSubtype = v27;

      v29 = [v8 labelIndex];
      labelIndex = v16->_labelIndex;
      v16->_labelIndex = v29;

      v31 = [v8 labelNamespace];
      labelNamespace = v16->_labelNamespace;
      v16->_labelNamespace = v31;

      v33 = [v8 configurationState];
      configurationState = v16->_configurationState;
      v16->_configurationState = v33;

      v35 = [v8 linkedServices];
      linkedServices = v16->_linkedServices;
      v16->_linkedServices = v35;

      v37 = [v8 serviceProperties];
      v16->_serviceProperties = [v37 unsignedIntegerValue];

      v38 = [v8 expectedConfiguredName];
      v39 = [v38 hm_truncatedNameString];
      expectedConfiguredName = v16->_expectedConfiguredName;
      v16->_expectedConfiguredName = v39;

      v41 = [v8 lastSeenConfiguredNameLocal];
      v42 = [v41 hm_truncatedNameString];
      lastSeenConfiguredName = v16->_lastSeenConfiguredName;
      v16->_lastSeenConfiguredName = v42;

      v44 = [v8 lastKnownOperatingState];
      lastKnownOperatingState = v16->_lastKnownOperatingState;
      v16->_lastKnownOperatingState = v44;

      v46 = [v8 lastKnownOperatingStateAbnormalReasons];
      lastKnownOperatingStateAbnormalReasons = v16->_lastKnownOperatingStateAbnormalReasons;
      v16->_lastKnownOperatingStateAbnormalReasons = v46;

      v48 = [v8 mediaSourceIdentifier];
      mediaSourceIdentifier = v16->_mediaSourceIdentifier;
      v16->_mediaSourceIdentifier = v48;

      v50 = [v8 mediaSourceDisplayOrder];
      mediaSourceDisplayOrder = v16->_mediaSourceDisplayOrder;
      v16->_mediaSourceDisplayOrder = v50;

      v52 = [v8 matterEndpointID];
      matterEndpointID = v16->_matterEndpointID;
      v16->_matterEndpointID = v52;

      v54 = MEMORY[0x277CBEB18];
      v55 = [v8 characteristics];
      v56 = [v54 arrayWithCapacity:{objc_msgSend(v55, "count")}];

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v57 = [v8 characteristics];
      v58 = [v57 countByEnumeratingWithState:&v73 objects:v77 count:16];
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
              objc_enumerationMutation(v57);
            }

            v62 = [[HMDCharacteristic alloc] initWithCharacteristic:*(*(&v73 + 1) + 8 * v61) service:v16];
            [v56 addObject:v62];

            ++v61;
          }

          while (v59 != v61);
          v59 = [v57 countByEnumeratingWithState:&v73 objects:v77 count:16];
        }

        while (v59);
      }

      v63 = [v56 copy];
      characteristics = v16->_characteristics;
      v16->_characteristics = v63;

      [(HMDService *)v16 _updateDefaultName];
      [(HMDService *)v16 _createNotification];

      v9 = v72;
    }

    v65 = v16;
    v66 = v65;
  }

  else
  {
    v67 = objc_autoreleasePoolPush();
    v65 = self;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543618;
      v79 = v69;
      v80 = 2112;
      v81 = v8;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@unable to init service with a transaction (null instance ID?): %@", buf, 0x16u);
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

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 name];
  v7 = HMFEqualObjects();

  if (v7)
  {
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:7, v8];
    v16[1] = v9;
    v10 = objc_opt_new();
    v16[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

    v12 = [v5 name];
    v13 = HMFCreateMessageBinding();
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)_parseOperatingStateResponseValue:(id)a3 intoState:(id *)a4 abnormalReasons:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
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
    v26 = 0;
    v11 = [MEMORY[0x277CFEC18] parsedFromData:v8 error:&v26];
    v12 = v26;
    if (v11)
    {
      v13 = [v11 state];
      v14 = v13;
      if (v13)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "value")}];
      }

      v15 = *a4;
      *a4 = v13;

      v16 = [v11 abnormalReasons];
      v17 = v16;
      if (v16)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "value")}];
      }

      v18 = *a5;
      *a5 = v16;

      v19 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = a1;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543874;
    v28 = v23;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse operating state response value %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v19 = 0;
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)_processUpdateOnPowerManagementServiceForCharacteristicType:(id)a3 value:(id)a4 serviceType:(id)a5 accessory:(id)a6 accessoryTransaction:(id)a7
{
  v63 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (([v14 isEqualToString:@"00000221-0000-1000-8000-0026BB765291"] & 1) == 0)
  {
    v51 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Invalid service type was passed." userInfo:0];
    objc_exception_throw(v51);
  }

  v17 = [v15 identifier];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = [v16 hapAccessoryLocal];
    v19 = [v20 identifier];
  }

  if (![v12 isEqualToString:@"00000222-0000-1000-8000-0026BB765291"])
  {
    if (![v12 isEqualToString:@"00000251-0000-1000-8000-0026BB765291"])
    {
      v40 = 0;
      v22 = 0;
      v41 = 0;
      goto LABEL_20;
    }

    v54 = v19;
    v55 = 0;
    v31 = [HMDSupportedSleepConfigurationTLV parsedFromData:v13 error:&v55];
    v22 = v55;
    v32 = objc_autoreleasePoolPush();
    v33 = a1;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v53 = v12;
      v35 = v15;
      v36 = v14;
      v37 = v13;
      v39 = v38 = v16;
      *buf = 138543874;
      v58 = v39;
      v59 = 2112;
      v60 = v31;
      v61 = 2112;
      v62 = v22;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Parsed supportedSleepConfiguration: %@ with error: %@", buf, 0x20u);

      v16 = v38;
      v13 = v37;
      v14 = v36;
      v15 = v35;
      v12 = v53;
    }

    objc_autoreleasePoolPop(v32);
    if (v22 || ([v15 isSuspendCapable] & 1) != 0)
    {

      goto LABEL_16;
    }

    [v16 setSuspendCapable:MEMORY[0x277CBEC38]];

    v40 = 0;
LABEL_29:
    v22 = 0;
    v41 = 1;
    goto LABEL_18;
  }

  v54 = v19;
  v56 = 0;
  v21 = [HMDWakeConfiguration parsedFromData:v13 error:&v56];
  v22 = v56;
  v23 = objc_autoreleasePoolPush();
  v24 = a1;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v52 = v12;
    v26 = v15;
    v27 = v14;
    v28 = v13;
    v30 = v29 = v16;
    *buf = 138543874;
    v58 = v30;
    v59 = 2112;
    v60 = v21;
    v61 = 2112;
    v62 = v22;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Parsed HMDWakeConfiguration: %@ with error: %@", buf, 0x20u);

    v16 = v29;
    v13 = v28;
    v14 = v27;
    v15 = v26;
    v12 = v52;
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

    v44 = v16;
    v45 = [v15 connectivityInfo];
    v46 = HMFEqualObjects();

    if (v46)
    {
      v22 = 0;
      v41 = 0;
      v16 = v44;
      goto LABEL_18;
    }

    v16 = v44;
    [v44 setConnectivityInfo:v40];
    [v44 setSuspendCapable:MEMORY[0x277CBEC38]];
    v47 = objc_autoreleasePoolPush();
    v48 = v24;
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
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Setting connectivityInfo %@ to accessory transaction: %@", buf, 0x20u);

      v16 = v44;
    }

    objc_autoreleasePoolPop(v47);
    goto LABEL_29;
  }

LABEL_16:
  v40 = 0;
LABEL_17:
  v41 = 0;
LABEL_18:
  v19 = v54;
LABEL_20:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

+ (BOOL)processUpdateForCharacteristicType:(id)a3 value:(id)a4 serviceType:(id)a5 service:(id)a6 serviceTransactionGetter:(id)a7 accessory:(id)a8 accessoryTransaction:(id)a9 accessoryTransactionChanged:(BOOL *)a10
{
  v114 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v107 = a7;
  v20 = a8;
  v21 = a9;
  v106 = +[HMDHAPMetadata getSharedInstance];
  if (([v18 isEqualToString:*MEMORY[0x277CD0DD0]] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", *MEMORY[0x277CFE818]) & 1) != 0 || objc_msgSend(v18, "isEqualToString:", @"00000239-0000-1000-8000-0026BB765291"))
  {
    v22 = [v20 updateAccessoryInformationWithCharacteristicType:v16 serviceType:v18 value:v17 accessoryTransaction:v21];
    if (a10)
    {
      if (v22)
      {
        *a10 = 1;
      }
    }
  }

  if ([v16 isEqualToString:*MEMORY[0x277CCF988]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([HMDService validateProvidedName:v17])
      {
        if (!v19)
        {
          goto LABEL_65;
        }

        [v19 providedName];
        v23 = a1;
        v24 = v21;
        v26 = v25 = v20;
        v27 = HMFEqualObjects();

        v20 = v25;
        v21 = v24;
        a1 = v23;
        if ((v27 & 1) == 0)
        {
LABEL_65:
          v76 = v21;
          v77 = v20;
          if ([v20 supportsCHIP] && (objc_msgSend(v20, "home"), v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "isCurrentDevicePrimaryResident"), v78, v79))
          {
            v80 = objc_autoreleasePoolPush();
            v81 = a1;
            v82 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
            {
              v83 = HMFGetLogIdentifier();
              *buf = 138543362;
              *&buf[4] = v83;
              _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Ignoring service transaction name update for matter", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v80);
            v37 = 0;
            v29 = v107;
          }

          else
          {
            v29 = v107;
            v86 = v107[2](v107);
            [v86 setProvidedName:v17];

            v37 = 0;
          }

          v20 = v77;
          v21 = v76;
          goto LABEL_102;
        }
      }
    }
  }

  if ([v16 isEqualToString:*MEMORY[0x277CCF7E0]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v17;
      if (![v28 length])
      {

        v28 = 0;
      }

      v29 = v107;
      if ([v19 shouldUpdateLastSeenConfiguredName:v28])
      {
        v103 = v21;
        v104 = v20;
        v30 = v19;
        v31 = objc_autoreleasePoolPush();
        v32 = a1;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v30 lastSeenConfiguredName];
          *buf = 138543874;
          *&buf[4] = v34;
          v110 = 2112;
          v111 = v28;
          v112 = 2112;
          v113 = v35;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@nameFromAccessory %@  lastSeenConfiguredName %@", buf, 0x20u);

          v29 = v107;
        }

        objc_autoreleasePoolPop(v31);
        v36 = v29[2](v29);
        [v36 setLastSeenConfiguredNameLocal:v28];

        v19 = v30;
        v21 = v103;
        v20 = v104;
      }

      v37 = 1;
      goto LABEL_102;
    }
  }

  if ([v16 isEqualToString:*MEMORY[0x277CCFA78]])
  {
    v37 = 0;
    v29 = v107;
    goto LABEL_102;
  }

  v29 = v107;
  if ([v16 isEqualToString:@"00000232-0000-1000-8000-0026BB765291"])
  {
    v108 = 0;
    *buf = 0;
    if ([a1 _parseOperatingStateResponseValue:v17 intoState:buf abnormalReasons:&v108])
    {
      v38 = v21;
      v39 = v20;
      if (!v19)
      {
        goto LABEL_71;
      }

      [v19 lastKnownOperatingState];
      v41 = v40 = v19;
      v42 = HMFEqualObjects();

      v19 = v40;
      if (!v42)
      {
        goto LABEL_71;
      }

      v43 = [v40 lastKnownOperatingStateAbnormalReasons];
      v44 = HMFEqualObjects();

      v19 = v40;
      if (v44)
      {
        v37 = 0;
      }

      else
      {
LABEL_71:
        v107[2](v107);
        v85 = v84 = v19;
        [v85 setLastKnownOperatingState:*buf];
        [v85 setLastKnownOperatingStateAbnormalReasons:v108];

        v19 = v84;
        v37 = 1;
      }

      v20 = v39;
      v21 = v38;
    }

    else
    {
      v37 = 0;
    }

    goto LABEL_102;
  }

  v105 = v20;
  if ([v18 isEqualToString:*MEMORY[0x277CD0E78]])
  {
    if ([v16 isEqualToString:*MEMORY[0x277CCF8E8]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v19)
        {
          goto LABEL_93;
        }

        [v19 mediaSourceIdentifier];
        v45 = a1;
        v46 = v21;
        v48 = v47 = v19;
        v49 = HMFEqualObjects();

        v19 = v47;
        v21 = v46;
        a1 = v45;
        if ((v49 & 1) == 0)
        {
LABEL_93:
          v107[2](v107);
          v100 = v99 = v19;
          [v100 setMediaSourceIdentifier:v17];
          goto LABEL_95;
        }
      }
    }
  }

  if ([v18 isEqualToString:*MEMORY[0x277CD0F20]])
  {
    if ([v16 isEqualToString:@"00000136-0000-1000-8000-0026BB765291"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = parseMediaSourceDisplayOrder(v17);
        if (v50)
        {
          v51 = v21;
          if (!v19 || ([v19 mediaSourceDisplayOrder], v52 = v19, v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v50, "isEqualToArray:", v53), v53, v19 = v52, (v54 & 1) == 0))
          {
            v29 = v107;
            v107[2](v107);
            v56 = v55 = v19;
            [v56 setMediaSourceDisplayOrder:v50];
LABEL_98:

            v19 = v55;
            v37 = 1;
            goto LABEL_99;
          }

          goto LABEL_47;
        }

        goto LABEL_96;
      }
    }
  }

  if ([v18 isEqualToString:@"000000D0-0000-1000-8000-0026BB765291"])
  {
    if ([v16 isEqualToString:@"000000D5-0000-1000-8000-0026BB765291"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v106 serviceSubtypeForValue:v17 forServiceType:@"000000D0-0000-1000-8000-0026BB765291"];
        if (v50)
        {
          v51 = v21;
          if (!v19 || ([v19 serviceSubtype], v57 = v19, v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v50, "isEqual:", v58), v58, v19 = v57, (v59 & 1) == 0))
          {
            v29 = v107;
            v107[2](v107);
            v56 = v55 = v19;
            [v56 setServiceSubtype:v50];
            goto LABEL_98;
          }

LABEL_47:
          v37 = 0;
          v29 = v107;
LABEL_99:
          v21 = v51;
          goto LABEL_100;
        }

LABEL_96:
        v37 = 0;
LABEL_100:

        goto LABEL_101;
      }
    }
  }

  if ([v16 isEqualToString:@"000000CB-0000-1000-8000-0026BB765291"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v19)
      {
        goto LABEL_91;
      }

      [v19 labelIndex];
      v60 = a1;
      v61 = v21;
      v63 = v62 = v19;
      v64 = [v17 isEqual:v63];

      v19 = v62;
      v21 = v61;
      a1 = v60;
      if ((v64 & 1) == 0)
      {
LABEL_91:
        v107[2](v107);
        v100 = v99 = v19;
        [v100 setLabelIndex:v17];
LABEL_95:

        v19 = v99;
        v37 = 1;
LABEL_101:
        v20 = v105;
        goto LABEL_102;
      }
    }
  }

  if ([v16 isEqualToString:@"000000CD-0000-1000-8000-0026BB765291"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v19)
      {
        goto LABEL_92;
      }

      [v19 labelNamespace];
      v65 = a1;
      v66 = v21;
      v68 = v67 = v19;
      v69 = [v17 isEqual:v68];

      v19 = v67;
      v21 = v66;
      a1 = v65;
      if ((v69 & 1) == 0)
      {
LABEL_92:
        v107[2](v107);
        v100 = v99 = v19;
        [v100 setLabelNamespace:v17];
        goto LABEL_95;
      }
    }
  }

  if ([v16 isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v19)
      {
        goto LABEL_94;
      }

      [v19 configurationState];
      v70 = a1;
      v71 = v21;
      v73 = v72 = v19;
      v74 = [v17 isEqual:v73];

      v19 = v72;
      v21 = v71;
      a1 = v70;
      if ((v74 & 1) == 0)
      {
LABEL_94:
        v107[2](v107);
        v100 = v99 = v19;
        [v100 setConfigurationState:v17];
        goto LABEL_95;
      }
    }
  }

  if ([v18 isEqualToString:@"00000221-0000-1000-8000-0026BB765291"])
  {
    v20 = v105;
    v75 = [a1 _processUpdateOnPowerManagementServiceForCharacteristicType:v16 value:v17 serviceType:v18 accessory:v105 accessoryTransaction:v21];
    if (a10 && v75)
    {
      *a10 = 1;
    }

    [v19 setPowerManagementSupportedSleepCharRead:1];
    goto LABEL_90;
  }

  v20 = v105;
  if ([v16 isEqualToString:*MEMORY[0x277CCFB98]])
  {
    if ([v18 isEqualToString:*MEMORY[0x277CD0F48]])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v17];
        if (v87)
        {
          if (!v19)
          {
            goto LABEL_82;
          }

          [v105 primaryProfileVersion];
          v88 = v21;
          v90 = v89 = v19;
          v91 = [v87 isEqualToVersion:v90];

          v19 = v89;
          v21 = v88;
          if ((v91 & 1) == 0)
          {
LABEL_82:
            [v87 versionString];
            v92 = v21;
            v94 = v93 = v19;
            [v92 setPrimaryProfileVersion:v94];

            v19 = v93;
            v21 = v92;
            if (a10)
            {
              *a10 = 1;
            }
          }
        }

        v37 = 0;
        v29 = v107;
        goto LABEL_101;
      }
    }
  }

  if (![v18 isEqualToString:@"0000022A-0000-1000-8000-0026BB765291"] || !objc_msgSend(v16, "isEqualToString:", @"0000022C-0000-1000-8000-0026BB765291") || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_90:
    v37 = 0;
    goto LABEL_102;
  }

  v95 = v21;
  v96 = v19;
  v97 = [v105 wiFiTransportCapabilities];
  v98 = [v97 isEqualToNumber:v17];

  if (v98)
  {
    v37 = 0;
    v19 = v96;
  }

  else
  {
    [v95 setWiFiTransportCapabilities:v17];
    v19 = v96;
    v37 = 0;
    if (a10)
    {
      *a10 = 1;
    }
  }

  v20 = v105;
  v21 = v95;
LABEL_102:

  v101 = *MEMORY[0x277D85DE8];
  return v37;
}

+ (BOOL)validateProvidedName:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
    v8 = [v6 rangeOfCharacterFromSet:v7 options:129];
    v9 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v13;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Name %@ does not contain allowed characters", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Name %@ is not an NSString", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_75001 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_75001, &__block_literal_global_75002);
  }

  v3 = logCategory__hmf_once_v19_75003;

  return v3;
}

uint64_t __25__HMDService_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_75003;
  logCategory__hmf_once_v19_75003 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)generateUUIDWithAccessoryUUID:(id)a3 serviceID:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HAPInstanceIDFromValue();
  v6 = [v5 stringValue];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v8 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v4 identifierSalt:0 withSalts:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSDictionary)assistantObject
{
  v157 = *MEMORY[0x277D85DE8];
  v3 = [(HMDService *)self accessory];
  v4 = [v3 hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v117 = v3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;
  v9 = [(HMDService *)self name];
  v10 = [v8 home];
  v11 = v10;
  if (v10)
  {
    v12 = [(HMDService *)v10 name];

    if (v12 && v9 != 0)
    {
      v114 = [MEMORY[0x277CBEB18] array];
      v18 = +[HMDHAPMetadata getSharedInstance];
      v19 = [(HMDService *)self type];
      v116 = v18;
      v20 = [v18 shouldFilterServiceOfTypeFromApp:v19];

      if (v20)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
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

        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v150 = v24;
        v151 = 2112;
        v152 = v22;
        v25 = "%{public}@Service (%@) is hidden from apps not sending to siri";
        p_super = v23;
        v27 = OS_LOG_TYPE_DEBUG;
        v28 = 22;
LABEL_19:
        _os_log_impl(&dword_2531F8000, p_super, v27, v25, buf, v28);

        goto LABEL_20;
      }

      v112 = v8;
      v113 = v11;
      v110 = v9;
      v111 = v6;
      v30 = [(HMDService *)self type];
      v120 = [v30 isEqualToString:@"000000D0-0000-1000-8000-0026BB765291"];

      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v31 = [(HMDService *)self characteristics];
      v32 = [v31 copy];

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
            v39 = [(HMDService *)v38 type];
            v40 = [v36 mapToAssistantCharacteristicName:v39];
            v41 = [(HMDService *)v38 type];
            v42 = [v36 shouldFilterCharacteristicOfTypeFromApp:v41];

            if (v42)
            {
              v43 = v35;
              v44 = objc_autoreleasePoolPush();
              v45 = self;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                v47 = HMFGetLogIdentifier();
                *buf = 138543618;
                v150 = v47;
                v151 = 2112;
                v152 = v38;
                _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic (%@) is hidden from apps not sending to siri", buf, 0x16u);

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
                [v114 addObject:v39];
              }

              if (v120)
              {
                v118 |= [v39 isEqualToString:@"000000D6-0000-1000-8000-0026BB765291"];
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

      if ([v114 count])
      {
        v6 = v111;
        v8 = v112;
        v9 = v110;
        v11 = v113;
        if ((v120 & v118) == 1)
        {
          v48 = [(HMDService *)self configurationState];
          if (!v48 || (v49 = v48, -[HMDService configurationState](self, "configurationState"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 integerValue], v50, v49, !v51))
          {
            v21 = objc_autoreleasePoolPush();
            v22 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(&v22->super.super, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            v23 = HMFGetLogIdentifier();
            v24 = [(HMDService *)v113 name];
            *buf = 138544130;
            v150 = v23;
            v151 = 2112;
            v152 = v113;
            v153 = 2112;
            v154 = v24;
            v155 = 2112;
            v156 = v110;
            v25 = "%{public}@Skipping because service is not user configured: service.accessory.home %@  service.accessory.home.name %@  service.name %@";
            p_super = &v22->super.super;
            v27 = OS_LOG_TYPE_DEFAULT;
            v28 = 42;
            goto LABEL_19;
          }
        }

        v52 = objc_alloc(MEMORY[0x277CBEB38]);
        v147[0] = *MEMORY[0x277D48170];
        v146[0] = @"objectType";
        v146[1] = @"objectIdentifier";
        v53 = [(HMDService *)self urlString];
        v147[1] = v53;
        v146[2] = @"objectServiceType";
        v54 = [(HMDService *)self type];
        v147[2] = v54;
        v146[3] = @"objectHome";
        v55 = [(HMDService *)v113 name];
        v147[3] = v55;
        v146[4] = @"objectHomeIdentifier";
        v56 = [(HMDService *)v113 urlString];
        v147[4] = v56;
        v147[5] = self;
        v146[5] = @"objectReference";
        v146[6] = @"objectName";
        v146[7] = @"objectCharacteristics";
        v147[6] = v110;
        v147[7] = v114;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:8];
        v58 = [v52 initWithDictionary:v57];

        if (v120)
        {
          v59 = 0;
        }

        else
        {
          v60 = [v112 category];
          v61 = [v60 categoryType];
          if (v61)
          {
            v62 = [(HMDService *)self serviceType];
            v59 = [v116 mapToAssistantServiceSubtypeName:v62 accessoryCategory:v61];

            if (!v59)
            {
              v63 = [(HMDService *)self serviceType];
              v64 = [v116 getServiceTypeAlias:v63];
              v59 = [v116 mapToAssistantServiceSubtypeName:v64 accessoryCategory:v61];

              if (!v59)
              {
                v65 = [(HMDService *)self serviceType];
                v59 = [(HMDService *)self _serviceSubtypeFromLinkedServicesForServiceType:v65 accessoryCategory:v61];
              }
            }
          }

          else
          {
            v59 = 0;
          }
        }

        v66 = [(HMDService *)self associatedServiceType];

        if (v66)
        {
          v67 = [(HMDService *)self associatedServiceType];
          [v58 setObject:v67 forKey:@"objectAssociatedServiceType"];

          if (!v59)
          {
            v68 = [(HMDService *)self associatedServiceType];
            v59 = [v116 mapToAssistantServiceSubtypeName:v68];
          }
        }

        v69 = [(HMDService *)self serviceSubtype];

        if (v69 && !v59)
        {
          v70 = [(HMDService *)self serviceSubtype];
          v59 = [v116 mapToAssistantServiceSubtypeName:v70];
        }

        if (v59)
        {
          [v58 setObject:v59 forKey:@"objectServiceSubType"];
        }

        v71 = [v112 name];

        if (v71)
        {
          v72 = [v112 name];
          [v58 setObject:v72 forKey:@"objectAccessory"];

          v73 = [v112 urlString];
          [v58 setObject:v73 forKey:@"objectAccessoryIdentifier"];
        }

        v115 = v58;
        v74 = [MEMORY[0x277CBEB18] array];
        v75 = [MEMORY[0x277CBEB18] array];
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v119 = [(HMDService *)v113 serviceGroups];
        v123 = [v119 countByEnumeratingWithState:&v135 objects:v145 count:16];
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
                objc_enumerationMutation(v119);
              }

              obja = v76;
              v77 = *(*(&v135 + 1) + 8 * v76);
              v131 = 0u;
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              v78 = [v77 serviceUUIDs];
              v79 = [v78 countByEnumeratingWithState:&v131 objects:v144 count:16];
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
                      objc_enumerationMutation(v78);
                    }

                    v83 = *(*(&v131 + 1) + 8 * i);
                    v84 = [(HMDService *)self uuid];
                    LODWORD(v83) = [v84 hmf_isEqualToUUIDString:v83];

                    if (v83)
                    {
                      v85 = [v77 name];
                      [v74 addObject:v85];

                      v86 = [v77 urlString];
                      [v75 addObject:v86];
                    }
                  }

                  v80 = [v78 countByEnumeratingWithState:&v131 objects:v144 count:16];
                }

                while (v80);
              }

              v76 = obja + 1;
            }

            while (obja + 1 != v123);
            v123 = [v119 countByEnumeratingWithState:&v135 objects:v145 count:16];
          }

          while (v123);
        }

        if ([v74 count])
        {
          [v115 setObject:v74 forKey:@"objectGroups"];
          [v115 setObject:v75 forKey:@"objectGroupIdentifiers"];
        }

        v87 = MEMORY[0x277CBEB18];
        v88 = [(HMDService *)self linkedServices];
        objb = [v87 arrayWithCapacity:{objc_msgSend(v88, "count")}];

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v89 = [(HMDService *)self linkedServices];
        v90 = [v89 countByEnumeratingWithState:&v127 objects:v143 count:16];
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
                objc_enumerationMutation(v89);
              }

              v94 = [v117 findService:*(*(&v127 + 1) + 8 * j)];
              v95 = v94;
              if (v94)
              {
                v96 = [v94 configurationState];
                if (!v96 || (v97 = v96, [v95 configurationState], v98 = objc_claimAutoreleasedReturnValue(), v99 = objc_msgSend(v98, "integerValue"), v98, v97, v99))
                {
                  v100 = [v95 urlString];
                  [objb addObject:v100];
                }
              }
            }

            v91 = [v89 countByEnumeratingWithState:&v127 objects:v143 count:16];
          }

          while (v91);
        }

        if (([objb hmf_isEmpty] & 1) == 0)
        {
          v101 = [objb copy];
          [v115 setObject:v101 forKey:@"objectRelatedIdentifiers"];
        }

        v102 = [v112 room];
        v103 = [v102 name];
        if (v103)
        {
          v104 = [(HMDService *)v113 name];
          v105 = [v103 isEqualToString:v104];

          if ((v105 & 1) == 0)
          {
            [v115 setObject:v103 forKey:@"objectRoom"];
            v106 = [v102 urlString];
            [v115 setObject:v106 forKey:@"objectRoomIdentifier"];
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
      v9 = v110;
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
      v17 = [(HMDService *)v11 name];
    }

    else
    {
      v17 = 0;
    }

    *buf = 138544130;
    v150 = v16;
    v151 = 2112;
    v152 = v11;
    v153 = 2112;
    v154 = v17;
    v155 = 2112;
    v156 = v9;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
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
  v3 = [(HMDService *)self accessory];
  v4 = [v3 hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = *MEMORY[0x277CCF2A8];
  v8 = [v6 uuid];

  v9 = v8;
  if (!v8)
  {
    v9 = [v3 uuid];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [(HMDService *)self instanceID];
  v12 = [v10 stringWithFormat:@"%@", v11];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v14 = hm_assistantIdentifierWithSalts();

  if (!v8)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_serviceSubtypeFromLinkedServicesForServiceType:(id)a3 accessoryCategory:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:{*MEMORY[0x277CD0E60], a4}])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(HMDService *)self linkedServices];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [(HMDService *)self accessory];
          v13 = [v12 findService:v11];

          if (v13)
          {
            v14 = [v13 type];
            v15 = [v14 isEqualToString:v9];

            if (v15)
            {
              v16 = *MEMORY[0x277D48240];

              goto LABEL_14;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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