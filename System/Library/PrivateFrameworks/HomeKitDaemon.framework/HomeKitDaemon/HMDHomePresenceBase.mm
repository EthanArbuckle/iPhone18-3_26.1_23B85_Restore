@interface HMDHomePresenceBase
+ (id)logCategory;
+ (id)messageTargetUUIDFromHomeUUID:(id)a3;
- (HMDHome)home;
- (void)_initialize:(id)a3;
- (void)_registerForMessages;
- (void)configure:(id)a3 messageDispatcher:(id)a4;
@end

@implementation HMDHomePresenceBase

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_154079 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_154079, &__block_literal_global_154080);
  }

  v3 = logCategory__hmf_once_v1_154081;

  return v3;
}

void __34__HMDHomePresenceBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_154081;
  logCategory__hmf_once_v1_154081 = v1;
}

+ (id)messageTargetUUIDFromHomeUUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAD78];
  v10 = @"kPresenceMonitorIdentifierSalt";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v3 hm_deriveUUIDFromBaseUUID:v5 withSalts:{v6, v10, v11}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_registerForMessages
{
  v2 = [(HMDHomePresenceBase *)self notificationRegistration];
  [v2 addObserver:sel_handleHomeDataLoadedNotification_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:0];
}

- (void)configure:(id)a3 messageDispatcher:(id)a4
{
  v6 = a4;
  [(HMDHomePresenceBase *)self _initialize:a3];
  [(HMDHomePresenceBase *)self setMsgDispatcher:v6];

  [(HMDHomePresenceBase *)self _registerForMessages];
}

- (void)_initialize:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_home, v4);
  v5 = objc_opt_class();
  v6 = [v4 uuid];
  v7 = [v5 messageTargetUUIDFromHomeUUID:v6];
  presenceMonitorMessageTargetUUID = self->_presenceMonitorMessageTargetUUID;
  self->_presenceMonitorMessageTargetUUID = v7;

  v9 = [v4 workQueue];
  workQueue = self->_workQueue;
  self->_workQueue = v9;

  v11 = MEMORY[0x277CCACA8];
  v12 = [v4 name];
  if ([v4 isOwnerUser])
  {
    v13 = @"owner";
  }

  else
  {
    v13 = @"shared";
  }

  v14 = [v4 uuid];

  v15 = [v14 UUIDString];
  v16 = [v11 stringWithFormat:@"%@/%@/%@", v12, v13, v15];
  logString = self->_logString;
  self->_logString = v16;

  v18 = [[HMDNotificationRegistration alloc] initWithRegisterer:self];
  notificationRegistration = self->_notificationRegistration;
  self->_notificationRegistration = v18;
}

@end