@interface HMDMultipleRemoteDeviceDestination
- (HMDMultipleRemoteDeviceDestination)init;
- (HMDMultipleRemoteDeviceDestination)initWithTarget:(id)target devices:(id)devices;
- (id)allRemoteDestinationStrings;
- (id)remoteDestinationString;
- (id)remoteDestinationStringForDevice:(id)device;
@end

@implementation HMDMultipleRemoteDeviceDestination

- (id)allRemoteDestinationStrings
{
  devices = self->_devices;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDMultipleRemoteDeviceDestination_allRemoteDestinationStrings__block_invoke;
  v8[3] = &unk_27867D730;
  v8[4] = self;
  v3 = [(NSArray *)devices na_map:v8];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

id __65__HMDMultipleRemoteDeviceDestination_allRemoteDestinationStrings__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) remoteDestinationStringForDevice:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Device is not addressable: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)remoteDestinationStringForDevice:(id)device
{
  deviceCopy = device;
  remoteDestinationString = [deviceCopy remoteDestinationString];
  v5 = remoteDestinationString;
  if (remoteDestinationString && ([remoteDestinationString hasSuffix:@"inbox.appleid.apple.com"] & 1) == 0)
  {
    remoteDestinationString2 = v5;
  }

  else
  {
    account = [deviceCopy account];
    isCurrentAccount = [account isCurrentAccount];

    if (isCurrentAccount)
    {
      localHandles = [deviceCopy localHandles];
      firstObject = [localHandles firstObject];

      if (firstObject)
      {
        destination = [firstObject destination];

        goto LABEL_9;
      }
    }

    remoteDestinationString2 = [deviceCopy remoteDestinationString];
  }

  destination = remoteDestinationString2;
LABEL_9:

  return destination;
}

- (id)remoteDestinationString
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_FAULT, "%{public}@Cannot get remoteDestinationString for HMDMultipleRemoteDeviceDestination", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (HMDMultipleRemoteDeviceDestination)initWithTarget:(id)target devices:(id)devices
{
  targetCopy = target;
  devicesCopy = devices;
  if ([devicesCopy count])
  {
    v13.receiver = self;
    v13.super_class = HMDMultipleRemoteDeviceDestination;
    v8 = [(HMFMessageDestination *)&v13 initWithTarget:targetCopy];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_devices, devices);
    }

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMDMultipleRemoteDeviceDestination *)v11 init];
  }
}

- (HMDMultipleRemoteDeviceDestination)init
{
  v6.receiver = self;
  v6.super_class = HMDMultipleRemoteDeviceDestination;
  v2 = [(HMDMultipleRemoteDeviceDestination *)&v6 init];
  v3 = v2;
  if (v2)
  {
    devices = v2->_devices;
    v2->_devices = MEMORY[0x277CBEBF8];
  }

  return v3;
}

@end