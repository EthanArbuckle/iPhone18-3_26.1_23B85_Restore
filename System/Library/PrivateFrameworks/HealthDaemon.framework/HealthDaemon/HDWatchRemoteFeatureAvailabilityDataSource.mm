@interface HDWatchRemoteFeatureAvailabilityDataSource
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)iOSVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchAtrialFibrillationDetectionVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchOSVersion;
- (HDWatchRemoteFeatureAvailabilityDataSource)initWithDevice:(id)a3;
- (id)currentDeviceClass;
- (id)iOSBuildVersion;
- (id)watchBuildType;
- (id)watchModelNumber;
- (id)watchOSBuildVersion;
- (id)watchProductType;
- (id)watchRegion;
- (id)watchRegionInfo;
@end

@implementation HDWatchRemoteFeatureAvailabilityDataSource

- (HDWatchRemoteFeatureAvailabilityDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDWatchRemoteFeatureAvailabilityDataSource;
  v6 = [(HDWatchRemoteFeatureAvailabilityDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)iOSVersion
{
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 isAppleWatch];

  if (v6)
  {
    result = self->_device;
    if (result)
    {
      v8 = [($9FE6E10C8CE45DBC9A88DFDEA39A390D *)result valueForProperty:*MEMORY[0x277D2BC20]];
      v9 = NRRawVersionFromString();

      retstr->var0 = HIWORD(v9);
      retstr->var1 = BYTE1(v9);
      v10 = v9;
    }

    else
    {
      v12 = MEMORY[0x277CCC578];
      *&retstr->var0 = *MEMORY[0x277CCC578];
      v10 = *(v12 + 16);
    }

    retstr->var2 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CCDD30] sharedBehavior];
    if (v11)
    {
      v13 = v11;
      [v11 currentOSVersionStruct];
      v11 = v13;
    }

    else
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
    }
  }

  return result;
}

- (id)iOSBuildVersion
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v6 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BC08]];
  }

  else
  {
    v7 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v7 currentOSBuild];
  }

  return v6;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchOSVersion
{
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 isAppleWatch];

  if (v6)
  {
    result = NRWatchOSVersionForLocalDevice();
    if (!self)
    {
      retstr->var0 = 0;
      retstr->var1 = 0;
      retstr->var2 = 0;
      return result;
    }
  }

  else
  {
    if (!self || (result = self->_device) == 0)
    {
      v9 = MEMORY[0x277CCC578];
      *&retstr->var0 = *MEMORY[0x277CCC578];
      v8 = *(v9 + 16);
      goto LABEL_8;
    }

    result = NRWatchOSVersionForRemoteDevice();
  }

  retstr->var0 = result >> 16;
  retstr->var1 = BYTE1(result);
  v8 = result;
LABEL_8:
  retstr->var2 = v8;
  return result;
}

- (id)watchRegion
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 currentDeviceRegionCode];
  }

  else
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v6 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BBC8]];
  }

  return v6;
}

- (id)watchRegionInfo
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 currentDeviceRegionInfo];
  }

  else
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v6 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BBD0]];
  }

  return v6;
}

- (id)watchModelNumber
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    v5 = MGGetStringAnswer();
  }

  else
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v5 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BBA0]];
  }

  return v5;
}

- (id)watchBuildType
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    v5 = [MEMORY[0x277CCDD30] currentDeviceReleaseType];
  }

  else
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v5 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BAA0]];
  }

  return v5;
}

- (id)watchProductType
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 currentDeviceProductType];
  }

  else
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v6 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BBC0]];
  }

  return v6;
}

- (id)watchOSBuildVersion
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 currentOSBuild];
  }

  else
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v6 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BC08]];
  }

  return v6;
}

- (id)currentDeviceClass
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 currentDeviceClass];

  return v3;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchAtrialFibrillationDetectionVersion
{
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 isCompanionCapable];

  if (v6)
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    v10 = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BA98]];
    HKNSOperatingSystemVersionFromString();
  }

  else
  {
    v9 = MEMORY[0x277CCCD70];
    *&retstr->var0 = *MEMORY[0x277CCCD70];
    retstr->var2 = *(v9 + 16);
  }

  return result;
}

@end