@interface HMFWeakObject
- (BOOL)isEqual:(id)a3;
- (HMFWeakObject)init;
- (HMFWeakObject)initWithWeakObject:(id)a3;
- (id)object;
@end

@implementation HMFWeakObject

- (HMFWeakObject)init
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

- (HMFWeakObject)initWithWeakObject:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v13.receiver = self;
    v13.super_class = HMFWeakObject;
    v5 = [(HMFWeakObject *)&v13 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_object, v4);
      v6->_objectHash = [v4 hash];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier(0);
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_ERROR, "%{public}@A valid object is required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMFWeakObject *)self object];
      v8 = [(HMFWeakObject *)v6 object];
      if (v7 | v8)
      {
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end