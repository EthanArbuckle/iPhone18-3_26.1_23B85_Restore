@interface NRDevice(DNDServer)
- (BOOL)_dnds_isIOS14EraOS;
- (BOOL)_dnds_supportsSilenceLists;
- (uint64_t)_dnds_assertionSyncProtocolVersion;
- (uint64_t)_dnds_configurationSyncProtocolVersion;
- (uint64_t)_dnds_minorBuildVersion;
- (uint64_t)_dnds_pairedDeviceClass;
- (void)_dnds_operatingSystemVersion;
@end

@implementation NRDevice(DNDServer)

- (uint64_t)_dnds_pairedDeviceClass
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BBC0]];
  if ([v1 rangeOfString:@"iPod"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "rangeOfString:", @"iPad") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v1, "rangeOfString:", @"iPhone") == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v1 rangeOfString:@"Mac"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v1 rangeOfString:@"Watch"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v2 = 4 * ([v1 rangeOfString:@"RealityDevice"] != 0x7FFFFFFFFFFFFFFFLL);
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (uint64_t)_dnds_minorBuildVersion
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BC08]];
  v2 = DNDSMinorBuildVersionFromBuildVersion(v1);

  return v2;
}

- (void)_dnds_operatingSystemVersion
{
  v3 = [a1 valueForProperty:*MEMORY[0x277D2BC20]];
  v17 = [v3 componentsSeparatedByString:@"."];

  v4 = [v17 count];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 < 3)
  {
    if (v4)
    {
      if (v4 == 2)
      {
        v11 = [v17 objectAtIndexedSubscript:0];
        v12 = [v11 integerValue];

        v13 = [v17 objectAtIndexedSubscript:1];
        v14 = [v13 integerValue];

        *a2 = v12;
        a2[1] = v14;
        a2[2] = 0;
      }

      else
      {
        v15 = [v17 objectAtIndexedSubscript:0];
        v16 = [v15 integerValue];

        a2[1] = 0;
        a2[2] = 0;
        *a2 = v16;
      }
    }
  }

  else
  {
    v5 = [v17 objectAtIndexedSubscript:0];
    v6 = [v5 integerValue];

    v7 = [v17 objectAtIndexedSubscript:1];
    v8 = [v7 integerValue];

    v9 = [v17 objectAtIndexedSubscript:2];
    v10 = [v9 integerValue];

    *a2 = v6;
    a2[1] = v8;
    a2[2] = v10;
  }
}

- (uint64_t)_dnds_assertionSyncProtocolVersion
{
  v8 = 0uLL;
  v9 = 0;
  [a1 _dnds_operatingSystemVersion];
  v2 = [a1 valueForProperty:*MEMORY[0x277D2BC08]];
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
  [a1 _dnds_operatingSystemVersion];
  v2 = [a1 valueForProperty:*MEMORY[0x277D2BC08]];
  v3 = [a1 _dnds_pairedDeviceClass];
  v6 = v8;
  v7 = v9;
  v4 = DNDSConfigurationSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v6, v2, v3);

  return v4;
}

- (BOOL)_dnds_isIOS14EraOS
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  [a1 _dnds_operatingSystemVersion];
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
  [a1 _dnds_operatingSystemVersion];
  v2 = [a1 _dnds_pairedDeviceClass];
  v4 = v6;
  v5 = v7;
  return DNDSsupportsSilenceListsSFromOperatingSystemVersionAndDeviceClass(&v4, v2);
}

@end