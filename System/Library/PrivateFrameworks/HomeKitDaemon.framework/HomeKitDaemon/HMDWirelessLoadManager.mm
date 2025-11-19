@interface HMDWirelessLoadManager
+ (id)sharedInstance;
- (HMDWirelessLoadManager)init;
- (id)getBtLoadData;
@end

@implementation HMDWirelessLoadManager

- (id)getBtLoadData
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(HMDWirelessLoadManager *)v2 lastLoadTimestamp];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  if (v6 >= 10.0)
  {
    objc_storeStrong(&v2->_lastLoadTimestamp, v3);
    v7 = objc_alloc_init(MEMORY[0x277D7BC48]);
    [v7 registerClient:40 queue:0];
    v8 = [v7 getWirelessRadioManagerReportLoad:0 loadDuration:0 callback:0.0];
    [v7 unregisterClient];
    v2->_btLoad = v8;
    *&v2->_btAudioTask = vand_s8(vshl_u32(vdup_n_s32(v8), 0xFFFFFFF4FFFFFFF8), 0xF0000000FLL);
    v9 = objc_autoreleasePoolPush();
    v10 = v2;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138544386;
      v22 = v12;
      v23 = 1024;
      v24 = [(HMDWirelessLoadManager *)v10 btLoad];
      v25 = 1024;
      v26 = [(HMDWirelessLoadManager *)v10 btAudioTask];
      v27 = 1024;
      v28 = [(HMDWirelessLoadManager *)v10 btNonAudioTask];
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@BT Load: %d AudioTsk: %d NonAudioTsk: %d Raw: %lld", buf, 0x28u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDWirelessLoadManager btLoad](v2, "btLoad", @"kBtLoadKey"}];
  v20[0] = v13;
  v19[1] = @"kBtAudioTask";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDWirelessLoadManager btAudioTask](v2, "btAudioTask")}];
  v20[1] = v14;
  v19[2] = @"kBtNonAudioTask";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDWirelessLoadManager btNonAudioTask](v2, "btNonAudioTask")}];
  v20[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  objc_sync_exit(v2);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDWirelessLoadManager)init
{
  v6.receiver = self;
  v6.super_class = HMDWirelessLoadManager;
  v2 = [(HMDWirelessLoadManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] distantPast];
    lastLoadTimestamp = v2->_lastLoadTimestamp;
    v2->_lastLoadTimestamp = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDWirelessLoadManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__hmf_once_t0_140405 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_140405, block);
  }

  v2 = sharedInstance__hmf_once_v1_140406;

  return v2;
}

void __40__HMDWirelessLoadManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance__hmf_once_v1_140406;
  sharedInstance__hmf_once_v1_140406 = v1;
}

@end