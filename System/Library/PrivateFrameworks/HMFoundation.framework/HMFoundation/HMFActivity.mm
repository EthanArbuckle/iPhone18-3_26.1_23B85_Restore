@interface HMFActivity
+ (HMFActivity)_currentActivity;
+ (HMFActivity)activityWithName:(id)a3 parent:(id)a4 options:(unint64_t)a5 block:(id)a6;
+ (NSString)currentClientMetricIdentifier;
+ (id)bundleIdentifier;
+ (id)logCategory;
+ (id)shortDescription;
+ (void)initialize;
+ (void)markCurrentActivity;
+ (void)markCurrentActivityWithFormat:(id)a3;
+ (void)markCurrentActivityWithReason:(id)a3;
- (BOOL)hasStarted;
- (BOOL)isValid;
- (HMFActivity)init;
- (HMFActivity)initWithIdentifier:(id)a3 name:(id)a4 parent:(id)a5 assertions:(id)a6;
- (HMFActivity)initWithIdentifier:(id)a3 name:(id)a4 parent:(id)a5 options:(unint64_t)a6;
- (HMFActivity)initWithName:(id)a3 parent:(id)a4 options:(unint64_t)a5;
- (HMFActivity)parent;
- (NSArray)attributeDescriptions;
- (NSString)clientMetricIdentifier;
- (NSString)shortDescription;
- (id)_associatedObjectForKey:(id)a3;
- (id)blockWithBlock:(id)a3;
- (id)blockWithQualityOfService:(int64_t)a3 block:(id)a4;
- (id)logIdentifier;
- (void)_setAssociatedObject:(id)a3 forKey:(id)a4;
- (void)begin;
- (void)dealloc;
- (void)end;
- (void)invalidate;
- (void)markWithFormat:(id)a3;
- (void)markWithReason:(id)a3;
- (void)performBlock:(id)a3;
- (void)setClientMetricIdentifier:(id)a3;
- (void)start;
- (void)synchronizeWithActivityLock:(id)a3;
@end

@implementation HMFActivity

+ (void)initialize
{
  __manager = objc_alloc_init(__HMFActivityManager);

  MEMORY[0x2821F96F8]();
}

+ (HMFActivity)_currentActivity
{
  v2 = __manager;
  identifier = os_activity_get_identifier(MEMORY[0x277D86210], 0);
  if (identifier)
  {
    os_unfair_lock_lock_with_options();
    v4 = objc_autoreleasePoolPush();
    identifier = NSMapGet(*(v2 + 2), identifier);
    objc_autoreleasePoolPop(v4);
    os_unfair_lock_unlock(v2 + 2);
    if (([identifier isValid] & 1) == 0)
    {

      identifier = 0;
    }
  }

  return identifier;
}

- (void)start
{
  v46 = *MEMORY[0x277D85DE8];
  if (a1 && ([a1 hasStarted] & 1) == 0)
  {
    v2 = NSStringFromSelector(sel_hasStarted);
    [a1 willChangeValueForKey:v2];

    os_unfair_lock_lock_with_options();
    *(a1 + 96) = mach_continuous_time();
    v40 = [a1 parent];
    v3 = a1;
    v4 = HMFGetOSLogHandle();

    v5 = os_signpost_enabled(v4);
    if (v5)
    {
      v6 = v3;
      v7 = HMFGetOSLogHandle();

      v8 = v6;
      v42 = 0;
      *buf = 0;
      *&buf[8] = 0;
      [v8[7] getUUIDBytes:buf];
      v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:buf length:16 freeWhenDone:0];
      [v9 getBytes:&v42 range:{objc_msgSend(v9, "length") - 8, 8}];

      if (v42 + 1 >= 2)
      {
        v10 = v42;
      }

      else
      {
        v10 = 0xEEEEB0B5B2B2EEEELL;
      }

      if (os_signpost_enabled(v7))
      {
        v11 = [v8 identifier];
        v12 = [v11 UUIDString];
        v13 = [v40 identifier];
        v14 = [v13 UUIDString];
        v15 = [v8 name];
        *buf = 138412802;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        v44 = 2112;
        v45 = v15;
        _os_signpost_emit_with_name_impl(&dword_22ADEC000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v10, "HMFActivity", "Identifier = %@, Parent = %@, Name = %@", buf, 0x20u);
      }
    }

    v16 = objc_autoreleasePoolPush();
    v17 = v3[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__HMFActivity_start__block_invoke;
    block[3] = &unk_2786E6C80;
    block[4] = v3;
    os_activity_apply(v17, block);
    objc_autoreleasePoolPop(v16);
    v18 = [v3 options];
    if ((v18 & 4) != 0 || ([v3 shortDescription], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "markWithFormat:", @"Started child activity: %@", v19), v19, v18))
    {
      v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
      v21 = MEMORY[0x277CCACA8];
      v22 = [v3 name];
      v23 = [v3 identifier];
      v24 = [v23 UUIDString];
      v25 = [v21 stringWithFormat:@"%@.%@", v22, v24];

      if (v18)
      {
        v26 = [[HMFMemoryAssertion alloc] initWithName:v25];
        if (v26)
        {
          [v20 addObject:v26];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v27 = v3;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier(v27);
            *buf = 138543362;
            *&buf[4] = v29;
            _os_log_impl(&dword_22ADEC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to create memory assertion", buf, 0xCu);
          }

          objc_autoreleasePoolPop(context);
        }
      }

      if ((v18 & 2) != 0)
      {
        v30 = [[HMFPowerAssertion alloc] initWithName:v25];
        if (v30)
        {
          [v20 addObject:v30];
        }

        else
        {
          v31 = objc_autoreleasePoolPush();
          v32 = v3;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier(v32);
            *buf = 138543362;
            *&buf[4] = v34;
            _os_log_impl(&dword_22ADEC000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create power assertion", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v31);
        }
      }

      if (([v20 hmf_isEmpty] & 1) == 0)
      {
        v35 = [v20 copy];
        v36 = v3[11];
        v3[11] = v35;
      }
    }

    os_unfair_lock_unlock((a1 + 32));
    v37 = NSStringFromSelector(sel_hasStarted);
    [v3 didChangeValueForKey:v37];
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasStarted
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    v3 = self->_startMachTime != 0;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HMFActivity)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

+ (id)logCategory
{
  if (qword_280AFC298 != -1)
  {
    dispatch_once(&qword_280AFC298, &__block_literal_global_57);
  }

  v3 = qword_280AFC2A0;

  return v3;
}

uint64_t __26__HMFActivity_logCategory__block_invoke()
{
  qword_280AFC2A0 = HMFCreateOSLogHandle(@"Activity", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

void __20__HMFActivity_start__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = HMFGetLogIdentifier(v3);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEBUG, "%{public}@Started", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFActivity *)self name];
  v6 = [(HMFActivity *)self identifier];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@ (%@)", v4, v5, v7];

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)begin
{
  [(HMFActivity *)self start];
  os_unfair_lock_lock_with_options();
  __HMFActivityBegin(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)end
{
  os_unfair_lock_lock_with_options();
  __HMFActivityEnd(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isValid
{
  os_unfair_lock_lock_with_options();
  valid = self->_valid;
  os_unfair_lock_unlock(&self->_lock);
  return valid;
}

- (void)invalidate
{
  p_lock = &self->_lock;
  os_unfair_lock_lock_with_options();
  if (self->_valid)
  {
    self->_valid = 0;
    __HMFActivityInvalidate(self);
  }

  os_unfair_lock_unlock(p_lock);
  v7 = __manager;
  v4 = self;
  identifier = os_activity_get_identifier(v4->_internal, 0);
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  NSMapRemove(*(v7 + 2), identifier);
  objc_autoreleasePoolPop(v6);
  os_unfair_lock_unlock(v7 + 2);
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_valid)
  {
    __HMFActivityInvalidate(self);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_threadContexts;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = HMFGetLogIdentifier(v9);
          v12 = [v7 count];
          v13 = [v7 thread];
          *buf = 138543874;
          v22 = v11;
          v23 = 2048;
          v24 = v12;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Thread left active (%tu): %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v4);
  }

  v16.receiver = self;
  v16.super_class = HMFActivity;
  [(HMFActivity *)&v16 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

+ (HMFActivity)activityWithName:(id)a3 parent:(id)a4 options:(unint64_t)a5 block:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = [[HMFActivity alloc] initWithName:v9 parent:v10 options:a5];
  internal = v13->_internal;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMFActivity_activityWithName_parent_options_block___block_invoke;
  block[3] = &unk_2786E7490;
  v15 = v11;
  v18 = v15;
  os_activity_apply(internal, block);
  [(HMFActivity *)v13 invalidate];

  objc_autoreleasePoolPop(v12);
  return result;
}

+ (id)bundleIdentifier
{
  if (qword_280AFC290 != -1)
  {
    dispatch_once(&qword_280AFC290, &__block_literal_global_19);
  }

  v3 = _MergedGlobals_7;

  return v3;
}

void __31__HMFActivity_bundleIdentifier__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = _MergedGlobals_7;
  _MergedGlobals_7 = v2;

  objc_autoreleasePoolPop(v0);
}

+ (void)markCurrentActivity
{
  v2 = [a1 currentActivityForMarking];
  [v2 mark];
}

+ (void)markCurrentActivityWithReason:(id)a3
{
  v4 = a3;
  v5 = [a1 currentActivityForMarking];
  [v5 markWithReason:v4];
}

+ (void)markCurrentActivityWithFormat:(id)a3
{
  v4 = a3;
  v5 = [a1 currentActivityForMarking];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v7];

  [v5 markWithReason:v6];
}

- (HMFActivity)init
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

- (HMFActivity)initWithName:(id)a3 parent:(id)a4 options:(unint64_t)a5
{
  v8 = MEMORY[0x277CCAD78];
  v9 = a4;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [(HMFActivity *)self initWithIdentifier:v11 name:v10 parent:v9 options:a5];

  return v12;
}

- (HMFActivity)initWithIdentifier:(id)a3 name:(id)a4 parent:(id)a5 assertions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v13 count])
  {
    _HMFPreconditionFailure(@"assertions.count");
  }

  v14 = [(HMFActivity *)self initWithIdentifier:v10 name:v11 parent:v12 options:0];
  if (v14->_internalAssertions)
  {
    _HMFPreconditionFailure(@"nil == self->_internalAssertions");
  }

  v15 = v14;
  v16 = [v13 copy];
  internalAssertions = v15->_internalAssertions;
  v15->_internalAssertions = v16;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__HMFActivity_initWithIdentifier_name_parent_assertions___block_invoke;
  v20[3] = &unk_2786E74B8;
  v18 = v15;
  v21 = v18;
  [v13 enumerateObjectsUsingBlock:v20];

  return v18;
}

void __57__HMFActivity_initWithIdentifier_name_parent_assertions___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 acquire:0] & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier(v5);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to acquire the assertion : %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HMFActivity)initWithIdentifier:(id)a3 name:(id)a4 parent:(id)a5 options:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v45.receiver = self;
  v45.super_class = HMFActivity;
  v14 = [(HMFActivity *)&v45 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_23;
  }

  objc_storeStrong(&v14->_identifier, a3);
  v15->_valid = 1;
  v16 = [MEMORY[0x277CBEB58] set];
  threadContexts = v15->_threadContexts;
  v15->_threadContexts = v16;

  v18 = [v12 copy];
  name = v15->_name;
  v15->_name = v18;

  v15->_options = a6;
  if (!v13)
  {
    v13 = +[HMFActivity _currentActivity];
  }

  objc_storeWeak(&v15->_parent, v13);
  v20 = MEMORY[0x277D86210];
  options = v15->_options;
  v40 = v12;
  if ((options & 8) != 0)
  {
    v23 = 2;
    v22 = MEMORY[0x277D86218];
  }

  else
  {
    if (!v13 || (v22 = *(v13 + 1)) == 0)
    {
      v23 = 2;
      v24 = MEMORY[0x277D86210];
      goto LABEL_11;
    }

    v23 = 0;
  }

  v24 = v22;

  options = v15->_options;
LABEL_11:
  if ((options & 4) != 0)
  {
    v25 = OS_ACTIVITY_FLAG_DETACHED;
  }

  else
  {
    v25 = v23;
  }

  v26 = _os_activity_create(&dword_22ADEC000, "HMFActivity", v24, v25);
  internal = v15->_internal;
  v15->_internal = v26;

  v28 = __manager;
  v29 = v15;
  identifier = os_activity_get_identifier(v15->_internal, 0);
  os_unfair_lock_lock_with_options();
  v31 = objc_autoreleasePoolPush();
  NSMapInsert(*(v28 + 2), identifier, v29);
  objc_autoreleasePoolPop(v31);
  os_unfair_lock_unlock(v28 + 2);

  v32 = objc_autoreleasePoolPush();
  v33 = v15->_internal;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke;
  block[3] = &unk_2786E6C80;
  v34 = v29;
  v44 = v34;
  os_activity_apply(v33, block);

  objc_autoreleasePoolPop(v32);
  if (v13)
  {
    os_unfair_lock_lock_with_options();
    v35 = [*(v13 + 5) copy];
    os_unfair_lock_unlock(v13 + 8);
    if (v35)
    {
      v36 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v35];
      v37 = v34[5];
      v34[5] = v36;

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke_2;
      v41[3] = &unk_2786E74E0;
      v42 = v34;
      [v35 enumerateKeysAndObjectsUsingBlock:v41];
      if (![v34[5] count])
      {
        v38 = v34[5];
        v34[5] = 0;
      }
    }
  }

  else
  {
    v35 = 0;
  }

  v12 = v40;
  if ((v15->_options & 0x10) == 0)
  {
    [(HMFActivity *)v34 start];
    __HMFActivityBegin(v34);
  }

LABEL_23:
  return v15;
}

uint64_t __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 80) & 4) != 0)
  {
    v2 = voucher_copy_without_importance();
  }

  else
  {
    v2 = voucher_copy();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8]();
}

void __54__HMFActivity_initWithIdentifier_name_parent_options___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForChildActivity];
  if (v5)
  {
    [*(*(a1 + 32) + 40) setObject:v5 forKey:v6];
  }
}

- (NSArray)attributeDescriptions
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFActivity *)self parent];
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];
  v7 = [(HMFAttributeDescription *)v3 initWithName:@"Parent" value:v6];
  v8 = [HMFAttributeDescription alloc];
  v9 = [(HMFActivity *)self assertions];
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CBEB18] array];
    v12 = v11;
    if (v10)
    {
      [v11 addObject:@"Memory"];
    }

    if ((v10 & 2) != 0)
    {
      [v12 addObject:@"Power"];
    }

    if ([v12 count])
    {
      v13 = [v12 componentsJoinedByString:{@", "}];
    }

    else
    {
      v13 = @"Unknown";
    }
  }

  else
  {
    v13 = @"None";
  }

  v14 = [(HMFAttributeDescription *)v8 initWithName:@"Assertions" value:v13];
  v21[1] = v14;
  v15 = [HMFAttributeDescription alloc];
  v16 = HMFBooleanToString([(HMFActivity *)self isValid]);
  v17 = [(HMFAttributeDescription *)v15 initWithName:@"Valid" value:v16];
  v21[2] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)markWithFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(HMFActivity *)self markWithReason:v6];
}

- (void)markWithReason:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMFActivity *)self start];
  os_unfair_lock_lock_with_options();
  if (self->_valid)
  {
    v5 = self;
    v6 = HMFGetOSLogHandle();

    v7 = os_signpost_enabled(v6);
    if (v7)
    {
      v8 = v5;
      v9 = HMFGetOSLogHandle();

      v10 = v8;
      v20 = 0;
      *buf = 0uLL;
      [v10[7] getUUIDBytes:buf];
      v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:buf length:16 freeWhenDone:0];
      [v11 getBytes:&v20 range:{objc_msgSend(v11, "length") - 8, 8}];

      v12 = v20;
      if (os_signpost_enabled(v9))
      {
        if (v12 + 1 >= 2)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0xEEEEB0B5B2B2EEEELL;
        }

        *buf = 138412290;
        *&buf[4] = v4;
        _os_signpost_emit_with_name_impl(&dword_22ADEC000, v9, OS_SIGNPOST_EVENT, v13, "HMFActivity", "Reason = %@", buf, 0xCu);
      }
    }

    v14 = objc_autoreleasePoolPush();
    internal = v5->_internal;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__HMFActivity_markWithReason___block_invoke;
    block[3] = &unk_2786E6D18;
    v18 = v4;
    v19 = v5;
    os_activity_apply(internal, block);

    objc_autoreleasePoolPop(v14);
  }

  os_unfair_lock_unlock(&self->_lock);

  v16 = *MEMORY[0x277D85DE8];
}

void __30__HMFActivity_markWithReason___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier(v4);
    v8 = *(a1 + 32);
    *buf = 138543618;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v9 = "%{public}@Marked with reason: %@";
    v10 = v5;
    v11 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier(v4);
    *buf = 138543362;
    v25 = v7;
    v9 = "%{public}@Marked";
    v10 = v5;
    v11 = 12;
  }

  _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(a1 + 40);
  if (v12)
  {
    v12 = v12[11];
  }

  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * i) mark];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)blockWithBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure(@"block");
  }

  v5 = v4;
  [(HMFActivity *)self start];
  voucher = self->_voucher;
  v7 = dispatch_block_create_with_voucher();

  return v7;
}

- (id)blockWithQualityOfService:(int64_t)a3 block:(id)a4
{
  v5 = a4;
  if (!v5)
  {
    _HMFPreconditionFailure(@"block");
  }

  v6 = v5;
  [(HMFActivity *)self start];
  voucher = self->_voucher;
  v8 = dispatch_block_create_with_voucher_and_qos_class();

  return v8;
}

- (void)performBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(HMFActivity *)self start];
    v5 = [(HMFActivity *)self blockWithBlock:v4];

    v5[2]();
  }
}

- (void)_setAssociatedObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  associatedObjects = self->_associatedObjects;
  if (!associatedObjects)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->_associatedObjects;
    self->_associatedObjects = v8;

    associatedObjects = self->_associatedObjects;
  }

  [(NSMutableDictionary *)associatedObjects setObject:v10 forKeyedSubscript:v6];
}

- (id)_associatedObjectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_associatedObjects objectForKey:v4];

  return v5;
}

- (void)synchronizeWithActivityLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v4[2]();
  os_unfair_lock_unlock(&self->_lock);
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  name = self->_name;
  v4 = [(NSUUID *)self->_identifier UUIDString];
  v5 = [v2 stringWithFormat:@"%@ (%@)", name, v4];

  return v5;
}

- (void)setClientMetricIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HMFActivity_ClientMetricIdentifier__setClientMetricIdentifier___block_invoke;
  v6[3] = &unk_2786E6D18;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HMFActivity *)self synchronizeWithActivityLock:v6];
}

void __65__HMFActivity_ClientMetricIdentifier__setClientMetricIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _associatedObjectForKey:@"HMFClientMetricIdentifier"];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier(v4);
      v7 = *(a1 + 40);
      v9 = 138543874;
      v10 = v6;
      v11 = 2112;
      v12 = v2;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_22ADEC000, v5, OS_LOG_TYPE_ERROR, "%{public}@Using existing clientMetricIdentifier: %@ and dropping: %@", &v9, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [*(a1 + 32) _setAssociatedObject:*(a1 + 40) forKey:@"HMFClientMetricIdentifier"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (NSString)clientMetricIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HMFActivity_ClientMetricIdentifier__clientMetricIdentifier__block_invoke;
  v4[3] = &unk_2786E7AF0;
  v4[4] = self;
  v4[5] = &v5;
  [(HMFActivity *)self synchronizeWithActivityLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __61__HMFActivity_ClientMetricIdentifier__clientMetricIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _associatedObjectForKey:@"HMFClientMetricIdentifier"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

+ (NSString)currentClientMetricIdentifier
{
  v2 = +[HMFActivity _currentActivity];
  v3 = [v2 clientMetricIdentifier];

  return v3;
}

@end