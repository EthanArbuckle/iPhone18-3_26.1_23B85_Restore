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
  v1 = [a1 deviceType];
  if ((v1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_2491FFB90[v1 - 1];
  }
}

- (uint64_t)_dnds_assertionSyncProtocolVersion
{
  v8 = 0uLL;
  v9 = 0;
  [a1 operatingSystemVersion];
  v2 = [a1 productBuildVersion];
  v3 = [a1 _dnds_pairedDeviceClass];
  v6 = v8;
  v7 = v9;
  v4 = DNDSAssertionSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v6, v2, v3);

  return v4;
}

- (uint64_t)_dnds_configurationSyncProtocolVersion
{
  v8 = 0uLL;
  v9 = 0;
  [a1 operatingSystemVersion];
  v2 = [a1 productBuildVersion];
  v3 = [a1 _dnds_pairedDeviceClass];
  v6 = v8;
  v7 = v9;
  v4 = DNDSConfigurationSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v6, v2, v3);

  return v4;
}

- (uint64_t)_dnds_minorBuildVersion
{
  v1 = [a1 productBuildVersion];
  v2 = DNDSMinorBuildVersionFromBuildVersion(v1);

  return v2;
}

- (BOOL)_dnds_isIOS14EraOS
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  [a1 operatingSystemVersion];
  v2 = [a1 _dnds_pairedDeviceClass];
  if (v2 == 1)
  {
    if (v4 == 14)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 3)
    {
      return v2 == 2 && v4 == 10 && v5 == 18;
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
  [a1 operatingSystemVersion];
  v2 = [a1 _dnds_pairedDeviceClass];
  v4 = v6;
  v5 = v7;
  return DNDSsupportsSilenceListsSFromOperatingSystemVersionAndDeviceClass(&v4, v2);
}

@end