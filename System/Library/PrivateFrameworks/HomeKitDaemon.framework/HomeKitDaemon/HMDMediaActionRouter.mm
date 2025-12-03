@interface HMDMediaActionRouter
- (HMDHome)home;
- (HMDMediaActionRouter)init;
- (HMDMediaActionRouter)initWithDataSource:(id)source;
- (HMDMediaActionRouterDataSource)dataSource;
- (HMDResidentDevice)targetResidentDeviceOverride;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)mediaProfileWithUUID:(id)d;
- (void)_registerForMessages;
- (void)dealloc;
- (void)executeMediaActionWithSessionData:(id)data completion:(id)completion;
- (void)gatherTargetDevicesForExecutingMediaActionWithProfiles:(id)profiles targetSystemMediaApplication:(BOOL)application outResidentDevicesInMediaAction:(id *)action outHomePodsInMediaAction:(id *)mediaAction outResidentDevicesSupportingMediaActions:(id *)actions outHomePodsSupportingMediaActions:(id *)mediaActions outNonOdeonHomePodsSupportingMediaActions:(id *)supportingMediaActions outNonOdeonResidentDevicesSupportingMediaActions:(id *)self0 outNonOdeonResidentDevicesInMediaAction:(id *)self1 outNonOdeonHomePodsInMediaAction:(id *)self2 dataSource:(id)self3;
- (void)routeMediaActionForExecution:(id)execution source:(unint64_t)source clientName:(id)name completion:(id)completion;
- (void)routeMessage:(id)message;
@end

@implementation HMDMediaActionRouter

- (HMDResidentDevice)targetResidentDeviceOverride
{
  WeakRetained = objc_loadWeakRetained(&self->_targetResidentDeviceOverride);

  return WeakRetained;
}

- (HMDMediaActionRouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)mediaProfileWithUUID:(id)d
{
  dCopy = d;
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  v6 = [dataSource mediaProfileWithUUID:dCopy];

  return v6;
}

- (HMDHome)home
{
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  home = [dataSource home];

  return home;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  workQueue = [dataSource workQueue];

  return workQueue;
}

- (NSUUID)messageTargetUUID
{
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  uuid = [dataSource uuid];

  return uuid;
}

- (void)executeMediaActionWithSessionData:(id)data completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Running media action locally", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  mpcSessionController = [(HMDMediaActionRouter *)selfCopy mpcSessionController];
  [mpcSessionController executeSessionWithSessionData:dataCopy completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __109__HMDMediaActionRouter_targetResidentDeviceForExecutingMediaActionWithProfiles_targetSystemMediaApplication___block_invoke_40(uint64_t a1, void *a2)
{
  if ([a2 isCurrentDevice])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __109__HMDMediaActionRouter_targetResidentDeviceForExecutingMediaActionWithProfiles_targetSystemMediaApplication___block_invoke_41(uint64_t a1, void *a2)
{
  if ([a2 isCurrentDevice])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)gatherTargetDevicesForExecutingMediaActionWithProfiles:(id)profiles targetSystemMediaApplication:(BOOL)application outResidentDevicesInMediaAction:(id *)action outHomePodsInMediaAction:(id *)mediaAction outResidentDevicesSupportingMediaActions:(id *)actions outHomePodsSupportingMediaActions:(id *)mediaActions outNonOdeonHomePodsSupportingMediaActions:(id *)supportingMediaActions outNonOdeonResidentDevicesSupportingMediaActions:(id *)self0 outNonOdeonResidentDevicesInMediaAction:(id *)self1 outNonOdeonHomePodsInMediaAction:(id *)self2 dataSource:(id)self3
{
  v88 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  sourceCopy = source;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    enabledResidents = [sourceCopy enabledResidents];
    *buf = 138543618;
    v85 = v20;
    v86 = 2112;
    v87 = enabledResidents;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Available residents: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  enabledResidents2 = [sourceCopy enabledResidents];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke;
  v81[3] = &unk_27867A368;
  applicationCopy = application;
  v82 = sourceCopy;
  v58 = sourceCopy;
  v23 = [enabledResidents2 na_filter:v81];

  appleMediaAccessories = [v58 appleMediaAccessories];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_2;
  v79[3] = &unk_2786850E0;
  v25 = appleMediaAccessories;
  v80 = v25;
  v56 = [v23 na_filter:v79];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_4;
  v77[3] = &unk_2786850E0;
  v26 = profilesCopy;
  v78 = v26;
  v27 = [v23 na_filter:v77];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_6;
  v75[3] = &unk_2786850E0;
  v28 = v26;
  v76 = v28;
  v29 = [v27 na_filter:v75];
  v30 = MEMORY[0x277CBEB98];
  v31 = [v25 na_map:&__block_literal_global_33_135262];
  v32 = [v30 setWithArray:v31];

  v33 = MEMORY[0x277CBEB98];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_9;
  v73[3] = &unk_27867A390;
  v74 = v32;
  v57 = v32;
  v34 = [v25 na_map:v73];
  v35 = [v33 setWithArray:v34];

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_10;
  v70[3] = &unk_27867A3E0;
  v36 = v28;
  v71 = v36;
  v37 = v35;
  v72 = v37;
  v38 = [v27 na_filter:v70];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_12;
  v68[3] = &unk_2786850E0;
  v69 = v36;
  v55 = v36;
  v39 = [v38 na_filter:v68];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_14;
  v65[3] = &unk_27867A3E0;
  v40 = v25;
  v66 = v40;
  v67 = v37;
  v41 = v37;
  v42 = [v23 na_filter:v65];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_16;
  v63[3] = &unk_2786850E0;
  v64 = v40;
  v43 = v40;
  v44 = [v42 na_filter:v63];
  v45 = v23;
  *actions = v23;
  v46 = v56;
  *mediaActions = v46;
  v47 = v46;
  v48 = v27;
  *action = v27;
  v49 = v29;
  *mediaAction = v29;
  v50 = v38;
  *inMediaAction = v38;
  v51 = v39;
  *podsInMediaAction = v39;
  v52 = v42;
  *devicesSupportingMediaActions = v42;
  v53 = v44;
  *supportingMediaActions = v44;

  v54 = *MEMORY[0x277D85DE8];
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) != 1)
  {
    if (![v3 supportsCustomMediaApplicationDestination])
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = [*(a1 + 32) isResidentReachable:v4];
    goto LABEL_6;
  }

  if ([v3 supportsMediaActions])
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:

  return v5;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_3;
  v8[3] = &unk_278688F28;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_5;
  v8[3] = &unk_27867AF00;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_7;
  v8[3] = &unk_27867AF00;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

id __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 audioDestination];
  v5 = [v4 uniqueIdentifier];

  if (v5 && [*(a1 + 32) containsObject:v5])
  {
    v6 = [v3 uuid];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_11;
  v8[3] = &unk_27867A3B8;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_13;
  v8[3] = &unk_27867AF00;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_15;
  v8[3] = &unk_27867A408;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_17;
  v8[3] = &unk_278688F28;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHomePod])
  {
    v4 = [*(a1 + 32) device];
    v5 = [v4 identifier];
    v6 = [v3 device];
    v7 = [v6 identifier];
    v8 = [v5 hmf_isEqualToUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) device];
  v5 = [v4 identifier];
  v6 = [v3 device];
  v7 = [v6 identifier];
  if ([v5 hmf_isEqualToUUID:v7])
  {
    v8 = *(a1 + 40);
    v9 = [v3 uuid];
    v10 = [v8 containsObject:v9] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5 && [v5 isHomePod])
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    v10 = [v7 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5)
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    if ([v7 hmf_isEqualToUUID:v9])
    {
      v10 = *(a1 + 40);
      v11 = [v5 uuid];
      v12 = [v10 containsObject:v11] ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 audioDestinationController];
  v3 = [v2 data];
  v4 = [v3 destinationIdentifier];

  return v4;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5 && [v5 isHomePod])
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    v10 = [v7 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5)
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    v10 = [v7 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHomePod])
  {
    v4 = [*(a1 + 32) device];
    v5 = [v4 identifier];
    v6 = [v3 device];
    v7 = [v6 identifier];
    v8 = [v5 hmf_isEqualToUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)routeMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [HMDMPCSessionData alloc];
  messagePayload = [messageCopy messagePayload];
  v7 = [(HMDMPCSessionData *)v5 initWithDictionaryRepresentation:messagePayload profileSource:self];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__HMDMediaActionRouter_routeMessage___block_invoke;
  aBlock[3] = &unk_27868A250;
  v8 = messageCopy;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  if (v7)
  {
    messagePayload2 = [v8 messagePayload];
    if ([messagePayload2 hmf_BOOLForKey:@"kDoNotForwardMessageKey"])
    {

LABEL_11:
      [(HMDMediaActionRouter *)self executeMediaActionWithSessionData:v7 completion:v9];
      goto LABEL_12;
    }

    messagePayload3 = [v8 messagePayload];
    v17 = [messagePayload3 objectForKeyedSubscript:@"kDoNotForwardMessageKey"];

    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      remoteSourceDevice = [v8 remoteSourceDevice];
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = remoteSourceDevice;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Forwarding media action for remote device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDMediaActionRouter *)selfCopy routeSessionDataForExecution:v7 encodePlaybackArchive:1 completion:v9];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2955];
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to route media action for execution, invalid message payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v9[2](v9, v11);
  }

LABEL_12:

  v23 = *MEMORY[0x277D85DE8];
}

void __37__HMDMediaActionRouter_routeMessage___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

void __106__HMDMediaActionRouter_sendMediaActionMessageToCompanionWithSessionData_encodePlaybackArchive_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to execute media action on companion: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __102__HMDMediaActionRouter_sendMediaActionMessageToResident_sessionData_encodePlaybackArchive_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && ([*(a1 + 32) dataSource], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isResidentReachable:", *(a1 + 40)), v4, (v5 & 1) == 0))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) device];
      v11 = [v10 name];
      v12 = [*(a1 + 40) identifier];
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Device < %@ : %@ > unreachable, rerouting", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) routeSessionDataForExecution:*(a1 + 48) encodePlaybackArchive:*(a1 + 64) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __110__HMDMediaActionRouter_handleNonResidentMediaActionExecutionWithSessionData_encodePlaybackArchive_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) executeMediaActionWithSessionData:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)routeMediaActionForExecution:(id)execution source:(unint64_t)source clientName:(id)name completion:(id)completion
{
  executionCopy = execution;
  nameCopy = name;
  completionCopy = completion;
  v11 = [HMDMPCSessionData alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  v25 = [(HMDMPCSessionData *)v11 initWithMediaAction:executionCopy source:v12 clientName:nameCopy];

  mediaProfiles = [executionCopy mediaProfiles];
  v14 = [mediaProfiles na_map:&__block_literal_global_135281];

  v15 = [HMDMediaPlaybackActionEvent alloc];
  playbackArchive = [executionCopy playbackArchive];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(executionCopy, "state")}];
  volume = [executionCopy volume];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  allObjects = [v14 allObjects];
  v21 = [(HMDMediaPlaybackActionEvent *)v15 initWithIsPlaybackArchivePresent:playbackArchive != 0 playbackStateNumber:v17 volumeNumber:volume sourceNumber:v19 sourceClientName:nameCopy accessories:allObjects];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__HMDMediaActionRouter_routeMediaActionForExecution_source_clientName_completion___block_invoke_2;
  aBlock[3] = &unk_2786889F0;
  objc_copyWeak(&v31, &location);
  v22 = v21;
  v29 = v22;
  v23 = completionCopy;
  v30 = v23;
  v24 = _Block_copy(aBlock);
  -[HMDMediaActionRouter routeSessionDataForExecution:encodePlaybackArchive:completion:](self, "routeSessionDataForExecution:encodePlaybackArchive:completion:", v25, [executionCopy encodePlaybackArchiveForExecution], v24);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __82__HMDMediaActionRouter_routeMediaActionForExecution_source_clientName_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained dataSource];
  v5 = [v4 logEventSubmitter];
  [v5 submitLogEvent:*(a1 + 32) error:v3];

  (*(*(a1 + 40) + 16))();
}

- (void)_registerForMessages
{
  v10[2] = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  home = [dataSource home];
  if (!isWatch() && home)
  {
    msgDispatcher = [dataSource msgDispatcher];
    v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v10[0] = v6;
    v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1];
    v10[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    [msgDispatcher registerForMessage:@"HMDMAR.RouteMediaAction" receiver:self policies:v8 selector:sel_routeMessage_];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (!isWatch())
  {
    dataSource = [(HMDMediaActionRouter *)self dataSource];
    msgDispatcher = [dataSource msgDispatcher];
    [msgDispatcher deregisterForMessage:@"HMDMAR.RouteMediaAction" receiver:self];
  }

  v5.receiver = self;
  v5.super_class = HMDMediaActionRouter;
  [(HMDMediaActionRouter *)&v5 dealloc];
}

- (HMDMediaActionRouter)init
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

- (HMDMediaActionRouter)initWithDataSource:(id)source
{
  v64 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v54.receiver = self;
  v54.super_class = HMDMediaActionRouter;
  v5 = [(HMDMediaActionRouter *)&v54 init];
  if (v5)
  {
    v6 = [HMDMPCSessionController alloc];
    logEventSubmitter = [sourceCopy logEventSubmitter];
    v8 = [(HMDMPCSessionController *)v6 initWithLogEventSubmitter:logEventSubmitter];
    mpcSessionController = v5->_mpcSessionController;
    v5->_mpcSessionController = v8;

    objc_storeWeak(&v5->_dataSource, sourceCopy);
    [(HMDMediaActionRouter *)v5 _registerForMessages];
    if (isInternalBuild())
    {
      home = [sourceCopy home];
      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      v12 = [mEMORY[0x277D0F8D0] preferenceForKey:@"TargetResidentDeviceForMediaActions"];
      stringValue = [v12 stringValue];

      v14 = stringValue;
      v48 = v5;
      if (stringValue)
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v47 = sourceCopy;
        obj = [sourceCopy enabledResidents];
        v15 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v51;
          v46 = home;
LABEL_6:
          v18 = 0;
          while (1)
          {
            if (*v51 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v50 + 1) + 8 * v18);
            device = [v19 device];
            name = [device name];
            if ([name isEqualToString:v14])
            {
              break;
            }

            identifier = [v19 identifier];
            uUIDString = [identifier UUIDString];
            v24 = v14;
            v25 = [uUIDString isEqualToString:v14];

            if (v25)
            {
              goto LABEL_19;
            }

            ++v18;
            v14 = v24;
            if (v16 == v18)
            {
              v16 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
              home = v46;
              if (v16)
              {
                goto LABEL_6;
              }

              goto LABEL_13;
            }
          }

          v24 = v14;

LABEL_19:
          v34 = objc_autoreleasePoolPush();
          v35 = v48;
          v36 = HMFGetOSLogHandle();
          home = v46;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v37 = v45 = v34;
            name2 = [v46 name];
            device2 = [v19 device];
            name3 = [device2 name];
            identifier2 = [v19 identifier];
            uUIDString2 = [identifier2 UUIDString];
            *buf = 138544130;
            v56 = v37;
            v57 = 2112;
            v58 = name2;
            v59 = 2112;
            v60 = name3;
            v61 = 2112;
            v62 = uUIDString2;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@For home %@, always using resident %@:%@ to execute Media Action scenes", buf, 0x2Au);

            v34 = v45;
          }

          objc_autoreleasePoolPop(v34);
          v33 = v19;

          objc_storeWeak(v35 + 3, v33);
          sourceCopy = v47;
          v5 = v48;
          if (!v33)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }

LABEL_13:

        sourceCopy = v47;
        v5 = v48;
      }

      v24 = v14;
      objc_storeWeak(&v5->_targetResidentDeviceOverride, 0);
LABEL_15:
      v26 = objc_autoreleasePoolPush();
      v27 = v5;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        name4 = [home name];
        uuid = [home uuid];
        uUIDString3 = [uuid UUIDString];
        *buf = 138544130;
        v56 = v29;
        v57 = 2112;
        v58 = v24;
        v59 = 2112;
        v60 = name4;
        v61 = 2112;
        v62 = uUIDString3;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Couldn't find TargetResidentDevice %@ in home %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v33 = 0;
      v5 = v48;
LABEL_22:
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

@end