@interface HMDRemoteAccountMessageDestination
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMDRemoteAccountMessageDestination)initWithTarget:(id)a3;
- (HMDRemoteAccountMessageDestination)initWithTarget:(id)a3 handle:(id)a4 multicast:(BOOL)a5 deviceCapabilities:(id)a6;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)remoteDestinationString;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDRemoteAccountMessageDestination

- (id)remoteDestinationString
{
  v2 = [(HMDRemoteAccountMessageDestination *)self handle];
  v3 = [v2 remoteDestinationString];

  return v3;
}

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
    v7 = &stru_286509E58;
  }

  v8 = [(HMFMessageDestination *)self target];
  v9 = [v8 UUIDString];
  v10 = [(HMDRemoteAccountMessageDestination *)self handle];
  v11 = [v10 shortDescription];
  [(HMDRemoteAccountMessageDestination *)self isMulticast];
  v12 = HMFBooleanToString();
  v13 = [(HMDRemoteAccountMessageDestination *)self deviceCapabilities];
  v14 = [v5 stringWithFormat:@"<%@%@, Target = %@, Handle = %@, Multicast = %@, Device Capabilities = %@>", v6, v7, v9, v11, v12, v13];

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
    v12 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMDRemoteAccountMessageDestination;
    if ([(HMFMessageDestination *)&v16 isEqual:v4])
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = [(HMDRemoteAccountMessageDestination *)self handle];
      v9 = [(HMDRemoteAccountMessageDestination *)v7 handle];
      v10 = [v8 isEqual:v9];

      if (!v10)
      {
        goto LABEL_9;
      }

      v11 = [(HMDRemoteAccountMessageDestination *)self isMulticast];
      if (v11 == [(HMDRemoteAccountMessageDestination *)v7 isMulticast])
      {
        v14 = [(HMDRemoteAccountMessageDestination *)self deviceCapabilities];
        v15 = [(HMDRemoteAccountMessageDestination *)v7 deviceCapabilities];
        v12 = HMFEqualObjects();
      }

      else
      {
LABEL_9:
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HMFMessageDestination *)self target];
  v4 = [v3 hash];
  v5 = [(HMDRemoteAccountMessageDestination *)self handle];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (HMDRemoteAccountMessageDestination)initWithTarget:(id)a3 handle:(id)a4 multicast:(BOOL)a5 deviceCapabilities:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v11)
  {
LABEL_7:
    v20 = _HMFPreconditionFailure();
    return [(HMDRemoteAccountMessageDestination *)v20 initWithTarget:v21 handle:v22 multicast:v23, v24];
  }

  v13 = v12;
  v25.receiver = self;
  v25.super_class = HMDRemoteAccountMessageDestination;
  v14 = [(HMFMessageDestination *)&v25 initWithTarget:v10];
  if (v14)
  {
    v15 = [v11 copy];
    handle = v14->_handle;
    v14->_handle = v15;

    v14->_multicast = a5;
    v17 = [v13 copy];
    deviceCapabilities = v14->_deviceCapabilities;
    v14->_deviceCapabilities = v17;
  }

  return v14;
}

- (HMDRemoteAccountMessageDestination)initWithTarget:(id)a3
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