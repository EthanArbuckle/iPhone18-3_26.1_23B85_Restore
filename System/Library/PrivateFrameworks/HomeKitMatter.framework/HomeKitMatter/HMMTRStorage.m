@interface HMMTRStorage
+ (BOOL)checkAndUpdateExpiryOfCertificate:(id)a3 keyPair:(id)a4 newCertificate:(id *)a5;
+ (BOOL)didUpdateMatterItems:(id)a3 oldStorage:(id)a4;
+ (BOOL)isMatterKey:(id)a3;
+ (BOOL)isMemoryStorageKey:(id)a3;
+ (BOOL)isPluginAccessoryNodeKey:(id)a3;
+ (BOOL)isPluginKey:(id)a3;
+ (BOOL)shouldIgnoreWritesForKey:(id)a3;
+ (id)accessoryNodeIDFromPluginKey:(id)a3;
+ (id)chipPluginStorageAccessoryNodeSpecificKeys;
+ (id)chipPluginStorageKeys;
+ (id)generateIPK;
+ (id)ignoredMatterStorageKeys;
+ (id)keyByStrippingNodeIdFromKey:(id)a3;
+ (id)logCategory;
+ (id)matterItemsFromDictionary:(id)a3;
+ (id)matterStorageKeys;
+ (id)memoryStorageKeys;
+ (id)nodeIdFromPluginKey:(id)a3;
+ (id)removeRecordsForUnpairedNodesInDict:(id)a3 pairedNodes:(id)a4;
+ (id)shortDescription;
+ (unsigned)knownFabricInStorage:(id)a3 fabricID:(id)a4 keyPair:(id)a5 controllerNodeID:(id *)a6 rootCertificate:(id *)a7;
- (BOOL)_removeAllDataSourceData;
- (BOOL)_syncSetDataSourceDictionary:(id)a3;
- (BOOL)_syncSetDataSourceValue:(id)a3 forKey:(id)a4;
- (BOOL)_syncSetDataSourceValuesWithError:(id *)a3 block:(id)a4;
- (BOOL)isResidentDevice;
- (BOOL)isStagedForNode:(id)a3;
- (BOOL)localStorageMode;
- (BOOL)removeValueForKey:(id)a3;
- (BOOL)removeValueForKey:(id)a3 systemCommissionerFabric:(BOOL)a4;
- (BOOL)replaceAllKeysAndSyncWithBlock:(id)a3 systemCommissionerFabric:(BOOL)a4;
- (BOOL)setStorageData:(id)a3 forKey:(id)a4;
- (BOOL)setValueForKey:(id)a3 removingKeys:(id)a4 systemCommissionerFabric:(BOOL)a5 block:(id)a6;
- (BOOL)setValueForKey:(id)a3 value:(id)a4;
- (BOOL)syncDataSourceDictionary:(id)a3 forFabric:(id)a4;
- (BOOL)threadCredentialManagementEnabledForSystemCommissionerFabricNode:(id)a3;
- (BOOL)wedSupportedForSystemCommissionerFabricNode:(id)a3;
- (HMMTRStorage)initWithQueue:(id)a3 dataSource:(id)a4 systemCommissionerFabric:(BOOL)a5 fabricUUID:(id)a6 sharedAdmin:(BOOL)a7;
- (HMMTRStorageDataSource)dataSource;
- (NSSet)pairedNodeIDs;
- (id)_preferencesValueForKey:(id)a3;
- (id)categoryForNode:(id)a3;
- (id)categoryForSystemCommissionerFabricNode:(id)a3;
- (id)configNumberForNode:(id)a3;
- (id)deviceNameForSystemCommissionerFabricNode:(id)a3;
- (id)extendedMACAddressForSystemCommissionerFabricNode:(id)a3;
- (id)fabricIndexForNode:(id)a3;
- (id)ipkForTargetFabricUUID:(id)a3 forPairing:(BOOL)a4;
- (id)logIdentifier;
- (id)operationalCertificate;
- (id)pairedNodeIDsFromStoredStringValue:(id)a3;
- (id)productIDForNode:(id)a3;
- (id)productIDForSystemCommissionerFabricNode:(id)a3;
- (id)rootCertificate;
- (id)serialNumberForSystemCommissionerFabricNode:(id)a3;
- (id)setupPayloadForSystemCommissionerFabricNode:(id)a3;
- (id)storageDataForKey:(id)a3;
- (id)storedStringValueFromPairedNodeIDs:(id)a3;
- (id)systemCommissionerFabricNodeIDForUuid:(id)a3;
- (id)threadCredentialManagementEndpointForSystemCommissionerFabricNode:(id)a3;
- (id)threadCredentialManagementNodesAndEndpointsForSystemCommissioner;
- (id)topologyForNode:(id)a3;
- (id)uuidForSystemCommissionerFabricNode:(id)a3;
- (id)valueForKey:(id)a3;
- (id)valueForKey:(id)a3 systemCommissionerFabric:(BOOL)a4;
- (id)vendorIDForNode:(id)a3;
- (id)vendorIDForSystemCommissionerFabricNode:(id)a3;
- (void)_removeSystemCommissionerFabricNodeIDForUuid:(id)a3;
- (void)_setPreferencesValueForKey:(id)a3 value:(id)a4;
- (void)_syncToRemoteStorage;
- (void)addPairedNodeID:(id)a3;
- (void)clearStaleItems;
- (void)endLocalStorageModeByPersistingAppleFabricData;
- (void)endLocalStorageModeBySyncingToRemote:(BOOL)a3;
- (void)removeAndSyncAllKeysNotIncludedInActiveNodeIDs:(id)a3;
- (void)removePairedNodeID:(id)a3;
- (void)removeRecordsForNodeIDs:(id)a3 systemCommissionerFabric:(BOOL)a4;
- (void)removeRecordsForSystemCommissionerFabricNode:(id)a3;
- (void)setCategory:(id)a3 forNode:(id)a4;
- (void)setCategory:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setConfigNumber:(id)a3 forNode:(id)a4;
- (void)setDeviceName:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setExtendedMACAddress:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setFabricID:(id)a3 forNode:(id)a4;
- (void)setLocalStorageMode:(BOOL)a3;
- (void)setOperationalCertificate:(id)a3;
- (void)setPairedNodeIDs:(id)a3;
- (void)setProductID:(id)a3 forNode:(id)a4;
- (void)setProductID:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setRootCertificate:(id)a3;
- (void)setSerialNumber:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setSetupPayload:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setSystemCommissionerFabricNodeID:(id)a3 forUuid:(id)a4;
- (void)setThreadCredentialManagementEndpoint:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setTopology:(id)a3 forNode:(id)a4;
- (void)setUuid:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)setVendorID:(id)a3 forNode:(id)a4;
- (void)setVendorID:(id)a3 forSystemCommissionerFabricNode:(id)a4;
- (void)startLocalStorageMode;
@end

@implementation HMMTRStorage

- (void)removeRecordsForSystemCommissionerFabricNode:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v8;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting records from storage for System Commissioner Fabric NodeID: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMMTRStorage *)v6 removePairedNodeID:v4 fromSystemCommissionerFabric:1];
  v9 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.VendorID."];
  [(HMMTRStorage *)v6 removeValueForKey:v9 systemCommissionerFabric:1];

  v10 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.Topology."];
  [(HMMTRStorage *)v6 removeValueForKey:v10 systemCommissionerFabric:1];

  v11 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.FabricIndex."];
  [(HMMTRStorage *)v6 removeValueForKey:v11 systemCommissionerFabric:1];

  v12 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.ProductID."];
  [(HMMTRStorage *)v6 removeValueForKey:v12 systemCommissionerFabric:1];

  v13 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.Category."];
  [(HMMTRStorage *)v6 removeValueForKey:v13 systemCommissionerFabric:1];

  v14 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.ConfigNumber."];
  [(HMMTRStorage *)v6 removeValueForKey:v14 systemCommissionerFabric:1];

  v15 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.Staged."];
  [(HMMTRStorage *)v6 removeValueForKey:v15 systemCommissionerFabric:1];

  v16 = [(HMMTRStorage *)v6 uuidForSystemCommissionerFabricNode:v4];
  if (v16)
  {
    [(HMMTRStorage *)v6 _removeSystemCommissionerFabricNodeIDForUuid:v16];
  }

  v17 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.UUID."];
  [(HMMTRStorage *)v6 removeValueForKey:v17 systemCommissionerFabric:1];

  v18 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.SerialNumber."];
  [(HMMTRStorage *)v6 removeValueForKey:v18 systemCommissionerFabric:1];

  v19 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.DeviceName."];
  [(HMMTRStorage *)v6 removeValueForKey:v19 systemCommissionerFabric:1];

  v20 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.SetupPayload."];
  [(HMMTRStorage *)v6 removeValueForKey:v20 systemCommissionerFabric:1];

  v21 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.SetupPayloadString."];
  [(HMMTRStorage *)v6 removeValueForKey:v21 systemCommissionerFabric:1];

  v22 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.WEDSupported."];
  [(HMMTRStorage *)v6 removeValueForKey:v22 systemCommissionerFabric:1];

  v23 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.ExtendedMACAddress."];
  [(HMMTRStorage *)v6 removeValueForKey:v23 systemCommissionerFabric:1];

  v24 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.TCM.ep"];
  [(HMMTRStorage *)v6 removeValueForKey:v24 systemCommissionerFabric:1];

  v25 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.TCM.on"];
  [(HMMTRStorage *)v6 removeValueForKey:v25 systemCommissionerFabric:1];

  v26 = *MEMORY[0x277D85DE8];
}

- (id)threadCredentialManagementNodesAndEndpointsForSystemCommissioner
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HMMTRStorage *)self pairedNodeIDsOnSystemCommissionerFabric:1, 0];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(HMMTRStorage *)self threadCredentialManagementEndpointForSystemCommissionerFabricNode:v9];
        if (v10 && [(HMMTRStorage *)self threadCredentialManagementEnabledForSystemCommissionerFabricNode:v9])
        {
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)threadCredentialManagementEnabledForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.MTS.TCM.on"];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 BOOLValue];

  return v8;
}

- (id)threadCredentialManagementEndpointForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.MTS.TCM.ep"];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)setThreadCredentialManagementEndpoint:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.MTS.TCM.ep"];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)extendedMACAddressForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.MTS.ExtendedMACAddress."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)setExtendedMACAddress:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.MTS.ExtendedMACAddress."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (BOOL)wedSupportedForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.MTS.WEDSupported."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 isEqual:&unk_283EE7BC0] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)categoryForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.Category."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setCategory:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.Category."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)productIDForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.ProductID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setProductID:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.ProductID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)vendorIDForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.VendorID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setVendorID:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.VendorID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)setupPayloadForSystemCommissionerFabricNode:(id)a3
{
  v4 = a3;
  v5 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.SetupPayload."];
  v6 = [(HMMTRStorage *)self valueForKey:v5 systemCommissionerFabric:1];
  if (v6)
  {
    [(HMMTRStorage *)self removeValueForKey:v5 systemCommissionerFabric:1];
  }

  v7 = [HMMTRStorage formatKeyForNodeId:v4 key:@"HMD.MTRPlugin.MTS.SetupPayloadString."];

  v8 = [(HMMTRStorage *)self valueForKey:v7 systemCommissionerFabric:1];
  if (!v8)
  {
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
      [(HMMTRStorage *)self setValueForKey:v7 value:v10 systemCommissionerFabric:1];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)setSetupPayload:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.MTS.SetupPayloadString."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)deviceNameForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.MTS.DeviceName."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setDeviceName:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.MTS.DeviceName."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)serialNumberForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.MTS.SerialNumber."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setSerialNumber:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.MTS.SerialNumber."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (void)_removeSystemCommissionerFabricNodeIDForUuid:(id)a3
{
  v5 = [a3 UUIDString];
  v4 = [@"HMD.MTRPlugin.MTS.NodeIDForUUID." stringByAppendingString:v5];
  [(HMMTRStorage *)self removeValueForKey:v4 systemCommissionerFabric:1];
}

- (id)systemCommissionerFabricNodeIDForUuid:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = [@"HMD.MTRPlugin.MTS.NodeIDForUUID." stringByAppendingString:v4];
  v6 = [(HMMTRStorage *)self valueForKey:v5 systemCommissionerFabric:1];

  return v6;
}

- (void)setSystemCommissionerFabricNodeID:(id)a3 forUuid:(id)a4
{
  v6 = a3;
  v8 = [a4 UUIDString];
  v7 = [@"HMD.MTRPlugin.MTS.NodeIDForUUID." stringByAppendingString:v8];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (id)uuidForSystemCommissionerFabricNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.MTS.UUID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:1];

  return v5;
}

- (void)setUuid:(id)a3 forSystemCommissionerFabricNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.MTS.UUID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:1];
}

- (void)removeAndSyncAllKeysNotIncludedInActiveNodeIDs:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing all keys not included in active node IDs: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMMTRStorage_Records__removeAndSyncAllKeysNotIncludedInActiveNodeIDs___block_invoke;
  v11[3] = &unk_2786ED840;
  v11[4] = v6;
  v12 = v4;
  v9 = v4;
  [(HMMTRStorage *)v6 replaceAllKeysAndSyncWithBlock:v11 systemCommissionerFabric:[(HMMTRStorage *)v6 isSystemCommissionerFabric:v11[0]]];

  v10 = *MEMORY[0x277D85DE8];
}

id __72__HMMTRStorage_Records__removeAndSyncAllKeysNotIncludedInActiveNodeIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [HMMTRStorage accessoryNodeIDFromPluginKey:v5];
  if (v7)
  {
    if (![*(a1 + 40) containsObject:v7])
    {
      v8 = 0;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (![v5 isEqual:@"HMD.MTRPlugin.PairedNodeIDs"])
  {
LABEL_16:
    v8 = v6;
    goto LABEL_20;
  }

  v9 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:v6];
  v10 = [v9 mutableCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 copy];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v12)
  {

LABEL_18:
    v18 = v6;
    goto LABEL_19;
  }

  v13 = v12;
  v21 = v6;
  v14 = 0;
  v15 = *v23;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v22 + 1) + 8 * i);
      if (([*(a1 + 40) containsObject:v17] & 1) == 0)
      {
        [v10 removeObject:v17];
        v14 = 1;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v13);

  v6 = v21;
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v10];
LABEL_19:
  v8 = v18;

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)removeRecordsForNodeIDs:(id)a3 systemCommissionerFabric:(BOOL)a4
{
  v26 = a4;
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v9;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Deleting records from storage for node IDs: %@", buf, 0x16u);
  }

  v25 = v7;
  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.VendorID."];
        [v10 addObject:v16];

        v17 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.Topology."];
        [v10 addObject:v17];

        v18 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.FabricIndex."];
        [v10 addObject:v18];

        v19 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.ProductID."];
        [v10 addObject:v19];

        v20 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.Category."];
        [v10 addObject:v20];

        v21 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.ConfigNumber."];
        [v10 addObject:v21];

        v22 = [HMMTRStorage formatKeyForNodeId:v15 key:@"HMD.MTRPlugin.Staged."];
        [v10 addObject:v22];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __74__HMMTRStorage_Records__removeRecordsForNodeIDs_systemCommissionerFabric___block_invoke;
  v28[3] = &unk_2786ED818;
  v28[4] = v25;
  v29 = obj;
  v23 = obj;
  [(HMMTRStorage *)v25 setValueForKey:@"HMD.MTRPlugin.PairedNodeIDs" removingKeys:v10 systemCommissionerFabric:v26 block:v28];

  v24 = *MEMORY[0x277D85DE8];
}

id __74__HMMTRStorage_Records__removeRecordsForNodeIDs_systemCommissionerFabric___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:a2];
  v4 = [v3 mutableCopy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeObject:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)operationalCertificate
{
  v2 = [(HMMTRStorage *)self valueForKey:@"HMD.MTRPlugin.OperationalCert" systemCommissionerFabric:0];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOperationalCertificate:(id)a3
{
  v4 = [a3 base64EncodedStringWithOptions:0];
  [(HMMTRStorage *)self setValueForKey:@"HMD.MTRPlugin.OperationalCert" value:v4 systemCommissionerFabric:0];
}

- (id)rootCertificate
{
  v2 = [(HMMTRStorage *)self valueForKey:@"HMD.MTRPlugin.RootCert" systemCommissionerFabric:0];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v2 options:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRootCertificate:(id)a3
{
  v4 = [a3 base64EncodedStringWithOptions:0];
  [(HMMTRStorage *)self setValueForKey:@"HMD.MTRPlugin.RootCert" value:v4 systemCommissionerFabric:0];
}

- (id)topologyForNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.Topology."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTopology:(id)a3 forNode:(id)a4
{
  v6 = a3;
  v8 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.Topology."];
  v7 = [v6 base64EncodedStringWithOptions:0];

  [(HMMTRStorage *)self setValueForKey:v8 value:v7];
}

- (id)fabricIndexForNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.FabricIndex."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setFabricID:(id)a3 forNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.FabricIndex."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6];
}

- (id)configNumberForNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.ConfigNumber."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setConfigNumber:(id)a3 forNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.ConfigNumber."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6];
}

- (id)categoryForNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.Category."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setCategory:(id)a3 forNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.Category."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6];
}

- (id)productIDForNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.ProductID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setProductID:(id)a3 forNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.ProductID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6];
}

- (id)vendorIDForNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.VendorID."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];

  return v5;
}

- (void)setVendorID:(id)a3 forNode:(id)a4
{
  v6 = a3;
  v7 = [HMMTRStorage formatKeyForNodeId:a4 key:@"HMD.MTRPlugin.VendorID."];
  [(HMMTRStorage *)self setValueForKey:v7 value:v6];
}

- (BOOL)isStagedForNode:(id)a3
{
  v4 = [HMMTRStorage formatKeyForNodeId:a3 key:@"HMD.MTRPlugin.Staged."];
  v5 = [(HMMTRStorage *)self valueForKey:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

id __73__HMMTRStorage_Records__removePairedNodeID_fromSystemCommissionerFabric___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:a2];
  v4 = [v3 mutableCopy];

  [v4 removeObject:*(a1 + 40)];
  v5 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v4];

  return v5;
}

id __68__HMMTRStorage_Records__addPairedNodeID_toSystemCommissionerFabric___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) pairedNodeIDsFromStoredStringValue:a2];
  v4 = [v3 mutableCopy];

  [v4 addObject:*(a1 + 40)];
  v5 = [*(a1 + 32) storedStringValueFromPairedNodeIDs:v4];

  return v5;
}

- (id)storedStringValueFromPairedNodeIDs:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMMTRUtilities encodeObject:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_FAULT, "%{public}@Failed to encode NodeID set", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)pairedNodeIDsFromStoredStringValue:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
    if (v5)
    {
      v6 = MEMORY[0x277CCAAC8];
      v7 = MEMORY[0x277CBEB98];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v26[2] = objc_opt_class();
      v26[3] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
      v9 = [v7 setWithArray:v8];
      v25 = 0;
      v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v25];
      v11 = v25;

      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v28 = v22;
          v29 = 2112;
          v30 = v11;
          _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_FAULT, "%{public}@Failed to load NodeID set with Error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v12 = [MEMORY[0x277CBEB98] set];
      }

      v13 = v12;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [(HMMTRStorage *)v15 fabricID];
        *buf = 138543618;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@No paired NodeIDs set for fabricMapping index:%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = [MEMORY[0x277CBEB98] set];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CBEB98] set];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)removePairedNodeID:(id)a3
{
  v4 = a3;
  [(HMMTRStorage *)self removePairedNodeID:v4 fromSystemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];
}

- (void)addPairedNodeID:(id)a3
{
  v4 = a3;
  [(HMMTRStorage *)self addPairedNodeID:v4 toSystemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];
}

- (void)setPairedNodeIDs:(id)a3
{
  v4 = a3;
  [(HMMTRStorage *)self setPairedNodeIDs:v4 forSystemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];
}

- (NSSet)pairedNodeIDs
{
  v3 = [(HMMTRStorage *)self isSystemCommissionerFabric];

  return [(HMMTRStorage *)self pairedNodeIDsOnSystemCommissionerFabric:v3];
}

+ (id)accessoryNodeIDFromPluginKey:(id)a3
{
  v4 = a3;
  if ([a1 isPluginAccessoryNodeKey:v4])
  {
    v5 = [HMMTRStorage nodeIdFromPluginKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)nodeIdFromPluginKey:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 isPluginKey:v4])
  {
    v5 = v4;
    v23 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\D+(\\d+)$" options:0 error:&v23];
    v7 = v23;
    v8 = [v6 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
    if ([v8 count] < 2)
    {
      v14 = [v8 firstObject];
      v15 = v14;
      if (v14)
      {
        v16 = MEMORY[0x277CCAC80];
        v17 = [v14 rangeAtIndex:1];
        v19 = [v5 substringWithRange:{v17, v18}];
        v20 = [v16 scannerWithString:v19];

        *buf = 0;
        v13 = 0;
        if ([v20 scanUnsignedLongLong:buf])
        {
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*buf];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@More than 1 match found, ignoring input", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)keyByStrippingNodeIdFromKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0;
  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(.*\\D)\\d+$" options:0 error:&v20];
  v6 = v20;
  v7 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  if ([v7 count] < 2)
  {
    v13 = [v7 firstObject];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 rangeAtIndex:1];
      v17 = [v4 substringWithRange:{v15, v16}];
    }

    else
    {
      v17 = v4;
    }

    v12 = v17;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@More than 1 match found, ignoring input", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = v4;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)matterItemsFromDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = +[HMMTRStorage chipPluginStorageKeys];
        v11 = [HMMTRStorage keyByStrippingNodeIdFromKey:v9];
        if ([v10 containsObject:v11])
        {
        }

        else
        {
          v12 = [HMMTRStorage isMatterKey:v9];

          if (v12)
          {
            continue;
          }

          v10 = [v3 objectForKeyedSubscript:v9];
          [v15 setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)isMemoryStorageKey:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[HMMTRStorage memoryStorageKeys];
  if ([v4 containsObject:v3])
  {
    v5 = 1;
    goto LABEL_21;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v3 hasPrefix:*(*(&v23 + 1) + 8 * i)])
        {
          v5 = 1;
          goto LABEL_20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
  v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/s/" options:0 error:&v22];
  v6 = v22;
  v12 = [v11 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  if ([v12 count] == 1)
  {
    goto LABEL_12;
  }

  v21 = v6;
  v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/n$" options:0 error:&v21];
  v14 = v21;

  v15 = [v13 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

  if ([v15 count] == 1)
  {
    v5 = 1;
    v12 = v15;
  }

  else
  {
    v20 = v14;
    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/o$" options:0 error:&v20];
    v6 = v20;

    v12 = [v11 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

    if ([v12 count] == 1)
    {
LABEL_12:
      v5 = 1;
      goto LABEL_19;
    }

    v19 = v6;
    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/i$" options:0 error:&v19];
    v14 = v19;

    v16 = [v13 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

    v5 = [v16 count] == 1;
    v12 = v16;
  }

  v11 = v13;
  v6 = v14;
LABEL_19:

LABEL_20:
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)shouldIgnoreWritesForKey:(id)a3
{
  v3 = a3;
  v4 = +[HMMTRStorage ignoredMatterStorageKeys];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (BOOL)isPluginAccessoryNodeKey:(id)a3
{
  v3 = a3;
  v4 = +[HMMTRStorage chipPluginStorageAccessoryNodeSpecificKeys];
  v5 = [HMMTRStorage keyByStrippingNodeIdFromKey:v3];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3;
}

+ (BOOL)isPluginKey:(id)a3
{
  v3 = a3;
  v4 = +[HMMTRStorage chipPluginStorageKeys];
  v5 = [HMMTRStorage keyByStrippingNodeIdFromKey:v3];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3;
}

+ (BOOL)isMatterKey:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[HMMTRStorage matterStorageKeys];
  if ([v4 containsObject:v3])
  {
    v5 = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([v3 hasPrefix:*(*(&v15 + 1) + 8 * i)])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^f/[0-9a-fA-F]+/s/" options:0 error:&v14];
    v11 = [v6 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v5 = [v11 count] == 1;

LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)memoryStorageKeys
{
  if (memoryStorageKeys_onceToken != -1)
  {
    dispatch_once(&memoryStorageKeys_onceToken, &__block_literal_global_120);
  }

  v3 = memoryStorageKeys_storageKeys;

  return v3;
}

void __42__HMMTRStorage_Records__memoryStorageKeys__block_invoke()
{
  v0 = memoryStorageKeys_storageKeys;
  memoryStorageKeys_storageKeys = &unk_283EE91E0;
}

+ (id)ignoredMatterStorageKeys
{
  if (ignoredMatterStorageKeys_onceToken != -1)
  {
    dispatch_once(&ignoredMatterStorageKeys_onceToken, &__block_literal_global_109);
  }

  v3 = ignoredMatterStorageKeys_storageKeys;

  return v3;
}

void __49__HMMTRStorage_Records__ignoredMatterStorageKeys__block_invoke()
{
  v0 = ignoredMatterStorageKeys_storageKeys;
  ignoredMatterStorageKeys_storageKeys = &unk_283EE91C8;
}

+ (id)matterStorageKeys
{
  if (matterStorageKeys_onceToken != -1)
  {
    dispatch_once(&matterStorageKeys_onceToken, &__block_literal_global_86);
  }

  v3 = matterStorageKeys_storageKeys;

  return v3;
}

void __42__HMMTRStorage_Records__matterStorageKeys__block_invoke()
{
  v0 = matterStorageKeys_storageKeys;
  matterStorageKeys_storageKeys = &unk_283EE91B0;
}

+ (id)chipPluginStorageAccessoryNodeSpecificKeys
{
  if (chipPluginStorageAccessoryNodeSpecificKeys_onceToken != -1)
  {
    dispatch_once(&chipPluginStorageAccessoryNodeSpecificKeys_onceToken, &__block_literal_global_81);
  }

  v3 = chipPluginStorageAccessoryNodeSpecificKeys_storageKeys;

  return v3;
}

void __67__HMMTRStorage_Records__chipPluginStorageAccessoryNodeSpecificKeys__block_invoke()
{
  v0 = chipPluginStorageAccessoryNodeSpecificKeys_storageKeys;
  chipPluginStorageAccessoryNodeSpecificKeys_storageKeys = &unk_283EE9198;
}

+ (id)chipPluginStorageKeys
{
  if (chipPluginStorageKeys_onceToken != -1)
  {
    dispatch_once(&chipPluginStorageKeys_onceToken, &__block_literal_global_610);
  }

  v3 = chipPluginStorageKeys_storageKeys;

  return v3;
}

void __46__HMMTRStorage_Records__chipPluginStorageKeys__block_invoke()
{
  v0 = chipPluginStorageKeys_storageKeys;
  chipPluginStorageKeys_storageKeys = &unk_283EE9180;
}

+ (id)removeRecordsForUnpairedNodesInDict:(id)a3 pairedNodes:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [HMMTRStorage nodeIdFromPluginKey:v13, v17];
        if (v14 && ([v6 containsObject:v14] & 1) == 0)
        {
          [v7 setObject:0 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMMTRStorageDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_syncToRemoteStorage
{
  v2 = self;
  v122 = *MEMORY[0x277D85DE8];
  if (![(HMMTRStorage *)self storageSyncInProgress])
  {
    if (![(HMMTRStorage *)v2 storageSyncPending])
    {
      goto LABEL_55;
    }

    [(HMMTRStorage *)v2 setStorageSyncInProgress:1];
    if ([(HMMTRStorage *)v2 isSystemCommissionerFabric])
    {
      v7 = [(HMMTRStorage *)v2 localStorage];
      v8 = [(HMMTRStorage *)v2 pairedNodeIDsOnSystemCommissionerFabric:1];
      v9 = [HMMTRStorage removeRecordsForUnpairedNodesInDict:v7 pairedNodes:v8];

      v93 = v9;
      v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
      [(HMMTRStorage *)v2 setLocalStorage:v10];

      v11 = objc_autoreleasePoolPush();
      v94 = v2;
      v12 = v2;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [(HMMTRStorage *)v12 pairedNodeIDsOnSystemCommissionerFabric:1];
        *buf = 138543618;
        v115 = v14;
        v116 = 2112;
        v117 = v15;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Currently paired nodes on System commissioner fabric %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v95 = [MEMORY[0x277CBEB18] array];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      obj = [(HMMTRStorage *)v12 localStorageWithoutUpdates];
      v16 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v110;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v110 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v109 + 1) + 8 * i);
            v21 = [(HMMTRStorage *)v12 localStorage];
            v22 = [v21 objectForKey:v20];

            if (v22)
            {
              v23 = [(HMMTRStorage *)v12 localStorage];
              v24 = [v23 objectForKeyedSubscript:v20];
              v25 = [(HMMTRStorage *)v12 localStorageWithoutUpdates];
              v26 = [v25 objectForKeyedSubscript:v20];
              v27 = [v24 isEqual:v26];

              if (v27)
              {
                v28 = [(HMMTRStorage *)v12 localStorage];
                [v28 removeObjectForKey:v20];
              }
            }

            else
            {
              [v95 addObject:v20];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
        }

        while (v17);
      }

      v108 = 0u;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      v29 = v95;
      v30 = [v29 countByEnumeratingWithState:&v105 objects:v120 count:16];
      v96 = v29;
      if (v30)
      {
        v31 = v30;
        v32 = *v106;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v106 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v105 + 1) + 8 * j);
            v35 = [(HMMTRStorage *)v12 systemCommissionerKeyValueStore];
            v104 = 0;
            v36 = [v35 removeStoredValueForKey:v34 error:&v104];
            v37 = v104;

            if ((v36 & 1) == 0)
            {
              v38 = objc_autoreleasePoolPush();
              v39 = v12;
              v40 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = HMFGetLogIdentifier();
                *buf = 138543874;
                v115 = v41;
                v116 = 2112;
                v117 = v34;
                v118 = 2112;
                v119 = v37;
                _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove %@ from System Commissioner storage with error %@", buf, 0x20u);

                v29 = v96;
              }

              objc_autoreleasePoolPop(v38);
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v105 objects:v120 count:16];
        }

        while (v31);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      obja = [(HMMTRStorage *)v12 localStorage];
      v42 = [obja countByEnumeratingWithState:&v100 objects:v113 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v101;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v101 != v44)
            {
              objc_enumerationMutation(obja);
            }

            v46 = *(*(&v100 + 1) + 8 * k);
            v47 = [(HMMTRStorage *)v12 systemCommissionerKeyValueStore];
            v48 = [(HMMTRStorage *)v12 localStorage];
            v49 = [v48 objectForKeyedSubscript:v46];
            v99 = 0;
            v50 = [v47 setStoredValue:v49 forKey:v46 error:&v99];
            v51 = v99;

            if ((v50 & 1) == 0)
            {
              v52 = objc_autoreleasePoolPush();
              v53 = v12;
              v54 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = HMFGetLogIdentifier();
                *buf = 138543874;
                v115 = v55;
                v116 = 2112;
                v117 = v46;
                v118 = 2112;
                v119 = v51;
                _os_log_impl(&dword_22AEAE000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to System Commissioner storage for key %@ with error %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v52);
            }
          }

          v43 = [obja countByEnumeratingWithState:&v100 objects:v113 count:16];
        }

        while (v43);
      }

      v56 = objc_autoreleasePoolPush();
      v57 = v12;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v59 = HMFGetLogIdentifier();
        v60 = MEMORY[0x277CCABB0];
        v61 = [(HMMTRStorage *)v57 localStorage];
        v62 = [v60 numberWithUnsignedInteger:{objc_msgSend(v61, "count")}];
        v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v96, "count")}];
        *buf = 138543874;
        v115 = v59;
        v116 = 2112;
        v117 = v62;
        v118 = 2112;
        v119 = v63;
        _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_INFO, "%{public}@Updated %@ and removed %@ key-value pairs while sync'ing from local storage with remote System Commissioner Fabric storage", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v56);
      v64 = [(HMMTRStorage *)v57 systemCommissionerKeyValueStore];
      v65 = objc_opt_respondsToSelector();

      v2 = v94;
      if (v65)
      {
        v66 = objc_autoreleasePoolPush();
        v67 = v57;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          v69 = HMFGetLogIdentifier();
          v70 = [(HMMTRStorage *)v67 systemCommissionerKeyValueStore];
          v71 = [v70 storedValuesByKey];
          *buf = 138543618;
          v115 = v69;
          v116 = 2112;
          v117 = v71;
          _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_INFO, "%{public}@System Commissioner storage contains %@", buf, 0x16u);

          v2 = v94;
        }

        objc_autoreleasePoolPop(v66);
      }
    }

    else
    {
      v72 = [(HMMTRStorage *)v2 dataSource];
      v73 = [(HMMTRStorage *)v2 fabricUUID];
      v74 = [v72 storageDataSourceForFabricUUID:v73];
      [(HMMTRStorage *)v2 setFabricDataSource:v74];

      v75 = [(HMMTRStorage *)v2 fabricDataSource];

      if (!v75)
      {
        v88 = objc_autoreleasePoolPush();
        v89 = v2;
        v90 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
        {
          v91 = HMFGetLogIdentifier();
          v92 = [(HMMTRStorage *)v89 fabricUUID];
          *buf = 138543618;
          v115 = v91;
          v116 = 2112;
          v117 = v92;
          _os_log_impl(&dword_22AEAE000, v90, OS_LOG_TYPE_INFO, "%{public}@Remote storage is not yet available for fabric %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v88);
        v86 = v89;
        goto LABEL_54;
      }

      v76 = [(HMMTRStorage *)v2 localStorage];
      v77 = [v76 copy];
      [(HMMTRStorage *)v2 _syncSetDataSourceDictionary:v77];

      v78 = objc_autoreleasePoolPush();
      v79 = v2;
      v80 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v81 = HMFGetLogIdentifier();
        v82 = MEMORY[0x277CCABB0];
        v83 = [(HMMTRStorage *)v79 localStorage];
        v84 = [v82 numberWithUnsignedInteger:{objc_msgSend(v83, "count")}];
        *buf = 138543618;
        v115 = v81;
        v116 = 2112;
        v117 = v84;
        _os_log_impl(&dword_22AEAE000, v80, OS_LOG_TYPE_INFO, "%{public}@Synced %@ key-value pairs from local storage to remote Apple Home storage", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v78);
    }

    v85 = [(HMMTRStorage *)v2 localStorage];
    [v85 removeAllObjects];

    [(HMMTRStorage *)v2 setStorageSyncPending:0];
    v86 = v2;
LABEL_54:
    [(HMMTRStorage *)v86 setStorageSyncInProgress:0];
    goto LABEL_55;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = v2;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v115 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempting to sync to remote storage when another sync is already in progress; ignoring", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
LABEL_55:
  v87 = *MEMORY[0x277D85DE8];
}

- (void)endLocalStorageModeByPersistingAppleFabricData
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    if ([(HMMTRStorage *)self isSystemCommissionerFabric])
    {
      v3 = objc_autoreleasePoolPush();
      v4 = self;
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v6;
        _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_ERROR, "%{public}@Cannot persist Apple Fabric data while in System Commissioner Fabric", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
    }

    else
    {
      v7 = [(HMMTRStorage *)self localStorage];
      v8 = [v7 mutableCopy];
      [(HMMTRStorage *)self setAppleFabricLocalStorage:v8];

      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Discarding Local Storage, but keeping Apple Home keys", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [(HMMTRStorage *)v10 localStorage];
      [v13 removeAllObjects];

      [(HMMTRStorage *)v10 setStorageSyncPending:0];
      [(HMMTRStorage *)v10 setLocalStorageMode:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)endLocalStorageModeBySyncingToRemote:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    if (a3)
    {
      [(HMMTRStorage *)self setStorageSyncPending:1];
      [(HMMTRStorage *)self _syncToRemoteStorage];
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = self;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Discarding Local Storage", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = [(HMMTRStorage *)v6 localStorage];
      [v9 removeAllObjects];

      [(HMMTRStorage *)v6 setStorageSyncPending:0];
    }

    if (![(HMMTRStorage *)self isSystemCommissionerFabric])
    {
      [(HMMTRStorage *)self setAppleFabricLocalStorage:0];
    }

    [(HMMTRStorage *)self setLocalStorageMode:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startLocalStorageMode
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempting to start local storage mode", &v29, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (![(HMMTRStorage *)v4 isSystemCommissionerFabric])
  {
    if (![(HMMTRStorage *)v4 isSharedAdmin])
    {
      v15 = [(HMMTRStorage *)v4 fabricUUID];

      if (v15)
      {
        v16 = [(HMMTRStorage *)v4 dataSource];
        v17 = [(HMMTRStorage *)v4 fabricUUID];
        v18 = [v16 storageDataSourceForFabricUUID:v17];
        [(HMMTRStorage *)v4 setFabricDataSource:v18];

        v19 = [(HMMTRStorage *)v4 fabricDataSource];
        v13 = [v19 keyValueStore];

LABEL_12:
        v20 = [(HMMTRStorage *)v4 appleFabricLocalStorage];

        if (v20)
        {
          [(HMMTRStorage *)v4 appleFabricLocalStorage];
        }

        else
        {
          [MEMORY[0x277CBEB38] dictionaryWithDictionary:v13];
        }
        v14 = ;
        [(HMMTRStorage *)v4 setLocalStorage:v14];
        goto LABEL_16;
      }

      [(HMMTRStorage *)v4 setFabricDataSource:0];
    }

    v13 = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_12;
  }

  v7 = [(HMMTRStorage *)v4 systemCommissionerKeyValueStore];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = MEMORY[0x277CBEB38];
    v10 = [(HMMTRStorage *)v4 systemCommissionerKeyValueStore];
    v11 = [v10 storedValuesByKey];
    v12 = [v9 dictionaryWithDictionary:v11];
    [(HMMTRStorage *)v4 setLocalStorage:v12];
  }

  v13 = [(HMMTRStorage *)v4 localStorage];
  v14 = [v13 copy];
  [(HMMTRStorage *)v4 setLocalStorageWithoutUpdates:v14];
LABEL_16:

  [(HMMTRStorage *)v4 setLocalStorageMode:1];
  [(HMMTRStorage *)v4 setStorageSyncPending:0];
  v21 = objc_autoreleasePoolPush();
  v22 = v4;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = MEMORY[0x277CCABB0];
    v26 = [(HMMTRStorage *)v22 localStorage];
    v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    v29 = 138543618;
    v30 = v24;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Local storage initiated with %@ keys", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)setLocalStorageMode:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMMTRStorage *)v6 isLocalStorageMode];
    v9 = HMFBooleanToString();
    v10 = HMFBooleanToString();
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Changing local storage mode from %@ to %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v6->_localStorageMode = a3;
  os_unfair_lock_unlock(&v6->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)localStorageMode
{
  os_unfair_lock_lock_with_options();
  localStorageMode = self->_localStorageMode;
  os_unfair_lock_unlock(&self->_lock);
  return localStorageMode;
}

- (id)logIdentifier
{
  v2 = [(HMMTRStorage *)self fabricID];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)replaceAllKeysAndSyncWithBlock:(id)a3 systemCommissionerFabric:(BOOL)a4
{
  v4 = a4;
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v9 = [v8 storedValuesByKey];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v55;
      v45 = 1;
      *&v12 = 138543874;
      v44 = v12;
      v46 = *v55;
      v47 = v7;
      do
      {
        v15 = 0;
        v48 = v13;
        do
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v54 + 1) + 8 * v15);
          v17 = [v10 objectForKeyedSubscript:{v16, v44}];
          v18 = (v7)[2](v7, v16, v17);
          if (([v17 isEqual:v18] & 1) == 0)
          {
            if ([(HMMTRStorage *)self isLocalStorageMode])
            {
              v19 = [(HMMTRStorage *)self localStorage];
              [v19 setObject:v18 forKeyedSubscript:v16];
            }

            v20 = v10;
            v21 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
            v22 = v21;
            if (v18)
            {
              v53 = 0;
              v23 = [v21 setStoredValue:v18 forKey:v16 error:&v53];
              v24 = v53;
            }

            else
            {
              v52 = 0;
              v23 = [v21 removeStoredValueForKey:v16 error:&v52];
              v24 = v52;
            }

            v25 = v24;

            if (v23)
            {
              v26 = objc_autoreleasePoolPush();
              v27 = self;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543618;
                v59 = v29;
                v60 = 2112;
                v61 = v16;
                _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@%@ removed from keychain store", buf, 0x16u);
              }
            }

            else
            {
              v26 = objc_autoreleasePoolPush();
              v30 = self;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v31 = HMFGetLogIdentifier();
                *buf = v44;
                v59 = v31;
                v60 = 2112;
                v61 = v16;
                v62 = 2112;
                v63 = v25;
                _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key %@ from System Commissioner storage with error %@", buf, 0x20u);
              }

              v45 = 0;
            }

            v14 = v46;

            objc_autoreleasePoolPop(v26);
            v10 = v20;
            v7 = v47;
            v13 = v48;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v13);
    }

    else
    {
      v45 = 1;
    }

    v37 = v45;
  }

  else
  {
    v51 = 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __72__HMMTRStorage_replaceAllKeysAndSyncWithBlock_systemCommissionerFabric___block_invoke;
    v49[3] = &unk_2786F0E80;
    v49[4] = self;
    v50 = v6;
    v32 = [(HMMTRStorage *)self _syncSetDataSourceValuesWithError:&v51 block:v49];
    v10 = v51;
    if (v32)
    {

      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v36;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      v37 = 1;
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v41;
        v60 = 2112;
        v61 = v10;
        _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v37 = 0;
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v37 & 1;
}

uint64_t __72__HMMTRStorage_replaceAllKeysAndSyncWithBlock_systemCommissionerFabric___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v18 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = (*(*(a1 + 40) + 16))();
        if (([v13 isEqual:v14] & 1) == 0)
        {
          if ([*(a1 + 32) isLocalStorageMode])
          {
            v15 = [*(a1 + 32) localStorage];
            [v15 setObject:v14 forKeyedSubscript:v12];
          }

          [v5 setObject:v14 forKeyedSubscript:v12];
          if (!v14)
          {
            [v18 addObject:v12];
          }

          v9 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)removeValueForKey:(id)a3 systemCommissionerFabric:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    v7 = [(HMMTRStorage *)self localStorage];
    [v7 removeObjectForKey:v6];

    v8 = 1;
    goto LABEL_15;
  }

  if (v4)
  {
    v9 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v22 = 0;
    v8 = [v9 removeStoredValueForKey:v6 error:&v22];
    v10 = v22;

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v8)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v15;
        v25 = 2112;
        v26 = v6;
        v16 = "%{public}@Removal of %@ requested from keychain store";
        v17 = v14;
        v18 = OS_LOG_TYPE_INFO;
LABEL_13:
        _os_log_impl(&dword_22AEAE000, v17, v18, v16, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = v10;
      v16 = "%{public}@Failed to remove key from System Commissioner storage with error %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_15;
  }

  if ([(HMMTRStorage *)self isResidentDevice]&& [HMMTRStorage isMemoryStorageKey:v6])
  {
    v19 = [(HMMTRStorage *)self inMemoryStorage];
    [v19 removeObjectForKey:v6];
  }

  v8 = [(HMMTRStorage *)self _syncSetDataSourceValue:0 forKey:v6];
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)setValueForKey:(id)a3 removingKeys:(id)a4 systemCommissionerFabric:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v91 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([HMMTRStorage shouldIgnoreWritesForKey:v10])
  {
LABEL_5:
    v18 = 1;
    goto LABEL_6;
  }

  if ([(HMMTRStorage *)self isLocalStorageMode])
  {
    v13 = [(HMMTRStorage *)self localStorage];
    v14 = [v13 objectForKeyedSubscript:v10];
    v15 = v12[2](v12, v14);
    v16 = [(HMMTRStorage *)self localStorage];
    [v16 setObject:v15 forKeyedSubscript:v10];

    if (v11)
    {
      v17 = [(HMMTRStorage *)self localStorage];
      [v17 removeObjectsForKeys:v11];
    }

    goto LABEL_5;
  }

  if (v7)
  {
    v21 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v22 = [v21 storedValueForKey:v10];
    v23 = v12[2](v12, v22);

    v24 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v81 = 0;
    v63 = v23;
    LOBYTE(v22) = [v24 setStoredValue:v23 forKey:v10 error:&v81];
    v25 = v81;

    v68 = v22;
    if ((v22 & 1) == 0)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v29;
        v84 = 2112;
        v85 = v25;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to System Commissioner storage with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }

    v62 = v25;
    v65 = v10;
    v66 = v12;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v64 = v11;
    obj = v11;
    v30 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v78;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v78 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v77 + 1) + 8 * i);
          v35 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
          v76 = 0;
          v36 = [v35 removeStoredValueForKey:v34 error:&v76];
          v37 = v76;

          v38 = objc_autoreleasePoolPush();
          v39 = self;
          v40 = HMFGetOSLogHandle();
          v41 = v40;
          if (v36)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v83 = v42;
              v84 = 2112;
              v85 = v34;
              _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Removal of %@ requested from keychain store", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v43 = HMFGetLogIdentifier();
              *buf = 138543874;
              v83 = v43;
              v84 = 2112;
              v85 = v34;
              v86 = 2112;
              v87 = v37;
              _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove key %@ from System Commissioner storage with error %@", buf, 0x20u);
            }

            v68 = 0;
          }

          objc_autoreleasePoolPop(v38);
        }

        v31 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v31);
    }

    v11 = v64;
    v10 = v65;
    v12 = v66;
    v18 = v68;
  }

  else
  {
    v44 = [(HMMTRStorage *)self dataSource];
    if (v44)
    {
      if ([(HMMTRStorage *)self isResidentDevice]&& [HMMTRStorage isMemoryStorageKey:v10])
      {
        v45 = [(HMMTRStorage *)self inMemoryStorage];
        v46 = [v45 objectForKeyedSubscript:v10];
        v47 = v12[2](v12, v46);
        v48 = [(HMMTRStorage *)self inMemoryStorage];
        [v48 setObject:v47 forKeyedSubscript:v10];

        if (v11)
        {
          v49 = [(HMMTRStorage *)self inMemoryStorage];
          [v49 removeObjectsForKeys:v11];
        }

        v18 = 1;
      }

      else
      {
        v75 = 0;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __75__HMMTRStorage_setValueForKey_removingKeys_systemCommissionerFabric_block___block_invoke;
        v71[3] = &unk_2786F0E58;
        v67 = v12;
        v74 = v12;
        v50 = v10;
        v72 = v50;
        v51 = v11;
        v73 = v51;
        v52 = [(HMMTRStorage *)self _syncSetDataSourceValuesWithError:&v75 block:v71];
        v53 = v75;
        v69 = v52;
        if (v52)
        {

          v54 = objc_autoreleasePoolPush();
          v55 = self;
          v56 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543874;
            v83 = v57;
            v84 = 2112;
            v85 = v50;
            v86 = 2112;
            v87 = v51;
            _os_log_impl(&dword_22AEAE000, v56, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store for added key = %@, removed keys %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v54);
        }

        else
        {
          v58 = objc_autoreleasePoolPush();
          v59 = self;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = HMFGetLogIdentifier();
            *buf = 138544130;
            v83 = v61;
            v84 = 2112;
            v85 = v50;
            v86 = 2112;
            v87 = v51;
            v88 = 2112;
            v89 = v53;
            _os_log_impl(&dword_22AEAE000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store for added key = %@, removed keys = %@ with error %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v58);
        }

        v12 = v67;
        v18 = v69;
      }
    }

    else
    {
      v18 = 0;
    }
  }

LABEL_6:

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

uint64_t __75__HMMTRStorage_setValueForKey_removingKeys_systemCommissionerFabric_block___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 copy];
  v8 = a1[6];
  v9 = [v5 objectForKeyedSubscript:a1[4]];
  v10 = (*(v8 + 16))(v8, v9);

  if (!v10)
  {
    [v6 addObject:a1[4]];
  }

  [v5 setObject:v10 forKeyedSubscript:a1[4]];
  if (a1[5])
  {
    [v5 removeObjectsForKeys:?];
    [v6 addObjectsFromArray:a1[5]];
  }

  v11 = HMFEqualObjects();

  return v11 ^ 1u;
}

- (id)valueForKey:(id)a3 systemCommissionerFabric:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([HMMTRStorage shouldIgnoreWritesForKey:v6])
  {
LABEL_2:
    v7 = 0;
    goto LABEL_16;
  }

  if ([(HMMTRStorage *)self isLocalStorageMode]&& [(HMMTRStorage *)self isSystemCommissionerFabric]== v4)
  {
    v8 = [(HMMTRStorage *)self localStorage];
    v9 = [v8 valueForKey:v6];
  }

  else if (v4)
  {
    v8 = [(HMMTRStorage *)self systemCommissionerKeyValueStore];
    v9 = [v8 storedValueForKey:v6];
  }

  else
  {
    v10 = [(HMMTRStorage *)self fabricID];

    if (!v10)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [(HMMTRStorage *)v17 fabricUUID];
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not reading because fabricID is not yet defined for target fabric %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_2;
    }

    v11 = [(HMMTRStorage *)self inMemoryStorage];
    v8 = [v11 objectForKeyedSubscript:v6];

    if (![(HMMTRStorage *)self isResidentDevice]|| !v8 || ![HMMTRStorage isMemoryStorageKey:v6])
    {
      v12 = [(HMMTRStorage *)self fabricDataSource];
      v13 = [v12 keyValueStore];
      v7 = [v13 objectForKeyedSubscript:v6];

      goto LABEL_15;
    }

    v9 = v8;
  }

  v7 = v9;
LABEL_15:

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)removeValueForKey:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(HMMTRStorage *)self removeValueForKey:v4 systemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];

  return self;
}

- (BOOL)setValueForKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOBYTE(self) = [(HMMTRStorage *)self setValueForKey:v7 value:v6 systemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];

  return self;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRStorage *)self valueForKey:v4 systemCommissionerFabric:[(HMMTRStorage *)self isSystemCommissionerFabric]];

  return v5;
}

- (BOOL)setStorageData:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [a3 base64EncodedStringWithOptions:0];
  LOBYTE(self) = [(HMMTRStorage *)self setValueForKey:v6 value:v7];

  return self;
}

- (id)storageDataForKey:(id)a3
{
  v3 = [(HMMTRStorage *)self valueForKey:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ipkForTargetFabricUUID:(id)a3 forPairing:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6 || (-[HMMTRStorage dataSource](self, "dataSource"), v7 = objc_claimAutoreleasedReturnValue(), [v7 storageDataSourceForFabricUUID:v6], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@Fabric data source not available; failed to get ipk for fabric %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v8 = 0;
LABEL_9:
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v4)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Generating new IPK for fabric %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = +[HMMTRStorage generateIPK];
      if (v21)
      {
        v11 = v21;
        goto LABEL_20;
      }

      v16 = objc_autoreleasePoolPush();
      v24 = v17;
      v19 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v22 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v6;
      v23 = "%{public}@FATAL Error: Failed to generate IPK for fabric %@";
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        objc_autoreleasePoolPop(v16);
        v11 = 0;
        goto LABEL_20;
      }

      v22 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v6;
      v23 = "%{public}@IPK missing for fabric %@";
    }

    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, v23, &v27, 0x16u);

    goto LABEL_19;
  }

  v9 = [v8 keyValueStore];
  v10 = [v9 objectForKeyedSubscript:@"IPK"];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v10 options:0];

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_20:

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)syncDataSourceDictionary:(id)a3 forFabric:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 allKeys];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v30 = 1;
  v13 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v13);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke;
  v22 = &unk_2786F0E08;
  objc_copyWeak(&v27, &location);
  v23 = v9;
  v14 = v6;
  v24 = v14;
  v15 = v7;
  v25 = v15;
  v26 = buf;
  [v13 addExecutionBlock:&v19];
  v16 = [(HMMTRStorage *)v9 keyValueStoreUpdateQueue:v19];
  [v16 addOperation:v13];

  [v13 waitUntilFinished];
  LOBYTE(v16) = *(*&buf[8] + 24);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) allKeys];
    *buf = 138543618;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 48) fabricID];

  if (v8)
  {
    v9 = [*(a1 + 32) dataSource];
    v10 = [*(a1 + 48) targetFabricUUID];
    v11 = [v9 storageDataSourceForFabricUUID:v10];

    if (v11)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke_123;
      v22[3] = &unk_2786F0DB8;
      v23 = *(a1 + 40);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke_2;
      v19[3] = &unk_2786F0D68;
      v12 = *(a1 + 56);
      v19[4] = *(a1 + 32);
      v21 = v12;
      v20 = WeakRetained;
      [v11 updateKeyValueStoreWithBlock:v22 completion:v19];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [*(a1 + 48) fabricID];
        *buf = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@Fabric data source for fabric ID %@ is not available yet; cannot update storage", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [WeakRetained finish];
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    [WeakRetained finish];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __51__HMMTRStorage_syncDataSourceDictionary_forFabric___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store with error %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 40) finish];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_syncSetDataSourceDictionary:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 allKeys];
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v21 = 1;
  v10 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke;
  v15[3] = &unk_2786F0DE0;
  objc_copyWeak(&v18, &location);
  v15[4] = v6;
  v11 = v4;
  v16 = v11;
  v17 = buf;
  [v10 addExecutionBlock:v15];
  v12 = [(HMMTRStorage *)v6 keyValueStoreUpdateQueue];
  [v12 addOperation:v10];

  [v10 waitUntilFinished];
  LOBYTE(v12) = *(*&buf[8] + 24);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) allKeys];
    *buf = 138543618;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source value for keys: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 32) fabricID];

  if (!v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_12:
    [WeakRetained finish];
    goto LABEL_13;
  }

  v9 = [*(a1 + 32) fabricDataSource];

  if (!v9)
  {
    v10 = [*(a1 + 32) dataSource];
    v11 = [*(a1 + 32) fabricUUID];
    v12 = [v10 storageDataSourceForFabricUUID:v11];
    [*(a1 + 32) setFabricDataSource:v12];
  }

  v13 = [*(a1 + 32) fabricDataSource];

  if (!v13)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) fabricID];
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Fabric data source for fabric ID %@ is not available yet; cannot update storage", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_12;
  }

  v14 = [*(a1 + 32) fabricDataSource];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke_122;
  v25[3] = &unk_2786F0DB8;
  v26 = *(a1 + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke_2;
  v22[3] = &unk_2786F0D68;
  v15 = *(a1 + 48);
  v22[4] = *(a1 + 32);
  v24 = v15;
  v23 = WeakRetained;
  [v14 updateKeyValueStoreWithBlock:v25 completion:v22];

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
}

void __45__HMMTRStorage__syncSetDataSourceDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store with error %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 40) finish];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeAllDataSourceData
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Queueing remove all data source data", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x2020000000;
  v21 = 1;
  v7 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v7);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __40__HMMTRStorage__removeAllDataSourceData__block_invoke;
  v14 = &unk_2786F0D90;
  objc_copyWeak(&v17, &location);
  v15 = v4;
  p_buf = &buf;
  [v7 addExecutionBlock:&v11];
  v8 = [(HMMTRStorage *)v4 keyValueStoreUpdateQueue:v11];
  [v8 addOperation:v7];

  [v7 waitUntilFinished];
  LOBYTE(v8) = *(*(&buf + 1) + 24);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

void __40__HMMTRStorage__removeAllDataSourceData__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing all data source data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [*(a1 + 32) fabricID];

  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v19;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Expecting fabric ID to be present when data source is removed", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v8 = [*(a1 + 32) fabricDataSource];

  if (!v8)
  {
    v9 = [*(a1 + 32) dataSource];
    v10 = [*(a1 + 32) fabricUUID];
    v11 = [v9 storageDataSourceForFabricUUID:v10];
    [*(a1 + 32) setFabricDataSource:v11];
  }

  v12 = [*(a1 + 32) fabricDataSource];

  if (!v12)
  {
    v16 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 32) fabricID];
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@Fabric data source for fabric ID %@ is not available yet; cannot remove data from storage", buf, 0x16u);
    }

LABEL_14:
    objc_autoreleasePoolPop(v16);
    [WeakRetained finish];
    goto LABEL_15;
  }

  v13 = [*(a1 + 32) fabricDataSource];
  v14 = [MEMORY[0x277CBEAC0] dictionary];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__HMMTRStorage__removeAllDataSourceData__block_invoke_121;
  v25[3] = &unk_2786F0D68;
  v15 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v27 = v15;
  v26 = WeakRetained;
  [v13 updateKeyValueStore:v14 completion:v25];

LABEL_15:
  v24 = *MEMORY[0x277D85DE8];
}

void __40__HMMTRStorage__removeAllDataSourceData__block_invoke_121(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove key-value store: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Successfully removed all keys from key-value store", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  [*(a1 + 40) finish];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_syncSetDataSourceValuesWithError:(id *)a3 block:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source values", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12349;
  v25 = __Block_byref_object_dispose__12350;
  v26 = 0;
  v11 = objc_alloc_init(MEMORY[0x277D0F780]);
  objc_initWeak(&location, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke;
  v17[3] = &unk_2786F0D40;
  objc_copyWeak(&v20, &location);
  v17[4] = v8;
  v12 = v6;
  v18 = v12;
  p_buf = &buf;
  [v11 addExecutionBlock:v17];
  v13 = [(HMMTRStorage *)v8 keyValueStoreUpdateQueue];
  [v13 addOperation:v11];

  [v11 waitUntilFinished];
  if (a3)
  {
    *a3 = *(*(&buf + 1) + 40);
  }

  v14 = *(*(&buf + 1) + 40) == 0;

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source values", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [*(a1 + 32) fabricUUID];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [*(a1 + 32) fabricDataSource];

  if (!v8)
  {
    v9 = [*(a1 + 32) dataSource];
    v10 = [*(a1 + 32) fabricUUID];
    v11 = [v9 storageDataSourceForFabricUUID:v10];
    [*(a1 + 32) setFabricDataSource:v11];
  }

  v12 = [*(a1 + 32) fabricDataSource];

  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) fabricID];
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Fabric data source for fabric ID %@ is not available yet", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
LABEL_11:
    [WeakRetained finish];
    goto LABEL_12;
  }

  v13 = [*(a1 + 32) fabricDataSource];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke_118;
  v21[3] = &unk_2786F0D18;
  v14 = *(a1 + 40);
  v23 = *(a1 + 48);
  v22 = WeakRetained;
  [v13 updateKeyValueStoreWithBlock:v14 completion:v21];

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
}

void __56__HMMTRStorage__syncSetDataSourceValuesWithError_block___block_invoke_118(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) finish];
}

- (BOOL)_syncSetDataSourceValue:(id)a3 forKey:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v11;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Queueing sync set data source values for key: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v29 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__HMMTRStorage__syncSetDataSourceValue_forKey___block_invoke;
  v26[3] = &unk_2786F0CF0;
  v26[4] = v9;
  v12 = v7;
  v27 = v12;
  v13 = v6;
  v28 = v13;
  v14 = [(HMMTRStorage *)v9 _syncSetDataSourceValuesWithError:&v29 block:v26];
  v15 = v29;
  if (v14)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully updated key-value store for key = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  else
  {

    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v31 = v23;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to update key-value store for key = %@ with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __47__HMMTRStorage__syncSetDataSourceValue_forKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v22 = 138543618;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Setting data source value for key: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v13 = *(a1 + 48);
  v14 = HMFEqualObjects();
  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      v22 = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping write for key %@ as new value is same as existing", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    [v5 setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
    if (!*(a1 + 48))
    {
      [v6 addObject:*(a1 + 40)];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14 ^ 1u;
}

- (void)clearStaleItems
{
  v3 = [(HMMTRStorage *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMMTRStorage_clearStaleItems__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __31__HMMTRStorage_clearStaleItems__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fabricDataSource];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) fabricDataSource];
    v5 = [v4 keyValueStore];

    if (v5)
    {
      v6 = [*(a1 + 32) fabricDataSource];
      v7 = [v6 keyValueStore];
      v8 = [v7 valueForKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex"];

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v25 = v12;
          _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Storage for Apple Home fabric contains System Commissioner Fabric ID. Cleaning it up", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        [*(a1 + 32) _syncSetDataSourceValue:0 forKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex"];
        v13 = [*(a1 + 32) systemCommissionerKeyValueStore];
        v14 = [v13 storedValueForKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex"];

        if (!v14)
        {
          v15 = [*(a1 + 32) systemCommissionerKeyValueStore];
          v23 = 0;
          v16 = [v15 setStoredValue:v8 forKey:@"HMD.MTRPlugin.MTS.SystemCommissionerFabricIndex" error:&v23];
          v17 = v23;

          if ((v16 & 1) == 0)
          {
            v18 = objc_autoreleasePoolPush();
            v19 = *(a1 + 32);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = HMFGetLogIdentifier();
              *buf = 138543618;
              v25 = v21;
              v26 = 2112;
              v27 = v17;
              _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to write to System Commissioner fabric ID with error %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v18);
          }
        }
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_setPreferencesValueForKey:(id)a3 value:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Setting preferences value for key: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  CFPreferencesSetAppValue(v6, v7, *MEMORY[0x277CBF028]);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_preferencesValueForKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, *MEMORY[0x277CBF028]);

  return v3;
}

- (BOOL)isResidentDevice
{
  v2 = [(HMMTRStorage *)self dataSource];
  v3 = [v2 currentFabricUUID];
  v4 = v3 != 0;

  return v4;
}

- (HMMTRStorage)initWithQueue:(id)a3 dataSource:(id)a4 systemCommissionerFabric:(BOOL)a5 fabricUUID:(id)a6 sharedAdmin:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v30.receiver = self;
  v30.super_class = HMMTRStorage;
  v16 = [(HMMTRStorage *)&v30 init];
  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
    keyValueStoreUpdateQueue = v16->_keyValueStoreUpdateQueue;
    v16->_keyValueStoreUpdateQueue = v17;

    [(NSOperationQueue *)v16->_keyValueStoreUpdateQueue setMaxConcurrentOperationCount:1];
    v19 = [MEMORY[0x277CBEB38] dictionary];
    localStorage = v16->_localStorage;
    v16->_localStorage = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    inMemoryStorage = v16->_inMemoryStorage;
    v16->_inMemoryStorage = v21;

    v23 = objc_alloc_init(MEMORY[0x277CD55A8]);
    systemCommissionerKeyValueStore = v16->_systemCommissionerKeyValueStore;
    v16->_systemCommissionerKeyValueStore = v23;

    objc_storeStrong(&v16->_workQueue, a3);
    v16->_sharedAdmin = a7;
    objc_storeWeak(&v16->_dataSource, v14);
    v16->_systemCommissionerFabric = a5;
    objc_storeStrong(&v16->_fabricUUID, a6);
    if (v15)
    {
      v25 = [v14 fabricIDFromFabricUUID:v15];
      fabricID = v16->_fabricID;
      v16->_fabricID = v25;

      v27 = [v14 storageDataSourceForFabricUUID:v15];
      fabricDataSource = v16->_fabricDataSource;
      v16->_fabricDataSource = v27;
    }
  }

  return v16;
}

+ (BOOL)didUpdateMatterItems:(id)a3 oldStorage:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (isFeatureMatterLocalFabricConfigEnabled())
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v5 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          if (![HMMTRStorage isPluginKey:v13]&& ![HMMTRStorage isMatterKey:v13])
          {
            v14 = [v5 objectForKeyedSubscript:v13];
            v15 = [v6 objectForKeyedSubscript:v13];
            if (![v14 isEqual:v15])
            {
LABEL_24:
              NSLog(&cfstr_StorageKeyHasC.isa, v13);
              LOBYTE(v7) = 1;
              goto LABEL_25;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = MEMORY[0x277CBEB58];
    v17 = [v5 allKeys];
    v8 = [v16 setWithArray:v17];

    v18 = MEMORY[0x277CBEB58];
    v19 = [v6 allKeys];
    v20 = [v18 setWithArray:v19];

    [v20 minusSet:v8];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v20;
    v7 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v7)
    {
      v21 = *v26;
      while (2)
      {
        for (j = 0; j != v7; ++j)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v13 = *(*(&v25 + 1) + 8 * j);
          if (![HMMTRStorage isPluginKey:v13])
          {
            v14 = v15;
            goto LABEL_24;
          }
        }

        v7 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = v15;
LABEL_25:
  }

  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68_12373 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68_12373, &__block_literal_global_149);
  }

  v3 = logCategory__hmf_once_v69_12374;

  return v3;
}

uint64_t __27__HMMTRStorage_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v69_12374;
  logCategory__hmf_once_v69_12374 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)generateIPK
{
  v6 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:16];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)checkAndUpdateExpiryOfCertificate:(id)a3 keyPair:(id)a4 newCertificate:(id *)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277CD5230] keypair:v9 matchesCertificate:v8])
  {
    v10 = [MEMORY[0x277CD5230] convertX509Certificate:v8];
    v11 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v10];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 notAfter];
      v14 = [MEMORY[0x277CBEAA8] distantFuture];
      v15 = [v13 isEqualToDate:v14];

      if (v15)
      {
        v16 = v12;
        v17 = objc_autoreleasePoolPush();
        v18 = a1;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v12 notAfter];
          [MEMORY[0x277CBEAA8] distantFuture];
          v23 = v22 = v10;
          *buf = 138543874;
          v60 = v20;
          v61 = 2112;
          v62 = v21;
          v63 = 2112;
          v64 = v23;
          _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Certificate expires in distant future. No update needed %@ vs %@", buf, 0x20u);

          v10 = v22;
        }

        objc_autoreleasePoolPop(v17);
        v24 = 0;
        v12 = v16;
      }

      else
      {
        v56 = v10;
        v33 = objc_alloc(MEMORY[0x277CCA970]);
        v34 = [v12 notBefore];
        v35 = [MEMORY[0x277CBEAA8] distantFuture];
        v57 = a5;
        v36 = [v33 initWithStartDate:v34 endDate:v35];

        v37 = MEMORY[0x277CD5230];
        v38 = [v12 issuer];
        v39 = [v38 rootCACertificateID];
        v55 = v12;
        v40 = [v12 issuer];
        v41 = [v40 fabricID];
        v58 = 0;
        v42 = [v37 createRootCertificate:v9 issuerID:v39 fabricID:v41 validityPeriod:v36 error:&v58];
        v54 = v58;
        v43 = v42;
        *v57 = v42;

        v44 = *v57;
        v24 = *v57 != 0;
        v45 = objc_autoreleasePoolPush();
        v46 = a1;
        v47 = HMFGetOSLogHandle();
        v48 = v47;
        if (v44)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v49;
            v61 = 2112;
            v62 = v36;
            _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_INFO, "%{public}@Successfully re-created certificate with new validity %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v45);
          [MEMORY[0x277CD5230] printX509Certificate:*v57];
          v50 = v54;
        }

        else
        {
          v50 = v54;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543874;
            v60 = v51;
            v61 = 2112;
            v62 = v36;
            v63 = 2112;
            v64 = v54;
            _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to re-create certificate with new validity %@ due to error %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v45);
        }

        v12 = v55;
        v10 = v56;
      }
    }

    else
    {
      [MEMORY[0x277CD5230] printX509Certificate:v8];
      v29 = objc_autoreleasePoolPush();
      v30 = a1;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v60 = v32;
        _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Couldn't extract certificate info", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v24 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CD5230] printX509Certificate:v8];
    v25 = objc_autoreleasePoolPush();
    v26 = a1;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v60 = v28;
      v61 = 2112;
      v62 = v9;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Certificate doesn't match key pair %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (unsigned)knownFabricInStorage:(id)a3 fabricID:(id)a4 keyPair:(id)a5 controllerNodeID:(id *)a6 rootCertificate:(id *)a7
{
  v87 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v65 = a4;
  v70 = a5;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v10 = [v9 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (!v11)
  {
    goto LABEL_53;
  }

  v12 = v11;
  v13 = *v77;
  v67 = v9;
  v72 = v10;
  v74 = *v77;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v77 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v76 + 1) + 8 * i);
      if ([v15 hasPrefix:@"f/"] && objc_msgSend(v15, "hasSuffix:", @"/r") && objc_msgSend(v15, "length") >= 5)
      {
        v16 = [v15 substringWithRange:{2, objc_msgSend(v15, "length") - 4}];
        if ([v16 length])
        {
          v17 = 0;
          do
          {
            v18 = [v16 characterAtIndex:v17];
            if ((v18 - 58) <= 0xFFF5u && (v18 - 65 > 0x25 || ((1 << (v18 - 65)) & 0x3F0000003FLL) == 0))
            {
              goto LABEL_38;
            }
          }

          while (++v17 < [v16 length]);
        }

        v75 = 0;
        v19 = [MEMORY[0x277CCAC80] scannerWithString:v16];
        v20 = [v19 scanHexInt:&v75];

        if ((v20 & 1) == 0)
        {
          _HMFPreconditionFailure();
        }

        v21 = [v9 objectForKeyedSubscript:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        if (!v23 || (v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v23 options:0]) == 0)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = a1;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v81 = v40;
            v82 = 1024;
            *v83 = v75;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r isn't base64 encoded", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v37);
          v10 = v72;
LABEL_38:

          v13 = v74;
          continue;
        }

        v25 = v24;
        v71 = [MEMORY[0x277CD5230] convertMatterCertificate:v24];
        if ([MEMORY[0x277CD5230] keypair:v70 matchesCertificate:?])
        {
          v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/n", v75];
          v26 = [v9 objectForKeyedSubscript:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          v68 = v28;
          if (v28 && (v29 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v28 options:0]) != 0)
          {
            v63 = v29;
            v66 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v29];
            v30 = [v66 subject];
            v31 = [v30 fabricID];

            v64 = v31;
            v62 = [v31 isEqual:v65];
            if (v62)
            {
              if (a6)
              {
                v32 = [v66 subject];
                v60 = [v32 nodeID];

                context = objc_autoreleasePoolPush();
                v33 = a1;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  v35 = HMFGetLogIdentifier();
                  *buf = 138544130;
                  v81 = v35;
                  v82 = 2112;
                  *v83 = v65;
                  *&v83[8] = 1024;
                  *&v83[10] = v75;
                  v84 = 2112;
                  v85 = v60;
                  _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Retrieved root cert for fabric ID %@ with fabric index 0x%x. Controller node ID is %@.", buf, 0x26u);
                }

                objc_autoreleasePoolPop(context);
                v36 = v60;
                *a6 = v36;

                v10 = v72;
              }

              if (a7)
              {
                *a7 = v71;
              }

              v59 = v75;
            }

            else
            {
              v50 = objc_autoreleasePoolPush();
              v51 = a1;
              v52 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                HMFGetLogIdentifier();
                v53 = contexta = v50;
                *buf = 138544130;
                v81 = v53;
                v82 = 1024;
                *v83 = v75;
                *&v83[4] = 2112;
                *&v83[6] = v64;
                v84 = 2112;
                v85 = v65;
                _os_log_impl(&dword_22AEAE000, v52, OS_LOG_TYPE_DEBUG, "%{public}@f/%x/n fabric ID %@ doesn't match fabric ID %@", buf, 0x26u);

                v50 = contexta;
              }

              objc_autoreleasePoolPop(v50);
              v10 = v72;
            }

            v45 = v62 ^ 1;
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = a1;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543874;
              v81 = v49;
              v82 = 1024;
              *v83 = v75;
              *&v83[4] = 1024;
              *&v83[6] = v75;
              _os_log_impl(&dword_22AEAE000, v48, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r doesn't have matching f/%x/n", buf, 0x18u);
            }

            objc_autoreleasePoolPop(v46);
            v45 = 1;
            v9 = v67;
            v10 = v72;
          }
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          v42 = a1;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543874;
            v81 = v44;
            v82 = 1024;
            *v83 = v75;
            *&v83[4] = 2112;
            *&v83[6] = v70;
            _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_DEBUG, "%{public}@f/%x/r doesn't match system commissioner keypair %@", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v41);
          v45 = 1;
          v9 = v67;
          v10 = v72;
        }

        v13 = v74;
        if ((v45 & 1) == 0)
        {
          goto LABEL_54;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v76 objects:v86 count:16];
  }

  while (v12);
LABEL_53:
  v59 = 0;
LABEL_54:

  v54 = *MEMORY[0x277D85DE8];
  return v59;
}

@end