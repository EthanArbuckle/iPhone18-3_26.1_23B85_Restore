@interface HDMockIDSDevice
- (BOOL)hd_isEquivalentToDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hd_destinationIdentifier;
@end

@implementation HDMockIDSDevice

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)hd_isEquivalentToDevice:(id)a3
{
  v4 = a3;
  v5 = [(HDMockIDSDevice *)self hd_deviceIdentifier];
  v6 = [v4 hd_deviceIdentifier];
  if (v5 == v6)
  {
    v10 = 1;
  }

  else
  {
    v7 = [v4 hd_deviceIdentifier];
    if (v7)
    {
      v8 = [(HDMockIDSDevice *)self hd_deviceIdentifier];
      v9 = [v4 hd_deviceIdentifier];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end