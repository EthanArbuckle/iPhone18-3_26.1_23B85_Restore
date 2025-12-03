@interface HMDHomePresenceBase
+ (id)logCategory;
+ (id)messageTargetUUIDFromHomeUUID:(id)d;
- (HMDHome)home;
- (void)_initialize:(id)_initialize;
- (void)_registerForMessages;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher;
@end

@implementation HMDHomePresenceBase

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_102067 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_102067, &__block_literal_global_102068);
  }

  v3 = logCategory__hmf_once_v1_102069;

  return v3;
}

uint64_t __34__HMDHomePresenceBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_102069;
  logCategory__hmf_once_v1_102069 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)messageTargetUUIDFromHomeUUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAD78];
  v10 = @"kPresenceMonitorIdentifierSalt";
  v4 = MEMORY[0x277CBEA60];
  dCopy = d;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v3 hm_deriveUUIDFromBaseUUID:dCopy withSalts:{v6, v10, v11}];

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
  notificationRegistration = [(HMDHomePresenceBase *)self notificationRegistration];
  [notificationRegistration addObserver:sel_handleHomeDataLoadedNotification_ name:@"HMDHomeManagerHomeDataLoadedNotification" object:0];
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  [(HMDHomePresenceBase *)self _initialize:configure];
  [(HMDHomePresenceBase *)self setMsgDispatcher:dispatcherCopy];

  [(HMDHomePresenceBase *)self _registerForMessages];
}

- (void)_initialize:(id)_initialize
{
  _initializeCopy = _initialize;
  objc_storeWeak(&self->_home, _initializeCopy);
  v5 = objc_opt_class();
  uuid = [_initializeCopy uuid];
  v7 = [v5 messageTargetUUIDFromHomeUUID:uuid];
  presenceMonitorMessageTargetUUID = self->_presenceMonitorMessageTargetUUID;
  self->_presenceMonitorMessageTargetUUID = v7;

  workQueue = [_initializeCopy workQueue];
  workQueue = self->_workQueue;
  self->_workQueue = workQueue;

  v11 = MEMORY[0x277CCACA8];
  name = [_initializeCopy name];
  if ([_initializeCopy isOwnerUser])
  {
    v13 = @"owner";
  }

  else
  {
    v13 = @"shared";
  }

  uuid2 = [_initializeCopy uuid];

  uUIDString = [uuid2 UUIDString];
  v16 = [v11 stringWithFormat:@"%@/%@/%@", name, v13, uUIDString];
  logString = self->_logString;
  self->_logString = v16;

  v18 = [[HMDNotificationRegistration alloc] initWithRegisterer:self];
  notificationRegistration = self->_notificationRegistration;
  self->_notificationRegistration = v18;

  MEMORY[0x2821F96F8](v18, notificationRegistration);
}

@end