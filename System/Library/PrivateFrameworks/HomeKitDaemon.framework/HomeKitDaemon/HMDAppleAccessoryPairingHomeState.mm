@interface HMDAppleAccessoryPairingHomeState
- (HMDAppleAccessoryPairingHomeState)initWithCloudZoneID:(id)d accessory:(id)accessory;
- (HMDAppleAccessoryPairingHomeState)initWithCoder:(id)coder;
- (HMDDevice)device;
- (HMSoftwareUpdateDescriptor)lastPostedSoftwareUpdateDescriptor;
- (NSUUID)deviceIdentifier;
- (NSUUID)homeUUID;
- (unint64_t)state;
- (void)encodeWithCoder:(id)coder;
- (void)setDevice:(id)device;
- (void)setDeviceIdentifier:(id)identifier;
- (void)setHomeUUID:(id)d;
- (void)setLastPostedSoftwareUpdateDescriptor:(id)descriptor;
- (void)setState:(unint64_t)state;
@end

@implementation HMDAppleAccessoryPairingHomeState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cloudZoneID = [(HMDAppleAccessoryPairingHomeState *)self cloudZoneID];
  [coderCopy encodeObject:cloudZoneID forKey:@"AAPS.cz"];

  accessory = [(HMDAppleAccessoryPairingHomeState *)self accessory];
  [coderCopy encodeObject:accessory forKey:@"AAPS.a"];

  [coderCopy encodeInteger:-[HMDAppleAccessoryPairingHomeState state](self forKey:{"state"), @"AAPS.st"}];
  homeUUID = [(HMDAppleAccessoryPairingHomeState *)self homeUUID];
  [coderCopy encodeObject:homeUUID forKey:@"AAPS.hu"];

  deviceIdentifier = [(HMDAppleAccessoryPairingHomeState *)self deviceIdentifier];
  [coderCopy encodeObject:deviceIdentifier forKey:@"AAPS.du"];

  device = [(HMDAppleAccessoryPairingHomeState *)self device];
  [coderCopy encodeObject:device forKey:@"AAPS.d"];
}

- (HMDAppleAccessoryPairingHomeState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.cz"];
  v6 = [coderCopy decodeIntegerForKey:@"AAPS.st"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.a"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.d"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.du"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.hu"];

  v11 = [(HMDAppleAccessoryPairingHomeState *)self initWithCloudZoneID:v5 accessory:v7];
  v12 = v11;
  if (v11)
  {
    v11->_state = v6;
    objc_storeStrong(&v11->_homeUUID, v10);
    objc_storeStrong(&v12->_deviceIdentifier, v9);
    objc_storeStrong(&v12->_device, v8);
  }

  return v12;
}

- (void)setDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)deviceIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)setHomeUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  homeUUID = self->_homeUUID;
  self->_homeUUID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)homeUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_homeUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  device = self->_device;
  self->_device = deviceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDDevice)device
{
  os_unfair_lock_lock_with_options();
  v3 = self->_device;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastPostedSoftwareUpdateDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_lock_with_options();
  lastPostedSoftwareUpdateDescriptor = self->_lastPostedSoftwareUpdateDescriptor;
  self->_lastPostedSoftwareUpdateDescriptor = descriptorCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSoftwareUpdateDescriptor)lastPostedSoftwareUpdateDescriptor
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastPostedSoftwareUpdateDescriptor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDAppleAccessoryPairingHomeState)initWithCloudZoneID:(id)d accessory:(id)accessory
{
  dCopy = d;
  accessoryCopy = accessory;
  v13.receiver = self;
  v13.super_class = HMDAppleAccessoryPairingHomeState;
  v9 = [(HMDAppleAccessoryPairingHomeState *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudZoneID, d);
    v10->_state = 0;
    homeUUID = v10->_homeUUID;
    v10->_homeUUID = 0;

    objc_storeStrong(&v10->_accessory, accessory);
  }

  return v10;
}

@end