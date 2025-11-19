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
- (HMDAccessCodeManagerContext)initWithHome:(id)a3 workQueue:(id)a4;
- (HMDAccessCodeManagerContext)initWithHome:(id)a3 workQueue:(id)a4 UUID:(id)a5;
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
- (id)_performMockedReadRequests:(id)a3;
- (id)_performMockedWriteRequests:(id)a3;
- (id)hapAccessoryWithUUID:(id)a3;
- (id)performReadRequests:(id)a3 withRetries:(int64_t)a4 timeInterval:(double)a5 loggingObject:(id)a6 flow:(id)a7;
- (id)performWriteRequests:(id)a3 withRetries:(int64_t)a4 timeInterval:(double)a5 loggingObject:(id)a6 flow:(id)a7;
- (id)userForMessage:(id)a3;
- (id)userWithUUID:(id)a3;
- (id)uuidsOfAccessoriesSupportingAccessCodesForUser:(id)a3;
- (int64_t)accessoryReadWriteRetries;
- (int64_t)residentDataSyncVerificationRetries;
- (void)configureWithMessageDispatcher:(id)a3;
- (void)redispatchToResidentMessage:(id)a3;
@end

@implementation HMDAccessCodeManagerContext

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)hapAccessoryWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessCodeManagerContext *)self home];
  v6 = [v5 hapAccessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__HMDAccessCodeManagerContext_hapAccessoryWithUUID___block_invoke;
  v10[3] = &unk_2786830C8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

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
  v2 = [(HMDAccessCodeManagerContext *)self accessoriesSupportingAccessCodes];
  v3 = [v2 na_map:&__block_literal_global_60];

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
  v2 = [(HMDAccessCodeManagerContext *)self accessoriesSupportingAccessCodes];
  v3 = [v2 na_map:&__block_literal_global_58];

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

- (id)uuidsOfAccessoriesSupportingAccessCodesForUser:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessCodeManagerContext *)self home];
  v6 = [v5 hapAccessories];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HMDAccessCodeManagerContext_uuidsOfAccessoriesSupportingAccessCodesForUser___block_invoke;
  v10[3] = &unk_27866E0E8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_map:v10];

  return v8;
}

id __78__HMDAccessCodeManagerContext_uuidsOfAccessoriesSupportingAccessCodesForUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 supportsAccessCodesForUser:*(a1 + 32)])
  {
    v4 = [v3 uuid];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)UUIDsOfAccessoriesSupportingAccessCodes
{
  v2 = [(HMDAccessCodeManagerContext *)self accessoriesSupportingAccessCodes];
  v3 = [v2 na_map:&__block_literal_global_56];

  return v3;
}

- (NSArray)accessoriesSupportingAccessCodes
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 hapAccessories];
  v4 = [v3 na_filter:&__block_literal_global_3415];

  return v4;
}

- (id)userWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessCodeManagerContext *)self home];
  v6 = [v5 users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HMDAccessCodeManagerContext_userWithUUID___block_invoke;
  v10[3] = &unk_278688680;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __44__HMDAccessCodeManagerContext_userWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = HMFEqualObjects();

  return v4;
}

- (id)userForMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessCodeManagerContext *)self home];
  v6 = [v4 userForHome:v5];

  return v6;
}

- (void)redispatchToResidentMessage:(id)a3
{
  v4 = a3;
  v7 = [(HMDAccessCodeManagerContext *)self home];
  v5 = [(HMDAccessCodeManagerContext *)self UUID];
  v6 = [(HMDAccessCodeManagerContext *)self workQueue];
  [v7 redispatchToResidentMessage:v4 target:v5 responseQueue:v6];
}

- (id)_performMockedReadRequests:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManagerContext *)self demoDataMocker];
  v6 = [v5 handleReadRequests:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to mock data for write requests: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v7 = [v12 futureWithError:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)performReadRequests:(id)a3 withRetries:(int64_t)a4 timeInterval:(double)a5 loggingObject:(id)a6 flow:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if ([(HMDAccessCodeManagerContext *)self isDemoDataMockerEnabled])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Demo Data Mocker is enabled, not reading from real accessory.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [(HMDAccessCodeManagerContext *)v16 _performMockedReadRequests:v12];
  }

  else
  {
    v20 = [(HMDAccessCodeManagerContext *)self home];
    v19 = [v20 performReadRequests:v12 withRetries:a4 timeInterval:v13 loggingObject:v14 flow:a5];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)performWriteRequests:(id)a3 withRetries:(int64_t)a4 timeInterval:(double)a5 loggingObject:(id)a6 flow:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if ([(HMDAccessCodeManagerContext *)self isDemoDataMockerEnabled])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Demo Data Mocker is enabled, not writing to real accessory.", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [(HMDAccessCodeManagerContext *)v16 _performMockedWriteRequests:v12];
  }

  else
  {
    v20 = [(HMDAccessCodeManagerContext *)self home];
    v19 = [v20 performWriteRequests:v12 withRetries:a4 timeInterval:v13 loggingObject:v14 flow:a5];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_performMockedWriteRequests:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManagerContext *)self demoDataMocker];
  v6 = [v5 handleWriteRequests:v4];

  if (v6)
  {
    v7 = [MEMORY[0x277D2C900] futureWithResult:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to mock data for write requests: %@", &v16, 0x16u);
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
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 homeManager];
  v4 = [v3 messageDispatcher];
  v5 = [v4 residentCommunicationHandlerForHome:v2];

  v6 = [v5 preferredDevice];

  return v6;
}

- (BOOL)hasHomeOnboardedForAccessCodes
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 hasOnboardedForAccessCode];

  return v3;
}

- (BOOL)isHomeAppForegrounded
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 hasCharacteristicNotificationRegistrations];

  return v3;
}

- (BOOL)isResidentSupported
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 isResidentSupported];

  return v3;
}

- (BOOL)isCurrentDeviceOwnerController
{
  v2 = [(HMDAccessCodeManagerContext *)self isCurrentDeviceOwnerUser];
  if (v2)
  {
    if (isiOSDevice())
    {
      LOBYTE(v2) = 1;
    }

    else
    {

      LOBYTE(v2) = isMac();
    }
  }

  return v2;
}

- (BOOL)isCurrentDeviceOwnerUser
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 currentUser];
  v4 = [v3 isOwner];

  return v4;
}

- (BOOL)isCurrentDeviceResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 isResidentCapable];

  return v3;
}

- (double)residentDataSyncVerificationRetryTimeInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDAccessCodeManagerResidentDataSyncVerificationRetryTimeInterval"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)residentDataSyncVerificationRetries
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDAccessCodeManagerResidentDataSyncVerificationRetries"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (double)dataCleanUpCheckTimerInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDAccessCodeManagerDataCleanUpCheckTimerInterval"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (double)removedUserAccessCodeTimeToLive
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDAccessCodeManagerRemovedUserAccessCodeTimeToLive"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (double)accessoryReadWriteRetryTimeInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDAccessCodeManagerAccessoryReadWriteRetryTimeIntervalHH2"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)accessoryReadWriteRetries
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDAccessCodeManagerAccessoryReadWriteRetriesHH2"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (BOOL)isDemoDataMockerEnabled
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"accessCodeDemoDataMockerEnabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)primaryResidentSupportsAccessCodes
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 residentDeviceManager];
  v4 = [v3 primaryResidentDevice];
  v5 = [v4 capabilities];
  v6 = [v5 supportsAccessCodes];

  return v6;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 isCurrentDeviceConfirmedPrimaryResident];

  return v3;
}

- (HMDHomeAdministratorHandler)administratorHandler
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 administratorHandler];

  return v3;
}

- (HMDHomeWalletKeyManager)walletKeyManager
{
  v2 = [(HMDAccessCodeManagerContext *)self home];
  v3 = [v2 walletKeyManager];

  return v3;
}

- (void)configureWithMessageDispatcher:(id)a3
{
  objc_storeStrong(&self->_messageDispatcher, a3);
  v5 = a3;
  v6 = [(HMDAccessCodeManagerContext *)self remoteMessageForwarder];
  [v6 configureWithMessageDispatcher:v5];
}

- (HMDAccessCodeManagerContext)initWithHome:(id)a3 workQueue:(id)a4 UUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (!v10)
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
    objc_storeWeak(&v12->_home, v8);
    objc_storeStrong(&v13->_workQueue, a4);
    objc_storeStrong(&v13->_UUID, a5);
    v14 = objc_alloc_init(HMDAccessCodeDemoDataMocker);
    demoDataMocker = v13->_demoDataMocker;
    v13->_demoDataMocker = v14;

    v16 = [[HMDRemoteMessageForwarder alloc] initWithHome:v8 UUID:v11 workQueue:v9];
    remoteMessageForwarder = v13->_remoteMessageForwarder;
    v13->_remoteMessageForwarder = v16;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v13->_workQueue];
  }

  return v13;
}

- (HMDAccessCodeManagerContext)initWithHome:(id)a3 workQueue:(id)a4
{
  v6 = MEMORY[0x277CD1610];
  v7 = a4;
  v8 = a3;
  v9 = [v8 uuid];
  v10 = [v6 accessCodeManagerUUIDFromHomeUUID:v9];

  v11 = [(HMDAccessCodeManagerContext *)self initWithHome:v8 workQueue:v7 UUID:v10];
  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4, &__block_literal_global_63_3461);
  }

  v3 = logCategory__hmf_once_v5;

  return v3;
}

void __42__HMDAccessCodeManagerContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5;
  logCategory__hmf_once_v5 = v1;
}

@end