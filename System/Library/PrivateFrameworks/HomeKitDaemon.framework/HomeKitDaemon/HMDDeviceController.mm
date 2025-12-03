@interface HMDDeviceController
+ (id)deviceControllerForCurrentDevice;
+ (id)deviceControllerForDevice:(id)device;
+ (id)deviceControllerForDevice:(id)device accountRegistry:(id)registry;
+ (id)logCategory;
+ (id)placeholderDeviceControllerWithIdentifier:(id)identifier;
- (HMDDevice)device;
- (HMDDeviceController)initWithDevice:(id)device identifier:(id)identifier;
- (HMDDeviceControllerDelegate)delegate;
- (id)attributeDescriptions;
- (void)dealloc;
- (void)updateWithDevice:(id)device completionHandler:(id)handler;
@end

@implementation HMDDeviceController

- (HMDDevice)device
{
  os_unfair_lock_lock_with_options();
  v3 = self->_device;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDDeviceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDDeviceController *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:identifier];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  device = [(HMDDeviceController *)self device];
  v8 = [v6 initWithName:@"Device" value:device options:1 formatter:0];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDDeviceController;
  [(HMDDeviceController *)&v4 dealloc];
}

- (HMDDeviceController)initWithDevice:(id)device identifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HMDDeviceController;
  v9 = [(HMDDeviceController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_device, device);
  }

  return v10;
}

- (void)updateWithDevice:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_148095 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_148095, &__block_literal_global_148096);
  }

  v3 = logCategory__hmf_once_v5_148097;

  return v3;
}

void __34__HMDDeviceController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_148097;
  logCategory__hmf_once_v5_148097 = v1;
}

+ (id)deviceControllerForDevice:(id)device accountRegistry:(id)registry
{
  registryCopy = registry;
  deviceCopy = device;
  v7 = [[__HMDDeviceController alloc] initWithDevice:deviceCopy accountRegistry:registryCopy];

  return v7;
}

uint64_t __46____HMDDeviceController___handleAddedAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

+ (id)deviceControllerForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[HMDAccountRegistry sharedRegistry];
  v5 = [HMDDeviceController deviceControllerForDevice:deviceCopy accountRegistry:v4];

  return v5;
}

+ (id)placeholderDeviceControllerWithIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = [HMDDevice alloc];
    v5 = [(HMDDevice *)v4 initWithIdentifier:identifierCopy handles:MEMORY[0x277CBEBF8] name:0 productInfo:0 version:0 capabilities:0];

    v6 = [HMDDeviceController deviceControllerForDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)deviceControllerForCurrentDevice
{
  v2 = objc_alloc_init(__HMDCurrentDeviceController);

  return v2;
}

@end