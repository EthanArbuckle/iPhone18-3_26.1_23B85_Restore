@interface HMFWeakObject
- (BOOL)isEqual:(id)equal;
- (HMFWeakObject)init;
- (HMFWeakObject)initWithWeakObject:(id)object;
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

- (HMFWeakObject)initWithWeakObject:(id)object
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    v13.receiver = self;
    v13.super_class = HMFWeakObject;
    v5 = [(HMFWeakObject *)&v13 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_object, objectCopy);
      v6->_objectHash = [objectCopy hash];
    }

    self = v6;
    selfCopy = self;
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
    selfCopy = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      object = [(HMFWeakObject *)self object];
      object2 = [(HMFWeakObject *)v6 object];
      if (object | object2)
      {
        v9 = [object isEqual:object2];
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