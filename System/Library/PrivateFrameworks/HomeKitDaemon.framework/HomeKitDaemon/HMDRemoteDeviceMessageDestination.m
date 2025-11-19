@interface HMDRemoteDeviceMessageDestination
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)a3;
- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)a3 device:(id)a4;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)remoteDestinationString;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDRemoteDeviceMessageDestination

- (id)remoteDestinationString
{
  v3 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  v5 = [(HMDRemoteDeviceMessageDestination *)self device];
  v6 = [v5 handles];
  v7 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
    v10 = [v9 destination];
  }

  else
  {
LABEL_4:
    v9 = [(HMDRemoteDeviceMessageDestination *)self device];
    v10 = [v9 remoteDestinationString];
  }

  v11 = v10;

  if (!v11 || ([v11 hasSuffix:@"inbox.appleid.apple.com"] & 1) != 0)
  {
    v12 = [(HMDRemoteDeviceMessageDestination *)self device];
    v13 = [v12 account];
    v14 = [v13 isCurrentAccount];

    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = [(HMDRemoteDeviceMessageDestination *)self device];
    v16 = [v15 localHandles];
    v17 = [v16 firstObject];

    if (v17)
    {
      v18 = v17;
    }

    else
    {
LABEL_10:
      v19 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
      if (!v19)
      {
        goto LABEL_14;
      }

      v20 = v19;
      v21 = [(HMDRemoteDeviceMessageDestination *)self device];
      v22 = [v21 handles];
      v23 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
      v24 = [v22 containsObject:v23];

      if (!v24)
      {
LABEL_14:
        v17 = [(HMDRemoteDeviceMessageDestination *)self device];
        v25 = [v17 remoteDestinationString];
        goto LABEL_15;
      }

      v18 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
      v17 = v18;
    }

    v25 = [v18 destination];
LABEL_15:
    v26 = v25;

    goto LABEL_17;
  }

  v26 = v11;
LABEL_17:

  return v26;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = shouldLogPrivateInformation();
  v6 = [(HMDRemoteDeviceMessageDestination *)self device];
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v8 = [v6 privateDescription];

    v7 = v8;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v11 = &stru_283CF9D50;
  }

  v12 = [(HMFMessageDestination *)self target];
  v13 = [v12 UUIDString];
  v14 = [v9 stringWithFormat:@"<%@%@, Target = %@, Device %@>", v10, v11, v13, v7];

  if (v3)
  {
  }

  return v14;
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
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HMFMessageDestination target](self, "target"), v5 = objc_claimAutoreleasedReturnValue(), -[HMFMessageDestination target](v4, "target"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, v7))
    {
      v8 = [(HMDRemoteDeviceMessageDestination *)self device];
      v9 = [(HMDRemoteDeviceMessageDestination *)v4 device];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HMFMessageDestination *)self target];
  v4 = [v3 hash];
  v5 = [(HMDRemoteDeviceMessageDestination *)self device];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)a3 device:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDRemoteDeviceMessageDestination;
  v8 = [(HMFMessageDestination *)&v11 initWithTarget:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a4);
  }

  return v9;
}

- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)a3
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