@interface HMDAccessCodeManagerContext
+ (id)logCategory;
- (BOOL)hasHomeOnboardedForAccessCodes;
- (BOOL)isCurrentDeviceOwnerController;
- (BOOL)isCurrentDeviceOwnerUser;
- (BOOL)isCurrentDevicePrimaryResident;
- (BOOL)isCurrentDeviceResidentCapable;
- (BOOL)isDemoDataMockerEnabled;
- (BOOL)isHomeAppForegrounded;
- (BOOL)isResidentSupported;
- (BOOL)primaryResidentSupportsAccessCodes;
- (HMDAccessCodeManagerContext)initWithHome:(id)home workQueue:(id)queue;
- (HMDAccessCodeManagerContext)initWithHome:(id)home workQueue:(id)queue UUID:(id)d;
- (HMDDevice)residentCommunicationHandlerPreferredDevice;
- (HMDHome)home;
- (HMDHomeAdministratorHandler)administratorHandler;
- (HMDHomeWalletKeyManager)walletKeyManager;
- (NSArray)UUIDsOfAccessoriesSupportingAccessCodes;
- (NSArray)UUIDsOfHAPAccessoriesSupportingAccessCodes;
- (NSArray)UUIDsOfMatterAccessoriesSupportingAccessCodes;
- (NSArray)accessoriesSupportingAccessCodes;
- (double)accessoryReadWriteRetryTimeInterval;
- (double)dataCleanUpCheckTimerInterval;
- (double)removedUserAccessCodeTimeToLive;
- (double)residentDataSyncVerificationRetryTimeInterval;
- (id)_performMockedReadRequests:(id)requests;
- (id)_performMockedWriteRequests:(id)requests;
- (id)hapAccessoryWithUUID:(id)d;
- (id)performReadRequests:(id)requests withRetries:(int64_t)retries timeInterval:(double)interval loggingObject:(id)object flow:(id)flow;
- (id)performWriteRequests:(id)requests withRetries:(int64_t)retries timeInterval:(double)interval loggingObject:(id)object flow:(id)flow;
- (id)userForMessage:(id)message;
- (id)userWithUUID:(id)d;
- (int64_t)accessoryReadWriteRetries;
- (int64_t)residentDataSyncVerificationRetries;
- (void)configureWithMessageDispatcher:(id)dispatcher;
- (void)redispatchToResidentMessage:(id)message;
@end

@implementation HMDAccessCodeManagerContext

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)hapAccessoryWithUUID:(id)d
{
  dCopy = d;
  home = [(HMDAccessCodeManagerContext *)self home];
  hapAccessories = [home hapAccessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HMDAccessCodeManagerContext_hapAccessoryWithUUID___block_invoke;
  v10[3] = &unk_2797304D0;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [hapAccessories na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __52__HMDAccessCodeManagerContext_hapAccessoryWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = *(a1 + 32);
  v5 = HMFEqualObjects();

  return v5;
}

- (NSArray)UUIDsOfMatterAccessoriesSupportingAccessCodes
{
  accessoriesSupportingAccessCodes = [(HMDAccessCodeManagerContext *)self accessoriesSupportingAccessCodes];
  v3 = [accessoriesSupportingAccessCodes na_map:&__block_literal_global_60];

  return v3;
}

id __76__HMDAccessCodeManagerContext_UUIDsOfMatterAccessoriesSupportingAccessCodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsCHIP])
  {
    v3 = [v2 uuid];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)UUIDsOfHAPAccessoriesSupportingAccessCodes
{
  accessoriesSupportingAccessCodes = [(HMDAccessCodeManagerContext *)self accessoriesSupportingAccessCodes];
  v3 = [accessoriesSupportingAccessCodes na_map:&__block_literal_global_58];

  return v3;
}

id __73__HMDAccessCodeManagerContext_UUIDsOfHAPAccessoriesSupportingAccessCodes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsCHIP])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 uuid];
  }

  return v3;
}

- (NSArray)UUIDsOfAccessoriesSupportingAccessCodes
{
  accessoriesSupportingAccessCodes = [(HMDAccessCodeManagerContext *)self accessoriesSupportingAccessCodes];
  v3 = [accessoriesSupportingAccessCodes na_map:&__block_literal_global_56];

  return v3;
}

- (NSArray)accessoriesSupportingAccessCodes
{
  home = [(HMDAccessCodeManagerContext *)self home];
  hapAccessories = [home hapAccessories];
  v4 = [hapAccessories na_filter:&__block_literal_global_2789];

  return v4;
}

- (id)userWithUUID:(id)d
{
  dCopy = d;
  home = [(HMDAccessCodeManagerContext *)self home];
  users = [home users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HMDAccessCodeManagerContext_userWithUUID___block_invoke;
  v10[3] = &unk_27972E540;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [users na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __44__HMDAccessCodeManagerContext_userWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = HMFEqualObjects();

  return v4;
}

- (id)userForMessage:(id)message
{
  messageCopy = message;
  home = [(HMDAccessCodeManagerContext *)self home];
  v6 = [messageCopy userForHome:home];

  return v6;
}

- (void)redispatchToResidentMessage:(id)message
{
  messageCopy = message;
  home = [(HMDAccessCodeManagerContext *)self home];
  uUID = [(HMDAccessCodeManagerContext *)self UUID];
  workQueue = [(HMDAccessCodeManagerContext *)self workQueue];
  [home redispatchToResidentMessage:messageCopy target:uUID responseQueue:workQueue];
}

- (id)_performMockedReadRequests:(id)requests
{
  v20 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  demoDataMocker = [(HMDAccessCodeManagerContext *)self demoDataMocker];
  v6 = [demoDataMocker handleReadRequests:requestsCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = requestsCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to mock data for write requests: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v7 = [v12 futureWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)performReadRequests:(id)requests withRetries:(int64_t)retries timeInterval:(double)interval loggingObject:(id)object flow:(id)flow
{
  v25 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  objectCopy = object;
  flowCopy = flow;
  if ([(HMDAccessCodeManagerContext *)self isDemoDataMockerEnabled])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Demo Data Mocker is enabled, not reading from real accessory.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [(HMDAccessCodeManagerContext *)selfCopy _performMockedReadRequests:requestsCopy];
  }

  else
  {
    home = [(HMDAccessCodeManagerContext *)self home];
    v19 = [home performReadRequests:requestsCopy withRetries:retries timeInterval:objectCopy loggingObject:flowCopy flow:interval];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)performWriteRequests:(id)requests withRetries:(int64_t)retries timeInterval:(double)interval loggingObject:(id)object flow:(id)flow
{
  v25 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  objectCopy = object;
  flowCopy = flow;
  if ([(HMDAccessCodeManagerContext *)self isDemoDataMockerEnabled])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Demo Data Mocker is enabled, not writing to real accessory.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [(HMDAccessCodeManagerContext *)selfCopy _performMockedWriteRequests:requestsCopy];
  }

  else
  {
    home = [(HMDAccessCodeManagerContext *)self home];
    v19 = [home performWriteRequests:requestsCopy withRetries:retries timeInterval:objectCopy loggingObject:flowCopy flow:interval];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_performMockedWriteRequests:(id)requests
{
  v20 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  demoDataMocker = [(HMDAccessCodeManagerContext *)self demoDataMocker];
  v6 = [demoDataMocker handleWriteRequests:requestsCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = requestsCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to mock data for write requests: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v7 = [v12 futureWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDDevice)residentCommunicationHandlerPreferredDevice
{
  home = [(HMDAccessCodeManagerContext *)self home];
  homeManager = [home homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  v5 = [messageDispatcher residentCommunicationHandlerForHome:home];

  preferredDevice = [v5 preferredDevice];

  return preferredDevice;
}

- (BOOL)hasHomeOnboardedForAccessCodes
{
  home = [(HMDAccessCodeManagerContext *)self home];
  hasOnboardedForAccessCode = [home hasOnboardedForAccessCode];

  return hasOnboardedForAccessCode;
}

- (BOOL)isHomeAppForegrounded
{
  home = [(HMDAccessCodeManagerContext *)self home];
  hasCharacteristicNotificationRegistrations = [home hasCharacteristicNotificationRegistrations];

  return hasCharacteristicNotificationRegistrations;
}

- (BOOL)isResidentSupported
{
  home = [(HMDAccessCodeManagerContext *)self home];
  isResidentSupported = [home isResidentSupported];

  return isResidentSupported;
}

- (BOOL)isCurrentDeviceOwnerController
{
  isCurrentDeviceOwnerUser = [(HMDAccessCodeManagerContext *)self isCurrentDeviceOwnerUser];
  if (isCurrentDeviceOwnerUser)
  {
    if (isiOSDevice())
    {
      LOBYTE(isCurrentDeviceOwnerUser) = 1;
    }

    else
    {

      LOBYTE(isCurrentDeviceOwnerUser) = isMac();
    }
  }

  return isCurrentDeviceOwnerUser;
}

- (BOOL)isCurrentDeviceOwnerUser
{
  home = [(HMDAccessCodeManagerContext *)self home];
  currentUser = [home currentUser];
  isOwner = [currentUser isOwner];

  return isOwner;
}

- (BOOL)isCurrentDeviceResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v2 isResidentCapable];

  return isResidentCapable;
}

- (double)residentDataSyncVerificationRetryTimeInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessCodeManagerResidentDataSyncVerificationRetryTimeInterval"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (int64_t)residentDataSyncVerificationRetries
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessCodeManagerResidentDataSyncVerificationRetries"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (double)dataCleanUpCheckTimerInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessCodeManagerDataCleanUpCheckTimerInterval"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (double)removedUserAccessCodeTimeToLive
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessCodeManagerRemovedUserAccessCodeTimeToLive"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (double)accessoryReadWriteRetryTimeInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessCodeManagerAccessoryReadWriteRetryTimeInterval"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (int64_t)accessoryReadWriteRetries
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessCodeManagerAccessoryReadWriteRetries"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (BOOL)isDemoDataMockerEnabled
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"accessCodeDemoDataMockerEnabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)primaryResidentSupportsAccessCodes
{
  home = [(HMDAccessCodeManagerContext *)self home];
  residentDeviceManager = [home residentDeviceManager];
  primaryResidentDevice = [residentDeviceManager primaryResidentDevice];
  capabilities = [primaryResidentDevice capabilities];
  supportsAccessCodes = [capabilities supportsAccessCodes];

  return supportsAccessCodes;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  home = [(HMDAccessCodeManagerContext *)self home];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];

  return isCurrentDeviceConfirmedPrimaryResident;
}

- (HMDHomeAdministratorHandler)administratorHandler
{
  home = [(HMDAccessCodeManagerContext *)self home];
  administratorHandler = [home administratorHandler];

  return administratorHandler;
}

- (HMDHomeWalletKeyManager)walletKeyManager
{
  home = [(HMDAccessCodeManagerContext *)self home];
  walletKeyManager = [home walletKeyManager];

  return walletKeyManager;
}

- (void)configureWithMessageDispatcher:(id)dispatcher
{
  objc_storeStrong(&self->_messageDispatcher, dispatcher);
  dispatcherCopy = dispatcher;
  remoteMessageForwarder = [(HMDAccessCodeManagerContext *)self remoteMessageForwarder];
  [remoteMessageForwarder configureWithMessageDispatcher:dispatcherCopy];
}

- (HMDAccessCodeManagerContext)initWithHome:(id)home workQueue:(id)queue UUID:(id)d
{
  homeCopy = home;
  queueCopy = queue;
  dCopy = d;
  if (!homeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!queueCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = dCopy;
  if (!dCopy)
  {
LABEL_9:
    v19 = _HMFPreconditionFailure();
    return [(HMDAccessCodeManagerContext *)v19 initWithHome:v20 workQueue:v21, v22];
  }

  v23.receiver = self;
  v23.super_class = HMDAccessCodeManagerContext;
  v12 = [(HMDAccessCodeManagerContext *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_home, homeCopy);
    objc_storeStrong(&v13->_workQueue, queue);
    objc_storeStrong(&v13->_UUID, d);
    v14 = objc_alloc_init(HMDAccessCodeDemoDataMocker);
    demoDataMocker = v13->_demoDataMocker;
    v13->_demoDataMocker = v14;

    v16 = [[HMDRemoteMessageForwarder alloc] initWithHome:homeCopy UUID:v11 workQueue:queueCopy];
    remoteMessageForwarder = v13->_remoteMessageForwarder;
    v13->_remoteMessageForwarder = v16;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v13->_workQueue];
  }

  return v13;
}

- (HMDAccessCodeManagerContext)initWithHome:(id)home workQueue:(id)queue
{
  v6 = MEMORY[0x277CD1610];
  queueCopy = queue;
  homeCopy = home;
  uuid = [homeCopy uuid];
  v10 = [v6 accessCodeManagerUUIDFromHomeUUID:uuid];

  v11 = [(HMDAccessCodeManagerContext *)self initWithHome:homeCopy workQueue:queueCopy UUID:v10];
  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4, &__block_literal_global_63);
  }

  v3 = logCategory__hmf_once_v5;

  return v3;
}

uint64_t __42__HMDAccessCodeManagerContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v5 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end