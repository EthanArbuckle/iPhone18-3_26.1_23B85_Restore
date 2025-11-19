@interface HMDRemoteHomeMessageDestination
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMDRemoteHomeMessageDestination)initWithTarget:(id)a3;
- (HMDRemoteHomeMessageDestination)initWithTarget:(id)a3 homeUUID:(id)a4 queueTimeout:(id)a5;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDRemoteHomeMessageDestination

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  v8 = [(HMFMessageDestination *)self target];
  v9 = [v8 UUIDString];
  v10 = [(HMDRemoteHomeMessageDestination *)self homeUUID];
  v11 = [v10 UUIDString];
  v12 = [(HMDRemoteHomeMessageDestination *)self queueTimeout];
  v13 = [v5 stringWithFormat:@"<%@%@, Target = %@, Home UUID = %@, Queue Timeout = %@>", v6, v7, v9, v11, v12];

  if (v3)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFMessageDestination *)self target];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMFMessageDestination *)self target];
      v7 = [(HMFMessageDestination *)v5 target];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[HMDRemoteHomeMessageDestination homeUUID](self, "homeUUID"), v9 = objc_claimAutoreleasedReturnValue(), -[HMDRemoteHomeMessageDestination homeUUID](v5, "homeUUID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        v12 = [(HMDRemoteHomeMessageDestination *)self queueTimeout];
        v13 = [(HMDRemoteHomeMessageDestination *)v5 queueTimeout];
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
  v3 = [(HMFMessageDestination *)self target];
  v4 = [v3 hash];
  v5 = [(HMDRemoteHomeMessageDestination *)self homeUUID];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMDRemoteHomeMessageDestination *)self queueTimeout];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (HMDRemoteHomeMessageDestination)initWithTarget:(id)a3 homeUUID:(id)a4 queueTimeout:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMDRemoteHomeMessageDestination;
  v11 = [(HMFMessageDestination *)&v14 initWithTarget:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeUUID, a4);
    objc_storeStrong(&v12->_queueTimeout, a5);
  }

  return v12;
}

- (HMDRemoteHomeMessageDestination)initWithTarget:(id)a3
{
  v4 = a3;
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