@interface HMDMediaActionRouter
- (HMDHome)home;
- (HMDMediaActionRouter)init;
- (HMDMediaActionRouter)initWithDataSource:(id)a3;
- (HMDMediaActionRouterDataSource)dataSource;
- (HMDResidentDevice)targetResidentDeviceOverride;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)mediaProfileWithUUID:(id)a3;
- (void)_registerForMessages;
- (void)dealloc;
- (void)executeMediaActionWithSessionData:(id)a3 completion:(id)a4;
- (void)gatherTargetDevicesForExecutingMediaActionWithProfiles:(id)a3 targetSystemMediaApplication:(BOOL)a4 outResidentDevicesInMediaAction:(id *)a5 outHomePodsInMediaAction:(id *)a6 outResidentDevicesSupportingMediaActions:(id *)a7 outHomePodsSupportingMediaActions:(id *)a8 outNonOdeonHomePodsSupportingMediaActions:(id *)a9 outNonOdeonResidentDevicesSupportingMediaActions:(id *)a10 outNonOdeonResidentDevicesInMediaAction:(id *)a11 outNonOdeonHomePodsInMediaAction:(id *)a12 dataSource:(id)a13;
- (void)routeMediaActionForExecution:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completion:(id)a6;
- (void)routeMessage:(id)a3;
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

- (id)mediaProfileWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaActionRouter *)self dataSource];
  v6 = [v5 mediaProfileWithUUID:v4];

  return v6;
}

- (HMDHome)home
{
  v2 = [(HMDMediaActionRouter *)self dataSource];
  v3 = [v2 home];

  return v3;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = [(HMDMediaActionRouter *)self dataSource];
  v3 = [v2 workQueue];

  return v3;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDMediaActionRouter *)self dataSource];
  v3 = [v2 uuid];

  return v3;
}

- (void)executeMediaActionWithSessionData:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Running media action locally", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDMediaActionRouter *)v9 mpcSessionController];
  [v12 executeSessionWithSessionData:v6 completion:v7];

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

- (void)gatherTargetDevicesForExecutingMediaActionWithProfiles:(id)a3 targetSystemMediaApplication:(BOOL)a4 outResidentDevicesInMediaAction:(id *)a5 outHomePodsInMediaAction:(id *)a6 outResidentDevicesSupportingMediaActions:(id *)a7 outHomePodsSupportingMediaActions:(id *)a8 outNonOdeonHomePodsSupportingMediaActions:(id *)a9 outNonOdeonResidentDevicesSupportingMediaActions:(id *)a10 outNonOdeonResidentDevicesInMediaAction:(id *)a11 outNonOdeonHomePodsInMediaAction:(id *)a12 dataSource:(id)a13
{
  v88 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a13;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v16 enabledResidents];
    *buf = 138543618;
    v85 = v20;
    v86 = 2112;
    v87 = v21;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Available residents: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = [v16 enabledResidents];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke;
  v81[3] = &unk_27867A368;
  v83 = a4;
  v82 = v16;
  v58 = v16;
  v23 = [v22 na_filter:v81];

  v24 = [v58 appleMediaAccessories];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_2;
  v79[3] = &unk_2786850E0;
  v25 = v24;
  v80 = v25;
  v56 = [v23 na_filter:v79];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_4;
  v77[3] = &unk_2786850E0;
  v26 = v15;
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
  *a7 = v23;
  v46 = v56;
  *a8 = v46;
  v47 = v46;
  v48 = v27;
  *a5 = v27;
  v49 = v29;
  *a6 = v29;
  v50 = v38;
  *a11 = v38;
  v51 = v39;
  *a12 = v39;
  v52 = v42;
  *a10 = v42;
  v53 = v44;
  *a9 = v44;

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

- (void)routeMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDMPCSessionData alloc];
  v6 = [v4 messagePayload];
  v7 = [(HMDMPCSessionData *)v5 initWithDictionaryRepresentation:v6 profileSource:self];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__HMDMediaActionRouter_routeMessage___block_invoke;
  aBlock[3] = &unk_27868A250;
  v8 = v4;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  if (v7)
  {
    v10 = [v8 messagePayload];
    if ([v10 hmf_BOOLForKey:@"kDoNotForwardMessageKey"])
    {

LABEL_11:
      [(HMDMediaActionRouter *)self executeMediaActionWithSessionData:v7 completion:v9];
      goto LABEL_12;
    }

    v16 = [v8 messagePayload];
    v17 = [v16 objectForKeyedSubscript:@"kDoNotForwardMessageKey"];

    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v8 remoteSourceDevice];
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Forwarding media action for remote device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDMediaActionRouter *)v19 routeSessionDataForExecution:v7 encodePlaybackArchive:1 completion:v9];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2955];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
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

- (void)routeMediaActionForExecution:(id)a3 source:(unint64_t)a4 clientName:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v27 = a6;
  v11 = [HMDMPCSessionData alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v25 = [(HMDMPCSessionData *)v11 initWithMediaAction:v9 source:v12 clientName:v10];

  v13 = [v9 mediaProfiles];
  v14 = [v13 na_map:&__block_literal_global_135281];

  v15 = [HMDMediaPlaybackActionEvent alloc];
  v16 = [v9 playbackArchive];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "state")}];
  v18 = [v9 volume];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v20 = [v14 allObjects];
  v21 = [(HMDMediaPlaybackActionEvent *)v15 initWithIsPlaybackArchivePresent:v16 != 0 playbackStateNumber:v17 volumeNumber:v18 sourceNumber:v19 sourceClientName:v10 accessories:v20];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__HMDMediaActionRouter_routeMediaActionForExecution_source_clientName_completion___block_invoke_2;
  aBlock[3] = &unk_2786889F0;
  objc_copyWeak(&v31, &location);
  v22 = v21;
  v29 = v22;
  v23 = v27;
  v30 = v23;
  v24 = _Block_copy(aBlock);
  -[HMDMediaActionRouter routeSessionDataForExecution:encodePlaybackArchive:completion:](self, "routeSessionDataForExecution:encodePlaybackArchive:completion:", v25, [v9 encodePlaybackArchiveForExecution], v24);

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
  v3 = [(HMDMediaActionRouter *)self dataSource];
  v4 = [v3 home];
  if (!isWatch() && v4)
  {
    v5 = [v3 msgDispatcher];
    v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v10[0] = v6;
    v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:1];
    v10[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    [v5 registerForMessage:@"HMDMAR.RouteMediaAction" receiver:self policies:v8 selector:sel_routeMessage_];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (!isWatch())
  {
    v3 = [(HMDMediaActionRouter *)self dataSource];
    v4 = [v3 msgDispatcher];
    [v4 deregisterForMessage:@"HMDMAR.RouteMediaAction" receiver:self];
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

- (HMDMediaActionRouter)initWithDataSource:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v54.receiver = self;
  v54.super_class = HMDMediaActionRouter;
  v5 = [(HMDMediaActionRouter *)&v54 init];
  if (v5)
  {
    v6 = [HMDMPCSessionController alloc];
    v7 = [v4 logEventSubmitter];
    v8 = [(HMDMPCSessionController *)v6 initWithLogEventSubmitter:v7];
    mpcSessionController = v5->_mpcSessionController;
    v5->_mpcSessionController = v8;

    objc_storeWeak(&v5->_dataSource, v4);
    [(HMDMediaActionRouter *)v5 _registerForMessages];
    if (isInternalBuild())
    {
      v10 = [v4 home];
      v11 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v12 = [v11 preferenceForKey:@"TargetResidentDeviceForMediaActions"];
      v13 = [v12 stringValue];

      v14 = v13;
      v48 = v5;
      if (v13)
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v47 = v4;
        obj = [v4 enabledResidents];
        v15 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v51;
          v46 = v10;
LABEL_6:
          v18 = 0;
          while (1)
          {
            if (*v51 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v50 + 1) + 8 * v18);
            v20 = [v19 device];
            v21 = [v20 name];
            if ([v21 isEqualToString:v14])
            {
              break;
            }

            v22 = [v19 identifier];
            v23 = [v22 UUIDString];
            v24 = v14;
            v25 = [v23 isEqualToString:v14];

            if (v25)
            {
              goto LABEL_19;
            }

            ++v18;
            v14 = v24;
            if (v16 == v18)
            {
              v16 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
              v10 = v46;
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
          v10 = v46;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v37 = v45 = v34;
            v38 = [v46 name];
            v44 = [v19 device];
            v39 = [v44 name];
            v40 = [v19 identifier];
            v41 = [v40 UUIDString];
            *buf = 138544130;
            v56 = v37;
            v57 = 2112;
            v58 = v38;
            v59 = 2112;
            v60 = v39;
            v61 = 2112;
            v62 = v41;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@For home %@, always using resident %@:%@ to execute Media Action scenes", buf, 0x2Au);

            v34 = v45;
          }

          objc_autoreleasePoolPop(v34);
          v33 = v19;

          objc_storeWeak(v35 + 3, v33);
          v4 = v47;
          v5 = v48;
          if (!v33)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }

LABEL_13:

        v4 = v47;
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
        v30 = [v10 name];
        v31 = [v10 uuid];
        v32 = [v31 UUIDString];
        *buf = 138544130;
        v56 = v29;
        v57 = 2112;
        v58 = v24;
        v59 = 2112;
        v60 = v30;
        v61 = 2112;
        v62 = v32;
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