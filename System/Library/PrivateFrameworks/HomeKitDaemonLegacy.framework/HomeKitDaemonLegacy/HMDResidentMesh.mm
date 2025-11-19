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
- (id)_residentMapForAccessories:(id)a3;
- (id)_residentStorageForResidentDevice:(id)a3;
- (id)_stateDump;
- (id)balancedResidentMapForAccessories:(id)a3;
- (id)bestResidentDeviceForAccessory:(id)a3;
- (id)cameraRecordingAnalysisNodesForCamera:(id)a3 pendingDecisionsByCameraUUIDByDeviceUUID:(id)a4;
- (id)deviceForAccessory:(id)a3 residentOrder:(unint64_t)a4 reachableResidents:(unint64_t *)a5;
- (id)messageDestination;
- (void)__accessoryDidUpdateSuspendedState:(id)a3;
- (void)__accessoryIsNotReachable:(id)a3;
- (void)__accessoryIsReachable:(id)a3;
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
- (void)_updateAccessoryLinkQuality;
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
  v7[3] = &unk_2797359B0;
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
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Registering %@ for resident mesh updates", &v9, 0x16u);
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
  v10 = __Block_byref_object_copy__106960;
  v11 = __Block_byref_object_dispose__106961;
  v12 = 0;
  v3 = [(HMDResidentMesh *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__HMDResidentMesh_stateDump__block_invoke;
  v6[3] = &unk_279734898;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __28__HMDResidentMesh_stateDump__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stateDump];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)_stateDump
{
  v140 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CCAB68] string];
  v91 = self;
  v5 = [(HMDResidentMesh *)self residents];
  v6 = [v5 count];

  if (v6)
  {
    [v4 appendString:@"mesh:\n"];
  }

  v100 = [(HMDResidentMesh *)v91 resident];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  obj = [(HMDResidentMesh *)v91 residents];
  v96 = [obj countByEnumeratingWithState:&v129 objects:v139 count:16];
  if (v96)
  {
    v93 = *v130;
    do
    {
      v7 = 0;
      do
      {
        if (*v130 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v129 + 1) + 8 * v7);
        v9 = [v8 residentDevice];
        v10 = [v9 device];

        v11 = [v10 identifier];
        v12 = [v10 name];
        [v4 appendFormat:@"    device: %@ / %@ / ", v11, v12];

        if (v8 == v100)
        {
          v13 = [(HMDResidentMesh *)v91 primaryResidentForHomes];
          if ([v13 count])
          {
            v14 = @"primary";
          }

          else
          {
            v14 = @"local";
          }

          [v4 appendString:v14];
        }

        else
        {
          [v4 appendString:@"remote"];
        }

        v101 = v7;
        v98 = v10;
        v15 = [v10 remoteDestinationString];
        [v4 appendFormat:@" / %@\n", v15];

        [v4 appendFormat:@"     generation: %lu\n", objc_msgSend(v8, "generationCount")];
        v16 = [v8 enabled];
        v17 = "YES";
        if (!v16)
        {
          v17 = "NO";
        }

        [v4 appendFormat:@"        enabled: %s\n", v17];
        [v4 appendString:@"      can reach:\n"];
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v18 = [v8 accessoryUUIDs];
        v19 = [v18 countByEnumeratingWithState:&v125 objects:v138 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v126;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v126 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [*(*(&v125 + 1) + 8 * i) UUIDString];
              [v4 appendFormat:@"           acc uuid: %@\n", v23];
            }

            v20 = [v18 countByEnumeratingWithState:&v125 objects:v138 count:16];
          }

          while (v20);
        }

        v24 = [v8 accessoryListWithLinkQuality];
        v25 = [v24 allKeys];
        v26 = [v25 sortedArrayUsingComparator:&__block_literal_global_282_106973];

        [v4 appendString:@"      HMDResidentMeshMeshStorage Accessories with Link Quality:\n"];
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v27 = v26;
        v28 = [v27 countByEnumeratingWithState:&v121 objects:v137 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v122;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v122 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v121 + 1) + 8 * j);
              v33 = [v8 accessoryListWithLinkQuality];
              v34 = [v33 objectForKey:v32];
              v35 = [v34 integerValue];
              v36 = @"*****";
              if ((v35 - 1) <= 4)
              {
                v36 = off_2797274B0[v35 - 1];
              }

              v37 = v36;
              [v4 appendFormat:@"          | Accessory: %@ | LinkQuality : %@ |\n", v32, v37];
            }

            v29 = [v27 countByEnumeratingWithState:&v121 objects:v137 count:16];
          }

          while (v29);
        }

        v38 = [MEMORY[0x277CCAB68] string];
        [v38 appendFormat:@"{"];
        v39 = [v8 metrics];
        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __29__HMDResidentMesh__stateDump__block_invoke_2;
        v119[3] = &unk_279735658;
        v40 = v38;
        v120 = v40;
        [v39 enumerateKeysAndObjectsUsingBlock:v119];

        if ([v40 hasSuffix:{@", "}])
        {
          [v40 deleteCharactersInRange:{objc_msgSend(v40, "length") - 1, 1}];
        }

        [v40 appendFormat:@" }"];
        [v4 appendFormat:@"      Device metrics: %@ \n", v40];

        v7 = v101 + 1;
      }

      while (v101 + 1 != v96);
      v96 = [obj countByEnumeratingWithState:&v129 objects:v139 count:16];
    }

    while (v96);
  }

  v41 = [(HMDResidentMesh *)v91 reachableAccessories];
  v42 = [v41 count];

  if (v42)
  {
    [v4 appendString:@"remote primary residents:\n"];
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v94 = [(HMDResidentMesh *)v91 reachableAccessories];
  v97 = [v94 countByEnumeratingWithState:&v115 objects:v136 count:16];
  if (v97)
  {
    v95 = *v116;
    do
    {
      v43 = 0;
      do
      {
        if (*v116 != v95)
        {
          objc_enumerationMutation(v94);
        }

        v99 = v43;
        v44 = *(*(&v115 + 1) + 8 * v43);
        v45 = [v44 residentDevice];
        v46 = [v45 device];
        v47 = [v46 identifier];
        v102 = v45;
        v48 = [v45 device];
        v49 = [v48 name];
        [v4 appendFormat:@"    resident: %@ / %@ \n", v47, v49];

        v50 = [v44 transmitTimer];
        v51 = "YES";
        if (!v50)
        {
          v51 = "NO";
        }

        [v4 appendFormat:@"         pending: %s\n", v51];

        [v4 appendFormat:@"       can reach:\n"];
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v52 = [v44 accessoryUUIDs];
        v53 = [v52 countByEnumeratingWithState:&v111 objects:v135 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v112;
          do
          {
            for (k = 0; k != v54; ++k)
            {
              if (*v112 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v57 = *(*(&v111 + 1) + 8 * k);
              v58 = [v100 residentDevice];
              if ([v102 isEqual:v58])
              {
                [v4 appendFormat:@"            acc uuid: %@%s\n", v57, ""];
              }

              else
              {
                v59 = [v44 lastSentAccessoryUUIDs];
                v60 = [v59 containsObject:v57];
                v61 = "";
                if (!v60)
                {
                  v61 = " (new)";
                }

                [v4 appendFormat:@"            acc uuid: %@%s\n", v57, v61];
              }
            }

            v54 = [v52 countByEnumeratingWithState:&v111 objects:v135 count:16];
          }

          while (v54);
        }

        v62 = [v44 accessoryListWithLinkQuality];
        v63 = [v62 allKeys];
        v64 = [v63 sortedArrayUsingComparator:&__block_literal_global_322];

        [v4 appendString:@"      HMDResidentMeshResidentStorage Accessories with Link Quality:\n"];
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v65 = v64;
        v66 = [v65 countByEnumeratingWithState:&v107 objects:v134 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v108;
          do
          {
            for (m = 0; m != v67; ++m)
            {
              if (*v108 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = *(*(&v107 + 1) + 8 * m);
              v71 = [v44 accessoryListWithLinkQuality];
              v72 = [v71 objectForKey:v70];
              v73 = [v72 integerValue];
              v74 = @"*****";
              if ((v73 - 1) <= 4)
              {
                v74 = off_2797274B0[v73 - 1];
              }

              v75 = v74;
              [v4 appendFormat:@"          | Accessory: %@ | LinkQuality : %@ |\n", v70, v75];
            }

            v67 = [v65 countByEnumeratingWithState:&v107 objects:v134 count:16];
          }

          while (v67);
        }

        v43 = v99 + 1;
      }

      while (v99 + 1 != v97);
      v97 = [v94 countByEnumeratingWithState:&v115 objects:v136 count:16];
    }

    while (v97);
  }

  v76 = [(HMDResidentMesh *)v91 primaryResidentForHomes];
  v77 = [v76 count];

  if (v77)
  {
    [v4 appendString:@"primary resident for:\n"];
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v78 = [(HMDResidentMesh *)v91 primaryResidentForHomes];
  v79 = [v78 countByEnumeratingWithState:&v103 objects:v133 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v104;
    do
    {
      for (n = 0; n != v80; ++n)
      {
        if (*v104 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = [*(*(&v103 + 1) + 8 * n) UUIDString];
        [v4 appendFormat:@"    %@\n", v83];
      }

      v80 = [v78 countByEnumeratingWithState:&v103 objects:v133 count:16];
    }

    while (v80);
  }

  if (v100)
  {
    v84 = [(HMDResidentMesh *)v91 messageDispatcher];
    v85 = [v84 secureRemoteTransport];
    v86 = [v85 deviceMonitor];
    v87 = [v86 isReachable];

    if (v87)
    {
      goto LABEL_82;
    }

    v88 = @"we are about to go unreachable in the near future unless we get network back.";
  }

  else
  {
    v88 = @"we do not have a resident device (either not logged into iCloud or have reachability issues).";
  }

  [v4 appendString:v88];
LABEL_82:

  v89 = *MEMORY[0x277D85DE8];

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
                  _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Immediately transmitting updated metrics", buf, 0xCu);
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
                  _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Scheduling transmission of updated metrics", buf, 0xCu);
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
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Could not set metric for current device for home %{public}@: no primary resident", buf, 0x16u);
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
  v13[3] = &unk_279731C38;
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Setting local metric with key: %@, value: %@", &v14, 0x20u);
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

- (id)deviceForAccessory:(id)a3 residentOrder:(unint64_t)a4 reachableResidents:(unint64_t *)a5
{
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

  if (v10 && ([v10 isPrimary] & 1) == 0)
  {
    v11 = [v10 bridge];

    v8 = v11;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__106960;
  v30 = __Block_byref_object_dispose__106961;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v12 = [(HMDResidentMesh *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDResidentMesh_deviceForAccessory_residentOrder_reachableResidents___block_invoke;
  block[3] = &unk_27972AF00;
  v13 = v8;
  v17 = v13;
  v18 = self;
  v20 = &v26;
  v21 = a4;
  v19 = &v22;
  dispatch_sync(v12, block);

  if (a5)
  {
    *a5 = v23[3];
  }

  v14 = v27[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __71__HMDResidentMesh_deviceForAccessory_residentOrder_reachableResidents___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = MEMORY[0x277CBEB98];
  v27 = v2;
  v4 = [v2 residentDeviceManager];
  v5 = [v4 availableResidentDevices];
  v29 = [v3 setWithArray:v5];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [*(a1 + 40) residents];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = 0;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [v11 accessoryUUIDs];
        v13 = [*(a1 + 32) uuid];
        if (![v12 containsObject:v13] || (objc_msgSend(v11, "enabled") & 1) == 0)
        {

LABEL_12:
          goto LABEL_13;
        }

        v14 = [v11 residentDevice];
        v15 = [v29 containsObject:v14];

        if (!v15)
        {
          goto LABEL_13;
        }

        ++*(*(*(a1 + 48) + 8) + 24);
        if (!*(a1 + 64))
        {
          v16 = [*(a1 + 40) resident];
          v17 = [v16 residentDevice];

          v18 = [v27 primaryResident];
          if (![v17 isEqual:v18])
          {
            goto LABEL_18;
          }

          v19 = [*(a1 + 32) isReachable];

          if (v19)
          {
            v20 = *(*(a1 + 56) + 8);
            v21 = v17;
            v18 = *(v20 + 40);
            *(v20 + 40) = v21;
LABEL_18:
          }

          goto LABEL_20;
        }

        ++v28;
LABEL_20:
        if (!*(*(*(a1 + 56) + 8) + 40))
        {
          v22 = *(a1 + 64);
          if (v28 == v22)
          {
            if (v22)
            {
              v23 = [v11 residentDevice];
              v24 = *(*(a1 + 56) + 8);
              v12 = *(v24 + 40);
              *(v24 + 40) = v23;
              goto LABEL_12;
            }
          }
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v25 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v8 = v25;
    }

    while (v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_residentMapForAccessories:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v18 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v18)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = 0;
        v8 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        do
        {
          v9 = [(HMDResidentMesh *)self deviceForAccessory:v8 residentOrder:v7 reachableResidents:&v19];
          if (v9)
          {
            v10 = [v5 objectForKey:v9];
            v11 = v10;
            if (v10)
            {
              if (([v10 containsObject:v8] & 1) == 0)
              {
                [v11 addObject:v8];
              }
            }

            else
            {
              v24 = v8;
              v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
              v13 = [v12 mutableCopy];
              [v5 setObject:v13 forKey:v9];
            }
          }

          ++v7;
        }

        while (v7 <= v19);
      }

      v18 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v18);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)balancedResidentMapForAccessories:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v35 = [(HMDResidentMesh *)self _residentMapForAccessories:?];
  v4 = objc_opt_new();
  v5 = 0;
  v32 = self;
  do
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = v31;
    v37 = [v6 countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v37)
    {
      v36 = *v44;
      obj = v6;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v43 + 1) + 8 * i);
          v9 = [(HMDResidentMesh *)self bestResidentDeviceForAccessory:v8];
          v10 = objc_autoreleasePoolPush();
          v11 = self;
          v12 = HMFGetOSLogHandle();
          v38 = v9;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = HMFGetLogIdentifier();
            [v8 identifier];
            v14 = v34 = v10;
            v15 = [v8 name];
            [v9 device];
            v17 = v16 = v4;
            v18 = [v17 shortDescription];
            *buf = 138544130;
            v50 = v13;
            v51 = 2114;
            v52 = v14;
            v53 = 2112;
            v54 = v15;
            v55 = 2114;
            v56 = v18;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Selected %{public}@/%@ for resident device: %{public}@", buf, 0x2Au);

            v9 = v38;
            v4 = v16;

            v10 = v34;
            self = v32;
          }

          objc_autoreleasePoolPop(v10);
          if (v8)
          {
            v19 = [v4 objectForKey:v9];
            v20 = v19;
            if (v19)
            {
              if (([v19 containsObject:v8] & 1) == 0)
              {
                [v20 addObject:v8];
              }
            }

            else
            {
              v48 = v8;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
              v22 = [v21 mutableCopy];
              [v4 setObject:v22 forKey:v38];
            }
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v23 = [v35 objectEnumerator];
          v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v24)
          {
            v25 = v24;
            v5 = 0;
            v26 = *v40;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v40 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v39 + 1) + 8 * j);
                v5 += [v28 count];
                if (v8 && [v28 containsObject:v8])
                {
                  [v28 removeObject:v8];
                  --v5;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v25);
          }

          else
          {
            v5 = 0;
          }
        }

        v6 = obj;
        v37 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v37);
    }
  }

  while (v5);

  v29 = *MEMORY[0x277D85DE8];

  return v4;
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
        v14[3] = &unk_279733E90;
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse camera UUID string: %@", &v13, 0x16u);
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
  v10 = __Block_byref_object_copy__106960;
  v11 = __Block_byref_object_dispose__106961;
  v12 = 0;
  v3 = [(HMDResidentMesh *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMDResidentMesh_activeRecordingSessionCameraUUIDs__block_invoke;
  v6[3] = &unk_279734898;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __52__HMDResidentMesh_activeRecordingSessionCameraUUIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeRecordingSessionCameraUUIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
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
    block[3] = &unk_2797352C0;
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
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory or home reference was nil when determining camera recording analysis nodes", buf, 0xCu);
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
  v35[3] = &unk_27972AED8;
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

- (id)bestResidentDeviceForAccessory:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__106960;
  v40 = __Block_byref_object_dispose__106961;
  v41 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 5;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 home];
  v7 = [v6 residentDeviceManager];
  v8 = [v7 availableResidentDevices];
  v9 = [v5 setWithArray:v8];

  v10 = [(HMDResidentMesh *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDResidentMesh_bestResidentDeviceForAccessory___block_invoke;
  block[3] = &unk_27972D2C8;
  v11 = v4;
  v30 = v11;
  v31 = self;
  v12 = v9;
  v32 = v12;
  v33 = v35;
  v34 = &v36;
  dispatch_sync(v10, block);

  v13 = v37[5];
  if (!v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Preferring (self) this resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [(HMDResidentMesh *)v15 deviceForAccessory:v11 residentOrder:0 reachableResidents:0];
    v19 = v37[5];
    v37[5] = v18;

    v13 = v37[5];
    if (!v13)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v15;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Preferring first reachable resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [(HMDResidentMesh *)v21 deviceForAccessory:v11 residentOrder:1 reachableResidents:0];
      v25 = v37[5];
      v37[5] = v24;

      v13 = v37[5];
    }
  }

  v26 = v13;

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v36, 8);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __50__HMDResidentMesh_bestResidentDeviceForAccessory___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
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

  if (([v4 hasIPLink] & 1) == 0)
  {
    v28 = v4;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [*(a1 + 40) residents];
    v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v37;
      v29 = *v37;
      do
      {
        v8 = 0;
        v30 = v6;
        do
        {
          if (*v37 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v36 + 1) + 8 * v8);
          v10 = *(a1 + 48);
          v11 = [v9 residentDevice];
          LODWORD(v10) = [v10 containsObject:v11];

          if (v10)
          {
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v12 = [v9 accessoryListWithLinkQuality];
            v13 = [v12 keyEnumerator];

            v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v33;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v33 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v32 + 1) + 8 * i);
                  v19 = [*(a1 + 32) identifier];
                  v20 = [v18 isEqualToString:v19];

                  if (v20)
                  {
                    v21 = [v9 accessoryListWithLinkQuality];
                    v22 = [v21 objectForKey:v18];
                    v23 = [v22 integerValue];

                    if (v23 < *(*(*(a1 + 56) + 8) + 24))
                    {
                      v24 = [v9 residentDevice];
                      v25 = *(*(a1 + 64) + 8);
                      v26 = *(v25 + 40);
                      *(v25 + 40) = v24;

                      *(*(*(a1 + 56) + 8) + 24) = v23;
                    }
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v15);
            }

            v7 = v29;
            v6 = v30;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v6);
    }

    v4 = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleMeshUpdateMessage:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
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
      v39 = v7;
      v40 = v6;
      v9 = [v4 numberForKey:@"kMeshDeviceStorageGenerationCount"];
      [v8 setGenerationCount:{objc_msgSend(v9, "unsignedIntegerValue")}];

      v10 = [v4 numberForKey:@"kMeshDeviceStorageEnabled"];
      [v8 setEnabled:{objc_msgSend(v10, "BOOLValue")}];

      v11 = [v4 dictionaryForKey:@"kMeshDeviceStorageSystemLoad"];
      [v8 setMetrics:v11];

      v12 = [v4 arrayForKey:@"kMeshDeviceStorageAcccessories"];
      v13 = uuidSetFromArrayOfStrings(v12);
      [v8 setAccessoryUUIDs:v13];

      v14 = [v4 dictionaryForKey:@"kMeshDeviceStorageAccessoriesWithLinkQuality"];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 mutableCopy];
        [v8 setAccessoryListWithLinkQuality:v16];
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v17 = [(HMDResidentMesh *)self observers];
      v18 = [v17 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v41 + 1) + 8 * i);
            v23 = [(HMDResidentMesh *)self _activeRecordingSessionCameraUUIDs];
            [v22 residentMeshDidUpdate:self activeRecordingSessionCameraUUIDs:v23];
          }

          v19 = [v17 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v19);
      }

      v45 = @"kMeshDeviceStorageEnabled";
      v24 = MEMORY[0x277CCABB0];
      v25 = [(HMDResidentMesh *)self resident];
      v26 = [v24 numberWithBool:{objc_msgSend(v25, "enabled")}];
      v46 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      [v4 respondWithPayload:v27];

      v7 = v39;
      v6 = v40;
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [v4 shortDescription];
        *buf = 138543874;
        v49 = v36;
        v50 = 2114;
        v51 = v37;
        v52 = 2114;
        v53 = v7;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message %{public}@ from unknown device: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v15];
    }
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
      *buf = 138544130;
      v49 = v31;
      v50 = 2112;
      v51 = v6;
      v52 = 2048;
      v53 = 2;
      v54 = 2114;
      v55 = v32;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message with version %@ lower than current version %ld: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v28);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v7];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_handleMeshUpdateRequestMessage:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 numberForKey:@"kMeshVersion"];
  if ([v6 unsignedIntegerValue] == 2)
  {
    v7 = [v4 uuidForKey:@"kMeshDevice"];
    v8 = [(HMDResidentMesh *)self _meshStorageForDeviceIdentifier:v7];
    v9 = v8;
    if (v8)
    {
      v42 = v7;
      v43 = v6;
      v10 = MEMORY[0x277CBEB18];
      v11 = [v8 accessoryUUIDs];
      v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v13 = [v9 accessoryUUIDs];
      v14 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v45;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v45 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v44 + 1) + 8 * i) UUIDString];
            [v12 addObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v15);
      }

      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v4 shortDescription];
        *buf = 138543618;
        v52 = v22;
        v53 = 2112;
        v54 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Responding to mesh update request message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v48[0] = @"kMeshDeviceStorageEnabled";
      v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "enabled")}];
      v49[0] = v24;
      v48[1] = @"kMeshDeviceStorageGenerationCount";
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "generationCount")}];
      v49[1] = v25;
      v48[2] = @"kMeshDeviceStorageSystemLoad";
      v26 = [v9 metrics];
      v49[2] = v26;
      v48[3] = @"kMeshDeviceStorageAcccessories";
      v27 = [v12 copy];
      v49[3] = v27;
      v48[4] = @"kMeshDeviceStorageAccessoriesWithLinkQuality";
      v28 = [v9 accessoryListWithLinkQuality];
      v29 = [v28 copy];
      v49[4] = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];
      [v4 respondWithPayload:v30];

      v7 = v42;
      v6 = v43;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [v4 shortDescription];
        *buf = 138543874;
        v52 = v39;
        v53 = 2114;
        v54 = v40;
        v55 = 2114;
        v56 = v7;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message %{public}@ from unknown device: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v36);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v12];
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v4 shortDescription];
      *buf = 138544130;
      v52 = v34;
      v53 = 2112;
      v54 = v6;
      v55 = 2048;
      v56 = 2;
      v57 = 2114;
      v58 = v35;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Rejecting message with version %@ lower than current version %ld: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v7];
  }

  v41 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Suppressing message %@ because we are not a resident device.", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, v42, buf, 0x16u);

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
    _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ with payload: %@", buf, 0x20u);

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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding resident device to residents list: %{public}@", &v17, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding resident device to mesh: %{public}@", &v17, 0x16u);
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
  v155 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [(HMDResidentMesh *)self homeManager];
  v12 = [v11 homes];

  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke;
  v141[3] = &unk_27972AE40;
  v13 = v9;
  v142 = v13;
  v14 = v10;
  v143 = v14;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v141];
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_2;
  v138[3] = &unk_27972AE40;
  v15 = v13;
  v139 = v15;
  v140 = self;
  v98 = v12;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v138];
  v16 = [MEMORY[0x277CBEB58] set];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_230;
  v134[3] = &unk_27972AE88;
  v97 = v14;
  v135 = v97;
  v17 = v16;
  v136 = v17;
  v137 = self;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v134];
  v18 = [MEMORY[0x277CBEB58] set];
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_236;
  v129[3] = &unk_27972AEB0;
  v129[4] = self;
  v99 = v6;
  v130 = v99;
  v95 = v7;
  v131 = v95;
  v107 = v15;
  v132 = v107;
  v19 = v18;
  v133 = v19;
  v96 = v17;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v129];
  v20 = [(HMDResidentMesh *)self resident];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v21 = [(HMDResidentMesh *)self residents];
  v22 = [v21 copy];

  v23 = [v22 countByEnumeratingWithState:&v125 objects:v154 count:16];
  v108 = self;
  if (v23)
  {
    v24 = v23;
    v25 = *v126;
    v103 = v22;
    v100 = *v126;
    do
    {
      v26 = 0;
      obj = v24;
      do
      {
        if (*v126 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v125 + 1) + 8 * v26);
        v28 = [v27 residentDevice];
        v29 = [v28 isCurrentDevice];

        if (v29)
        {
          if (([v27 isEqual:v20] & 1) == 0)
          {
            v30 = objc_autoreleasePoolPush();
            v31 = self;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v33 = v101 = v20;
              v34 = [v27 residentDevice];
              v35 = [v34 device];
              [v35 shortDescription];
              v37 = v36 = v19;
              *buf = 138543618;
              v147 = v33;
              v148 = 2114;
              v149 = v37;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Setting resident device to %{public}@", buf, 0x16u);

              v19 = v36;
              self = v108;

              v25 = v100;
              v20 = v101;
              v22 = v103;
            }

            objc_autoreleasePoolPop(v30);
            v24 = obj;
          }

          v38 = v27;

          v39 = [(HMDResidentMesh *)self loadMetrics];
          [v38 setMetrics:v39];

          [(HMDResidentMesh *)self setResident:v38];
          v20 = v38;
        }

        v40 = [v27 residentDevice];
        v41 = [v19 containsObject:v40];

        if ((v41 & 1) == 0)
        {
          v42 = [(HMDResidentMesh *)self residents];
          [v42 removeObject:v27];
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v125 objects:v154 count:16];
    }

    while (v24);
  }

  v102 = v20;

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v43 = [(HMDResidentMesh *)self reachableAccessories];
  v44 = [v43 copy];

  v45 = [v44 countByEnumeratingWithState:&v121 objects:v153 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v122;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v122 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v121 + 1) + 8 * i);
        v50 = [v49 residentDevice];
        v51 = [v19 containsObject:v50];

        if ((v51 & 1) == 0)
        {
          v52 = [(HMDResidentMesh *)self reachableAccessories];
          [v52 removeObject:v49];
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v121 objects:v153 count:16];
    }

    while (v46);
  }

  v93 = v19;
  if ([v99 isEqual:@"HMDResidentDeviceManagerAddResidentNotification"])
  {
    v53 = 1;
  }

  else
  {
    v53 = [v99 isEqual:{@"HMDResidentDeviceManagerUpdateResidentNotification", v19, v95}];
  }

  v54 = v107;
  v55 = [(HMDResidentMesh *)self primaryResidentForHomes];
  v56 = [v107 isSubsetOfSet:v55];

  if (!v56 || v53)
  {
    v57 = objc_autoreleasePoolPush();
    v58 = self;
    v59 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      v60 = HMFGetLogIdentifier();
      *buf = 138543362;
      v147 = v60;
      _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_INFO, "%{public}@Our primary residents list has new items (or some shift in devices happened):", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v57);
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obja = v107;
    v61 = [obja countByEnumeratingWithState:&v117 objects:v152 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v118;
      do
      {
        v64 = 0;
        v104 = v62;
        do
        {
          if (*v118 != v63)
          {
            objc_enumerationMutation(obja);
          }

          v65 = *(*(&v117 + 1) + 8 * v64);
          v66 = objc_autoreleasePoolPush();
          v67 = v58;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            v69 = HMFGetLogIdentifier();
            [v65 UUIDString];
            v71 = v70 = v58;
            v72 = [(HMDResidentMesh *)v67 primaryResidentForHomes];
            v73 = [v72 containsObject:v65];
            *buf = 138543874;
            v74 = " (added)";
            if (v73)
            {
              v74 = "";
            }

            v147 = v69;
            v148 = 2114;
            v149 = v71;
            v150 = 2080;
            v151 = v74;
            _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@  Home: %{public}@%s", buf, 0x20u);

            v58 = v70;
            v62 = v104;

            self = v108;
          }

          objc_autoreleasePoolPop(v66);
          ++v64;
        }

        while (v62 != v64);
        v62 = [obja countByEnumeratingWithState:&v117 objects:v152 count:16];
      }

      while (v62);
    }

    [(HMDResidentMesh *)v58 _checkReachabilityWithTimerActivation:1];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v75 = [(HMDResidentMesh *)v58 residents];
    v76 = [v75 countByEnumeratingWithState:&v113 objects:v145 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v114;
      do
      {
        for (j = 0; j != v77; ++j)
        {
          if (*v114 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v80 = *(*(&v113 + 1) + 8 * j);
          if (v102 != v80 && [*(*(&v113 + 1) + 8 * j) enabled])
          {
            [v80 _requestStatus];
          }
        }

        v77 = [v75 countByEnumeratingWithState:&v113 objects:v145 count:16];
      }

      while (v77);
    }

    v54 = v107;
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v81 = [(HMDResidentMesh *)self primaryResidentForHomes];
  v82 = [v81 countByEnumeratingWithState:&v109 objects:v144 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v110;
    do
    {
      for (k = 0; k != v83; ++k)
      {
        if (*v110 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = *(*(&v109 + 1) + 8 * k);
        if (([v54 containsObject:v86] & 1) == 0)
        {
          v87 = objc_autoreleasePoolPush();
          v88 = self;
          v89 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            v90 = HMFGetLogIdentifier();
            v91 = [v86 UUIDString];
            *buf = 138543618;
            v147 = v90;
            v148 = 2114;
            v149 = v91;
            _os_log_impl(&dword_2531F8000, v89, OS_LOG_TYPE_INFO, "%{public}@  Home: %{public}@ (removed)", buf, 0x16u);

            self = v108;
          }

          objc_autoreleasePoolPop(v87);
          v54 = v107;
        }
      }

      v83 = [v81 countByEnumeratingWithState:&v109 objects:v144 count:16];
    }

    while (v83);
  }

  [(HMDResidentMesh *)self setPrimaryResidentForHomes:v54];
  v92 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Could not create resident storage for home %{public}@: no primary resident", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_230(id *a1, void *a2)
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
    v9 = [v4 na_map:&__block_literal_global_234_107100];
    v11 = 138543874;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Home %{public}@ may use devices: %{public}@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentMesh__buildResidentsWithElection_device___block_invoke_236(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 capabilities];
  v5 = [v4 isResidentCapable];

  if (v5)
  {
    v6 = [v3 device];
    v7 = [v6 version];
    v8 = minimumSupportedResidentHomeKitVersion;
    v9 = [v7 isAtLeastVersion:v8];

    if (v9)
    {
      if (![*(a1 + 40) isEqual:@"HMDResidentDeviceManagerRemoveResidentNotification"] || (objc_msgSend(v3, "device"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", *(a1 + 48)), v10, !v11))
      {
        if ([v3 isCurrentDevice])
        {
          if (![*(a1 + 56) count])
          {
            v12 = objc_autoreleasePoolPush();
            v13 = *(a1 + 32);
            v14 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              goto LABEL_13;
            }

            v15 = HMFGetLogIdentifier();
            v16 = [v3 device];
            v17 = [v16 shortDescription];
            v32 = 138543618;
            v33 = v15;
            v34 = 2114;
            v35 = v17;
            v18 = "%{public}@Not adding the current device because it isn't a part of any homes: %{public}@";
            goto LABEL_9;
          }
        }

        else
        {
          v25 = [*(a1 + 32) messageDispatcher];
          v26 = [v25 secureRemoteTransport];
          v27 = [v26 deviceMonitor];
          v28 = [v27 unreachableDevices];
          v29 = [v3 device];
          v30 = [v28 containsObject:v29];

          if (v30)
          {
            v12 = objc_autoreleasePoolPush();
            v13 = *(a1 + 32);
            v14 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              goto LABEL_13;
            }

            v15 = HMFGetLogIdentifier();
            v16 = [v3 device];
            v17 = [v16 shortDescription];
            v32 = 138543618;
            v33 = v15;
            v34 = 2114;
            v35 = v17;
            v18 = "%{public}@Not adding unreachable device: %{public}@";
            goto LABEL_9;
          }
        }

        [*(a1 + 64) addObject:v3];
        v31 = [*(a1 + 32) _addMeshStorageResidentDevice:v3];
        goto LABEL_14;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v3 device];
        v17 = [v16 shortDescription];
        v32 = 138543618;
        v33 = v15;
        v34 = 2114;
        v35 = v17;
        v18 = "%{public}@Received a remove resident notification for device %{public}@";
LABEL_9:
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, v18, &v32, 0x16u);

LABEL_12:
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v19 = [v3 device];
        v20 = [v19 version];
        v21 = minimumSupportedResidentHomeKitVersion;
        v22 = [v3 device];
        v23 = [v22 shortDescription];
        v32 = 138544130;
        v33 = v15;
        v34 = 2112;
        v35 = v20;
        v36 = 2112;
        v37 = v21;
        v38 = 2114;
        v39 = v23;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Device version %@ does not support required resident version %@: %{public}@", &v32, 0x2Au);

        goto LABEL_12;
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v3 device];
      v17 = [v16 shortDescription];
      v32 = 138543618;
      v33 = v15;
      v34 = 2114;
      v35 = v17;
      v18 = "%{public}@Device is not resident capable: %{public}@";
      goto LABEL_9;
    }
  }

LABEL_13:

  objc_autoreleasePoolPop(v12);
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_deviceIsNotReachable:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
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
      v55 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Our device lost visibility to the rest of the world. Setting timeout before pulling the plug.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = dispatch_time(0, 10000000000);
    v10 = [(HMDResidentMesh *)v6 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__HMDResidentMesh__deviceIsNotReachable___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = v6;
    dispatch_after(v9, v10, block);
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = [(HMDResidentMesh *)self reachableAccessories];
    v12 = [v11 copy];

    v13 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v49;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v48 + 1) + 8 * i);
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
              v55 = v24;
              v56 = 2114;
              v57 = v25;
              _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Removed device %{public}@ from resident storage", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v21);
            v26 = [(HMDResidentMesh *)v22 reachableAccessories];
            [v26 removeObject:v17];

            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = [(HMDResidentMesh *)self residents];
    v28 = [v27 copy];

    v29 = [v28 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v44 + 1) + 8 * j);
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
              v55 = v40;
              v56 = 2114;
              v57 = v41;
              _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Removed device %{public}@ from mesh storage", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v37);
            v42 = [(HMDResidentMesh *)v38 residents];
            [v42 removeObject:v33];

            goto LABEL_29;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:
  }

  v43 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Nope, we came back.", &v16, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Lost visibility to the rest of the world. Deconstructing the mesh entirely.", &v16, 0xCu);
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
  v3 = [(HMDResidentMesh *)self devicesChangedTimer];
  [v3 resume];
}

- (void)_updateAccessoryLinkQuality
{
  v43 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [(HMDResidentMesh *)self homeManager];
  v4 = [v3 homes];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    v27 = *v38;
    do
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * v8);
        if ([v9 isCurrentDeviceAvailableResident])
        {
          v31 = [v9 primaryResident];
          if (v31)
          {
            v30 = v8;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v32 = [v9 accessories];
            v10 = [v32 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v34;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v34 != v12)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v14 = *(*(&v33 + 1) + 8 * i);
                  v15 = [(HMDResidentMesh *)self resident];
                  v16 = [v15 accessoryListWithLinkQuality];
                  v17 = [v16 allKeys];
                  v18 = [v14 identifier];
                  v19 = [v17 containsObject:v18];

                  if (v19)
                  {
                    v20 = [(HMDResidentMesh *)self _addResidentStorageResidentDevice:v31];
                    v21 = v14;
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

                    if ([v23 hasBTLELink])
                    {
                      v24 = [v20 accessoryListWithLinkQuality];
                      v25 = [v20 _addAccessoryWithLinkQuality:v23 toList:v24];

                      if (v25)
                      {
                        [v20 _transmitAfter:10.0];
                      }
                    }
                  }
                }

                v11 = [v32 countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v11);
            }

            v7 = v27;
            v6 = v28;
            v8 = v30;
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v6);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDResidentMesh *)self devicesChangedTimer];

  if (v6 == v4)
  {
    [(HMDResidentMesh *)self _buildResidentsWithElection:@"HMDResidentDeviceManagerAddResidentNotification" device:0];
  }

  else
  {
    v7 = [(HMDResidentMesh *)self startupTimer];

    if (v7 == v4)
    {
      if ([(HMDResidentMesh *)self _checkReachabilityWithTimerActivation:0]&& (v9 = [(HMDResidentMesh *)self startupTickCount], [(HMDResidentMesh *)self setStartupTickCount:v9 + 1], v9 < 4))
      {
        [v4 resume];
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543874;
          v29 = v13;
          v30 = 2048;
          v31 = [(HMDResidentMesh *)v11 startupTickCount];
          v32 = 2048;
          v33 = 4;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Can connect with all accessories (or we've timed out if %lu > %lu), broadcasting out.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [(HMDResidentMesh *)v11 reachableAccessories];
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v23 + 1) + 8 * i);
              v20 = [v19 accessoryUUIDs];
              v21 = [v20 count];

              if (v21)
              {
                [v19 _transmitStatus:1];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v16);
        }
      }
    }

    else
    {
      v8 = [(HMDResidentMesh *)self linkQualityMonitorTimer];

      if (v8 == v4)
      {
        [(HMDResidentMesh *)self _updateAccessoryLinkQuality];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handlePrimaryResidentChangedNotification:(id)a3
{
  v4 = [(HMDResidentMesh *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDResidentMesh__handlePrimaryResidentChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
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
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that the current resident's enabled status is now %{BOOL}d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 40) resident];
  v10 = v9;
  if (v9)
  {
    [v9 setEnabled:v4 & 1];
    if (v4)
    {
      [*(a1 + 40) _checkReachabilityWithTimerActivation:0];
    }

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
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Resident device changed (%{public}@ / %{public}@) notification.", &v16, 0x20u);
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
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device changed (%{public}@ / %{public}@) notification.", &v16, 0x20u);
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
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Resident device removed (%{public}@ / %{public}@) notification.", &v18, 0x20u);
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
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device %{public}@ is NOT reachable (notification)", &v12, 0x16u);
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
  v7[3] = &unk_2797359B0;
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device %{public}@ is reachable (notification)", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) _handleAddUpdateOrReachabilityChangeForDevice:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryDidUpdateSuspendedState:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDResidentMesh___accessoryDidUpdateSuspendedState___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HMDResidentMesh___accessoryDidUpdateSuspendedState___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
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

  if (v4)
  {
    v5 = [v4 suspendedState];
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 uuid];
      v11 = HAPAccessorySuspendedStateDescription();
      v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isReachable")}];
      v14 = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Accessory %{public}@ updated its suspended state to: '%@'. Reachable: '%@'", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
    if (!v5 && ([v4 isReachable] & 1) == 0)
    {
      [*(a1 + 40) _removeConnectivityFromDeviceToAccessory:v4 activateTimer:1];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryIsNotReachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDResidentMesh___accessoryIsNotReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__HMDResidentMesh___accessoryIsNotReachable___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
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
    v9 = [v4 uuid];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory %{public}@ is NOT reachable (notification)", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 40) _removeConnectivityFromDeviceToAccessory:v4 activateTimer:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryIsReachable:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentMesh *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMDResidentMesh___accessoryIsReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__HMDResidentMesh___accessoryIsReachable___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
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

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 uuid];
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory %{public}@ is reachable (notification)", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) _addConnectivityFromDeviceToAccessory:v4 activateTimer:1];
  }

  v10 = *MEMORY[0x277D85DE8];
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
  v4 = a4;
  v58[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v56.receiver = self;
  v56.super_class = HMDResidentMesh;
  v7 = [(HMDResidentMesh *)&v56 init];
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

    objc_storeWeak(&v7->_homeManager, v6);
    v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"82455554-35AB-4772-B3A4-DCA0F933F5D3"];
    uuid = v7->_uuid;
    v7->_uuid = v14;

    v16 = [MEMORY[0x277CBEB98] set];
    primaryResidentForHomes = v7->_primaryResidentForHomes;
    v7->_primaryResidentForHomes = v16;

    v18 = HMDispatchQueueNameString();
    v19 = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(v19, v20);
    workQueue = v7->_workQueue;
    v7->_workQueue = v21;

    objc_storeWeak(&v7->_resident, 0);
    v23 = [v6 messageDispatcher];
    objc_storeWeak(&v7->_messageDispatcher, v23);
    v24 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v24;

    v26 = v7->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDResidentMesh_initWithHomeManager_residentEnabled___block_invoke;
    block[3] = &unk_279735D28;
    v27 = v7;
    v54 = v27;
    v55 = v4;
    dispatch_sync(v26, block);
    v28 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:2.0];
    devicesChangedTimer = v27->_devicesChangedTimer;
    v27->_devicesChangedTimer = v28;

    [(HMFTimer *)v27->_devicesChangedTimer setDelegate:v27];
    [(HMFTimer *)v27->_devicesChangedTimer setDelegateQueue:v7->_workQueue];
    if (v4)
    {
      v27->_startupTickCount = 0;
      v30 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:30.0];
      startupTimer = v27->_startupTimer;
      v27->_startupTimer = v30;

      [(HMFTimer *)v27->_startupTimer setDelegate:v27];
      [(HMFTimer *)v27->_startupTimer setDelegateQueue:v7->_workQueue];
      [(HMFTimer *)v27->_startupTimer fire];
    }

    v32 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:600.0];
    linkQualityMonitorTimer = v27->_linkQualityMonitorTimer;
    v27->_linkQualityMonitorTimer = v32;

    [(HMFTimer *)v27->_linkQualityMonitorTimer setDelegate:v27];
    [(HMFTimer *)v27->_linkQualityMonitorTimer setDelegateQueue:v7->_workQueue];
    [(HMFTimer *)v27->_linkQualityMonitorTimer resume];
    [(HMFTimer *)v27->_linkQualityMonitorTimer fire];
    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v27 selector:sel___accessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:0];

    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    [v35 addObserver:v27 selector:sel___accessoryIsNotReachable_ name:@"HMDAccessoryIsNotReachableNotification" object:0];

    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 addObserver:v27 selector:sel___accessoryDidUpdateSuspendedState_ name:@"HMDHAPAccessoryUpdatedSuspendedState" object:0];

    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v27 selector:sel___residentDeviceAddedOrUpdatedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:0];

    v38 = [MEMORY[0x277CCAB98] defaultCenter];
    [v38 addObserver:v27 selector:sel___residentDeviceAddedOrUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

    v39 = [MEMORY[0x277CCAB98] defaultCenter];
    [v39 addObserver:v27 selector:sel___residentDeviceRemovedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:0];

    v40 = [MEMORY[0x277CCAB98] defaultCenter];
    [v40 addObserver:v27 selector:sel___rebuildResidents_ name:@"HMDAccountAddedDeviceNotification" object:0];

    v41 = [MEMORY[0x277CCAB98] defaultCenter];
    [v41 addObserver:v27 selector:sel___rebuildResidents_ name:@"HMDDeviceUpdatedNotification" object:0];

    v42 = [MEMORY[0x277CCAB98] defaultCenter];
    [v42 addObserver:v27 selector:sel___rebuildResidents_ name:@"HMDAccountRemovedDeviceNotification" object:0];

    v43 = [MEMORY[0x277CCAB98] defaultCenter];
    [v43 addObserver:v27 selector:sel___deviceResidentChanged_ name:@"HMDHomeManagerResidentEnabledChangedNotification" object:0];

    v44 = [MEMORY[0x277CCAB98] defaultCenter];
    [v44 addObserver:v27 selector:sel__handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    v45 = [MEMORY[0x277CCAB98] defaultCenter];
    [v45 addObserver:v27 selector:sel___deviceIsNotReachable_ name:@"HMDRemoteDeviceIsNotReachableNotification" object:0];

    v46 = [MEMORY[0x277CCAB98] defaultCenter];
    [v46 addObserver:v27 selector:sel___deviceIsReachable_ name:@"HMDRemoteDeviceIsReachableNotification" object:0];

    v47 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v47 setRequiresAccountMessage:1];
    [v47 setRequiresSecureMessage:1];
    [v47 setTransportRestriction:-1];
    v48 = [v47 copy];
    v58[0] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
    [v23 registerForMessage:@"kDeviceMeshUpdateRequestKey" receiver:v27 policies:v49 selector:sel__handleMeshUpdateRequestMessage_];

    v57 = v48;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [v23 registerForMessage:@"kDeviceMeshUpdateKey" receiver:v27 policies:v50 selector:sel__handleMeshUpdateMessage_];
  }

  v51 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@We do not have a current device (probably logged out from iCloud).", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t99 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t99, &__block_literal_global_340);
  }

  v3 = logCategory__hmf_once_v100;

  return v3;
}

uint64_t __30__HMDResidentMesh_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v100;
  logCategory__hmf_once_v100 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end