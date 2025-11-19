@interface HMDPrimaryElectionLegacyAddOn
+ (id)logCategory;
+ (int64_t)compareElectionVersions:(id)a3 otherVersion:(id)a4;
- (BOOL)isAtHome;
- (HMDPrimaryElectionLegacyAddOn)initWithContext:(id)a3;
- (HMDPrimaryResidentElectionAddOnDelegate)delegate;
- (HMDResidentDeviceManagerContext)context;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)_electionParameters;
- (id)_electionParameters:(void *)a1;
- (id)computePreferredElector:(unint64_t *)a3;
- (id)logIdentifier;
- (uint64_t)compareCapabilities:(void *)a3 withCapabilities:;
- (void)__handleConfirmationRequest:(id)a3;
- (void)_confirmResidentDevice:(void *)a3 electionParameters:(void *)a4 againstDevices:(void *)a5 completionBlock:;
- (void)_handleConfirmResidentDevice:(id)a3;
- (void)_handleResidentElectionParameters:(id)a3;
- (void)_startMonitoringResident;
- (void)_stopMonitoringResident:(void *)a1;
- (void)_updateDischargingTimer:(void *)a1;
- (void)addDataSource:(id)a3;
- (void)atHomeLevelChanged:(int64_t)a3;
- (void)confirmAsResident;
- (void)confirmElector:(void *)a3 completionHandler:;
- (void)confirmOnAvailability;
- (void)confirmPrimaryResident;
- (void)confirmWithCompletionHandler:(id)a3;
- (void)handleBatteryLevelChange:(id)a3;
- (void)handleBatteryStateChange:(id)a3;
- (void)performElectionWithReason:(unint64_t)a3;
- (void)registerForMessages;
- (void)requestConfirmationForElector:(void *)a3 completionHandler:;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDPrimaryElectionLegacyAddOn

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (HMDPrimaryResidentElectionAddOnDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v3 = [v2 queue];

  return v3;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];

  return v4;
}

- (void)addDataSource:(id)a3
{
  v7 = a3;
  v4 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 queue];
    dispatch_assert_queue_V2(v6);

    [(NSHashTable *)self->_devicePreferenceDataSources addObject:v7];
  }
}

- (void)atHomeLevelChanged:(int64_t)a3
{
  v5 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  if (v5)
  {
    v11 = v5;
    v6 = [v5 queue];
    dispatch_assert_queue_V2(v6);

    if ([v11 isCurrentDeviceAvailableResident])
    {
      v7 = [MEMORY[0x277D0F8C8] sharedManager];
      v8 = [v7 batteryState];

      if (v8 == 1)
      {
        [(HMDPrimaryElectionLegacyAddOn *)self _updateDischargingTimer:a3];
      }
    }

    v5 = v11;
    if (a3 == 1)
    {
      v9 = [v11 primaryResidentDevice];
      v10 = [v9 isCurrentDevice];

      v5 = v11;
      if (v10)
      {
        [(HMDPrimaryElectionLegacyAddOn *)self performElectionWithReason:6];
        v5 = v11;
      }
    }
  }
}

- (void)_updateDischargingTimer:(void *)a1
{
  v28 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [a1 context];
    v5 = v4;
    if (!v4)
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [v4 queue];
    dispatch_assert_queue_V2(v6);

    if (isAppleTV())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v10;
        v11 = "%{public}@We should only be pinging the resident on transient resident capable devices which are enabled";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v11, &v26, 0xCu);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (([v5 isResidentSupported] & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v10;
        v11 = "%{public}@We shouldn't ping if resident is not supported.";
        goto LABEL_12;
      }

LABEL_13:

LABEL_14:
      objc_autoreleasePoolPop(v7);
      goto LABEL_15;
    }

    if (a2 == 1)
    {
      v7 = objc_autoreleasePoolPush();
      v12 = a1;
      v13 = HMFGetOSLogHandle();
      v14 = 1800.0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v15;
        v16 = "%{public}@Updating monitor timer since we are not at home and discharging";
LABEL_20:
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v16, &v26, 0xCu);
      }
    }

    else
    {
      v18 = [v5 atHomeLevel];
      v7 = objc_autoreleasePoolPush();
      v19 = a1;
      v20 = HMFGetOSLogHandle();
      v13 = v20;
      if (v18 != 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v25 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v25;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Battery state change does not require resetting the monitor timer.", &v26, 0xCu);
        }

        goto LABEL_14;
      }

      v14 = 600.0;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v15;
        v16 = "%{public}@Updating monitor timer since we are at home and discharging";
        goto LABEL_20;
      }
    }

    objc_autoreleasePoolPop(v7);
    v21 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:13 options:v14];
    [a1 setResidentMonitorTimer:v21];

    v22 = [a1 residentMonitorTimer];
    [v22 setDelegate:a1];

    v23 = [v5 queue];
    v24 = [a1 residentMonitorTimer];
    [v24 setDelegateQueue:v23];

    [(HMDPrimaryElectionLegacyAddOn *)a1 _startMonitoringResident];
    goto LABEL_15;
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_startMonitoringResident
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 context];
    v3 = v2;
    if (!v2)
    {
LABEL_14:

      goto LABEL_15;
    }

    v4 = [v2 queue];
    dispatch_assert_queue_V2(v4);

    v5 = [v3 primaryResidentDevice];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 device];
      if ([v7 isCurrentDevice] & 1) == 0 && objc_msgSend(v3, "isResidentSupported") && (objc_msgSend(v3, "isResidentEnabled"))
      {
        v8 = [v3 isOwnerUser];

        if (v8)
        {
          v9 = objc_autoreleasePoolPush();
          v10 = a1;
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = HMFGetLogIdentifier();
            v15 = 138543618;
            v16 = v12;
            v17 = 2112;
            v18 = v6;
            _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Start monitoring resident, %@", &v15, 0x16u);
          }

          objc_autoreleasePoolPop(v9);
          v13 = [v10 residentMonitorTimer];
          [v13 resume];

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    [(HMDPrimaryElectionLegacyAddOn *)a1 _stopMonitoringResident:v6];
LABEL_13:

    goto LABEL_14;
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_stopMonitoringResident:(void *)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 context];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 queue];
      dispatch_assert_queue_V2(v6);

      v7 = objc_autoreleasePoolPush();
      v8 = a1;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping monitoring resident, %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [v8 residentMonitorTimer];
      [v11 suspend];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleConfirmResidentDevice:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    dispatch_assert_queue_V2(v7);

    v8 = [v6 currentResidentDevice];
    v9 = [v6 isResidentSupported];
    v10 = [v6 isOwnerUser];
    if (v9 && ([v8 isEnabled] & v10 & 1) != 0)
    {
      v11 = [v4 remoteSourceDevice];
      v12 = [v6 residentDeviceForDevice:v11];
      v34 = [v4 dictionaryForKey:@"kResidentElectionParametersKey"];
      v13 = [v6 primaryResidentDevice];
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      v17 = v16;
      if (v13)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v18;
          v38 = 2112;
          v39 = v12;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Confirming current resident on behalf of %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v35 = v13;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v20 = v34;
        [(HMDPrimaryElectionLegacyAddOn *)v15 _confirmResidentDevice:v12 electionParameters:v34 againstDevices:v19 completionBlock:0];

        [v4 respondWithPayload:0];
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543362;
          v37 = v29;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@No primary resident for confirmation.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v30 = [v4 responseHandler];

        v20 = v34;
        if (v30)
        {
          v31 = [v4 responseHandler];
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          (v31)[2](v31, v32, 0);
        }
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = HMFBooleanToString();
        [v8 isEnabled];
        v26 = HMFBooleanToString();
        v27 = HMFBooleanToString();
        *buf = 138544130;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        v40 = 2112;
        v41 = v26;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Current device is incapable of election and confirmation - Resident Supported: %@, Resident Enabled: %@, Owned Home: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      v28 = [v4 responseHandler];

      if (!v28)
      {
        goto LABEL_18;
      }

      v11 = [v4 responseHandler];
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (v11)[2](v11, v12, 0);
    }

LABEL_18:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_confirmResidentDevice:(void *)a3 electionParameters:(void *)a4 againstDevices:(void *)a5 completionBlock:
{
  v128 = *MEMORY[0x277D85DE8];
  v65 = a2;
  v62 = a3;
  v63 = a4;
  v66 = a5;
  if (a1)
  {
    val = a1;
    v9 = [a1 context];
    v72 = v9;
    if (!v9)
    {
LABEL_48:

      goto LABEL_49;
    }

    v10 = [v9 queue];
    dispatch_assert_queue_V2(v10);

    v64 = [v72 home];
    if (v64)
    {
      if (v65)
      {
        v11 = [v64 accessories];
        v12 = [v11 copy];

        if (v12)
        {
          [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        }

        else
        {
          [MEMORY[0x277CBEB18] array];
        }
        v81 = ;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        obj = v12;
        v21 = [obj countByEnumeratingWithState:&v107 objects:v127 count:16];
        if (v21)
        {
          v22 = *v108;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v108 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = [*(*(&v107 + 1) + 8 * i) uuid];
              v25 = [v24 UUIDString];
              [v81 addObject:v25];
            }

            v21 = [obj countByEnumeratingWithState:&v107 objects:v127 count:16];
          }

          while (v21);
        }

        v125[0] = *MEMORY[0x277CD0640];
        v26 = [v64 uuid];
        v27 = [v26 UUIDString];
        v126[0] = v27;
        v125[1] = *MEMORY[0x277CCE7A8];
        v28 = [v81 copy];
        v126[1] = v28;
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];

        *&buf = 0;
        *(&buf + 1) = &buf;
        v121 = 0x3032000000;
        v122 = __Block_byref_object_copy__118213;
        v123 = __Block_byref_object_dispose__118214;
        v75 = v65;
        v124 = v75;
        v105[0] = 0;
        v105[1] = v105;
        v105[2] = 0x3032000000;
        v105[3] = __Block_byref_object_copy__118213;
        v105[4] = __Block_byref_object_dispose__118214;
        v106 = v62;
        v70 = [v72 primaryResidentDevice];
        if (v70)
        {
          v80 = objc_alloc_init(HMDLegacyPrimaryElectionConfirmationLogEvent);
          -[HMDLegacyPrimaryElectionConfirmationLogEvent setAvailableResidentCount:](v80, "setAvailableResidentCount:", [v63 count]);
          group = dispatch_group_create();
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v71 = v63;
          v29 = [v71 countByEnumeratingWithState:&v101 objects:v119 count:16];
          if (v29)
          {
            v74 = *v102;
            do
            {
              v77 = v29;
              for (j = 0; j != v77; ++j)
              {
                if (*v102 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                v31 = *(*(&v101 + 1) + 8 * j);
                if ([v75 isEqual:v31])
                {
                  [(HMDLegacyPrimaryElectionConfirmationLogEvent *)v80 setAvailableResidentCount:[(HMDLegacyPrimaryElectionConfirmationLogEvent *)v80 availableResidentCount]- 1];
                }

                else
                {
                  v100 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"Confirm against other resident"];
                  dispatch_group_enter(&group->super.super);
                  objc_initWeak(&location, val);
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke;
                  aBlock[3] = &unk_27972BBD0;
                  objc_copyWeak(&v98, &location);
                  v32 = v72;
                  v90 = v32;
                  v91 = v100;
                  v92 = v31;
                  v93 = v80;
                  p_buf = &buf;
                  v97 = v105;
                  v94 = v70;
                  v95 = group;
                  v79 = _Block_copy(aBlock);
                  v33 = [v31 device];
                  v34 = [v33 isCurrentDevice];

                  if (v34)
                  {
                    v35 = objc_autoreleasePoolPush();
                    v36 = val;
                    v37 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      v38 = HMFGetLogIdentifier();
                      v39 = [v100 identifier];
                      v40 = [v39 shortDescription];
                      *v111 = 138543618;
                      v112 = v38;
                      v113 = 2114;
                      v114 = v40;
                      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Confirming against current device", v111, 0x16u);
                    }

                    objc_autoreleasePoolPop(v35);
                    v41 = [(HMDPrimaryElectionLegacyAddOn *)v36 _electionParameters:v81];
                    v79[2](v79, 0, v41);
                  }

                  else
                  {
                    v42 = [HMDRemoteDeviceMessageDestination alloc];
                    v43 = [val messageTargetUUID];
                    v44 = [v31 device];
                    v41 = [(HMDRemoteDeviceMessageDestination *)v42 initWithTarget:v43 device:v44];

                    v45 = [HMDRemoteMessage secureMessageWithName:@"kResidentElectionParametersInternalRequestKey" destination:v41 messagePayload:v68];
                    [v45 setResponseHandler:v79];
                    v46 = objc_autoreleasePoolPush();
                    v47 = val;
                    v48 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                    {
                      v67 = v46;
                      v69 = HMFGetLogIdentifier();
                      v49 = [v100 identifier];
                      v50 = [v49 shortDescription];
                      v51 = [v31 shortDescription];
                      v52 = [v45 shortDescription];
                      *v111 = 138544130;
                      v112 = v69;
                      v113 = 2114;
                      v114 = v50;
                      v115 = 2112;
                      v116 = v51;
                      v117 = 2112;
                      v118 = v52;
                      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Confirming against resident capable device %@ with message: %@", v111, 0x2Au);

                      v46 = v67;
                    }

                    objc_autoreleasePoolPop(v46);
                    v53 = [v32 messageDispatcher];
                    [v53 sendMessage:v45];
                  }

                  objc_destroyWeak(&v98);
                  objc_destroyWeak(&location);
                  __HMFActivityScopeLeave();
                }
              }

              v29 = [v71 countByEnumeratingWithState:&v101 objects:v119 count:16];
            }

            while (v29);
          }

          v54 = [v72 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_50;
          block[3] = &unk_2797346B8;
          v83 = v70;
          v84 = v72;
          v85 = val;
          v87 = v66;
          v88 = &buf;
          v86 = v80;
          v55 = v80;
          dispatch_group_notify(&group->super.super, v54, block);
        }

        else
        {
          v56 = objc_autoreleasePoolPush();
          v57 = val;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            v59 = HMFGetLogIdentifier();
            *v111 = 138543362;
            v112 = v59;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Current resident cannot be determined", v111, 0xCu);
          }

          objc_autoreleasePoolPop(v56);
          group = [[HMDAssertionLogEvent alloc] initWithReason:@"Current resident cannot be determined"];
          v60 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v60 submitLogEvent:group];

          if (v66)
          {
            v66[2]();
          }
        }

        _Block_object_dispose(v105, 8);
        _Block_object_dispose(&buf, 8);

        goto LABEL_47;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = a1;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cancelling confirmation: device to confirm is not specified", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      if (!v66)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Returning early from confirming as resident since home does not exist", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      if (!v66)
      {
        goto LABEL_47;
      }
    }

    v66[2]();
LABEL_47:

    v9 = v72;
    goto LABEL_48;
  }

LABEL_49:

  v61 = *MEMORY[0x277D85DE8];
}

void __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained context];

    if (v9)
    {
      v10 = [*(a1 + 32) queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_2;
      v14[3] = &unk_27972BBA8;
      objc_copyWeak(&v23, (a1 + 96));
      v15 = v5;
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v16 = v11;
      v17 = v12;
      v18 = v13;
      v22 = *(a1 + 80);
      v19 = v6;
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      dispatch_async(v10, v14);

      objc_destroyWeak(&v23);
    }
  }
}

- (id)_electionParameters:(void *)a1
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v5 = [a1 context];
    if (v5)
    {
      v29 = a1;
      [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
      v31 = v30 = v4;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v4;
      v6 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v6)
      {
        v2 = v6;
        v7 = *v34;
        do
        {
          for (i = 0; i != v2; i = i + 1)
          {
            if (*v34 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v33 + 1) + 8 * i);
            v10 = [v5 home];
            v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
            v12 = [v10 accessoryWithUUID:v11];

            v13 = v12;
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

            v16 = v13;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if (v15 | v18)
            {
              if ([v16 isReachable])
              {
                v19 = &unk_286628D80;
              }

              else
              {
                v19 = &unk_286628D98;
              }

              [v31 setObject:v19 forKey:v9];
            }
          }

          v2 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v2);
      }

      v20 = *MEMORY[0x277CCE7A8];
      v38[0] = v31;
      v37[0] = v20;
      v37[1] = @"kEnabledKey";
      v21 = MEMORY[0x277CCABB0];
      v22 = [v5 isResidentSupported];
      if (v22)
      {
        v2 = [v5 currentResidentDevice];
        v23 = [v2 isEnabled];
      }

      else
      {
        v23 = 0;
      }

      v4 = v30;
      v25 = [v21 numberWithInt:v23];
      v38[1] = v25;
      v37[2] = @"kAtHomeStateKey";
      v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v29, "isAtHome")}];
      v38[2] = v26;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

      if (v22)
      {
      }
    }

    else
    {
      v24 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v24 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_50(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) primaryResidentDevice];
  LOBYTE(v2) = HMFEqualObjects();

  if ((v2 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 48);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) primaryResidentDevice];
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Cancelling confirmation: resident device has changed from %@ to %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    result = *(a1 + 64);
    if (result)
    {
      result = (*(result + 16))();
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if ((HMFEqualObjects() & 1) == 0)
  {
    [*(a1 + 56) setChangedPrimary:1];
  }

  v6 = [*(a1 + 48) delegate];
  [v6 primaryElectionAddOn:*(a1 + 48) didElectPrimaryResident:*(*(*(a1 + 72) + 8) + 40) confirmed:1 electionLogEvent:*(a1 + 56)];

  result = *(a1 + 64);
  if (!result)
  {
LABEL_12:
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  v8 = *(result + 16);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

void __106__HMDPrimaryElectionLegacyAddOn__confirmResidentDevice_electionParameters_againstDevices_completionBlock___block_invoke_2(uint64_t a1)
{
  v100 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (!*(a1 + 32))
  {
    [*(a1 + 56) setResidentsRespondedCount:{objc_msgSend(*(a1 + 56), "residentsRespondedCount") + 1}];
    v91 = 0;
    v11 = *(*(*(a1 + 96) + 8) + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 64);
    v90 = *(*(*(a1 + 88) + 8) + 40);
    v14 = v11;
    v15 = v12;
    v89 = v13;
    if (WeakRetained)
    {
      v16 = [WeakRetained context];
      if (v16)
      {
        v87 = v16;
        v86 = v14;
        v17 = [[HMDResidentDeviceElectionParameters alloc] initWithResident:v90 dictionaryRepresentation:v14];
        v18 = [[HMDResidentDeviceElectionParameters alloc] initWithResident:v15 dictionaryRepresentation:v89];
        v91 = 1;
        v88 = v17;
        v19 = [(HMDResidentDeviceElectionParameters *)v17 isEnabled];
        v20 = [(HMDResidentDeviceElectionParameters *)v18 isEnabled];
        v21 = objc_autoreleasePoolPush();
        v22 = WeakRetained;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v24 = v18;
          v26 = v25 = v22;
          *buf = 138543874;
          v93 = v26;
          v94 = 2112;
          v95 = v19;
          v96 = 2112;
          v97 = v20;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Comparing enabled status: %@ -> %@", buf, 0x20u);

          v22 = v25;
          v18 = v24;
        }

        objc_autoreleasePoolPop(v21);
        if (!(v19 | v20) || (!v19 ? (v27 = v20, v28 = 0) : (v27 = v19, v28 = v20), (v29 = [v27 compare:v28]) == 0))
        {

          v91 = 2;
          v31 = [v90 device];
          v32 = [v31 capabilities];

          v33 = [v15 device];
          v34 = [v33 capabilities];

          v35 = objc_autoreleasePoolPush();
          v85 = v22;
          v36 = v22;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v38 = v18;
            v40 = v39 = v15;
            *buf = 138543874;
            v93 = v40;
            v94 = 2112;
            v95 = v32;
            v96 = 2112;
            v97 = v34;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Comparing capabilities status: %@ -> %@", buf, 0x20u);

            v15 = v39;
            v18 = v38;
          }

          objc_autoreleasePoolPop(v35);
          v29 = [(HMDPrimaryElectionLegacyAddOn *)v36 compareCapabilities:v32 withCapabilities:v34];

          if (v29)
          {
            v30 = v88;
            v22 = v85;
            goto LABEL_25;
          }

          v41 = objc_autoreleasePoolPush();
          v42 = v36;
          v43 = HMFGetOSLogHandle();
          v30 = v88;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v44 = v18;
            v46 = v45 = v15;
            *buf = 138543874;
            v93 = v46;
            v94 = 2112;
            v95 = v88;
            v96 = 2112;
            v97 = v44;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Comparing parameters: %@ -> %@", buf, 0x20u);

            v15 = v45;
            v18 = v44;
          }

          objc_autoreleasePoolPop(v41);
          v47 = [(HMDResidentDeviceElectionParameters *)v88 compare:v18 outCriteria:&v91];
          v22 = v85;
          if (v47)
          {
            v29 = v47;
            goto LABEL_25;
          }

          v91 = 8;
          [v90 device];
          v62 = v61 = v15;
          v19 = [v62 version];

          v84 = v61;
          v63 = [v61 device];
          v20 = [v63 version];

          v64 = objc_autoreleasePoolPush();
          v65 = v42;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543874;
            v93 = v67;
            v94 = 2112;
            v95 = v19;
            v96 = 2112;
            v97 = v20;
            _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_DEBUG, "%{public}@Comparing election versions: %@ -> %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v64);
          v68 = [HMDPrimaryElectionLegacyAddOn compareElectionVersions:v19 otherVersion:v20];
          if (v68)
          {
            v29 = v68;
            v15 = v84;
            v22 = v85;
          }

          else
          {
            v91 = 10;
            v69 = [v87 primaryResidentDevice];
            v70 = objc_autoreleasePoolPush();
            v71 = v65;
            v72 = HMFGetOSLogHandle();
            v15 = v84;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              HMFGetLogIdentifier();
              v73 = v83 = v69;
              [v83 shortDescription];
              v74 = v81 = v71;
              [v90 shortDescription];
              v75 = v82 = v70;
              v76 = [v84 shortDescription];
              *buf = 138544130;
              v93 = v73;
              v94 = 2112;
              v95 = v74;
              v96 = 2112;
              v97 = v75;
              v98 = 2112;
              v99 = v76;
              _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_DEBUG, "%{public}@Comparing current primary %@: %@ -> %@", buf, 0x2Au);

              v15 = v84;
              v70 = v82;

              v71 = v81;
              v69 = v83;
            }

            objc_autoreleasePoolPop(v70);
            v22 = v85;
            if ([v69 isEqual:v90])
            {
              v29 = 1;
            }

            else if ([v69 isEqual:v15])
            {
              v29 = -1;
            }

            else
            {
              v77 = objc_autoreleasePoolPush();
              v78 = v71;
              v79 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
              {
                v80 = HMFGetLogIdentifier();
                *buf = 138543362;
                v93 = v80;
                _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_DEBUG, "%{public}@Comparing, equivalent", buf, 0xCu);

                v15 = v84;
              }

              objc_autoreleasePoolPop(v77);
              v29 = 0;
              v91 = 0;
              v22 = v85;
            }
          }
        }

        v30 = v88;
LABEL_25:

        if (v29 != -1)
        {
LABEL_30:
          if (v91 > 0x11)
          {
            v58 = @"unknown reason";
          }

          else
          {
            v58 = off_279728B88[v91];
          }

          v59 = v58;
          [*(a1 + 56) setCriteria:v59];

          goto LABEL_34;
        }

        v48 = objc_autoreleasePoolPush();
        v49 = v22;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = HMFGetLogIdentifier();
          v52 = [*(a1 + 40) identifier];
          v53 = [v52 shortDescription];
          v54 = *(a1 + 48);
          v55 = *(a1 + 72);
          *buf = 138544130;
          v93 = v51;
          v94 = 2114;
          v95 = v53;
          v96 = 2112;
          v97 = v54;
          v98 = 2112;
          v99 = v55;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Preferring device: %@ over current primary resident: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v48);
        objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 48));
        v56 = *(*(a1 + 96) + 8);
        v57 = *(a1 + 64);
        v90 = *(v56 + 40);
        *(v56 + 40) = v57;
LABEL_29:

        goto LABEL_30;
      }
    }

    goto LABEL_29;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) identifier];
    v8 = [v7 shortDescription];
    v9 = [*(a1 + 48) shortDescription];
    v10 = *(a1 + 32);
    *buf = 138544130;
    v93 = v6;
    v94 = 2114;
    v95 = v8;
    v96 = 2112;
    v97 = v9;
    v98 = 2112;
    v99 = v10;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Failed to get election parameters from resident device %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
LABEL_34:
  dispatch_group_leave(*(a1 + 80));

  v60 = *MEMORY[0x277D85DE8];
}

- (uint64_t)compareCapabilities:(void *)a3 withCapabilities:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 context];
    if (v7 && (HMFEqualObjects() & 1) == 0)
    {
      if (!v5)
      {
        a1 = -1;
        goto LABEL_5;
      }

      if (!v6)
      {
        a1 = 1;
        goto LABEL_5;
      }

      v22 = v7;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = [a1 devicePreferenceDataSources];
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = 0;
        v15 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v10);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            v14 += [v17 supportsDeviceWithCapabilities:v5];
            v13 += [v17 supportsDeviceWithCapabilities:v6];
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v12);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v18 = objc_autoreleasePoolPush();
      v19 = a1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v28 = v21;
        v29 = 2048;
        v30 = v14;
        v31 = 2048;
        v32 = v13;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Comparing device preferences: %ld -> %ld", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      if (v14 > v13)
      {
        a1 = 1;
      }

      else
      {
        a1 = -1;
      }

      v7 = v22;
      if (v14 != v13)
      {
        goto LABEL_5;
      }
    }

    a1 = 0;
LABEL_5:
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)_handleResidentElectionParameters:(id)a3
{
  v12 = a3;
  v4 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 queue];
    dispatch_assert_queue_V2(v6);

    v7 = [v12 messagePayload];
    v8 = [v7 hmf_arrayForKey:*MEMORY[0x277CCE7A8]];

    v9 = [v12 responseHandler];

    if (v9)
    {
      v10 = [(HMDPrimaryElectionLegacyAddOn *)self _electionParameters:v8];
      v11 = [v12 responseHandler];
      (v11)[2](v11, 0, v10);
    }
  }
}

- (BOOL)isAtHome
{
  v2 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 atHomeLevel] == 2 || objc_msgSend(v3, "atHomeLevel") == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)confirmPrimaryResident
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    dispatch_assert_queue_V2(v5);

    v6 = [v4 currentResidentDevice];
    v7 = [v4 isResidentSupported];
    v8 = [v4 isOwnerUser];
    if (v7 && ([v6 isEnabled] & v8 & 1) != 0)
    {
      v9 = [v4 primaryResidentDevice];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 device];
        v12 = [v11 isCurrentDevice];

        if ((v12 & 1) == 0)
        {
          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v17 = [v10 shortDescription];
            *buf = 138543618;
            v34 = v16;
            v35 = 2112;
            v36 = v17;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Confirming primary resident: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          v18 = [v10 device];
          v19 = [v18 capabilities];
          v20 = [v6 device];
          v21 = [v20 capabilities];
          v22 = [(HMDPrimaryElectionLegacyAddOn *)v14 compareCapabilities:v19 withCapabilities:v21];

          if (v22 == -1)
          {
            objc_initWeak(buf, v14);
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __55__HMDPrimaryElectionLegacyAddOn_confirmPrimaryResident__block_invoke;
            v31[3] = &unk_279734708;
            objc_copyWeak(&v32, buf);
            [(HMDPrimaryElectionLegacyAddOn *)v14 confirmWithCompletionHandler:v31];
            objc_destroyWeak(&v32);
            objc_destroyWeak(buf);
          }
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = HMFBooleanToString();
        [v6 isEnabled];
        v28 = HMFBooleanToString();
        v29 = HMFBooleanToString();
        *buf = 138544130;
        v34 = v26;
        v35 = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v28;
        v39 = 2112;
        v40 = v29;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Current device is incapable of election and confirmation - Resident Supported: %@, Resident Enabled: %@, Owned Home: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __55__HMDPrimaryElectionLegacyAddOn_confirmPrimaryResident__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Confirmed with error: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)confirmOnAvailability
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    dispatch_assert_queue_V2(v5);

    v6 = [v4 currentResidentDevice];
    v7 = [(HMDPrimaryElectionLegacyAddOn *)self _electionParameters];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Resident device has become available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDPrimaryElectionLegacyAddOn *)v9 computePreferredElector:0];
    v13 = [v4 primaryResidentDevice];
    if (v13)
    {
      v14 = [v12 device];
      v15 = [v14 isCurrentDevice];

      v16 = objc_autoreleasePoolPush();
      v17 = v9;
      v18 = HMFGetOSLogHandle();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v19)
        {
          v20 = HMFGetLogIdentifier();
          v21 = [v4 primaryResidentDevice];
          *buf = 138543618;
          v37 = v20;
          v38 = 2112;
          v39 = v21;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Confirming ourselves against primary resident %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v35 = v13;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        [(HMDPrimaryElectionLegacyAddOn *)v17 _confirmResidentDevice:v6 electionParameters:v7 againstDevices:v22 completionBlock:0];
      }

      else
      {
        if (v19)
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v4 primaryResidentDevice];
          *buf = 138543618;
          v37 = v23;
          v38 = 2112;
          v39 = v24;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Requesting to confirm this device against primary resident %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v25 = [HMDRemoteDeviceMessageDestination alloc];
        v26 = [(HMDPrimaryElectionLegacyAddOn *)v17 messageTargetUUID];
        v27 = [v12 device];
        v28 = [(HMDRemoteDeviceMessageDestination *)v25 initWithTarget:v26 device:v27];

        v33 = @"kResidentElectionParametersKey";
        v34 = v7;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v30 = [HMDRemoteMessage secureMessageWithName:@"kResidentConfirmDeviceInternalRequestKey" destination:v28 messagePayload:v29];

        v31 = [v4 messageDispatcher];
        [v31 sendMessage:v30 completionHandler:0];
      }
    }

    else
    {
      [(HMDPrimaryElectionLegacyAddOn *)v9 performElectionWithReason:0];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_electionParameters
{
  v1 = a1;
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 context];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 home];
      v5 = [v4 accessories];
      v6 = [v5 copy];

      if (v6)
      {
        [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      }

      else
      {
        [MEMORY[0x277CBEB18] array];
      }
      v7 = ;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v6;
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

            v13 = [*(*(&v17 + 1) + 8 * i) uuid];
            v14 = [v13 UUIDString];
            [v7 addObject:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }

      v1 = [(HMDPrimaryElectionLegacyAddOn *)v1 _electionParameters:v7];
    }

    else
    {
      v1 = MEMORY[0x277CBEC10];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)confirmAsResident
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    dispatch_assert_queue_V2(v5);

    if (([v4 isResidentSupported] & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Do not confirm ourselves as the resident; We are not currently supported", buf, 0xCu);
      }

      v18 = v14;
      goto LABEL_11;
    }

    if (![(HMDPrimaryElectionLegacyAddOn *)self isConfirming])
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting to confirm ourselves as the resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v10 = [v4 home];

      if (v10)
      {
        [(HMDPrimaryElectionLegacyAddOn *)v7 setConfirming:1];
        v11 = [v4 currentResidentDevice];
        v12 = [(HMDPrimaryElectionLegacyAddOn *)v7 _electionParameters];
        v13 = [v4 availableResidentDevices];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __50__HMDPrimaryElectionLegacyAddOn_confirmAsResident__block_invoke;
        v24[3] = &unk_279735D00;
        v24[4] = v7;
        [(HMDPrimaryElectionLegacyAddOn *)v7 _confirmResidentDevice:v11 electionParameters:v12 againstDevices:v13 completionBlock:v24];

        goto LABEL_12;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = v7;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Returning early from confirming as resident since home does not exist", buf, 0xCu);
      }

      v18 = v20;
LABEL_11:
      objc_autoreleasePoolPop(v18);
    }
  }

LABEL_12:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)__handleConfirmationRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    dispatch_assert_queue_V2(v7);

    if ([v6 isResidentSupported] && (objc_msgSend(v6, "isCurrentDeviceAvailableResident") & 1) != 0)
    {
      if ([v4 BOOLForKey:@"shouldElect"])
      {
        [(HMDPrimaryElectionLegacyAddOn *)self computePreferredElector:0];
      }

      else
      {
        [v6 currentResidentDevice];
      }
      v12 = ;
      if (v12)
      {
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __61__HMDPrimaryElectionLegacyAddOn___handleConfirmationRequest___block_invoke;
        v19[3] = &unk_2797359D8;
        v20 = v4;
        [(HMDPrimaryElectionLegacyAddOn *)self confirmElector:v12 completionHandler:v19];
        v13 = v20;
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v22 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Confirmation failed, unable to determine the elector", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Confirmation failed." reason:@"Unable to determine the elector" suggestion:0];
        [v4 respondWithError:v13];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Confirmation failed, not an available resident", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Confirmation failed." reason:@"Not an available resident device." suggestion:0];
      [v4 respondWithError:v12];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)confirmElector:(void *)a3 completionHandler:
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 context];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 queue];
      dispatch_assert_queue_V2(v9);

      v10 = [v5 device];
      v11 = [v10 isCurrentDevice];

      if (v11)
      {
        v12 = [v8 primaryResidentDevice];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
          v15 = [a1 context];
          if (v15)
          {
            v45 = v14;
            v16 = [v14 capabilities];
            if (v16)
            {
              v43 = v13;
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v17 = [a1 devicePreferenceDataSources];
              v18 = [v17 countByEnumeratingWithState:&v46 objects:buf count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v47;
                while (2)
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v47 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    if (([*(*(&v46 + 1) + 8 * i) supportsDeviceWithCapabilities:v16] & 1) == 0)
                    {

                      v22 = 0;
                      goto LABEL_22;
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v46 objects:buf count:16];
                  if (v19)
                  {
                    continue;
                  }

                  break;
                }
              }

              v22 = 1;
LABEL_22:
              v13 = v43;
            }

            else
            {
              v29 = objc_autoreleasePoolPush();
              v30 = a1;
              v31 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                v44 = v29;
                [v45 shortDescription];
                *buf = 138543618;
                v51 = v42;
                v53 = v52 = 2112;
                v32 = v53;
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unable to confirm device, %@, missing capabilities", buf, 0x16u);

                v29 = v44;
              }

              objc_autoreleasePoolPop(v29);
              v22 = 0;
            }

            v14 = v45;
          }

          else
          {
            v22 = 0;
          }

          v33 = objc_autoreleasePoolPush();
          v34 = a1;
          v35 = HMFGetOSLogHandle();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
          if (v22)
          {
            if (v36)
            {
              v37 = HMFGetLogIdentifier();
              v38 = [v14 shortDescription];
              *buf = 138543618;
              v51 = v37;
              v52 = 2112;
              v53 = v38;
              _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Confirmed device: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            if (!v6)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          if (v36)
          {
            v39 = HMFGetLogIdentifier();
            v40 = [v14 shortDescription];
            *buf = 138543618;
            v51 = v39;
            v52 = 2112;
            v53 = v40;
            _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Confirmation of device, %@, failed, starting full election", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          v27 = v34;
          v28 = 5;
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          v24 = a1;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543362;
            v51 = v26;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@No primary resident, starting full election", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v23);
          v27 = v24;
          v28 = 0;
        }

        [v27 performElectionWithReason:v28];
        if (!v6)
        {
LABEL_37:

          goto LABEL_38;
        }

LABEL_36:
        v6[2](v6, 0);
        goto LABEL_37;
      }

      [(HMDPrimaryElectionLegacyAddOn *)a1 requestConfirmationForElector:v5 completionHandler:v6];
    }

LABEL_38:
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)requestConfirmationForElector:(void *)a3 completionHandler:
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  v7 = a3;
  if (a1)
  {
    v8 = [a1 context];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 queue];
      dispatch_assert_queue_V2(v10);

      if (v5)
      {
        goto LABEL_7;
      }

      v6 = [v9 primaryResidentDevice];
      v11 = objc_autoreleasePoolPush();
      v12 = a1;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v14;
        v45 = 2112;
        v46 = v6;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@No elector provided, using current primary: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      if (v6)
      {
LABEL_7:
        v15 = objc_autoreleasePoolPush();
        v16 = a1;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v6 shortDescription];
          *buf = 138543618;
          v44 = v18;
          v45 = 2112;
          v46 = v19;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Requesting confirmation from %@", buf, 0x16u);
        }

        v20 = v5 == 0;

        objc_autoreleasePoolPop(v15);
        v21 = [v6 device];
        v22 = [HMDRemoteDeviceMessageDestination alloc];
        v23 = [v16 messageTargetUUID];
        v24 = [(HMDRemoteDeviceMessageDestination *)v22 initWithTarget:v23 device:v21];

        v25 = MEMORY[0x277D0F848];
        v41 = @"shouldElect";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:v20];
        v42 = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v28 = [v25 messageWithName:*MEMORY[0x277CCFEA0] destination:v24 payload:v27];

        [v28 setSecureRemote:1];
        objc_initWeak(buf, v16);
        v35 = MEMORY[0x277D85DD0];
        v36 = 3221225472;
        v37 = __81__HMDPrimaryElectionLegacyAddOn_requestConfirmationForElector_completionHandler___block_invoke;
        v38 = &unk_2797355F8;
        objc_copyWeak(&v40, buf);
        v39 = v7;
        [v28 setResponseHandler:&v35];
        v29 = [v9 messageDispatcher];
        [v29 sendMessage:v28 completionHandler:0];

        objc_destroyWeak(&v40);
        objc_destroyWeak(buf);
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v12;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v34;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot confirm, unable to determine primary resident", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v31);
        if (!v7)
        {
          v6 = 0;
          goto LABEL_11;
        }

        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91 description:@"Cannot confirm." reason:@"Unable to determine primary resident" suggestion:0];
        (*(v7 + 2))(v7, v21);
        v6 = 0;
      }
    }

LABEL_11:
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __81__HMDPrimaryElectionLegacyAddOn_requestConfirmationForElector_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    v13 = "%{public}@Confirmation request failed with error: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v12;
    v13 = "%{public}@Confirmation request succeeded";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
    v16 = 12;
  }

  _os_log_impl(&dword_2531F8000, v14, v15, v13, &v19, v16);

LABEL_7:
  objc_autoreleasePoolPop(v8);
  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)confirmWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    dispatch_assert_queue_V2(v7);

    if ([v6 isOwnerUser])
    {
      v8 = [v6 currentResidentDevice];
      v9 = [v6 availableResidentDevices];
      v10 = [v9 containsObject:v8];

      if (v10)
      {
        v11 = [(HMDPrimaryElectionLegacyAddOn *)self computePreferredElector:0];
        if (v11)
        {
          [(HMDPrimaryElectionLegacyAddOn *)self confirmElector:v11 completionHandler:v4];
        }

        else
        {
          v20 = objc_autoreleasePoolPush();
          v21 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v26 = 138543362;
            v27 = v23;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Confirmation failed, unable to determine the elector", &v26, 0xCu);
          }

          objc_autoreleasePoolPop(v20);
          if (v4)
          {
            v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Confirmation failed." reason:@"Unable to determine the elector" suggestion:0];
            (*(v4 + 2))(v4, v24);
          }
        }
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v19;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Requesting confirmation from primary resident device", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        [(HMDPrimaryElectionLegacyAddOn *)v17 requestConfirmationForElector:v4 completionHandler:?];
      }

      goto LABEL_18;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Confirmation is only available to the owner of the home", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (v4)
    {
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:0 reason:@"Confirmation is only available to the owner of the home." suggestion:0];
      (*(v4 + 2))(v4, v8);
LABEL_18:
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)computePreferredElector:(unint64_t *)a3
{
  v4 = self;
  v55 = *MEMORY[0x277D85DE8];
  v5 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      *a3 = 11;
    }

    v37 = v5;
    v7 = [v5 availableResidentDevices];
    v8 = [v7 mutableCopy];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v40 = v8;
    v9 = [v8 copy];
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      v38 = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v44 + 1) + 8 * i);
          if (([v14 isReachable] & 1) == 0)
          {
            v15 = objc_autoreleasePoolPush();
            v16 = v4;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v18 = v39 = v15;
              v19 = [v14 device];
              [v19 isCurrentDevice];
              HMFBooleanToString();
              v20 = v12;
              v22 = v21 = v4;
              *buf = 138543874;
              v49 = v18;
              v50 = 2112;
              v51 = v14;
              v52 = 2112;
              v53 = v22;
              _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Not electing resident as it is unreachable: %@, isCurrentDevice: %@", buf, 0x20u);

              v9 = v38;
              v4 = v21;
              v12 = v20;

              v15 = v39;
            }

            objc_autoreleasePoolPop(v15);
            [v40 removeObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v11);
    }

    if (isInternalBuild())
    {
      v6 = v37;
      v23 = [v37 home];
      v24 = [v23 uuid];

      v25 = [preferredPrimaryForHome objectForKey:v24];
      if (v25)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v4;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v24 UUIDString];
          v31 = [v25 UUIDString];
          *buf = 138543874;
          v49 = v29;
          v50 = 2112;
          v51 = v30;
          v52 = 2112;
          v53 = v31;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@The house %@ has a preferred primary device of %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }

    else
    {
      v25 = 0;
      v6 = v37;
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __57__HMDPrimaryElectionLegacyAddOn_computePreferredElector___block_invoke;
    v41[3] = &unk_27972BB80;
    v42 = v25;
    v43 = v36;
    v33 = v25;
    [v40 sortUsingComparator:v41];
    v32 = [v40 lastObject];
  }

  else
  {
    v32 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v32;
}

uint64_t __57__HMDPrimaryElectionLegacyAddOn_computePreferredElector___block_invoke(uint64_t a1, void *a2, void *a3)
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

  v12 = [v8 device];

  v13 = [v11 device];

  if (isInternalBuild())
  {
    v14 = *(a1 + 32);
    v15 = [v12 identifier];
    LODWORD(v14) = [v14 isEqual:v15];

    if (v14)
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = 12;
LABEL_32:
        *v16 = v17;
        goto LABEL_33;
      }

      goto LABEL_33;
    }

    v18 = *(a1 + 32);
    v19 = [v13 identifier];
    LODWORD(v18) = [v18 isEqual:v19];

    if (v18)
    {
      v20 = *(a1 + 40);
      if (v20)
      {
        v21 = 12;
LABEL_27:
        *v20 = v21;
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  v22 = [v12 version];
  v23 = [v13 version];
  v24 = [v22 compare:v23];

  if (v24)
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      *v25 = 16;
    }
  }

  else
  {
    v26 = [v12 productInfo];
    v27 = [v26 productClass];
    v28 = [v13 productInfo];
    v29 = [v28 productClass];

    if (v27 != v29)
    {
      v30 = [v12 productInfo];
      v31 = [v30 productClass];

      if (v31 == 3)
      {
        v20 = *(a1 + 40);
        if (v20)
        {
          v21 = 4;
          goto LABEL_27;
        }

LABEL_28:
        v24 = -1;
        goto LABEL_34;
      }

      v33 = [v13 productInfo];
      v34 = [v33 productClass];

      if (v34 == 3)
      {
        v16 = *(a1 + 40);
        if (v16)
        {
          v17 = 4;
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }

    if ([v12 isCurrentDevice])
    {
      v16 = *(a1 + 40);
      if (v16)
      {
        v17 = 11;
        goto LABEL_32;
      }

LABEL_33:
      v24 = 1;
      goto LABEL_34;
    }

    v32 = [v13 isCurrentDevice];
    v20 = *(a1 + 40);
    if (v32)
    {
      if (v20)
      {
        v21 = 11;
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    v24 = 0;
    if (v20)
    {
      *v20 = 0;
    }
  }

LABEL_34:

  return v24;
}

- (void)handleBatteryLevelChange:(id)a3
{
  v4 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__HMDPrimaryElectionLegacyAddOn_handleBatteryLevelChange___block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = v5;
    dispatch_async(v6, v7);
  }
}

void __58__HMDPrimaryElectionLegacyAddOn_handleBatteryLevelChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Received notification that of battery level change", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) currentResidentDevice];
  if (v6)
  {
    v7 = [MEMORY[0x277D0F8C8] sharedManager];
    [v7 batteryLevel];
    v9 = v8;

    v10 = v9 <= 0.2 && (v9 > 0.0);
    if (v10 != [v6 isLowBattery])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v14)
        {
          v15 = HMFGetLogIdentifier();
          v19 = 138543362;
          v20 = v15;
          v16 = "%{public}@Currently in a low battery state, notifying clients";
LABEL_13:
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v16, &v19, 0xCu);
        }
      }

      else if (v14)
      {
        v15 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v15;
        v16 = "%{public}@No longer in a low battery state, notifying clients";
        goto LABEL_13;
      }

      objc_autoreleasePoolPop(v11);
      [v6 setLowBattery:v10];
      v17 = [*(a1 + 32) delegate];
      [v17 primaryElectionAddOn:*(a1 + 32) didUpdateResidentDevice:v6];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleBatteryStateChange:(id)a3
{
  v4 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__HMDPrimaryElectionLegacyAddOn_handleBatteryStateChange___block_invoke;
    v7[3] = &unk_2797359B0;
    v7[4] = self;
    v8 = v5;
    dispatch_async(v6, v7);
  }
}

void __58__HMDPrimaryElectionLegacyAddOn_handleBatteryStateChange___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v41 = 138543362;
    v42 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification that of battery state change", &v41, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 40) currentResidentDevice];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 batteryState];
    v9 = [MEMORY[0x277D0F8C8] sharedManager];
    v10 = [v9 batteryState];

    if (v10 != v8)
    {
      if (v8)
      {
        if (v10 == 1)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = *(a1 + 32);
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            v41 = 138543362;
            v42 = v14;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Currently discharging, notifying clients", &v41, 0xCu);
          }

          objc_autoreleasePoolPop(v11);
          -[HMDPrimaryElectionLegacyAddOn _updateDischargingTimer:](*(a1 + 32), [*(a1 + 40) atHomeLevel]);
          goto LABEL_29;
        }

        if (v8 == 1)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = *(a1 + 32);
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v41 = 138543362;
            v42 = v18;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Currently charging, notifying clients", &v41, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          v19 = *(a1 + 32);
          if (!v19)
          {
            goto LABEL_29;
          }

          v20 = [*(a1 + 32) context];
          v21 = v20;
          if (!v20)
          {
            goto LABEL_28;
          }

          v22 = [v20 queue];
          dispatch_assert_queue_V2(v22);

          if (isAppleTV())
          {
            v23 = objc_autoreleasePoolPush();
            v24 = v19;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = HMFGetLogIdentifier();
              v41 = 138543362;
              v42 = v26;
              _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@We should only be pinging the resident on transient resident capable devices which are enabled", &v41, 0xCu);
            }

            v27 = v23;
          }

          else
          {
            v28 = [v21 isResidentSupported];
            v29 = objc_autoreleasePoolPush();
            v30 = v19;
            v31 = HMFGetOSLogHandle();
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
            if (v28)
            {
              if (v32)
              {
                v33 = HMFGetLogIdentifier();
                v41 = 138543362;
                v42 = v33;
                _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Updating monitor timer since we are charging", &v41, 0xCu);
              }

              objc_autoreleasePoolPop(v29);
              v34 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:5 options:60.0];
              [v30 setResidentMonitorTimer:v34];

              v35 = [v30 residentMonitorTimer];
              [v35 setDelegate:v30];

              v36 = [v21 queue];
              v37 = [v30 residentMonitorTimer];
              [v37 setDelegateQueue:v36];

              [(HMDPrimaryElectionLegacyAddOn *)v30 _startMonitoringResident];
              goto LABEL_28;
            }

            if (v32)
            {
              v38 = HMFGetLogIdentifier();
              v41 = 138543362;
              v42 = v38;
              _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@We shouldn't ping if resident is not supported.", &v41, 0xCu);
            }

            v27 = v29;
          }

          objc_autoreleasePoolPop(v27);
LABEL_28:

LABEL_29:
          [v7 setBatteryState:v10];
          v39 = [*(a1 + 32) delegate];
          [v39 primaryElectionAddOn:*(a1 + 32) didUpdateResidentDevice:v7];

          goto LABEL_30;
        }
      }

      [v7 setBatteryState:v10];
    }
  }

LABEL_30:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    dispatch_assert_queue_V2(v7);

    v8 = [v6 primaryResidentDevice];
    v9 = [v8 device];

    if (v9 && ([v9 isCurrentDevice] & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v13;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Pinging resident: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v6 messageDispatcher];
      v15 = [v14 secureRemoteTransport];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __46__HMDPrimaryElectionLegacyAddOn_timerDidFire___block_invoke;
      v17[3] = &unk_27972C528;
      v17[4] = v11;
      v18 = v9;
      [v15 pingDevice:v18 completionHandler:v17];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__HMDPrimaryElectionLegacyAddOn_timerDidFire___block_invoke(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Ping failed for resident: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performElectionWithReason:(unint64_t)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_21;
  }

  v7 = [v5 queue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    if (a3 - 1 > 6)
    {
      v12 = @"no primary";
    }

    else
    {
      v12 = off_279728B50[a3 - 1];
    }

    v13 = v12;
    *buf = 138543618;
    v43 = v11;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Performing election with reason: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (([v6 isResidentEnabled] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v23;
    v24 = "%{public}@Only resident capable devices which are enabled should perform resident election";
LABEL_19:
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, v24, buf, 0xCu);

    goto LABEL_20;
  }

  if (([v6 isResidentSupported] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v23;
    v24 = "%{public}@Resident election is not supported on this device.";
    goto LABEL_19;
  }

  if (([v6 isOwnerUser] & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v9;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v23;
      v24 = "%{public}@Only owners can perform resident election";
      goto LABEL_19;
    }

LABEL_20:

    objc_autoreleasePoolPop(v20);
    goto LABEL_21;
  }

  v14 = [v6 currentResidentDevice];
  [(HMDPrimaryElectionLegacyAddOn *)v9 _stopMonitoringResident:v14];

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    if (a3 - 1 > 6)
    {
      v19 = @"no primary";
    }

    else
    {
      v19 = off_279728B50[a3 - 1];
    }

    v26 = v19;
    *buf = 138543618;
    v43 = v18;
    v44 = 2112;
    v45 = v26;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Starting primary resident election: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v41 = 0;
  v27 = [(HMDPrimaryElectionLegacyAddOn *)v16 computePreferredElector:&v41];
  v28 = [(HMDPrimaryElectionLegacyAddOn *)v16 delegate];
  v29 = objc_autoreleasePoolPush();
  v30 = v16;
  v31 = HMFGetOSLogHandle();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v32)
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v33;
      v44 = 2112;
      v45 = v27;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Resident device elected: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v34 = objc_alloc_init(HMDLegacyPrimaryElectionLogEvent);
    if (a3 - 1 > 6)
    {
      v35 = @"no primary";
    }

    else
    {
      v35 = off_279728B50[a3 - 1];
    }

    v37 = v35;
    [(HMDLegacyPrimaryElectionLogEvent *)v34 setReason:v37];

    if (v41 > 0x11)
    {
      v38 = @"unknown reason";
    }

    else
    {
      v38 = off_279728B88[v41];
    }

    v39 = v38;
    [(HMDLegacyPrimaryElectionLogEvent *)v34 setCriteria:v39];

    v40 = [v6 availableResidentDevices];
    -[HMDLegacyPrimaryElectionLogEvent setAvailableResidentCount:](v34, "setAvailableResidentCount:", [v40 count]);

    [v28 primaryElectionAddOn:v30 didElectPrimaryResident:v27 confirmed:0 electionLogEvent:v34];
  }

  else
  {
    if (v32)
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v36;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@No resident device available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"No valid resident found" reason:0 suggestion:0];
    [v28 primaryElectionAddOn:v30 didFailToElectWithError:v34];
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 messageDispatcher];
    v16 = [v4 home];
    v6 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v6 setRequiresSecureMessage:1];
    [v6 setRequiresAccountMessage:1];
    [v6 setTransportRestriction:-1];
    v7 = [v6 copy];
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v16 userPrivilege:3 remoteAccessRequired:0];
    v19[0] = v7;
    v19[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [v5 registerForMessage:@"kResidentElectionParametersInternalRequestKey" receiver:self policies:v9 selector:sel__handleResidentElectionParameters_];

    v10 = *MEMORY[0x277CCFEA0];
    v18[0] = v7;
    v18[1] = v8;
    v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v18[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [v5 registerForMessage:v10 receiver:self policies:v12 selector:sel___handleConfirmationRequest_];

    v17[0] = v7;
    v17[1] = v8;
    v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v17[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    [v5 registerForMessage:@"kResidentConfirmDeviceInternalRequestKey" receiver:self policies:v14 selector:sel__handleConfirmResidentDevice_];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v2 = [(HMDPrimaryElectionLegacyAddOn *)self residentMonitorTimer];
  [v2 suspend];
}

- (void)start
{
  v3 = [(HMDPrimaryElectionLegacyAddOn *)self context];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 queue];
    dispatch_assert_queue_V2(v4);

    [(HMDPrimaryElectionLegacyAddOn *)self _startMonitoringResident];
    v3 = v5;
  }
}

- (HMDPrimaryElectionLegacyAddOn)initWithContext:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HMDPrimaryElectionLegacyAddOn;
  v5 = [(HMDPrimaryElectionLegacyAddOn *)&v24 init];
  v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  devicePreferenceDataSources = v5->_devicePreferenceDataSources;
  v5->_devicePreferenceDataSources = v6;

  objc_storeWeak(&v5->_context, v4);
  v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:5 options:60.0];
  residentMonitorTimer = v5->_residentMonitorTimer;
  v5->_residentMonitorTimer = v8;

  [(HMFTimer *)v5->_residentMonitorTimer setDelegate:v5];
  v10 = [v4 queue];
  [(HMFTimer *)v5->_residentMonitorTimer setDelegateQueue:v10];

  v11 = +[HMDDeviceCapabilities deviceCapabilities];
  v12 = [v11 isResidentCapable];

  if (v12)
  {
    v13 = [MEMORY[0x277D0F8C8] sharedManager];
    v14 = [v13 hasBattery];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v5;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Monitoring power state information for transient resident device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      [v19 addObserver:v16 selector:sel_handleBatteryStateChange_ name:*MEMORY[0x277D0F200] object:0];

      v20 = [MEMORY[0x277CCAB98] defaultCenter];
      [v20 addObserver:v16 selector:sel_handleBatteryLevelChange_ name:*MEMORY[0x277D0F1F8] object:0];

      v21 = [MEMORY[0x277D0F8C8] sharedManager];
      [v21 start];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t87 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t87, &__block_literal_global_118351);
  }

  v3 = logCategory__hmf_once_v88;

  return v3;
}

uint64_t __44__HMDPrimaryElectionLegacyAddOn_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v88;
  logCategory__hmf_once_v88 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (int64_t)compareElectionVersions:(id)a3 otherVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[HMDHomeKitVersion version5];
  if (([v5 isEqualToVersion:v6] & 1) == 0 && (!objc_msgSend(v5, "isAtLeastVersion:", v7) || (objc_msgSend(v6, "isAtLeastVersion:", v7) & 1) == 0))
  {
    if ([v5 isAtLeastVersion:v7])
    {
      goto LABEL_24;
    }

    if ([v6 isAtLeastVersion:v7])
    {
      goto LABEL_26;
    }
  }

  v7 = +[HMDHomeKitVersion version4];
  if (([v5 isEqualToVersion:v6] & 1) == 0 && (!objc_msgSend(v5, "isAtLeastVersion:", v7) || (objc_msgSend(v6, "isAtLeastVersion:", v7) & 1) == 0))
  {
    if ([v5 isAtLeastVersion:v7])
    {
      goto LABEL_24;
    }

    if ([v6 isAtLeastVersion:v7])
    {
      goto LABEL_26;
    }
  }

  v7 = +[HMDHomeKitVersion version3];
  if ([v5 isEqualToVersion:v6] & 1) != 0 || objc_msgSend(v5, "isAtLeastVersion:", v7) && (objc_msgSend(v6, "isAtLeastVersion:", v7))
  {
    goto LABEL_4;
  }

  if ([v5 isAtLeastVersion:v7])
  {
LABEL_24:
    v8 = 1;
    goto LABEL_27;
  }

  if ([v6 isAtLeastVersion:v7])
  {
    goto LABEL_26;
  }

LABEL_4:

  v7 = +[HMDHomeKitVersion version3];
  if (([v5 isEqualToVersion:v6] & 1) == 0 && (!objc_msgSend(v5, "isAtLeastVersion:", v7) || (objc_msgSend(v6, "isAtLeastVersion:", v7) & 1) == 0))
  {
    if ([v5 isAtLeastVersion:v7])
    {
      goto LABEL_24;
    }

    if ([v6 isAtLeastVersion:v7])
    {
LABEL_26:
      v8 = -1;
      goto LABEL_27;
    }
  }

  v8 = 0;
LABEL_27:

  return v8;
}

@end