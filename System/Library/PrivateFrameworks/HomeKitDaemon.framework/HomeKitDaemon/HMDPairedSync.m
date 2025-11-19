@interface HMDPairedSync
- (HMDPairedSync)initWithQueue:(id)a3;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
@end

@implementation HMDPairedSync

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received an update to being-sync-session to watch but no companion sync is needed for HH2", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  [v7 syncDidComplete];

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDPairedSync)initWithQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDPairedSync;
  v5 = [(HMDPairedSync *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D37C40] syncCoordinatorWithServiceName:@"com.apple.pairedsync.homekit"];
    coordinator = v5->_coordinator;
    v5->_coordinator = v6;

    [(PSYSyncCoordinator *)v5->_coordinator setDelegate:v5 queue:v4];
  }

  return v5;
}

@end