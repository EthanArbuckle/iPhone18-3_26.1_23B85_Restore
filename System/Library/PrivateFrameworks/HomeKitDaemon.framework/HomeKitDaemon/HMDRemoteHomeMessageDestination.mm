@interface HMDRemoteHomeMessageDestination
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDRemoteHomeMessageDestination)initWithTarget:(id)target;
- (HMDRemoteHomeMessageDestination)initWithTarget:(id)target homeUUID:(id)d queueTimeout:(id)timeout;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDRemoteHomeMessageDestination

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  target = [(HMFMessageDestination *)self target];
  uUIDString = [target UUIDString];
  homeUUID = [(HMDRemoteHomeMessageDestination *)self homeUUID];
  uUIDString2 = [homeUUID UUIDString];
  queueTimeout = [(HMDRemoteHomeMessageDestination *)self queueTimeout];
  v13 = [v5 stringWithFormat:@"<%@%@, Target = %@, Home UUID = %@, Queue Timeout = %@>", shortDescription, v7, uUIDString, uUIDString2, queueTimeout];

  if (pointerCopy)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  target = [(HMFMessageDestination *)self target];
  uUIDString = [target UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      target = [(HMFMessageDestination *)self target];
      target2 = [(HMFMessageDestination *)v5 target];
      v8 = [target isEqual:target2];

      if (v8 && (-[HMDRemoteHomeMessageDestination homeUUID](self, "homeUUID"), v9 = objc_claimAutoreleasedReturnValue(), -[HMDRemoteHomeMessageDestination homeUUID](v5, "homeUUID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        queueTimeout = [(HMDRemoteHomeMessageDestination *)self queueTimeout];
        queueTimeout2 = [(HMDRemoteHomeMessageDestination *)v5 queueTimeout];
        v14 = HMFEqualObjects();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  target = [(HMFMessageDestination *)self target];
  v4 = [target hash];
  homeUUID = [(HMDRemoteHomeMessageDestination *)self homeUUID];
  v6 = [homeUUID hash] ^ v4;
  queueTimeout = [(HMDRemoteHomeMessageDestination *)self queueTimeout];
  v8 = [queueTimeout hash];

  return v6 ^ v8;
}

- (HMDRemoteHomeMessageDestination)initWithTarget:(id)target homeUUID:(id)d queueTimeout:(id)timeout
{
  dCopy = d;
  timeoutCopy = timeout;
  v14.receiver = self;
  v14.super_class = HMDRemoteHomeMessageDestination;
  v11 = [(HMFMessageDestination *)&v14 initWithTarget:target];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeUUID, d);
    objc_storeStrong(&v12->_queueTimeout, timeout);
  }

  return v12;
}

- (HMDRemoteHomeMessageDestination)initWithTarget:(id)target
{
  targetCopy = target;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end