@interface __HMDCurrentDeviceController
- (__HMDCurrentDeviceController)init;
- (void)__handleDeviceUpdated:(id)updated;
- (void)updateWithDevice:(id)device completionHandler:(id)handler;
@end

@implementation __HMDCurrentDeviceController

- (void)__handleDeviceUpdated:(id)updated
{
  v19 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    shortDescription = [v8 shortDescription];
    v15 = 138543618;
    v16 = v12;
    v17 = 2112;
    v18 = shortDescription;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification device updated: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  __HMDDeviceControllerUpdateDevice(selfCopy, v8);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateWithDevice:(id)device completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating the current device is not supported", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  if (handlerCopy)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:0 reason:@"Updating the current device is not supported" suggestion:0];
    handlerCopy[2](handlerCopy, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (__HMDCurrentDeviceController)init
{
  v3 = +[HMDAppleAccountManager sharedManager];
  device = [v3 device];

  v9.receiver = self;
  v9.super_class = __HMDCurrentDeviceController;
  v5 = [(HMDDeviceController *)&v9 initWithDevice:device identifier:0];
  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = +[HMDAppleAccountManager sharedManager];
    [defaultCenter addObserver:v5 selector:sel___handleDeviceUpdated_ name:@"HMDAppleAccountManagerDeviceUpdatedNotification" object:v7];
  }

  return v5;
}

@end