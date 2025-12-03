@interface HMDAccessoryFirmwareUpdateTask
+ (id)logCategory;
- (BOOL)shouldRun;
- (BOOL)shouldRunOnCurrentDevice;
- (HMDAccessoryFirmwareUpdateProfile)profile;
- (HMDAccessoryFirmwareUpdateSession)session;
- (HMDAccessoryFirmwareUpdateTask)initWithSession:(id)session profile:(id)profile initialDelay:(double)delay;
- (HMDHAPAccessory)accessory;
- (NSString)description;
- (OS_xpc_object)criteria;
- (id)privateDescription;
- (int64_t)accessoryActiveTransport;
- (void)run;
@end

@implementation HMDAccessoryFirmwareUpdateTask

- (HMDAccessoryFirmwareUpdateProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (HMDAccessoryFirmwareUpdateSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (int64_t)accessoryActiveTransport
{
  accessory = [(HMDAccessoryFirmwareUpdateTask *)self accessory];
  if ([accessory isReachable])
  {
    if ([accessory isThreadTheCurrentlyActiveTransport])
    {
      v3 = 4;
    }

    else if ([accessory hasBTLELink])
    {
      v3 = 3;
    }

    else if ([accessory hasIPLink])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)run
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

- (HMDHAPAccessory)accessory
{
  session = [(HMDAccessoryFirmwareUpdateTask *)self session];
  hapAccessory = [session hapAccessory];

  return hapAccessory;
}

- (BOOL)shouldRunOnCurrentDevice
{
  accessory = [(HMDAccessoryFirmwareUpdateTask *)self accessory];
  isReachable = [accessory isReachable];

  return isReachable;
}

- (BOOL)shouldRun
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

- (OS_xpc_object)criteria
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

- (id)privateDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCABB0];
  [(HMDAccessoryFirmwareUpdateTask *)self initialDelay];
  v6 = [v5 numberWithDouble:?];
  [(HMDAccessoryFirmwareUpdateTask *)self shouldRun];
  v7 = HMFBooleanToString();
  v8 = [v3 stringWithFormat:@"<%@, Initial Delay = %@, Should Run = %@>", v4, v6, v7];

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCABB0];
  [(HMDAccessoryFirmwareUpdateTask *)self initialDelay];
  v6 = [v5 numberWithDouble:?];
  [(HMDAccessoryFirmwareUpdateTask *)self shouldRun];
  v7 = HMFBooleanToString();
  v8 = [v3 stringWithFormat:@"<%@, Initial Delay = %@, Should Run = %@>", v4, v6, v7];

  return v8;
}

- (HMDAccessoryFirmwareUpdateTask)initWithSession:(id)session profile:(id)profile initialDelay:(double)delay
{
  sessionCopy = session;
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = HMDAccessoryFirmwareUpdateTask;
  v10 = [(HMDAccessoryFirmwareUpdateTask *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_session, sessionCopy);
    objc_storeWeak(&v11->_profile, profileCopy);
    v11->_initialDelay = delay;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_236589 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_236589, &__block_literal_global_236590);
  }

  v3 = logCategory__hmf_once_v1_236591;

  return v3;
}

void __45__HMDAccessoryFirmwareUpdateTask_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_236591;
  logCategory__hmf_once_v1_236591 = v1;
}

@end