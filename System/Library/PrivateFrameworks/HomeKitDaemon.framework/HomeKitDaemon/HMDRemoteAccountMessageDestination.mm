@interface HMDRemoteAccountMessageDestination
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDRemoteAccountMessageDestination)initWithTarget:(id)target;
- (HMDRemoteAccountMessageDestination)initWithTarget:(id)target handle:(id)handle multicast:(BOOL)multicast deviceCapabilities:(id)capabilities;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)remoteDestinationString;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDRemoteAccountMessageDestination

- (id)remoteDestinationString
{
  handle = [(HMDRemoteAccountMessageDestination *)self handle];
  remoteDestinationString = [handle remoteDestinationString];

  return remoteDestinationString;
}

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
  handle = [(HMDRemoteAccountMessageDestination *)self handle];
  shortDescription2 = [handle shortDescription];
  [(HMDRemoteAccountMessageDestination *)self isMulticast];
  v12 = HMFBooleanToString();
  deviceCapabilities = [(HMDRemoteAccountMessageDestination *)self deviceCapabilities];
  v14 = [v5 stringWithFormat:@"<%@%@, Target = %@, Handle = %@, Multicast = %@, Device Capabilities = %@>", shortDescription, v7, uUIDString, shortDescription2, v12, deviceCapabilities];

  if (pointerCopy)
  {
  }

  return v14;
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
    v12 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMDRemoteAccountMessageDestination;
    if ([(HMFMessageDestination *)&v16 isEqual:equalCopy])
    {
      v5 = equalCopy;
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

      handle = [(HMDRemoteAccountMessageDestination *)self handle];
      handle2 = [(HMDRemoteAccountMessageDestination *)v7 handle];
      v10 = [handle isEqual:handle2];

      if (!v10)
      {
        goto LABEL_9;
      }

      isMulticast = [(HMDRemoteAccountMessageDestination *)self isMulticast];
      if (isMulticast == [(HMDRemoteAccountMessageDestination *)v7 isMulticast])
      {
        deviceCapabilities = [(HMDRemoteAccountMessageDestination *)self deviceCapabilities];
        deviceCapabilities2 = [(HMDRemoteAccountMessageDestination *)v7 deviceCapabilities];
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
  target = [(HMFMessageDestination *)self target];
  v4 = [target hash];
  handle = [(HMDRemoteAccountMessageDestination *)self handle];
  v6 = [handle hash];

  return v6 ^ v4;
}

- (HMDRemoteAccountMessageDestination)initWithTarget:(id)target handle:(id)handle multicast:(BOOL)multicast deviceCapabilities:(id)capabilities
{
  targetCopy = target;
  handleCopy = handle;
  capabilitiesCopy = capabilities;
  if (!targetCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!handleCopy)
  {
LABEL_7:
    v20 = _HMFPreconditionFailure();
    return [(HMDRemoteAccountMessageDestination *)v20 initWithTarget:v21 handle:v22 multicast:v23, v24];
  }

  v13 = capabilitiesCopy;
  v25.receiver = self;
  v25.super_class = HMDRemoteAccountMessageDestination;
  v14 = [(HMFMessageDestination *)&v25 initWithTarget:targetCopy];
  if (v14)
  {
    v15 = [handleCopy copy];
    handle = v14->_handle;
    v14->_handle = v15;

    v14->_multicast = multicast;
    v17 = [v13 copy];
    deviceCapabilities = v14->_deviceCapabilities;
    v14->_deviceCapabilities = v17;
  }

  return v14;
}

- (HMDRemoteAccountMessageDestination)initWithTarget:(id)target
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