@interface HMDAppleAccessoryPairingHomeState
- (HMDAppleAccessoryPairingHomeState)initWithCloudZoneID:(id)a3 accessory:(id)a4;
- (HMDAppleAccessoryPairingHomeState)initWithCoder:(id)a3;
- (HMDDevice)device;
- (HMSoftwareUpdateDescriptor)lastPostedSoftwareUpdateDescriptor;
- (NSUUID)deviceIdentifier;
- (NSUUID)homeUUID;
- (unint64_t)state;
- (void)encodeWithCoder:(id)a3;
- (void)setDevice:(id)a3;
- (void)setDeviceIdentifier:(id)a3;
- (void)setHomeUUID:(id)a3;
- (void)setLastPostedSoftwareUpdateDescriptor:(id)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation HMDAppleAccessoryPairingHomeState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDAppleAccessoryPairingHomeState *)self cloudZoneID];
  [v4 encodeObject:v5 forKey:@"AAPS.cz"];

  v6 = [(HMDAppleAccessoryPairingHomeState *)self accessory];
  [v4 encodeObject:v6 forKey:@"AAPS.a"];

  [v4 encodeInteger:-[HMDAppleAccessoryPairingHomeState state](self forKey:{"state"), @"AAPS.st"}];
  v7 = [(HMDAppleAccessoryPairingHomeState *)self homeUUID];
  [v4 encodeObject:v7 forKey:@"AAPS.hu"];

  v8 = [(HMDAppleAccessoryPairingHomeState *)self deviceIdentifier];
  [v4 encodeObject:v8 forKey:@"AAPS.du"];

  v9 = [(HMDAppleAccessoryPairingHomeState *)self device];
  [v4 encodeObject:v9 forKey:@"AAPS.d"];
}

- (HMDAppleAccessoryPairingHomeState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.cz"];
  v6 = [v4 decodeIntegerForKey:@"AAPS.st"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.a"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.d"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.du"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AAPS.hu"];

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

- (void)setDeviceIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)deviceIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_state = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)setHomeUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  homeUUID = self->_homeUUID;
  self->_homeUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)homeUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_homeUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  device = self->_device;
  self->_device = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDDevice)device
{
  os_unfair_lock_lock_with_options();
  v3 = self->_device;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastPostedSoftwareUpdateDescriptor:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  lastPostedSoftwareUpdateDescriptor = self->_lastPostedSoftwareUpdateDescriptor;
  self->_lastPostedSoftwareUpdateDescriptor = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSoftwareUpdateDescriptor)lastPostedSoftwareUpdateDescriptor
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lastPostedSoftwareUpdateDescriptor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDAppleAccessoryPairingHomeState)initWithCloudZoneID:(id)a3 accessory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDAppleAccessoryPairingHomeState;
  v9 = [(HMDAppleAccessoryPairingHomeState *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cloudZoneID, a3);
    v10->_state = 0;
    homeUUID = v10->_homeUUID;
    v10->_homeUUID = 0;

    objc_storeStrong(&v10->_accessory, a4);
  }

  return v10;
}

@end