@interface HDWatchRemoteFeatureAvailabilityDataSource
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)iOSVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchAtrialFibrillationDetectionVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchOSVersion;
- (HDWatchRemoteFeatureAvailabilityDataSource)initWithDevice:(id)device;
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

- (HDWatchRemoteFeatureAvailabilityDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = HDWatchRemoteFeatureAvailabilityDataSource;
  v6 = [(HDWatchRemoteFeatureAvailabilityDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)iOSVersion
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
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
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    if (mEMORY[0x277CCDD30]2)
    {
      v13 = mEMORY[0x277CCDD30]2;
      [mEMORY[0x277CCDD30]2 currentOSVersionStruct];
      mEMORY[0x277CCDD30]2 = v13;
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    if (self)
    {
      device = self->_device;
    }

    else
    {
      device = 0;
    }

    currentOSBuild = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BC08]];
  }

  else
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    currentOSBuild = [mEMORY[0x277CCDD30]2 currentOSBuild];
  }

  return currentOSBuild;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchOSVersion
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    currentDeviceRegionCode = [mEMORY[0x277CCDD30]2 currentDeviceRegionCode];
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

    currentDeviceRegionCode = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BBC8]];
  }

  return currentDeviceRegionCode;
}

- (id)watchRegionInfo
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    currentDeviceRegionInfo = [mEMORY[0x277CCDD30]2 currentDeviceRegionInfo];
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

    currentDeviceRegionInfo = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BBD0]];
  }

  return currentDeviceRegionInfo;
}

- (id)watchModelNumber
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    currentDeviceReleaseType = [MEMORY[0x277CCDD30] currentDeviceReleaseType];
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

    currentDeviceReleaseType = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BAA0]];
  }

  return currentDeviceReleaseType;
}

- (id)watchProductType
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    currentDeviceProductType = [mEMORY[0x277CCDD30]2 currentDeviceProductType];
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

    currentDeviceProductType = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BBC0]];
  }

  return currentDeviceProductType;
}

- (id)watchOSBuildVersion
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
    currentOSBuild = [mEMORY[0x277CCDD30]2 currentOSBuild];
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

    currentOSBuild = [(NRDevice *)device valueForProperty:*MEMORY[0x277D2BC08]];
  }

  return currentOSBuild;
}

- (id)currentDeviceClass
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  currentDeviceClass = [mEMORY[0x277CCDD30] currentDeviceClass];

  return currentDeviceClass;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)watchAtrialFibrillationDetectionVersion
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isCompanionCapable = [mEMORY[0x277CCDD30] isCompanionCapable];

  if (isCompanionCapable)
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