@interface IDSDevice(DNDServer)
- (BOOL)_dnds_isIOS14EraOS;
- (BOOL)_dnds_supportsSilenceLists;
- (uint64_t)_dnds_assertionSyncProtocolVersion;
- (uint64_t)_dnds_configurationSyncProtocolVersion;
- (uint64_t)_dnds_minorBuildVersion;
- (uint64_t)_dnds_pairedDeviceClass;
@end

@implementation IDSDevice(DNDServer)

- (uint64_t)_dnds_pairedDeviceClass
{
  deviceType = [self deviceType];
  if ((deviceType - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_2491FFB90[deviceType - 1];
  }
}

- (uint64_t)_dnds_assertionSyncProtocolVersion
{
  v8 = 0uLL;
  v9 = 0;
  [self operatingSystemVersion];
  productBuildVersion = [self productBuildVersion];
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  v6 = v8;
  v7 = v9;
  v4 = DNDSAssertionSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v6, productBuildVersion, _dnds_pairedDeviceClass);

  return v4;
}

- (uint64_t)_dnds_configurationSyncProtocolVersion
{
  v8 = 0uLL;
  v9 = 0;
  [self operatingSystemVersion];
  productBuildVersion = [self productBuildVersion];
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  v6 = v8;
  v7 = v9;
  v4 = DNDSConfigurationSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v6, productBuildVersion, _dnds_pairedDeviceClass);

  return v4;
}

- (uint64_t)_dnds_minorBuildVersion
{
  productBuildVersion = [self productBuildVersion];
  v2 = DNDSMinorBuildVersionFromBuildVersion(productBuildVersion);

  return v2;
}

- (BOOL)_dnds_isIOS14EraOS
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  [self operatingSystemVersion];
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  if (_dnds_pairedDeviceClass == 1)
  {
    if (v4 == 14)
    {
      return 1;
    }
  }

  else
  {
    if (_dnds_pairedDeviceClass != 3)
    {
      return _dnds_pairedDeviceClass == 2 && v4 == 10 && v5 == 18;
    }

    if (v4 == 7)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)_dnds_supportsSilenceLists
{
  v6 = 0uLL;
  v7 = 0;
  [self operatingSystemVersion];
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  v4 = v6;
  v5 = v7;
  return DNDSsupportsSilenceListsSFromOperatingSystemVersionAndDeviceClass(&v4, _dnds_pairedDeviceClass);
}

@end