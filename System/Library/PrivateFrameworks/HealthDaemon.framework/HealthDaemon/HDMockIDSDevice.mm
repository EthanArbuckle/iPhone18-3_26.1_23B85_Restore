@interface HDMockIDSDevice
- (BOOL)hd_isEquivalentToDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hd_destinationIdentifier;
@end

@implementation HDMockIDSDevice

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HDMockIDSDevice);
  [(HDMockIDSDevice *)v4 setUniqueID:self->_uniqueID];
  [(HDMockIDSDevice *)v4 setUniqueIDOverride:self->_uniqueIDOverride];
  [(HDMockIDSDevice *)v4 setNsuuid:self->_nsuuid];
  [(HDMockIDSDevice *)v4 setService:self->_service];
  [(HDMockIDSDevice *)v4 setName:self->_name];
  [(HDMockIDSDevice *)v4 setProductBuildVersion:self->_productBuildVersion];
  [(HDMockIDSDevice *)v4 setBuildType:self->_buildType];
  [(HDMockIDSDevice *)v4 setDeviceType:self->_deviceType];
  [(HDMockIDSDevice *)v4 setProductType:self->_productType];
  [(HDMockIDSDevice *)v4 setModelNumber:self->_modelNumber];
  [(HDMockIDSDevice *)v4 setSystemVersion:self->_systemVersion];
  [(HDMockIDSDevice *)v4 setRegionCode:self->_regionCode];
  [(HDMockIDSDevice *)v4 setElectrocardiogramVersion:self->_electrocardiogramVersion];
  [(HDMockIDSDevice *)v4 setBackgroundAtrialFibrillationVersion:self->_backgroundAtrialFibrillationVersion];
  [(HDMockIDSDevice *)v4 setIsActive:self->_isActive];
  [(HDMockIDSDevice *)v4 setSupportsCinnamonHW:self->_supportsCinnamonHW];
  [(HDMockIDSDevice *)v4 setIdentities:self->_identities];
  [(HDMockIDSDevice *)v4 setSupportsCinnamonAntimonyGloryF:self->_supportsCinnamonAntimonyGloryF];
  return v4;
}

- (id)hd_destinationIdentifier
{
  v2 = IDSCopyIDForDevice();

  return v2;
}

- (BOOL)hd_isEquivalentToDevice:(id)device
{
  deviceCopy = device;
  hd_deviceIdentifier = [(HDMockIDSDevice *)self hd_deviceIdentifier];
  hd_deviceIdentifier2 = [deviceCopy hd_deviceIdentifier];
  if (hd_deviceIdentifier == hd_deviceIdentifier2)
  {
    v10 = 1;
  }

  else
  {
    hd_deviceIdentifier3 = [deviceCopy hd_deviceIdentifier];
    if (hd_deviceIdentifier3)
    {
      hd_deviceIdentifier4 = [(HDMockIDSDevice *)self hd_deviceIdentifier];
      hd_deviceIdentifier5 = [deviceCopy hd_deviceIdentifier];
      v10 = [hd_deviceIdentifier4 isEqualToString:hd_deviceIdentifier5];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end