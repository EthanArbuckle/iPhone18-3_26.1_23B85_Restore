@interface HAPAccessoryReachabilityClient
+ (HAPAccessoryReachabilityClient)new;
+ (id)logCategory;
+ (id)shortDescription;
+ (void)initialize;
- (HAPAccessoryReachabilityClient)init;
- (HAPAccessoryReachabilityClient)initWithIdentifier:(id)identifier profile:(id)profile operationQueue:(id)queue;
- (HAPAccessoryReachabilityDelegate)delegate;
- (NSString)description;
- (id)shortDescription;
- (void)_enterState:(int64_t)state;
- (void)_poll;
- (void)_processProfile;
- (void)_runStateMachine;
- (void)_stop;
- (void)_timerDidFire:(id)fire;
- (void)_wait;
- (void)confirm;
- (void)kick;
- (void)setDelegate:(id)delegate;
- (void)setProfile:(id)profile;
- (void)startWithCompletionHandler:(id)handler;
- (void)stopWithCompletionHandler:(id)handler;
- (void)timerDidFire:(id)fire;
@end

@implementation HAPAccessoryReachabilityClient

- (HAPAccessoryReachabilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (void)_timerDidFire:(id)fire
{
  v19 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v6 = fireCopy;
  if (self)
  {
    activityTimer = self->_activityTimer;
  }

  else
  {
    activityTimer = 0;
  }

  if ([fireCopy isEqual:activityTimer])
  {
    state = [(HAPAccessoryReachabilityClient *)self state];
    if ((state - 1) >= 3)
    {
      if (!state)
      {
        [(HAPAccessoryReachabilityClient *)self _enterState:1];
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = NSStringFromSelector(a2);
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@%@ timer should not be running in this state", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v25 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = NSStringFromSelector(a2);
    identifier = selfCopy->_identifier;
    *buf = 138543874;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@%@ id=%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  objc_initWeak(buf, selfCopy);
  if (selfCopy)
  {
    operationQueue = selfCopy->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  v13 = operationQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__HAPAccessoryReachabilityClient_timerDidFire___block_invoke;
  v16[3] = &unk_2786D6EB0;
  objc_copyWeak(&v18, buf);
  v14 = fireCopy;
  v17 = v14;
  [(HAP2SerializedOperationQueue *)v13 addBlock:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __47__HAPAccessoryReachabilityClient_timerDidFire___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _timerDidFire:*(a1 + 32)];
}

- (void)_stop
{
  if (self)
  {
    [(HAP2SerializedOperationQueue *)self->_operationQueue assertCurrentQueue];
    [(HMFTimer *)self->_activityTimer cancel];

    objc_storeStrong(&self->_activityTimer, 0);
  }

  else
  {
    [0 assertCurrentQueue];

    [0 cancel];
  }
}

- (void)_poll
{
  selfCopy = self;
  if (self)
  {
    self = self->_operationQueue;
  }

  [(HAPAccessoryReachabilityClient *)self assertCurrentQueue];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  [WeakRetained pollAccessory];
}

- (void)_wait
{
  if (self)
  {
    [(HAP2SerializedOperationQueue *)self->_operationQueue assertCurrentQueue];
    activityTimer = self->_activityTimer;
    if (activityTimer)
    {
      [(HMFTimer *)activityTimer suspend];
      [(HMFTimer *)self->_activityTimer setDelegate:0];
    }
  }

  else
  {
    [0 assertCurrentQueue];
  }

  v4 = vcvtd_n_f64_u32(arc4random(), 0x20uLL);
  [(HAPAccessoryReachabilityClient *)self confirmInterval];
  v6 = v4 * (v5 * 0.05);
  v7 = objc_alloc(MEMORY[0x277D0F920]);
  [(HAPAccessoryReachabilityClient *)self confirmInterval];
  v9 = [v7 initWithTimeInterval:1 options:v6 + v8];
  v10 = v9;
  if (self)
  {
    objc_storeStrong(&self->_activityTimer, v9);

    [(HMFTimer *)self->_activityTimer setDelegate:self];
    v11 = self->_activityTimer;
  }

  else
  {

    [0 setDelegate:0];
    v11 = 0;
  }

  [(HMFTimer *)v11 resume];
}

- (void)_processProfile
{
  v26 = *MEMORY[0x277D85DE8];
  profile = [(HAPAccessoryReachabilityClient *)self profile];
  [profile sleepInterval];
  v6 = v5;

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = mEMORY[0x277D0F8D0];
  if (v6 <= 0.0)
  {
    v12 = [mEMORY[0x277D0F8D0] preferenceForKey:@"kReachabilityDefaultTestInterval"];
    numberValue = [v12 numberValue];
    self->_confirmInterval = [numberValue unsignedIntValue];

    self->_confirmInterval = fmax(self->_confirmInterval, 1.0);
  }

  else
  {
    v9 = [mEMORY[0x277D0F8D0] preferenceForKey:@"kReachabilityDefaultSleepyTestInterval"];
    numberValue2 = [v9 numberValue];
    unsignedIntValue = [numberValue2 unsignedIntValue];

    self->_confirmInterval = fmax((v6 + v6) * 1.15, fmax(unsignedIntValue, 1.0));
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v18 = NSStringFromSelector(a2);
    v20 = 138543874;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = selfCopy;
    _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEBUG, "%{public}@%@: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_enterState:(int64_t)state
{
  selfCopy = self;
  if (self)
  {
    self = self->_operationQueue;
  }

  [(HAPAccessoryReachabilityClient *)self assertCurrentQueue];
  selfCopy->_state = state;

  [(HAPAccessoryReachabilityClient *)selfCopy _runStateMachine];
}

- (void)_runStateMachine
{
  selfCopy = self;
  v19 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = self->_operationQueue;
  }

  [(HAPAccessoryReachabilityClient *)self assertCurrentQueue];
  v3 = objc_autoreleasePoolPush();
  v4 = selfCopy;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = v6;
    state = v4->_state;
    if (state > 3)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_2786D4528[state];
    }

    identifier = v4->_identifier;
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = identifier;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%{public}@state=%@ id=%@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v11 = v4->_state;
  if ((v11 - 1) < 2)
  {
    [(HAPAccessoryReachabilityClient *)v4 _poll];
  }

  else if (v11 == 3)
  {
    [(HAPAccessoryReachabilityClient *)v4 _stop];
  }

  else if (!v11)
  {
    [(HAPAccessoryReachabilityClient *)v4 _wait];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)confirm
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    state = selfCopy->_state;
    if (state > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_2786D4528[state];
    }

    identifier = selfCopy->_identifier;
    *buf = 138544130;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@%@ state=%@ id=%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__HAPAccessoryReachabilityClient_confirm__block_invoke;
  v16[3] = &unk_2786D6CA0;
  v16[4] = selfCopy;
  v13 = MEMORY[0x231885210](v16);
  if (selfCopy)
  {
    operationQueue = selfCopy->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  [(HAP2SerializedOperationQueue *)operationQueue addBlock:v13];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __41__HAPAccessoryReachabilityClient_confirm__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result)
  {
    if (result != 3)
    {
      return result;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);

  return [v4 _enterState:v3];
}

- (void)kick
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = NSStringFromSelector(a2);
    v9 = v8;
    state = selfCopy->_state;
    if (state > 3)
    {
      v11 = @"unknown";
    }

    else
    {
      v11 = off_2786D4528[state];
    }

    identifier = selfCopy->_identifier;
    *buf = 138544130;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@%@ state=%@ id=%@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__HAPAccessoryReachabilityClient_kick__block_invoke;
  v16[3] = &unk_2786D6CA0;
  v16[4] = selfCopy;
  v13 = MEMORY[0x231885210](v16);
  if (selfCopy)
  {
    operationQueue = selfCopy->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  [(HAP2SerializedOperationQueue *)operationQueue addBlock:v13];

  v15 = *MEMORY[0x277D85DE8];
}

unint64_t __38__HAPAccessoryReachabilityClient_kick__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  if (result <= 2)
  {
    v3 = qword_22AC9DD28[result];
    v4 = *(a1 + 32);

    return [v4 _enterState:v3];
  }

  return result;
}

- (void)stopWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __60__HAPAccessoryReachabilityClient_stopWithCompletionHandler___block_invoke;
  v11 = &unk_2786D65D8;
  selfCopy = self;
  v13 = handlerCopy;
  v5 = handlerCopy;
  v6 = MEMORY[0x231885210](&v8);
  if (self)
  {
    operationQueue = self->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  [(HAP2SerializedOperationQueue *)operationQueue addBlock:v6, v8, v9, v10, v11, selfCopy];
}

uint64_t __60__HAPAccessoryReachabilityClient_stopWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] <= 1)
  {
    [*(a1 + 32) _enterState:3];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__HAPAccessoryReachabilityClient_startWithCompletionHandler___block_invoke;
  v11 = &unk_2786D65D8;
  selfCopy = self;
  v13 = handlerCopy;
  v5 = handlerCopy;
  v6 = MEMORY[0x231885210](&v8);
  if (self)
  {
    operationQueue = self->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  [(HAP2SerializedOperationQueue *)operationQueue addBlock:v6, v8, v9, v10, v11, selfCopy];
}

void __61__HAPAccessoryReachabilityClient_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));

  if (WeakRetained)
  {
    v3 = [*(a1 + 32) state];
    if ((v3 - 1) < 3)
    {
      [*(a1 + 32) _enterState:0];
      v4 = *(*(a1 + 40) + 16);

      v4();
      return;
    }

    if (v3)
    {
      return;
    }

    v6 = *(a1 + 40);
    v7 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot start from current state: %@", @"waiting"];
    v8 = [v7 hapErrorWithCode:4 description:@"reachability is already running" reason:v9 suggestion:0 underlyingError:0];
    (*(v6 + 16))(v6, v8);
  }

  else
  {
    v5 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Failed to start reachability monitoring" reason:@"No delegate" suggestion:0 underlyingError:0];
    (*(v5 + 16))(v5, v9);
  }
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __45__HAPAccessoryReachabilityClient_setProfile___block_invoke;
  v11 = &unk_2786D7050;
  selfCopy = self;
  v13 = profileCopy;
  v5 = profileCopy;
  v6 = MEMORY[0x231885210](&v8);
  if (self)
  {
    operationQueue = self->_operationQueue;
  }

  else
  {
    operationQueue = 0;
  }

  [(HAP2SerializedOperationQueue *)operationQueue addBlock:v6, v8, v9, v10, v11, selfCopy];
}

uint64_t __45__HAPAccessoryReachabilityClient_setProfile___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copyWithZone:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);

  return [v5 _processProfile];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HAPAccessoryReachabilityClient_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v7];
}

- (NSString)description
{
  v14.receiver = self;
  v14.super_class = HAPAccessoryReachabilityClient;
  v3 = [(HMFObject *)&v14 description];
  v4 = MEMORY[0x277CCACA8];
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  v6 = identifier;
  state = [(HAPAccessoryReachabilityClient *)self state];
  if (state > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_2786D4528[state];
  }

  [(HAPAccessoryReachabilityClient *)self confirmInterval];
  v10 = v9;
  profile = [(HAPAccessoryReachabilityClient *)self profile];
  v12 = [v4 stringWithFormat:@"%@ identifier=%@ state=%@, confirmInterval=%f, profile=%@", v3, v6, v8, v10, profile];

  return v12;
}

- (HAPAccessoryReachabilityClient)initWithIdentifier:(id)identifier profile:(id)profile operationQueue:(id)queue
{
  identifierCopy = identifier;
  profileCopy = profile;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = HAPAccessoryReachabilityClient;
  v11 = [(HAPAccessoryReachabilityClient *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_state = 3;
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = [profileCopy copyWithZone:0];
    profile = v12->_profile;
    v12->_profile = v15;

    objc_storeStrong(&v12->_operationQueue, queue);
    v17 = [HAP2PropertyLock lockWithName:@"HAPAccessoryReachabilityClient.propertyLock"];
    propertyLock = v12->_propertyLock;
    v12->_propertyLock = v17;

    [(HAPAccessoryReachabilityClient *)v12 _processProfile];
    v19 = v12;
  }

  return v12;
}

- (HAPAccessoryReachabilityClient)init
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

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_8798);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __45__HAPAccessoryReachabilityClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v7 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283EA9B18 forPreferenceKey:@"kReachabilityDefaultTestInterval"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_283EA9B28 forPreferenceKey:@"kReachabilityDefaultSleepyTestInterval"];
}

+ (HAPAccessoryReachabilityClient)new
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

@end