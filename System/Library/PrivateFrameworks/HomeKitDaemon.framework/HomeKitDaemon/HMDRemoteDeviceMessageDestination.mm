@interface HMDRemoteDeviceMessageDestination
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)target;
- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)target device:(id)device;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)remoteDestinationString;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDRemoteDeviceMessageDestination

- (id)remoteDestinationString
{
  preferredHandle = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
  if (!preferredHandle)
  {
    goto LABEL_4;
  }

  v4 = preferredHandle;
  device = [(HMDRemoteDeviceMessageDestination *)self device];
  handles = [device handles];
  preferredHandle2 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
  v8 = [handles containsObject:preferredHandle2];

  if (v8)
  {
    preferredHandle3 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
    destination = [preferredHandle3 destination];
  }

  else
  {
LABEL_4:
    preferredHandle3 = [(HMDRemoteDeviceMessageDestination *)self device];
    destination = [preferredHandle3 remoteDestinationString];
  }

  v11 = destination;

  if (!v11 || ([v11 hasSuffix:@"inbox.appleid.apple.com"] & 1) != 0)
  {
    device2 = [(HMDRemoteDeviceMessageDestination *)self device];
    account = [device2 account];
    isCurrentAccount = [account isCurrentAccount];

    if (!isCurrentAccount)
    {
      goto LABEL_10;
    }

    device3 = [(HMDRemoteDeviceMessageDestination *)self device];
    localHandles = [device3 localHandles];
    firstObject = [localHandles firstObject];

    if (firstObject)
    {
      preferredHandle6 = firstObject;
    }

    else
    {
LABEL_10:
      preferredHandle4 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
      if (!preferredHandle4)
      {
        goto LABEL_14;
      }

      v20 = preferredHandle4;
      device4 = [(HMDRemoteDeviceMessageDestination *)self device];
      handles2 = [device4 handles];
      preferredHandle5 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
      v24 = [handles2 containsObject:preferredHandle5];

      if (!v24)
      {
LABEL_14:
        firstObject = [(HMDRemoteDeviceMessageDestination *)self device];
        remoteDestinationString = [firstObject remoteDestinationString];
        goto LABEL_15;
      }

      preferredHandle6 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
      firstObject = preferredHandle6;
    }

    remoteDestinationString = [preferredHandle6 destination];
LABEL_15:
    v26 = remoteDestinationString;

    goto LABEL_17;
  }

  v26 = v11;
LABEL_17:

  return v26;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = shouldLogPrivateInformation();
  device = [(HMDRemoteDeviceMessageDestination *)self device];
  v7 = device;
  if ((v5 & 1) == 0)
  {
    privateDescription = [device privateDescription];

    v7 = privateDescription;
  }

  v9 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v11 = &stru_283CF9D50;
  }

  target = [(HMFMessageDestination *)self target];
  uUIDString = [target UUIDString];
  v14 = [v9 stringWithFormat:@"<%@%@, Target = %@, Device %@>", shortDescription, v11, uUIDString, v7];

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
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HMFMessageDestination target](self, "target"), v5 = objc_claimAutoreleasedReturnValue(), -[HMFMessageDestination target](equalCopy, "target"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, v7))
    {
      device = [(HMDRemoteDeviceMessageDestination *)self device];
      device2 = [(HMDRemoteDeviceMessageDestination *)equalCopy device];
      v10 = [device isEqual:device2];
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
  target = [(HMFMessageDestination *)self target];
  v4 = [target hash];
  device = [(HMDRemoteDeviceMessageDestination *)self device];
  v6 = [device hash];

  return v6 ^ v4;
}

- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)target device:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = HMDRemoteDeviceMessageDestination;
  v8 = [(HMFMessageDestination *)&v11 initWithTarget:target];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
  }

  return v9;
}

- (HMDRemoteDeviceMessageDestination)initWithTarget:(id)target
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