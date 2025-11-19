@interface HMDResidentMesh
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDMessageDispatcher)messageDispatcher;
- (HMDResidentMesh)initWithHomeManager:(id)a3 residentEnabled:(BOOL)a4;
- (HMDResidentMeshMeshStorage)resident;
- (NSSet)activeRecordingSessionCameraUUIDs;
- (NSString)stateDump;
- (id)_activeRecordingSessionCameraUUIDs;
- (id)_addMeshStorageResidentDevice:(id)a3;
- (id)_addResidentStorageResidentDevice:(id)a3;
- (id)_meshStorageForDeviceIdentifier:(id)a3;
- (id)_meshStorageForResidentDevice:(id)a3;
- (id)_residentStorageForResidentDevice:(id)a3;
- (id)_stateDump;
- (id)cameraRecordingAnalysisNodesForCamera:(id)a3 pendingDecisionsByCameraUUIDByDeviceUUID:(id)a4;
- (id)messageDestination;
- (void)__deviceIsNotReachable:(id)a3;
- (void)__deviceIsReachable:(id)a3;
- (void)__deviceResidentChanged:(id)a3;
- (void)__rebuildResidents:(id)a3;
- (void)__residentDeviceAddedOrUpdatedNotification:(id)a3;
- (void)__residentDeviceRemovedNotification:(id)a3;
- (void)_buildResidentsWithElection:(id)a3 device:(id)a4;
- (void)_deviceIsNotReachable:(id)a3;
- (void)_handleAddUpdateOrReachabilityChangeForDevice:(id)a3;
- (void)_handleMeshUpdateMessage:(id)a3;
- (void)_handleMeshUpdateRequestMessage:(id)a3;
- (void)_handlePrimaryResidentChangedNotification:(id)a3;
- (void)_sendMessage:(id)a3 payload:(id)a4 target:(id)a5 force:(BOOL)a6 responseHandler:(id)a7;
- (void)_transmitCurrentDeviceMetricsToPrimaryResidentWithIsUrgent:(BOOL)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setMetricForCurrentDevice:(id)a3 withValue:(id)a4 isUrgent:(BOOL)a5;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDResidentMesh

- (HMDResidentMeshMeshStorage)resident
{
  WeakRetained = objc_loadWeakRetained(&self->_resident);

  return WeakRetained;
}

- (HMDMessageDispatcher)messageDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_messageDispatcher);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HMDResidentMesh_removeObserver___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __34__HMDResidentMesh_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__HMDResidentMesh_addObserver___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __31__HMDResidentMesh_addObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Registering %@ for resident mesh updates", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) observers];
  [v7 addObject:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDResidentMesh *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (NSString)stateDump
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__160007;
  v11 = __Block_byref_object_dispose__160008;
  v12 = 0;
  v3 = [(HMDResidentMesh *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__HMDResidentMesh_stateDump__block_invoke;
  v6[3] = &unk_27868A688;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__HMDResidentMesh_stateDump__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateDump];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_stateDump
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CCAB68] string];
  v53 = self;
  v5 = [(HMDResidentMesh *)self residents];
  v6 = [v5 count];

  if (v6)
  {
    [v4 appendString:@"mesh:\n"];
  }

  v56 = [(HMDResidentMesh *)v53 resident];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [(HMDResidentMesh *)v53 residents];
  v7 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v68;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v67 + 1) + 8 * i);
        v12 = [v11 residentDevice];
        v13 = [v12 device];

        v14 = [v13 identifier];
        v15 = [v13 name];
        [v4 appendFormat:@"    device: %@ / %@ / ", v14, v15];

        if (v11 == v56)
        {
          v16 = [(HMDResidentMesh *)v53 primaryResidentForHomes];
          if ([v16 count])
          {
            v17 = @"primary";
          }

          else
          {
            v17 = @"local";
          }

          [v4 appendString:v17];
        }

        else
        {
          [v4 appendString:@"remote"];
        }

        v18 = [v13 remoteDestinationString];
        [v4 appendFormat:@" / %@\n", v18];

        [v4 appendFormat:@"     generation: %lu\n", objc_msgSend(v11, "generationCount")];
        v19 = [v11 enabled];
        v20 = "YES";
        if (!v19)
        {
          v20 = "NO";
        }

        [v4 appendFormat:@"        enabled: %s\n", v20];
        v21 = [MEMORY[0x277CCAB68] string];
        [v21 appendFormat:@"{"];
        v22 = [v11 metrics];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __29__HMDResidentMesh__stateDump__block_invoke;
        v65[3] = &unk_278689790;
        v23 = v21;
        v66 = v23;
        [v22 enumerateKeysAndObjectsUsingBlock:v65];

        if ([v23 hasSuffix:{@", "}])
        {
          [v23 deleteCharactersInRange:{objc_msgSend(v23, "length") - 1, 1}];
        }

        [v23 appendFormat:@" }"];
        [v4 appendFormat:@"      Device metrics: %@ \n", v23];
      }

      v8 = [obj countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v8);
  }

  v24 = [(HMDResidentMesh *)v53 reachableAccessories];
  v25 = [v24 count];

  if (v25)
  {
    [v4 appendString:@"remote primary residents:\n"];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obja = [(HMDResidentMesh *)v53 reachableAccessories];
  v26 = [obja countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v62;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v62 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v30 = *(*(&v61 + 1) + 8 * j);
        v31 = [v30 residentDevice];
        v32 = [v31 device];
        v33 = [v32 identifier];
        v34 = [v31 device];
        v35 = [v34 name];
        [v4 appendFormat:@"    resident: %@ / %@ \n", v33, v35];

        v36 = [v30 transmitTimer];
        v37 = "YES";
        if (!v36)
        {
          v37 = "NO";
        }

        [v4 appendFormat:@"         pending: %s\n", v37];
      }

      v27 = [obja countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v27);
  }

  v38 = [(HMDResidentMesh *)v53 primaryResidentForHomes];
  v39 = [v38 count];

  if (v39)
  {
    [v4 appendString:@"primary resident for:\n"];
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v40 = [(HMDResidentMesh *)v53 primaryResidentForHomes];
  v41 = [v40 countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v58;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v57 + 1) + 8 * k) UUIDString];
        [v4 appendFormat:@"    %@\n", v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v57 objects:v71 count:16];
    }

    while (v42);
  }

  if (v56)
  {
    v46 = [(HMDResidentMesh *)v53 messageDispatcher];
    v47 = [v46 secureRemoteTransport];
    v48 = [v47 deviceMonitor];
    v49 = [v48 isReachable];

    if (v49)
    {
      goto LABEL_45;
    }

    v50 = @"we are about to go unreachable in the near future unless we get network back.";
  }

  else
  {
    v50 = @"we do not have a resident device (either not logged into iCloud or have reachability issues).";
  }

  [v4 appendString:v50];
LABEL_45:

  v51 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_transmitCurrentDeviceMetricsToPrimaryResidentWithIsUrgent:(BOOL)a3
{
  v30 = a3;
  v41 = *MEMORY[0x277D85DE8];
  v4 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [(HMDResidentMesh *)self homeManager];
  v6 = [v5 homes];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v33;
    *&v8 = 138543362;
    v29 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        if ([v12 isCurrentDeviceAvailableResident])
        {
          v13 = [v12 primaryResident];
          if (v13)
          {
            v14 = [(HMDResidentMesh *)self _addResidentStorageResidentDevice:v13];
            v15 = [v14 metrics];
            v16 = [(HMDResidentMesh *)self loadMetrics];
            [v15 addEntriesFromDictionary:v16];

            if (([v13 isCurrentDevice] & 1) == 0)
            {
              v17 = objc_autoreleasePoolPush();
              v18 = self;
              v19 = HMFGetOSLogHandle();
              v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
              if (v30)
              {
                if (v20)
                {
                  v21 = HMFGetLogIdentifier();
                  *buf = v29;
                  v37 = v21;
                  _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Immediately transmitting updated metrics", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v17);
                [v14 _transmitStatus:0];
              }

              else
              {
                if (v20)
                {
                  v27 = HMFGetLogIdentifier();
                  *buf = v29;
                  v37 = v27;
                  _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Scheduling transmission of updated metrics", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v17);
                [v14 _transmitAfter:10.0];
              }
            }
          }

          else
          {
            v22 = objc_autoreleasePoolPush();
            v23 = self;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              v26 = [v12 uuid];
              *buf = 138543618;
              v37 = v25;
              v38 = 2114;
              v39 = v26;
              _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Could not set metric for current device for home %{public}@: no primary resident", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v9);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setMetricForCurrentDevice:(id)a3 withValue:(id)a4 isUrgent:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HMDResidentMesh *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HMDResidentMesh_setMetricForCurrentDevice_withValue_isUrgent___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

uint64_t __64__HMDResidentMesh_setMetricForCurrentDevice_withValue_isUrgent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v14 = 138543874;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Setting local metric with key: %@, value: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) loadMetrics];
  [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

  v10 = [*(a1 + 32) loadMetrics];
  v11 = [*(a1 + 32) resident];
  [v11 setMetrics:v10];

  result = [*(a1 + 32) _transmitCurrentDeviceMetricsToPrimaryResidentWithIsUrgent:*(a1 + 56)];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_activeRecordingSessionCameraUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(HMDResidentMesh *)self residents];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) metrics];
        v10 = [v9 hmf_dictionaryForKey:@"recordingSessionSummaries"];

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __53__HMDResidentMesh__activeRecordingSessionCameraUUIDs__block_invoke;
        v14[3] = &unk_278689488;
        v14[4] = self;
        v15 = v4;
        [v10 enumerateKeysAndObjectsUsingBlock:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

void __53__HMDResidentMesh__activeRecordingSessionCameraUUIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse camera UUID string: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSSet)activeRecordingSessionCameraUUIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__160007;
  v11 = __Block_byref_object_dispose__160008;
  v12 = 0;
  v3 = [(HMDResidentMesh *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMDResidentMesh_activeRecordingSessionCameraUUIDs__block_invoke;
  v6[3] = &unk_27868A688;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__HMDResidentMesh_activeRecordingSessionCameraUUIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeRecordingSessionCameraUUIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)cameraRecordingAnalysisNodesForCamera:(id)a3 pendingDecisionsByCameraUUIDByDeviceUUID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessory];
  v9 = [v8 home];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(HMDResidentMesh *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke;
    block[3] = &unk_278689550;
    block[4] = self;
    v22 = v9;
    v23 = v6;
    v24 = v7;
    v12 = v10;
    v25 = v12;
    dispatch_sync(v11, block);

    v13 = v25;
    v14 = v12;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory or home reference was nil when determining camera recording analysis nodes", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

void __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) residents];
  v3 = [v2 mutableCopy];

  v4 = MEMORY[0x277CBEB98];
  v28 = a1;
  v5 = [*(a1 + 40) residentDeviceManager];
  v6 = [v5 availableResidentDevices];
  v7 = [v4 setWithArray:v6];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke_2;
  v35[3] = &unk_27867C000;
  v25 = v7;
  v36 = v25;
  v24 = [v3 indexesOfObjectsPassingTest:v35];
  [v3 removeObjectsAtIndexes:?];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v29 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v29)
  {
    v27 = *v32;
    do
    {
      v8 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v30 = [HMDCameraRecordingAnalysisNodeMetrics alloc];
        v10 = [v9 residentDevice];
        v11 = v28[6];
        v12 = v28[7];
        v13 = [v9 residentDevice];
        v14 = [v13 device];
        v15 = [v14 identifier];
        v16 = [v12 objectForKeyedSubscript:v15];
        v17 = [v9 metrics];
        v18 = [(HMDCameraRecordingAnalysisNodeMetrics *)v30 initWithResidentDevice:v10 cameraProfile:v11 pendingDecisionsByCameraUUID:v16 metrics:v17];

        v19 = v28[8];
        v20 = [HMDCameraRecordingAnalysisNode alloc];
        v21 = [v9 residentDevice];
        v22 = [(HMDCameraRecordingAnalysisNode *)v20 initWithResidentDevice:v21 metrics:v18];
        [v19 addObject:v22];

        ++v8;
      }

      while (v29 != v8);
      v29 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v29);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __98__HMDResidentMesh_cameraRecordingAnalysisNodesForCamera_pendingDecisionsByCameraUUIDByDeviceUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 residentDevice];
  if ([v4 containsObject:v5])
  {
    v6 = [v3 residentDevice];
    v7 = [v6 capabilities];
    v8 = [v7 supportsCameraRecording] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_handleMeshUpdateMessage:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 numberForKey:@"kMeshVersion"];
  if ([v6 unsignedIntegerValue] == 2)
  {
    v7 = [v4 uuidForKey:@"kMeshDevice"];
    v8 = [(HMDResidentMesh *)self _meshStorageForDeviceIdentifier:v7];
    if (v8)
    {
      v34 = v6;
      v9 = [v4 numberForKey:@"kMeshDeviceStorageGenerationCount"];
      [v8 setGenerationCount:{objc_msgSend(v9, "unsignedIntegerValue")}];

      v10 = [v4 numberForKey:@"kMeshDeviceStorageEnabled"];
      [v8 setEnabled:{objc_msgSend(v10, "BOOLValue")}];

      v11 = [v4 dictionaryForKey:@"kMeshDeviceStorageSystemLoad"];
      [v8 setMetrics:v11];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v12 = [(HMDResidentMesh *)self observers];
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            v18 = [(HMDResidentMesh *)self _activeRecordingSessionCameraUUIDs];
            [v17 residentMeshDidUpdate:self activeRecordingSessionCameraUUIDs:v18];
          }

          v14 = [v12 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v14);
      }

      v39 = @"kMeshDeviceStorageEnabled";
      v19 = MEMORY[0x277CCABB0];
      v20 = [(HMDResidentMesh *)self resident];
      v21 = [v19 numberWithBool:{objc_msgSend(v20, "enabled")}];
      v40 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [v4 respondWithPayload:v22];

      v6 = v34;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v4 shortDescription];
        *buf = 138543874;
        v43 = v31;
        v44 = 2114;
        v45 = v32;
        v46 = 2114;
        v47 = v7;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message %{public}@ from unknown device: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v20];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v4 shortDescription];
      *buf = 138544130;
      v43 = v26;
      v44 = 2112;
      v45 = v6;
      v46 = 2048;
      v47 = 2;
      v48 = 2114;
      v49 = v27;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message with version %@ lower than current version %ld: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v23);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v7];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_handleMeshUpdateRequestMessage:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 numberForKey:@"kMeshVersion"];
  if ([v6 unsignedIntegerValue] == 2)
  {
    v7 = [v4 uuidForKey:@"kMeshDevice"];
    v8 = [(HMDResidentMesh *)self _meshStorageForDeviceIdentifier:v7];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v4 shortDescription];
        *buf = 138543618;
        v30 = v13;
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Responding to mesh update request message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "enabled", @"kMeshDeviceStorageEnabled"}];
      v28[0] = v15;
      v27[1] = @"kMeshDeviceStorageGenerationCount";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "generationCount")}];
      v28[1] = v16;
      v27[2] = @"kMeshDeviceStorageSystemLoad";
      v17 = [v8 metrics];
      v28[2] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
      [v4 respondWithPayload:v18];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v4 shortDescription];
        *buf = 138543874;
        v30 = v24;
        v31 = 2114;
        v32 = v25;
        v33 = 2114;
        v34 = v7;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message %{public}@ from unknown device: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v15];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 shortDescription];
      *buf = 138544130;
      v30 = v22;
      v31 = 2112;
      v32 = v6;
      v33 = 2048;
      v34 = 2;
      v35 = 2114;
      v36 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message with version %@ lower than current version %ld: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v7];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessage:(id)a3 payload:(id)a4 target:(id)a5 force:(BOOL)a6 responseHandler:(id)a7
{
  v79 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a7;
  v11 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v12 = [(HMDResidentMesh *)self homeManager];
  v13 = [v12 homes];

  v14 = [v13 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v68;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v67 + 1) + 8 * i);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v20 = [v19 residentDeviceManager];
        v21 = [v20 availableResidentDevices];

        v22 = [v21 countByEnumeratingWithState:&v63 objects:v77 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v64;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v64 != v24)
              {
                objc_enumerationMutation(v21);
              }

              if ([*(*(&v63 + 1) + 8 * j) isCurrentDevice])
              {
                v16 = 1;
                goto LABEL_16;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v15 = [v13 countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  v26 = [(HMDResidentMesh *)self resident];
  v27 = v26;
  if ((v16 & 1) == 0 && !a6)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    v31 = v62;
    v33 = v59;
    v32 = v60;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v34;
      v73 = 2112;
      v74 = v62;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Suppressing message %@ because we are not a resident device.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v35 = v61;
    goto LABEL_36;
  }

  v31 = v62;
  v33 = v59;
  v32 = v60;
  if (!v60)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    v35 = v61;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v41;
      v73 = 2112;
      v74 = v62;
      v42 = "%{public}@Suppressing message %@ because target is nil.";
      goto LABEL_34;
    }

LABEL_35:

    objc_autoreleasePoolPop(v38);
    goto LABEL_36;
  }

  v35 = v61;
  if (!v26)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v41;
      v73 = 2112;
      v74 = v62;
      v42 = "%{public}@Suppressing message %@ because self.resident is nil.";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v36 = [v26 residentDevice];
  v37 = [v36 isEqual:v60];

  if (v37)
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v41;
      v73 = 2112;
      v74 = v62;
      v42 = "%{public}@Suppressing message %@ because we are the target.";
LABEL_34:
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEFAULT, v42, buf, 0x16u);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v58 = [HMDRemoteMessage messageWithName:v62 messagePayload:v61];
  v56 = [(HMDResidentMesh *)self messageTargetUUID];
  v44 = [v60 device];
  v45 = [v44 remoteDestinationString];

  v46 = objc_autoreleasePoolPush();
  v47 = self;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v54 = v45;
    v49 = v55 = v46;
    v50 = [v58 shortDescription];
    v51 = [v58 messagePayload];
    *buf = 138543874;
    v72 = v49;
    v73 = 2114;
    v74 = v50;
    v75 = 2112;
    v76 = v51;
    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ with payload: %@", buf, 0x20u);

    v46 = v55;
    v45 = v54;
  }

  objc_autoreleasePoolPop(v46);
  v52 = [(HMDResidentMesh *)v47 messageDispatcher];
  v53 = [(HMDResidentMesh *)v47 workQueue];
  [v52 sendSecureMessage:v58 target:v56 userID:v45 destination:v45 responseQueue:v53 responseHandler:v59];

LABEL_36:
  v43 = *MEMORY[0x277D85DE8];
}

- (id)_addResidentStorageResidentDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentMesh *)self _residentStorageForResidentDevice:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 device];
      v13 = [v12 shortDescription];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding resident device to residents list: %{public}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [[HMDResidentMeshResidentStorage alloc] initWithResidentDevice:v4 owner:v9];
    v14 = [(HMDResidentMesh *)v9 reachableAccessories];
    [v14 addObject:v7];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_residentStorageForResidentDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDResidentMesh *)self reachableAccessories];
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
        v10 = [v9 residentDevice];
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

- (id)_addMeshStorageResidentDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentMesh *)self _meshStorageForResidentDevice:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 device];
      v13 = [v12 shortDescription];
      v17 = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding resident device to mesh: %{public}@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [[HMDResidentMeshMeshStorage alloc] initWithResidentDevice:v4 owner:v9];
    v14 = [(HMDResidentMesh *)v9 residents];
    [v14 addObject:v7];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_meshStorageForDeviceIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(HMDResidentMesh *)self residents];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 residentDevice];
        v11 = [v10 device];
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_meshStorageForResidentDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMDResidentMesh *)self residents];
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
        v10 = [v9 residentDevice];
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

- (void)_buildResidentsWithElection:(id)a3 device:(id)a4
{
  v164 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [(HMDResidentMesh *)self homeManager];
  v12 = [v11 homes];

  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke;
  v150[3] = &unk_27867BF88;
  v13 = v9;
  v151 = v13;
  v14 = v10;
  v152 = v14;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v150];
  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_2;
  v147[3] = &unk_27867BF88;
  v15 = v13;
  v148 = v15;
  v149 = self;
  v104 = v12;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v147];
  v16 = [MEMORY[0x277CBEB58] set];
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_200;
  v143[3] = &unk_27867BFB0;
  v103 = v14;
  v144 = v103;
  v17 = v16;
  v145 = v17;
  v146 = self;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v143];
  v18 = [MEMORY[0x277CBEB58] set];
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_206;
  v137[3] = &unk_27867BFD8;
  v105 = v6;
  v138 = v105;
  v101 = v7;
  v139 = v101;
  v140 = self;
  v112 = v15;
  v141 = v112;
  v19 = v18;
  v142 = v19;
  v102 = v17;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v137];
  v20 = [(HMDResidentMesh *)self resident];
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v21 = [(HMDResidentMesh *)self residents];
  v22 = [v21 copy];

  v113 = self;
  obj = [v22 countByEnumeratingWithState:&v133 objects:v163 count:16];
  if (obj)
  {
    v23 = *v134;
    v108 = *v134;
    do
    {
      for (i = 0; i != obj; ++i)
      {
        if (*v134 != v23)
        {
          objc_enumerationMutation(v22);
        }

        v25 = *(*(&v133 + 1) + 8 * i);
        v26 = [v25 residentDevice];
        v27 = [v26 isCurrentDevice];

        if (v27)
        {
          if (([v25 isEqual:v20] & 1) == 0)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = self;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v31 = v110 = v20;
              v32 = [v25 residentDevice];
              [v32 device];
              v33 = v107 = v28;
              [v33 shortDescription];
              v34 = v22;
              v36 = v35 = v19;
              *buf = 138543618;
              v156 = v31;
              v157 = 2114;
              v158 = v36;
              _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Setting resident device to %{public}@", buf, 0x16u);

              v19 = v35;
              v22 = v34;

              v28 = v107;
              self = v113;

              v20 = v110;
            }

            objc_autoreleasePoolPop(v28);
            v23 = v108;
          }

          v37 = v25;

          v38 = [(HMDResidentMesh *)self loadMetrics];
          [v37 setMetrics:v38];

          [(HMDResidentMesh *)self setResident:v37];
          v20 = v37;
        }

        v39 = [v25 residentDevice];
        v40 = [v19 containsObject:v39];

        if ((v40 & 1) == 0)
        {
          v41 = [(HMDResidentMesh *)self residents];
          [v41 removeObject:v25];
        }
      }

      obj = [v22 countByEnumeratingWithState:&v133 objects:v163 count:16];
    }

    while (obj);
  }

  v111 = v20;

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v42 = [(HMDResidentMesh *)self reachableAccessories];
  v43 = [v42 copy];

  v44 = [v43 countByEnumeratingWithState:&v129 objects:v162 count:16];
  v45 = v112;
  if (v44)
  {
    v46 = v44;
    v47 = *v130;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v130 != v47)
        {
          objc_enumerationMutation(v43);
        }

        v49 = *(*(&v129 + 1) + 8 * j);
        v50 = [v49 residentDevice];
        v51 = [v19 containsObject:v50];

        if ((v51 & 1) == 0)
        {
          v52 = [(HMDResidentMesh *)self reachableAccessories];
          [v52 removeObject:v49];
        }
      }

      v46 = [v43 countByEnumeratingWithState:&v129 objects:v162 count:16];
    }

    while (v46);
  }

  v99 = v19;
  if ([v105 isEqual:@"HMDResidentDeviceManagerAddResidentNotification"])
  {
    v106 = 1;
  }

  else
  {
    v106 = [v105 isEqual:{@"HMDResidentDeviceManagerUpdateResidentNotification", v19, v101}];
  }

  v53 = [(HMDResidentMesh *)self primaryResidentForHomes];
  v54 = [v112 isSubsetOfSet:v53];

  if (!v54 || v106)
  {
    v55 = objc_autoreleasePoolPush();
    v56 = self;
    v57 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = HMFGetLogIdentifier();
      *buf = 138543362;
      v156 = v58;
      _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_INFO, "%{public}@Our primary residents list has new items (or some shift in devices happened):", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v55);
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    obja = v112;
    v59 = [obja countByEnumeratingWithState:&v125 objects:v161 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v126;
      do
      {
        v62 = 0;
        v109 = v60;
        do
        {
          if (*v126 != v61)
          {
            objc_enumerationMutation(obja);
          }

          v63 = *(*(&v125 + 1) + 8 * v62);
          v64 = objc_autoreleasePoolPush();
          v65 = v56;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = HMFGetLogIdentifier();
            [v63 UUIDString];
            v69 = v68 = v56;
            v70 = [(HMDResidentMesh *)v65 primaryResidentForHomes];
            v71 = [v70 containsObject:v63];
            *buf = 138543874;
            v72 = " (added)";
            if (v71)
            {
              v72 = "";
            }

            v156 = v67;
            v157 = 2114;
            v158 = v69;
            v159 = 2080;
            v160 = v72;
            _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@  Home: %{public}@%s", buf, 0x20u);

            v56 = v68;
            v60 = v109;

            self = v113;
          }

          objc_autoreleasePoolPop(v64);
          ++v62;
        }

        while (v60 != v62);
        v60 = [obja countByEnumeratingWithState:&v125 objects:v161 count:16];
      }

      while (v60);
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    objb = [(HMDResidentMesh *)v56 residents];
    v73 = [objb countByEnumeratingWithState:&v121 objects:v154 count:16];
    v74 = v111;
    v45 = v112;
    if (v73)
    {
      v75 = v73;
      v76 = *v122;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v122 != v76)
          {
            objc_enumerationMutation(objb);
          }

          v78 = *(*(&v121 + 1) + 8 * k);
          if (v74 != v78 && [*(*(&v121 + 1) + 8 * k) enabled])
          {
            v79 = [(HMDResidentMesh *)v56 updatedOrAddedDevices];
            v80 = [v78 residentDevice];
            v81 = [v80 device];
            v82 = v56;
            v83 = [v79 containsObject:v81];

            if (v83)
            {
              v84 = [(HMDResidentMesh *)v82 updatedOrAddedDevices];
              v85 = [v78 residentDevice];
              v86 = [v85 device];
              [v84 removeObject:v86];

              self = v113;
              v74 = v111;
              v56 = v82;
            }

            else
            {
              self = v113;
              v74 = v111;
              v56 = v82;
              if (v106)
              {
                continue;
              }
            }

            [v78 _requestStatus];
          }
        }

        v75 = [objb countByEnumeratingWithState:&v121 objects:v154 count:16];
      }

      while (v75);
    }
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v87 = [(HMDResidentMesh *)self primaryResidentForHomes];
  v88 = [v87 countByEnumeratingWithState:&v117 objects:v153 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v118;
    do
    {
      for (m = 0; m != v89; ++m)
      {
        if (*v118 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v117 + 1) + 8 * m);
        if (([v45 containsObject:v92] & 1) == 0)
        {
          v93 = objc_autoreleasePoolPush();
          v94 = self;
          v95 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            v96 = HMFGetLogIdentifier();
            v97 = [v92 UUIDString];
            *buf = 138543618;
            v156 = v96;
            v157 = 2114;
            v158 = v97;
            _os_log_impl(&dword_229538000, v95, OS_LOG_TYPE_INFO, "%{public}@  Home: %{public}@ (removed)", buf, 0x16u);

            self = v113;
          }

          objc_autoreleasePoolPop(v93);
          v45 = v112;
        }
      }

      v89 = [v87 countByEnumeratingWithState:&v117 objects:v153 count:16];
    }

    while (v89);
  }

  [(HMDResidentMesh *)self setPrimaryResidentForHomes:v45];
  v98 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 enabledResidents];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v14 + 1) + 8 * i) isCurrentDevice])
        {
          v9 = *(a1 + 32);
          v10 = [v3 uuid];
          [v9 addObject:v10];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *(a1 + 40);
  v12 = [v3 uuid];
  [v11 setObject:v4 forKeyedSubscript:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uuid];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 primaryResident];
    if (v6)
    {
      v7 = [*(a1 + 40) _addResidentStorageResidentDevice:v6];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v3 uuid];
        v14 = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Could not create resident storage for home %{public}@: no primary resident", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_200(id *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  [a1[5] addObjectsFromArray:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = a1[6];
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 na_map:&__block_literal_global_204];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Home %{public}@ may use devices: %{public}@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_206(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isEqual:@"HMDResidentDeviceManagerRemoveResidentNotification"])
  {
    v4 = [v3 device];
    v5 = [v4 isEqual:*(a1 + 40)];

    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 48);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v3 device];
        v11 = [v10 shortDescription];
        v21 = 138543618;
        v22 = v9;
        v23 = 2114;
        v24 = v11;
        v12 = "%{public}@Received a remove resident notification for device %{public}@";
LABEL_12:
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, v12, &v21, 0x16u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  if (![v3 isCurrentDevice])
  {
    v13 = [*(a1 + 48) messageDispatcher];
    v14 = [v13 secureRemoteTransport];
    v15 = [v14 deviceMonitor];
    v16 = [v15 unreachableDevices];
    v17 = [v3 device];
    v18 = [v16 containsObject:v17];

    if (v18)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 48);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v3 device];
        v11 = [v10 shortDescription];
        v21 = 138543618;
        v22 = v9;
        v23 = 2114;
        v24 = v11;
        v12 = "%{public}@Not adding unreachable device: %{public}@";
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_14:
    [*(a1 + 64) addObject:v3];
    v19 = [*(a1 + 48) _addMeshStorageResidentDevice:v3];
    goto LABEL_15;
  }

  if ([*(a1 + 56) count])
  {
    goto LABEL_14;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 48);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v3 device];
    v11 = [v10 shortDescription];
    v21 = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v11;
    v12 = "%{public}@Not adding the current device because it isn't a part of any homes: %{public}@";
    goto LABEL_12;
  }

LABEL_13:

  objc_autoreleasePoolPop(v6);
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_deviceIsNotReachable:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isCurrentDevice])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Our device lost visibility to the rest of the world. Setting timeout before pulling the plug.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = dispatch_time(0, 10000000000);
    v10 = [(HMDResidentMesh *)v6 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__HMDResidentMesh__deviceIsNotReachable___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v6;
    dispatch_after(v9, v10, block);
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = [(HMDResidentMesh *)self reachableAccessories];
    v12 = [v11 copy];

    v13 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          v18 = [v17 residentDevice];
          v19 = [v18 device];
          v20 = [v4 isEqual:v19];

          if (v20)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = self;
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = HMFGetLogIdentifier();
              v25 = [v4 shortDescription];
              *buf = 138543618;
              v58 = v24;
              v59 = 2114;
              v60 = v25;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Removed device %{public}@ from resident storage", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v21);
            v26 = [(HMDResidentMesh *)v22 reachableAccessories];
            [v26 removeObject:v17];

            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = [(HMDResidentMesh *)self residents];
    v28 = [v27 copy];

    v29 = [v28 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v47 + 1) + 8 * j);
          v34 = [v33 residentDevice];
          v35 = [v34 device];
          v36 = [v4 isEqual:v35];

          if (v36)
          {
            v37 = objc_autoreleasePoolPush();
            v38 = self;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v40 = HMFGetLogIdentifier();
              v41 = [v4 shortDescription];
              *buf = 138543618;
              v58 = v40;
              v59 = 2114;
              v60 = v41;
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Removed device %{public}@ from mesh storage", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v37);
            v42 = [(HMDResidentMesh *)v38 residents];
            [v42 removeObject:v33];

            v43 = [(HMDResidentMesh *)v38 updatedOrAddedDevices];
            v44 = [v33 residentDevice];
            v45 = [v44 device];
            [v43 removeObject:v45];

            goto LABEL_29;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __41__HMDResidentMesh__deviceIsNotReachable___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messageDispatcher];
  v3 = [v2 secureRemoteTransport];
  v4 = [v3 deviceMonitor];
  v5 = [v4 isReachable];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Nope, we came back.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost visibility to the rest of the world. Deconstructing the mesh entirely.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) setResident:0];
    v12 = [*(a1 + 32) residents];
    [v12 removeAllObjects];

    v13 = [*(a1 + 32) reachableAccessories];
    [v13 removeAllObjects];

    v14 = [MEMORY[0x277CBEB98] set];
    [*(a1 + 32) setPrimaryResidentForHomes:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleAddUpdateOrReachabilityChangeForDevice:(id)a3
{
  v6 = a3;
  if (([v6 isCurrentDevice] & 1) == 0)
  {
    v4 = [(HMDResidentMesh *)self updatedOrAddedDevices];
    [v4 addObject:v6];
  }

  v5 = [(HMDResidentMesh *)self devicesChangedTimer];
  [v5 resume];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentMesh *)self devicesChangedTimer];

  if (v6 == v4)
  {

    [(HMDResidentMesh *)self _buildResidentsWithElection:@"HMDResidentDeviceManagerAddResidentNotification" device:0];
  }
}

- (void)_handlePrimaryResidentChangedNotification:(id)a3
{
  v4 = [(HMDResidentMesh *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDResidentMesh__handlePrimaryResidentChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)__deviceResidentChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDResidentMesh___deviceResidentChanged___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__HMDResidentMesh___deviceResidentChanged___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_BOOLForKey:@"kResidentEnabledKey" isPresent:&v21];

  v4 = v21 ^ 1 | v3;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v8;
    v25 = 1024;
    v26 = v4 & 1;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that the current resident's enabled status is now %{BOOL}d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 40) resident];
  v10 = v9;
  if (v9)
  {
    [v9 setEnabled:v4 & 1];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [*(a1 + 40) reachableAccessories];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) _transmitStatus:1];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)__rebuildResidents:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HMDResidentMesh___rebuildResidents___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __38__HMDResidentMesh___rebuildResidents___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    v6 = [*(a1 + 32) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v3 = v7;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) name];
    v13 = [v3 identifier];
    v14 = [v13 UUIDString];
    v16 = 138543874;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v14;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Resident device changed (%{public}@ / %{public}@) notification.", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 40) _buildResidentsWithElection:0 device:0];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)__residentDeviceAddedOrUpdatedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDResidentMesh___residentDeviceAddedOrUpdatedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__HMDResidentMesh___residentDeviceAddedOrUpdatedNotification___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 32) name];
    v11 = [v5 identifier];
    v12 = [v11 UUIDString];
    v16 = 138543874;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device changed (%{public}@ / %{public}@) notification.", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *(a1 + 40);
  v14 = [v5 device];
  [v13 _handleAddUpdateOrReachabilityChangeForDevice:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)__residentDeviceRemovedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDResidentMesh___residentDeviceRemovedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__HMDResidentMesh___residentDeviceRemovedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [*(a1 + 32) name];
    v11 = [v5 device];
    v12 = [v11 identifier];
    v13 = [v12 UUIDString];
    v18 = 138543874;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device removed (%{public}@ / %{public}@) notification.", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) name];
  v16 = [v5 device];
  [v14 _buildResidentsWithElection:v15 device:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)__deviceIsNotReachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDResidentMesh___deviceIsNotReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__HMDResidentMesh___deviceIsNotReachable___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 identifier];
    v10 = [v9 UUIDString];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device %{public}@ is NOT reachable (notification)", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) _deviceIsNotReachable:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)__deviceIsReachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDResidentMesh___deviceIsReachable___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __39__HMDResidentMesh___deviceIsReachable___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 identifier];
    v10 = [v9 UUIDString];
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Device %{public}@ is reachable (notification)", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) _handleAddUpdateOrReachabilityChangeForDevice:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(HMDResidentMesh *)self messageDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = HMDResidentMesh;
  [(HMDResidentMesh *)&v5 dealloc];
}

- (HMDResidentMesh)initWithHomeManager:(id)a3 residentEnabled:(BOOL)a4
{
  v53[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v51.receiver = self;
  v51.super_class = HMDResidentMesh;
  v7 = [(HMDResidentMesh *)&v51 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] array];
    residents = v7->_residents;
    v7->_residents = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    reachableAccessories = v7->_reachableAccessories;
    v7->_reachableAccessories = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    loadMetrics = v7->_loadMetrics;
    v7->_loadMetrics = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    updatedOrAddedDevices = v7->_updatedOrAddedDevices;
    v7->_updatedOrAddedDevices = v14;

    objc_storeWeak(&v7->_homeManager, v6);
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"82455554-35AB-4772-B3A4-DCA0F933F5D3"];
    uuid = v7->_uuid;
    v7->_uuid = v16;

    v18 = [MEMORY[0x277CBEB98] set];
    primaryResidentForHomes = v7->_primaryResidentForHomes;
    v7->_primaryResidentForHomes = v18;

    v20 = HMDispatchQueueNameString();
    v21 = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(v21, v22);
    workQueue = v7->_workQueue;
    v7->_workQueue = v23;

    objc_storeWeak(&v7->_resident, 0);
    v25 = [v6 messageDispatcher];
    objc_storeWeak(&v7->_messageDispatcher, v25);
    v26 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v26;

    v28 = v7->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDResidentMesh_initWithHomeManager_residentEnabled___block_invoke;
    block[3] = &unk_278688650;
    v29 = v7;
    v49 = v29;
    v50 = a4;
    dispatch_sync(v28, block);
    v30 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:2.0];
    v31 = v29[8];
    v29[8] = v30;

    [v29[8] setDelegate:v29];
    [v29[8] setDelegateQueue:v7->_workQueue];
    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v29 selector:sel___residentDeviceAddedOrUpdatedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    v33 = [MEMORY[0x277CCAB98] defaultCenter];
    [v33 addObserver:v29 selector:sel___residentDeviceAddedOrUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v29 selector:sel___residentDeviceRemovedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    [v35 addObserver:v29 selector:sel___rebuildResidents_ name:@"HMDAccountAddedDeviceNotification" object:0];

    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 addObserver:v29 selector:sel___rebuildResidents_ name:@"HMDDeviceUpdatedNotification" object:0];

    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v29 selector:sel___rebuildResidents_ name:@"HMDAccountRemovedDeviceNotification" object:0];

    v38 = [MEMORY[0x277CCAB98] defaultCenter];
    [v38 addObserver:v29 selector:sel___deviceResidentChanged_ name:@"HMDHomeManagerResidentEnabledChangedNotification" object:0];

    v39 = [MEMORY[0x277CCAB98] defaultCenter];
    [v39 addObserver:v29 selector:sel__handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    v40 = [MEMORY[0x277CCAB98] defaultCenter];
    [v40 addObserver:v29 selector:sel___deviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

    v41 = [MEMORY[0x277CCAB98] defaultCenter];
    [v41 addObserver:v29 selector:sel___deviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    v42 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v42 setRequiresAccountMessage:1];
    [v42 setRequiresSecureMessage:1];
    [v42 setTransportRestriction:-1];
    v43 = [v42 copy];
    v53[0] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    [v25 registerForMessage:@"kDeviceMeshUpdateRequestKey" receiver:v29 policies:v44 selector:sel__handleMeshUpdateRequestMessage_];

    v52 = v43;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    [v25 registerForMessage:@"kDeviceMeshUpdateKey" receiver:v29 policies:v45 selector:sel__handleMeshUpdateMessage_];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v7;
}

void __55__HMDResidentMesh_initWithHomeManager_residentEnabled___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _buildResidentsWithElection:0 device:0];
  v2 = [*(a1 + 32) resident];
  v3 = v2;
  if (v2)
  {
    [v2 setEnabled:*(a1 + 40)];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@We do not have a current device (probably logged out from iCloud).", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t66 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t66, &__block_literal_global_284);
  }

  v3 = logCategory__hmf_once_v67;

  return v3;
}

void __30__HMDResidentMesh_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v67;
  logCategory__hmf_once_v67 = v1;
}

@end