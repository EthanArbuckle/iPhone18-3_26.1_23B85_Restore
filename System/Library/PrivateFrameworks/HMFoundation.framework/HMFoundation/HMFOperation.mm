@interface HMFOperation
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HMFActivity)activity;
- (HMFOperation)initWithTimeout:(double)timeout;
- (NSArray)attributeDescriptions;
- (NSDate)timeoutDate;
- (NSError)error;
- (NSString)shortDescription;
- (id)logIdentifier;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)finish;
- (void)main;
- (void)setActivity:(id)activity;
- (void)setQualityOfService:(int64_t)service;
- (void)start;
- (void)timerDidFire:(id)fire;
@end

@implementation HMFOperation

- (void)start
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _willChangeValuesForKeys:v3];

  os_unfair_lock_lock_with_options();
  if (self->_executing)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v41 = v34;
      _os_log_impl(&dword_22ADEC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Operation is already executing", buf, 0xCu);
    }

LABEL_24:

    objc_autoreleasePoolPop(v31);
    v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Operation is already executing." userInfo:0];
    objc_exception_throw(v37);
  }

  if (([(HMFOperation *)self isReady]& 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier(selfCopy2);
      *buf = 138543362;
      v41 = v36;
      _os_log_impl(&dword_22ADEC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Operation is not ready", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (self->_finished || [(HMFOperation *)self isCancelled])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(selfCopy3);
      *buf = 138543362;
      v41 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Operation is already complete, aborting.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (!self->_finished)
    {
      self->_finished = 1;
      v8 = objc_autoreleasePoolPush();
      v9 = selfCopy3;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier(v9);
        *buf = 138543362;
        v41 = v11;
        _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Cancelled operation was not marked finished, marking finished", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
    activity = self->_activity;
    if (!activity)
    {
      v13 = self->_voucher;
      voucher_adopt();
      v14 = MEMORY[0x277CCACA8];
      identifier = [(HMFOperation *)self identifier];
      uUIDString = [identifier UUIDString];
      v17 = [v14 stringWithFormat:@"Operation:%@", uUIDString];

      v18 = [[HMFActivity alloc] initWithName:v17];
      v19 = self->_activity;
      self->_activity = v18;

      [(HMFActivity *)self->_activity end];
      activity = self->_activity;
    }

    [(HMFActivity *)activity begin];
    [(HMFActivity *)self->_activity markWithReason:@"Starting operation"];
    v20 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier(selfCopy4);
      *buf = 138543362;
      v41 = v23;
      _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Starting operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    self->_executing = 1;
    timer = [(HMFOperation *)selfCopy4 timer];
    [timer resume];

    v25 = self->_activity;
    if (selfCopy4->_qosWasSet)
    {
      qualityOfService = [(HMFOperation *)selfCopy4 qualityOfService];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __21__HMFOperation_start__block_invoke;
      v39[3] = &unk_2786E6C80;
      v39[4] = selfCopy4;
      v27 = [(HMFActivity *)v25 blockWithQualityOfService:qualityOfService block:v39];
    }

    else
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __21__HMFOperation_start__block_invoke_2;
      v38[3] = &unk_2786E6C80;
      v38[4] = selfCopy4;
      v27 = [(HMFActivity *)v25 blockWithBlock:v38];
    }

    v28 = v27;
    dispatch_async(selfCopy4->_queue, v27);
    [(HMFActivity *)self->_activity end];
  }

  os_unfair_lock_unlock(&self->_lock);
  v29 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _didChangeValuesForKeys:v29];

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock_with_options();
  executing = self->_executing;
  os_unfair_lock_unlock(&self->_lock);
  return executing;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock_with_options();
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"executing"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isExecuting") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"finished") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"isFinished"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___HMFOperation;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (HMFOperation)initWithTimeout:(double)timeout
{
  v17.receiver = self;
  v17.super_class = HMFOperation;
  v4 = [(HMFOperation *)&v17 init];
  if (v4)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v4->_identifier;
    v4->_identifier = uUID;

    v7 = HMFDispatchQueueName(v4, 0);
    v8 = dispatch_queue_create(v7, 0);
    queue = v4->_queue;
    v4->_queue = v8;

    v10 = voucher_copy();
    voucher = v4->_voucher;
    v4->_voucher = v10;

    identifier = [(HMFOperation *)v4 identifier];
    uUIDString = [identifier UUIDString];
    [(HMFOperation *)v4 setName:uUIDString];

    if (timeout > 0.0)
    {
      v14 = [[HMFTimer alloc] initWithTimeInterval:0 options:timeout];
      timer = v4->_timer;
      v4->_timer = v14;

      [(HMFTimer *)v4->_timer setDelegate:v4];
    }
  }

  return v4;
}

- (NSError)error
{
  os_unfair_lock_lock_with_options();
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)timeoutDate
{
  timer = [(HMFOperation *)self timer];
  fireDate = [timer fireDate];
  v4 = fireDate;
  if (fireDate)
  {
    distantFuture = fireDate;
  }

  else
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  }

  v6 = distantFuture;

  return v6;
}

- (void)setQualityOfService:(int64_t)service
{
  v7.receiver = self;
  v7.super_class = HMFOperation;
  [(HMFOperation *)&v7 setQualityOfService:?];
  queue = self->_queue;
  v6 = dispatch_get_global_queue(service, 0);
  dispatch_set_target_queue(queue, v6);

  self->_qosWasSet = 1;
}

- (void)main
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier(selfCopy);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Subclasses should override main", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v3 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  [(HMFOperation *)self cancelWithError:v3];
}

- (void)cancelWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  if (!self->_finished)
  {
    objc_storeStrong(&self->_error, error);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13.receiver = self;
  v13.super_class = HMFOperation;
  [(HMFOperation *)&v13 cancel];
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _willChangeValuesForKeys:v6];

  os_unfair_lock_lock_with_options();
  if (!self->_finished)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (selfCopy->_executing)
    {
      selfCopy->_executing = 0;
      self->_finished = 1;
    }

    [(HMFActivity *)selfCopy->_activity invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _didChangeValuesForKeys:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)finish
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _willChangeValuesForKeys:v3];

  os_unfair_lock_lock_with_options();
  if (([(HMFOperation *)self isCancelled]& 1) == 0 && !self->_finished)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Finishing operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    error = selfCopy->_error;
    selfCopy->_error = 0;

    if (selfCopy->_executing)
    {
      selfCopy->_executing = 0;
      self->_finished = 1;
    }

    [(HMFActivity *)selfCopy->_activity invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{@"isExecuting", @"isFinished", 0}];
  [(HMFOperation *)self _didChangeValuesForKeys:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMFActivity)activity
{
  os_unfair_lock_lock_with_options();
  v3 = self->_activity;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setActivity:(id)activity
{
  v15 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (activityCopy)
  {
    os_unfair_lock_lock_with_options();
    if (self->_executing || self->_finished)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier(selfCopy);
        v13 = 138543362;
        v14 = v9;
        _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot set an activity once an operation has started executing", &v13, 0xCu);
      }
    }

    else
    {
      if (!self->_activity)
      {
        objc_storeStrong(&self->_activity, activity);
        goto LABEL_7;
      }

      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier(selfCopy2);
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot set an activity once an activity has been set", &v13, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v6);
LABEL_7:
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_3_15 != -1)
  {
    dispatch_once(&_MergedGlobals_3_15, &__block_literal_global_43);
  }

  v3 = qword_280AFC450;

  return v3;
}

uint64_t __27__HMFOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Operation", @"com.apple.HMFoundation");
  v1 = qword_280AFC450;
  qword_280AFC450 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  identifier = [(HMFOperation *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  identifier = [(HMFOperation *)self identifier];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Identifier" value:identifier];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)timerDidFire:(id)fire
{
  v13 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier(selfCopy);
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Operation timed out, cancelling", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
  [(HMFOperation *)selfCopy cancelWithError:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end