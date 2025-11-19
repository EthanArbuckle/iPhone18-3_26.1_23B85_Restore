@interface HMDMediaAccessoryAdvertisement
- (BOOL)isAssociated;
- (BOOL)matchesWACDeviceID:(id)a3;
- (HMDMediaAccessoryAdvertisement)initWithOutputDevice:(id)a3;
- (HMDMediaOutputDevice)outputDevice;
- (id)description;
- (int64_t)associationOptions;
- (void)setAssociated:(BOOL)a3;
- (void)setOutputDevice:(id)a3;
@end

@implementation HMDMediaAccessoryAdvertisement

- (int64_t)associationOptions
{
  v3 = [(HMDMediaAccessoryAdvertisement *)self outputDevice];
  v4 = [v3 modelID];

  v5 = [(HMDMediaAccessoryAdvertisement *)self outputDevice];
  LOBYTE(v3) = [v5 supportsWHA];

  if ((v3 & 1) != 0 || ![HMDMediaAccessoryAdvertisement canAirPortExpressSupportMediaAccessory:v4])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (void)setAssociated:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_associated = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAssociated
{
  os_unfair_lock_lock_with_options();
  associated = self->_associated;
  os_unfair_lock_unlock(&self->_lock);
  return associated;
}

- (void)setOutputDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  outputDevice = self->_outputDevice;
  self->_outputDevice = v4;

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
  v5 = [(HMDMediaAccessoryAdvertisement *)self outputDevice];
  v6 = [v5 modelID];
  v7 = [v3 stringWithFormat:@"[ %@, modelID = %@]", v4, v6];

  return v7;
}

- (BOOL)matchesWACDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryAdvertisement *)self identifier];
  v6 = [v5 caseInsensitiveCompare:v4];

  return v6 == 0;
}

- (HMDMediaAccessoryAdvertisement)initWithOutputDevice:(id)a3
{
  v5 = a3;
  v6 = [v5 uniqueIdentifier];
  v7 = [v5 name];
  v8 = [v5 modelID];
  if ([HMDMediaAccessoryAdvertisement canAirPortExpressSupportMediaAccessory:v8])
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
  v12 = [(HMDAccessoryAdvertisement *)&v15 initWithIdentifier:v6 name:v7 category:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_outputDevice, a3);
  }

  return v13;
}

@end