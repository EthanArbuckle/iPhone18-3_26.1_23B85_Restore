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
  device = [(HMDRemoteDeviceMessageDestination *)self device];
  account = [device account];
  isCurrentAccount = [account isCurrentAccount];

  if (isCurrentAccount)
  {
    device2 = [(HMDRemoteDeviceMessageDestination *)self device];
    localHandles = [device2 localHandles];
    firstObject = [localHandles firstObject];

    if (firstObject)
    {
      preferredHandle3 = firstObject;
LABEL_7:
      destination = [preferredHandle3 destination];
      goto LABEL_9;
    }
  }

  preferredHandle = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
  if (preferredHandle)
  {
    v11 = preferredHandle;
    device3 = [(HMDRemoteDeviceMessageDestination *)self device];
    handles = [device3 handles];
    preferredHandle2 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
    v15 = [handles containsObject:preferredHandle2];

    if (v15)
    {
      preferredHandle3 = [(HMDRemoteDeviceMessageDestination *)self preferredHandle];
      firstObject = preferredHandle3;
      goto LABEL_7;
    }
  }

  firstObject = [(HMDRemoteDeviceMessageDestination *)self device];
  destination = [firstObject remoteDestinationString];
LABEL_9:
  v17 = destination;

  return v17;
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
    v11 = &stru_286509E58;
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