@interface HMDMediaAccessoryAdvertisement
- (BOOL)isAssociated;
- (BOOL)matchesWACDeviceID:(id)d;
- (HMDMediaAccessoryAdvertisement)initWithOutputDevice:(id)device;
- (HMDMediaOutputDevice)outputDevice;
- (id)description;
- (int64_t)associationOptions;
- (void)setAssociated:(BOOL)associated;
- (void)setOutputDevice:(id)device;
@end

@implementation HMDMediaAccessoryAdvertisement

- (int64_t)associationOptions
{
  outputDevice = [(HMDMediaAccessoryAdvertisement *)self outputDevice];
  modelID = [outputDevice modelID];

  outputDevice2 = [(HMDMediaAccessoryAdvertisement *)self outputDevice];
  LOBYTE(outputDevice) = [outputDevice2 supportsWHA];

  if ((outputDevice & 1) != 0 || ![HMDMediaAccessoryAdvertisement canAirPortExpressSupportMediaAccessory:modelID])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (void)setAssociated:(BOOL)associated
{
  os_unfair_lock_lock_with_options();
  self->_associated = associated;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAssociated
{
  os_unfair_lock_lock_with_options();
  associated = self->_associated;
  os_unfair_lock_unlock(&self->_lock);
  return associated;
}

- (void)setOutputDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  outputDevice = self->_outputDevice;
  self->_outputDevice = deviceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDMediaOutputDevice)outputDevice
{
  os_unfair_lock_lock_with_options();
  v3 = self->_outputDevice;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDMediaAccessoryAdvertisement;
  v4 = [(HMDAccessoryAdvertisement *)&v9 description];
  outputDevice = [(HMDMediaAccessoryAdvertisement *)self outputDevice];
  modelID = [outputDevice modelID];
  v7 = [v3 stringWithFormat:@"[ %@, modelID = %@]", v4, modelID];

  return v7;
}

- (BOOL)matchesWACDeviceID:(id)d
{
  dCopy = d;
  identifier = [(HMDAccessoryAdvertisement *)self identifier];
  v6 = [identifier caseInsensitiveCompare:dCopy];

  return v6 == 0;
}

- (HMDMediaAccessoryAdvertisement)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  uniqueIdentifier = [deviceCopy uniqueIdentifier];
  name = [deviceCopy name];
  modelID = [deviceCopy modelID];
  if ([HMDMediaAccessoryAdvertisement canAirPortExpressSupportMediaAccessory:modelID])
  {
    v9 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = [v9 initWithUUIDString:*MEMORY[0x277CCE860]];
    v11 = [MEMORY[0x277CD1680] categoryWithIdentifier:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CD1680] categoryForProductClass:HMFProductClassFromString()];
  }

  v15.receiver = self;
  v15.super_class = HMDMediaAccessoryAdvertisement;
  v12 = [(HMDAccessoryAdvertisement *)&v15 initWithIdentifier:uniqueIdentifier name:name category:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_outputDevice, device);
  }

  return v13;
}

@end