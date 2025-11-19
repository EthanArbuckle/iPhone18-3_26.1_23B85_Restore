@interface HMDCameraRecordingLoadBalancer
+ (id)logCategory;
- (BOOL)isReadyToRecordForCameraWithUUID:(id)a3;
- (HMDCameraRecordingLoadBalancer)initWithHomeManager:(id)a3 resourceUsageMonitor:(id)a4;
- (HMDHomeManager)homeManager;
- (id)_formattedDescriptionForNode:(id)a3;
- (id)_loadBalancingDescriptionFromSortedNodes:(id)a3 limit:(unint64_t)a4;
- (id)_makeLoadBalancingDecisionForCamera:(id)a3 deviceFilter:(id)a4;
- (id)makeLoadBalancingDecisionForCamera:(id)a3 deviceFilter:(id)a4;
- (void)_updateReadyToRecordMetric;
- (void)handleProcessedDecision:(id)a3;
- (void)handleRecordingSessionForwardingFailureForDecision:(id)a3;
- (void)handleRecordingSessionForwardingSuccessForDecision:(id)a3;
- (void)handleResidentMeshInitialized:(id)a3;
- (void)recordingDidEndForCameraWithUUID:(id)a3;
- (void)recordingDidStartForCameraWithUUID:(id)a3;
- (void)removeDataForCameraWithUUID:(id)a3;
- (void)start;
- (void)systemResourceUsageDidUpdate:(int64_t)a3 maxNumberOfAnalyzers:(unint64_t)a4 maxAnalysisFPS:(float)a5;
@end

@implementation HMDCameraRecordingLoadBalancer

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)systemResourceUsageDidUpdate:(int64_t)a3 maxNumberOfAnalyzers:(unint64_t)a4 maxAnalysisFPS:(float)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = systemResourceUsageLevelAsString();
    v22 = 138544130;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2048;
    v27 = a4;
    v28 = 2048;
    v29 = a5;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating resource usage to usageLevel:%@ maxNumberOfAnalyzers:%lu maxAnalysisFPS:%f", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDCameraRecordingLoadBalancer *)v10 homeManager];
  v15 = [v14 residentMesh];

  v16 = a3 == 3 || [(HMDCameraRecordingLoadBalancer *)v10 maxNumberOfAnalyzers]!= a4;
  [(HMDCameraRecordingLoadBalancer *)v10 setMaxNumberOfAnalyzers:a4];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v15 setMetricForCurrentDevice:@"systemResourceUsageLevel" withValue:v17 isUrgent:0];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v15 setMetricForCurrentDevice:@"numberOfFullJobSlots" withValue:v18 isUrgent:0];

  *&v19 = a5;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [v15 setMetricForCurrentDevice:@"maximumAnalysisFPS" withValue:v20 isUrgent:v16];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentMeshInitialized:(id)a3
{
  v14 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCameraRecordingLoadBalancer *)self numberOfActiveRecordingSessions];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(HMDCameraRecordingLoadBalancer *)self homeManager];
  v6 = [v5 residentMesh];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  [v6 setMetricForCurrentDevice:@"numberOfActiveRecordingSessions" withValue:v7 isUrgent:0];

  [(HMDCameraRecordingLoadBalancer *)self _updateReadyToRecordMetric];
  v8 = [(HMDCameraRecordingLoadBalancer *)self systemResourceUsageMonitor];
  v9 = [v8 currentSystemResourceUsage];
  v10 = [v9 systemResourceUsageLevel];
  v11 = [(HMDCameraRecordingLoadBalancer *)self systemResourceUsageMonitor];
  v12 = [v11 maxNumberOfAnalyzers];
  v13 = [(HMDCameraRecordingLoadBalancer *)self systemResourceUsageMonitor];
  [v13 maxAnalysisFPS];
  [(HMDCameraRecordingLoadBalancer *)self systemResourceUsageDidUpdate:v10 maxNumberOfAnalyzers:v12 maxAnalysisFPS:?];
}

- (void)_updateReadyToRecordMetric
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDCameraRecordingLoadBalancer *)self readyToRecordByCameraUUIDString];
  v6 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);
  v4 = [(HMDCameraRecordingLoadBalancer *)self homeManager];
  v5 = [v4 residentMesh];
  [v5 setMetricForCurrentDevice:@"readyToRecordByCameraUUIDString" withValue:v6 isUrgent:0];
}

- (id)_formattedDescriptionForNode:(id)a3
{
  v3 = a3;
  v4 = [v3 metrics];
  v5 = [v4 description];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v22 = [v5 componentsSeparatedByCharactersInSet:v6];

  v21 = [v22 mutableCopy];
  [v21 removeObject:&stru_283CF9D50];
  v7 = [v21 componentsJoinedByString:@" "];
  v8 = MEMORY[0x277CCACA8];
  v20 = [v3 residentDevice];
  v19 = [v20 device];
  v9 = [v19 productInfo];
  [v9 productClass];
  v10 = HMFProductClassToString();
  v11 = [v3 residentDevice];
  v12 = [v11 device];
  v13 = [v12 name];
  v14 = [v3 residentDevice];

  v15 = [v14 device];
  v16 = [v15 identifier];
  v17 = [v8 stringWithFormat:@"   ([%@] device: %@ (%@) / metrics: %@)", v10, v13, v16, v7];

  return v17;
}

- (id)_loadBalancingDescriptionFromSortedNodes:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 count];
  v8 = @"[]";
  if (a4 && v7)
  {
    v9 = [v6 count];
    if (v9 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v9;
    }

    v11 = v10 - 1;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = [v6 objectAtIndexedSubscript:i];
        v15 = [(HMDCameraRecordingLoadBalancer *)self _formattedDescriptionForNode:v14];
        [v12 addObject:v15];
      }
    }

    if ([v6 count] > a4)
    {
      [v12 addObject:@"..."];
    }

    v16 = [v6 lastObject];
    v17 = [(HMDCameraRecordingLoadBalancer *)self _formattedDescriptionForNode:v16];
    [v12 addObject:v17];

    v18 = MEMORY[0x277CCACA8];
    v19 = [v12 componentsJoinedByString:@"\n"];
    v8 = [v18 stringWithFormat:@"[\n%@\n]", v19];
  }

  return v8;
}

- (id)_makeLoadBalancingDecisionForCamera:(id)a3 deviceFilter:(id)a4
{
  v166 = *MEMORY[0x277D85DE8];
  v121 = a3;
  v120 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v129 = self;
  v6 = [(HMDCameraRecordingLoadBalancer *)self pendingDecisionsByCameraUUIDByDeviceUUID];
  obj = [v6 allKeys];

  v124 = [obj countByEnumeratingWithState:&v154 objects:v165 count:16];
  if (v124)
  {
    v123 = *v155;
    do
    {
      v7 = 0;
      do
      {
        if (*v155 != v123)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v125 = v7;
        v126 = *(*(&v154 + 1) + 8 * v7);
        v9 = [(HMDCameraRecordingLoadBalancer *)v129 pendingDecisionsByCameraUUIDByDeviceUUID];
        v10 = [v9 objectForKeyedSubscript:v126];

        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v130 = [v10 allKeys];
        v11 = [v130 countByEnumeratingWithState:&v150 objects:v164 count:16];
        if (v11)
        {
          v132 = *v151;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v151 != v132)
              {
                objc_enumerationMutation(v130);
              }

              v13 = *(*(&v150 + 1) + 8 * i);
              v14 = [v10 objectForKeyedSubscript:v13];
              v15 = [v14 isExpired];

              if (v15)
              {
                v16 = objc_autoreleasePoolPush();
                v17 = v129;
                v18 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  v19 = HMFGetLogIdentifier();
                  v20 = [v10 objectForKeyedSubscript:v13];
                  v21 = [v20 shortDescription];
                  *buf = 138543618;
                  *&buf[4] = v19;
                  *&buf[12] = 2112;
                  *&buf[14] = v21;
                  _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Expiring cached HMDCameraRecordingLoadBalancerDecision: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v16);
                [v10 setObject:0 forKeyedSubscript:v13];
              }
            }

            v11 = [v130 countByEnumeratingWithState:&v150 objects:v164 count:16];
          }

          while (v11);
        }

        if (![v10 count])
        {
          v22 = [(HMDCameraRecordingLoadBalancer *)v129 pendingDecisionsByCameraUUIDByDeviceUUID];
          [v22 setObject:0 forKeyedSubscript:v126];
        }

        v7 = v125 + 1;
      }

      while (v125 + 1 != v124);
      v124 = [obj countByEnumeratingWithState:&v154 objects:v165 count:16];
    }

    while (v124);
  }

  v23 = [(HMDCameraRecordingLoadBalancer *)v129 lastDecisionByCameraUUID];
  v24 = [v121 uniqueIdentifier];
  v25 = [v23 objectForKeyedSubscript:v24];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v161 = __Block_byref_object_copy__271641;
  v162 = __Block_byref_object_dispose__271642;
  v163 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke;
  aBlock[3] = &unk_278688C20;
  v149 = buf;
  v127 = v25;
  v148 = v127;
  v128 = _Block_copy(aBlock);
  v26 = [(HMDCameraRecordingLoadBalancer *)v129 homeManager];
  v27 = [v26 residentMesh];
  v28 = [(HMDCameraRecordingLoadBalancer *)v129 pendingDecisionsByCameraUUIDByDeviceUUID];
  v29 = [v27 cameraRecordingAnalysisNodesForCamera:v121 pendingDecisionsByCameraUUIDByDeviceUUID:v28];
  v30 = [v29 mutableCopy];

  v31 = [(HMDCameraRecordingLoadBalancer *)v129 preferences];
  v133 = [v31 preferenceForKey:@"loadBalancerOverrideAllowedDeviceNames"];

  v32 = [(HMDCameraRecordingLoadBalancer *)v129 preferences];
  v131 = [v32 preferenceForKey:@"loadBalancerOverrideDeniedDeviceNames"];

  v33 = [v133 value];
  if (v33)
  {
  }

  else
  {
    v34 = [v131 value];
    v35 = v34 == 0;

    if (v35)
    {
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_2;
      v145[3] = &unk_278688C48;
      v146 = v120;
      v117 = _Block_copy(v145);
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_3;
      v143[3] = &unk_278688C70;
      v118 = v117;
      v144 = v118;
      v119 = [v30 indexesOfObjectsPassingTest:v143];
      [v30 removeObjectsAtIndexes:v119];

      goto LABEL_27;
    }
  }

  v36 = objc_autoreleasePoolPush();
  v37 = v129;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    *v158 = 138543362;
    *&v158[4] = v39;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Skipping applying exclusion filter because override is set.", v158, 0xCu);
  }

  objc_autoreleasePoolPop(v36);
LABEL_27:
  v40 = [v133 value];

  if (v40)
  {
    v41 = [v133 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;

    v44 = objc_autoreleasePoolPush();
    v45 = v129;
    if (v43)
    {
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        *v158 = 138543618;
        *&v158[4] = v47;
        *&v158[12] = 2112;
        *&v158[14] = v43;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Applying load balancer override with allow list: %@", v158, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_15;
      v141[3] = &unk_278688C98;
      v142 = v43;
      v48 = [v30 na_filter:v141];
      v49 = [v48 mutableCopy];

      v30 = v49;
    }

    else
    {
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        v52 = [v133 value];
        v53 = objc_opt_class();
        v54 = [v133 value];
        *v158 = 138543874;
        *&v158[4] = v51;
        *&v158[12] = 2112;
        *&v158[14] = v53;
        *&v158[22] = 2112;
        v159 = v54;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Device names allow list was not an array (%@): %@", v158, 0x20u);
      }

      objc_autoreleasePoolPop(v44);
    }
  }

  v55 = [v131 value];

  if (v55)
  {
    v56 = [v131 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;

    v59 = objc_autoreleasePoolPush();
    v60 = v129;
    if (v58)
    {
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        *v158 = 138543618;
        *&v158[4] = v62;
        *&v158[12] = 2112;
        *&v158[14] = v58;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Applying load balancer override with deny list: %@", v158, 0x16u);
      }

      objc_autoreleasePoolPop(v59);
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 3221225472;
      v139[2] = __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_16;
      v139[3] = &unk_278688C98;
      v140 = v58;
      v63 = [v30 na_filter:v139];
      v64 = [v63 mutableCopy];

      v30 = v64;
    }

    else
    {
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        v67 = [v131 value];
        v68 = objc_opt_class();
        v69 = [v131 value];
        *v158 = 138543874;
        *&v158[4] = v66;
        *&v158[12] = 2112;
        *&v158[14] = v68;
        *&v158[22] = 2112;
        v159 = v69;
        _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@Device names deny list was not an array (%@): %@", v158, 0x20u);
      }

      objc_autoreleasePoolPop(v59);
    }
  }

  v70 = [v30 sortedArrayUsingComparator:v128];
  v71 = [v70 mutableCopy];

  v72 = v129;
  v73 = HMFGetOSLogHandle();
  v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);

  v75 = objc_autoreleasePoolPush();
  v76 = v72;
  if (v74)
  {
    v77 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
    {
      v78 = HMFGetLogIdentifier();
      v79 = [v121 uniqueIdentifier];
      v80 = [v79 UUIDString];
      v81 = -[HMDCameraRecordingLoadBalancer _loadBalancingDescriptionFromSortedNodes:limit:](v76, "_loadBalancingDescriptionFromSortedNodes:limit:", v71, [v71 count]);
      *v158 = 138543874;
      *&v158[4] = v78;
      *&v158[12] = 2112;
      *&v158[14] = v80;
      *&v158[22] = 2112;
      v159 = v81;
      _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_DEBUG, "%{public}@Residents sorted for camera (%@): %@", v158, 0x20u);
    }
  }

  else
  {
    v77 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      v82 = HMFGetLogIdentifier();
      v83 = [v121 uniqueIdentifier];
      v84 = [v83 UUIDString];
      v85 = [(HMDCameraRecordingLoadBalancer *)v76 _loadBalancingDescriptionFromSortedNodes:v71 limit:5];
      *v158 = 138543874;
      *&v158[4] = v82;
      *&v158[12] = 2112;
      *&v158[14] = v84;
      *&v158[22] = 2112;
      v159 = v85;
      _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_INFO, "%{public}@Residents sorted for camera (%@): %@", v158, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v75);
  *v158 = 0;
  *&v158[8] = v158;
  *&v158[16] = 0x2020000000;
  v159 = 0;
  v135 = 0;
  v136 = &v135;
  v137 = 0x2020000000;
  v138 = 0;
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_17;
  v134[3] = &unk_278688CC0;
  v134[4] = v158;
  v134[5] = &v135;
  [v71 na_each:v134];
  v86 = *(*&buf[8] + 40);
  if (!v86)
  {
    goto LABEL_59;
  }

  v87 = [v71 firstObject];
  if (v86 == v87)
  {
    v91 = 0;
  }

  else
  {
    v88 = [v71 firstObject];
    v89 = [v88 metrics];
    v90 = [v89 isResourceConstrained];

    if (v90)
    {
LABEL_59:
      v91 = 0;
      goto LABEL_63;
    }

    v87 = [*(*&buf[8] + 40) residentDevice];
    v91 = [v87 device];
  }

LABEL_63:
  v92 = [HMDCameraRecordingLoadBalancerDecision alloc];
  v93 = [v121 uniqueIdentifier];
  v94 = [v71 count];
  v95 = *(*&v158[8] + 24);
  v96 = v136[3];
  v97 = [v71 firstObject];
  v98 = [MEMORY[0x277CBEAA8] now];
  v99 = [(HMDCameraRecordingLoadBalancerDecision *)v92 initWithCameraUUID:v93 numberOfAvailableDevices:v94 totalNumberOfJobSlots:v95 remainingNumberOfJobSlots:v96 analysisNode:v97 decisionDate:v98 deviceWithSessionToHandOff:v91];

  v100 = [(HMDCameraRecordingLoadBalancerDecision *)v99 deviceUUID];

  if (!v100)
  {
    goto LABEL_70;
  }

  v101 = [(HMDCameraRecordingLoadBalancerDecision *)v99 analysisNode];
  v102 = [v101 metrics];
  if (([v102 hasActiveSessionWithCamera] & 1) == 0)
  {
    v103 = [(HMDCameraRecordingLoadBalancerDecision *)v99 analysisNode];
    v104 = [v103 metrics];
    v105 = [v104 hasPendingSessionWithCamera];

    if (v105)
    {
      goto LABEL_70;
    }

    v106 = [(HMDCameraRecordingLoadBalancer *)v76 pendingDecisionsByCameraUUIDByDeviceUUID];
    v107 = [(HMDCameraRecordingLoadBalancerDecision *)v99 deviceUUID];
    v108 = [v106 objectForKeyedSubscript:v107];
    v109 = v108 == 0;

    if (v109)
    {
      v110 = [MEMORY[0x277CBEB38] dictionary];
      v111 = [(HMDCameraRecordingLoadBalancer *)v76 pendingDecisionsByCameraUUIDByDeviceUUID];
      v112 = [(HMDCameraRecordingLoadBalancerDecision *)v99 deviceUUID];
      [v111 setObject:v110 forKeyedSubscript:v112];
    }

    v101 = [(HMDCameraRecordingLoadBalancer *)v76 pendingDecisionsByCameraUUIDByDeviceUUID];
    v102 = [(HMDCameraRecordingLoadBalancerDecision *)v99 deviceUUID];
    v113 = [v101 objectForKeyedSubscript:v102];
    v114 = [(HMDCameraRecordingLoadBalancerDecision *)v99 cameraUUID];
    [v113 setObject:v99 forKeyedSubscript:v114];
  }

LABEL_70:
  _Block_object_dispose(&v135, 8);
  _Block_object_dispose(v158, 8);

  _Block_object_dispose(buf, 8);
  v115 = *MEMORY[0x277D85DE8];

  return v99;
}

uint64_t __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v8 metrics];
  v13 = [v11 metrics];
  v14 = [v8 residentDevice];
  v15 = [v11 residentDevice];
  v16 = [v14 device];
  v73 = [v15 device];
  if ([v12 isB620InOdeon] && (objc_msgSend(v13, "isB620InOdeon") & 1) == 0 && objc_msgSend(v13, "remainingNumberOfAnalyzers") > 0)
  {
    goto LABEL_70;
  }

  if ([v13 isB620InOdeon] && (objc_msgSend(v12, "isB620InOdeon") & 1) == 0 && objc_msgSend(v12, "remainingNumberOfAnalyzers") > 0)
  {
    goto LABEL_28;
  }

  if ([v12 hasActiveSessionWithCamera])
  {
    v17 = [v12 isResourceConstrained];
    v18 = v8;
    if ((v17 & 1) == 0)
    {
LABEL_28:
      v23 = -1;
LABEL_71:
      v31 = v73;
      goto LABEL_72;
    }

LABEL_18:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v18);
    goto LABEL_19;
  }

  if ([v13 hasActiveSessionWithCamera])
  {
    v19 = [v13 isResourceConstrained];
    v18 = v11;
    if (!v19)
    {
      goto LABEL_70;
    }

    goto LABEL_18;
  }

LABEL_19:
  if ([v12 hasPendingSessionWithCamera] && (objc_msgSend(v13, "hasPendingSessionWithCamera") & 1) == 0 && !objc_msgSend(v12, "isResourceConstrained"))
  {
    goto LABEL_28;
  }

  if ([v13 hasPendingSessionWithCamera] && (objc_msgSend(v12, "hasPendingSessionWithCamera") & 1) == 0 && !objc_msgSend(v13, "isResourceConstrained"))
  {
    goto LABEL_70;
  }

  v71 = v15;
  v72 = v16;
  v20 = [v16 identifier];
  v21 = [*(a1 + 32) deviceUUID];
  if ([v20 hmf_isEqualToUUID:v21])
  {
    v22 = [v12 isResourceConstrained];

    if ((v22 & 1) == 0)
    {
LABEL_38:
      v23 = -1;
      goto LABEL_39;
    }
  }

  else
  {
  }

  v24 = [v73 identifier];
  v25 = [*(a1 + 32) deviceUUID];
  if ([v24 hmf_isEqualToUUID:v25])
  {
    v26 = [v13 isResourceConstrained];

    if ((v26 & 1) == 0)
    {
      v23 = 1;
LABEL_39:
      v14 = v70;
LABEL_40:
      v15 = v71;
LABEL_41:
      v16 = v72;
      v31 = v73;
      goto LABEL_72;
    }
  }

  else
  {
  }

  v27 = [v12 maxNumberOfAnalyzers];
  if (v27 && (v28 = v27, [v13 maxNumberOfAnalyzers], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v29))
  {
    v30 = [v12 remainingNumberOfAnalyzers];
    if (v30 > [v13 remainingNumberOfAnalyzers] && objc_msgSend(v12, "remainingNumberOfAnalyzers") > 0)
    {
      goto LABEL_38;
    }

    v33 = [v13 remainingNumberOfAnalyzers];
    v14 = v70;
    v16 = v72;
    if (v33 > [v12 remainingNumberOfAnalyzers] && objc_msgSend(v13, "remainingNumberOfAnalyzers") > 0)
    {
      goto LABEL_61;
    }

    if ([v12 remainingNumberOfAnalyzers] >= 1 && objc_msgSend(v13, "remainingNumberOfAnalyzers") >= 1)
    {
      v34 = [v12 maxAnalysisFPS];
      [v34 doubleValue];
      v36 = v35;
      v37 = [v13 maxAnalysisFPS];
      [v37 doubleValue];
      v39 = v38;

      if (v36 > v39)
      {
        goto LABEL_66;
      }

      v40 = [v13 maxAnalysisFPS];
      [v40 doubleValue];
      v42 = v41;
      v43 = [v12 maxAnalysisFPS];
      [v43 doubleValue];
      v45 = v44;

      v16 = v72;
      if (v42 > v45)
      {
LABEL_61:
        v23 = 1;
        goto LABEL_62;
      }
    }
  }

  else
  {
    v32 = [v12 maxNumberOfAnalyzers];

    if (v32)
    {
      v14 = v70;
      v16 = v72;
      if ([v12 remainingNumberOfAnalyzers] > 0)
      {
LABEL_56:
        v23 = -1;
LABEL_62:
        v15 = v71;
        goto LABEL_71;
      }
    }

    else
    {
      v46 = [v13 maxNumberOfAnalyzers];

      v14 = v70;
      v16 = v72;
      if (v46 && [v13 remainingNumberOfAnalyzers] > 0)
      {
        goto LABEL_61;
      }
    }
  }

  if ([v12 systemResourceUsageLevel])
  {
    v47 = [v12 systemResourceUsageLevel];
    if (v47 < [v13 systemResourceUsageLevel] || !objc_msgSend(v13, "systemResourceUsageLevel") && objc_msgSend(v12, "systemResourceUsageLevel") < 3)
    {
      goto LABEL_56;
    }
  }

  if ([v13 systemResourceUsageLevel])
  {
    v48 = [v12 systemResourceUsageLevel];
    if (v48 > [v13 systemResourceUsageLevel] || !objc_msgSend(v12, "systemResourceUsageLevel") && objc_msgSend(v13, "systemResourceUsageLevel") < 3)
    {
      goto LABEL_61;
    }
  }

  v49 = [v12 numberOfActiveRecordingSessions];
  v50 = [v12 numberOfPendingRecordingSessions] + v49;
  v51 = [v13 numberOfActiveRecordingSessions];
  v52 = [v13 numberOfPendingRecordingSessions] + v51;
  if (v50 < v52)
  {
LABEL_66:
    v23 = -1;
    goto LABEL_40;
  }

  v15 = v71;
  if (v52 < v50)
  {
    v23 = 1;
    goto LABEL_41;
  }

  v16 = v72;
  if ([v72 isCurrentDevice])
  {
LABEL_70:
    v23 = 1;
    goto LABEL_71;
  }

  if ([v73 isCurrentDevice])
  {
    v31 = v73;
    v23 = -1;
    goto LABEL_72;
  }

  v54 = [v72 productInfo];
  v55 = [v54 productClass];
  v56 = [v73 productInfo];
  v57 = [v56 productClass];

  v14 = v70;
  if (v55 != v57)
  {
    v62 = [v72 productInfo];
    v63 = [v62 productClass];

    if (v63 == 4)
    {
      goto LABEL_66;
    }

    v64 = [v73 productInfo];
    v65 = [v64 productClass];

    if (v65 == 4)
    {
      goto LABEL_80;
    }

    v66 = [v72 productInfo];
    v67 = [v66 productClass];

    if (v67 == 3)
    {
      goto LABEL_66;
    }

    v68 = [v73 productInfo];
    v69 = [v68 productClass];

    if (v69 == 3)
    {
LABEL_80:
      v23 = 1;
      goto LABEL_40;
    }
  }

  v58 = [v73 version];
  v59 = [v72 version];
  v23 = [v58 compare:v59];

  v15 = v71;
  v16 = v72;
  v31 = v73;
  if (!v23)
  {
    v60 = [v72 identifier];
    v61 = [v73 identifier];
    v23 = [v60 compare:v61];

    v16 = v72;
    v31 = v73;
    v15 = v71;
  }

LABEL_72:

  return v23;
}

uint64_t __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 metrics];
  if ([v4 isReadyToRecord])
  {
    v5 = *(a1 + 32);
    v6 = [v3 residentDevice];
    v7 = (*(v5 + 16))(v5, v6) ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 residentDevice];
  v4 = [v3 device];
  v5 = [v4 name];
  v6 = [v2 containsObject:v5];

  return v6;
}

uint64_t __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 residentDevice];
  v4 = [v3 device];
  v5 = [v4 name];
  LODWORD(v2) = [v2 containsObject:v5];

  return v2 ^ 1;
}

void __83__HMDCameraRecordingLoadBalancer__makeLoadBalancingDecisionForCamera_deviceFilter___block_invoke_17(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 metrics];
  v4 = [v3 maxNumberOfAnalyzers];
  *(*(*(a1 + 32) + 8) + 24) += [v4 unsignedIntValue];

  v5 = [v8 metrics];
  v6 = [v5 remainingNumberOfAnalyzers];

  if (v6 >= 1)
  {
    v7 = [v8 metrics];
    *(*(*(a1 + 40) + 8) + 24) += [v7 remainingNumberOfAnalyzers];
  }
}

- (void)handleProcessedDecision:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCameraRecordingLoadBalancer *)self pendingDecisionsByCameraUUIDByDeviceUUID];
  v5 = [v11 deviceUUID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [(HMDCameraRecordingLoadBalancer *)self pendingDecisionsByCameraUUIDByDeviceUUID];
    v8 = [v11 deviceUUID];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v11 cameraUUID];
    [v9 setObject:0 forKeyedSubscript:v10];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleRecordingSessionForwardingFailureForDecision:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCameraRecordingLoadBalancer *)self lastDecisionByCameraUUID];
  v5 = [v6 cameraUUID];
  [v4 setObject:0 forKeyedSubscript:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleRecordingSessionForwardingSuccessForDecision:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling successful load balancing decision: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCameraRecordingLoadBalancer *)v6 lastDecisionByCameraUUID];
  v10 = [v4 cameraUUID];
  [v9 setObject:v4 forKeyedSubscript:v10];

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)makeLoadBalancingDecisionForCamera:(id)a3 deviceFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDCameraRecordingLoadBalancer *)self _makeLoadBalancingDecisionForCamera:v6 deviceFilter:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)removeDataForCameraWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCameraRecordingLoadBalancer *)self readyToRecordByCameraUUIDString];
  v6 = [v4 UUIDString];
  [v5 setObject:0 forKeyedSubscript:v6];

  v7 = [(HMDCameraRecordingLoadBalancer *)self recordingSessionSummariesByCameraUUIDString];
  v8 = [v4 UUIDString];
  [v7 setObject:0 forKeyedSubscript:v8];

  v9 = [(HMDCameraRecordingLoadBalancer *)self pendingDecisionsByCameraUUIDByDeviceUUID];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HMDCameraRecordingLoadBalancer_removeDataForCameraWithUUID___block_invoke;
  v11[3] = &unk_278688BF8;
  v10 = v4;
  v12 = v10;
  [v9 na_each:v11];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDCameraRecordingLoadBalancer *)self _updateReadyToRecordMetric];
}

- (BOOL)isReadyToRecordForCameraWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCameraRecordingLoadBalancer *)self readyToRecordByCameraUUIDString];
  v6 = [v4 UUIDString];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (void)recordingDidEndForCameraWithUUID:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraRecordingLoadBalancer *)self homeManager];
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    if ([(HMDCameraRecordingLoadBalancer *)self numberOfActiveRecordingSessions])
    {
      [(HMDCameraRecordingLoadBalancer *)self setNumberOfActiveRecordingSessions:[(HMDCameraRecordingLoadBalancer *)self numberOfActiveRecordingSessions]- 1];
      v6 = [(HMDCameraRecordingLoadBalancer *)self numberOfActiveRecordingSessions];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v10;
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Got recordingDidEndForCamera: %@ with numberOfActiveRecordingSessions == 0", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v6 = 0;
    }

    v11 = [(HMDCameraRecordingLoadBalancer *)self recordingSessionSummariesByCameraUUIDString];
    v12 = [v4 UUIDString];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = v13 == 0;

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Got recordingDidEndForCamera: %@ with no corresponding entry in recordingSessionSummariesByCameraUUIDString", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }

    v19 = [(HMDCameraRecordingLoadBalancer *)self recordingSessionSummariesByCameraUUIDString];
    v20 = [v4 UUIDString];
    [v19 setObject:0 forKeyedSubscript:v20];

    v21 = [(HMDCameraRecordingLoadBalancer *)self recordingSessionSummariesByCameraUUIDString];
    v22 = [v21 copy];

    os_unfair_lock_unlock(&self->_lock);
    v23 = [v5 residentMesh];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    [v23 setMetricForCurrentDevice:@"numberOfActiveRecordingSessions" withValue:v24 isUrgent:0];

    v25 = [v5 residentMesh];
    [v25 setMetricForCurrentDevice:@"recordingSessionSummaries" withValue:v22 isUrgent:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordingDidStartForCameraWithUUID:(id)a3
{
  v13 = a3;
  v4 = [(HMDCameraRecordingLoadBalancer *)self homeManager];
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    [(HMDCameraRecordingLoadBalancer *)self setNumberOfActiveRecordingSessions:[(HMDCameraRecordingLoadBalancer *)self numberOfActiveRecordingSessions]+ 1];
    v5 = [(HMDCameraRecordingLoadBalancer *)self numberOfActiveRecordingSessions];
    v6 = [(HMDCameraRecordingLoadBalancer *)self recordingSessionSummariesByCameraUUIDString];
    v7 = [v13 UUIDString];
    [v6 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:v7];

    v8 = [(HMDCameraRecordingLoadBalancer *)self recordingSessionSummariesByCameraUUIDString];
    v9 = [v8 copy];

    os_unfair_lock_unlock(&self->_lock);
    v10 = [v4 residentMesh];
    [v10 setMetricForCurrentDevice:@"recordingSessionSummaries" withValue:v9 isUrgent:0];

    v11 = [v4 residentMesh];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    [v11 setMetricForCurrentDevice:@"numberOfActiveRecordingSessions" withValue:v12 isUrgent:1];
  }
}

- (void)start
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(HMDCameraRecordingLoadBalancer *)self homeManager];
  [v3 addObserver:self selector:sel_handleResidentMeshInitialized_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:v4];

  v5 = [(HMDCameraRecordingLoadBalancer *)self systemResourceUsageMonitor];
  [v5 setDelegate:self];

  v6 = [(HMDCameraRecordingLoadBalancer *)self systemResourceUsageMonitor];
  [v6 start];
}

- (HMDCameraRecordingLoadBalancer)initWithHomeManager:(id)a3 resourceUsageMonitor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = HMDCameraRecordingLoadBalancer;
  v8 = [(HMDCameraRecordingLoadBalancer *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_homeManager, v6);
    objc_storeStrong(&v9->_systemResourceUsageMonitor, a4);
    v10 = [MEMORY[0x277CBEB38] dictionary];
    readyToRecordByCameraUUIDString = v9->_readyToRecordByCameraUUIDString;
    v9->_readyToRecordByCameraUUIDString = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    recordingSessionSummariesByCameraUUIDString = v9->_recordingSessionSummariesByCameraUUIDString;
    v9->_recordingSessionSummariesByCameraUUIDString = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    pendingDecisionsByCameraUUIDByDeviceUUID = v9->_pendingDecisionsByCameraUUIDByDeviceUUID;
    v9->_pendingDecisionsByCameraUUIDByDeviceUUID = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    lastDecisionByCameraUUID = v9->_lastDecisionByCameraUUID;
    v9->_lastDecisionByCameraUUID = v16;

    v18 = [MEMORY[0x277D0F8D0] sharedPreferences];
    preferences = v9->_preferences;
    v9->_preferences = v18;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29_271673 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29_271673, &__block_literal_global_271674);
  }

  v3 = logCategory__hmf_once_v30_271675;

  return v3;
}

void __45__HMDCameraRecordingLoadBalancer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v30_271675;
  logCategory__hmf_once_v30_271675 = v1;
}

@end