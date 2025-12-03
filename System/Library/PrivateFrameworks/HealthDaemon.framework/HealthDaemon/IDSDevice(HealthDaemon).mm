@interface IDSDevice(HealthDaemon)
- (id)hd_destinationIdentifier;
- (id)hd_shortDescription;
- (uint64_t)hd_isEquivalentToDevice:()HealthDaemon;
@end

@implementation IDSDevice(HealthDaemon)

- (id)hd_destinationIdentifier
{
  v0 = IDSCopyIDForDevice();

  return v0;
}

- (uint64_t)hd_isEquivalentToDevice:()HealthDaemon
{
  v4 = a3;
  hd_deviceIdentifier = [self hd_deviceIdentifier];
  hd_deviceIdentifier2 = [v4 hd_deviceIdentifier];
  if (hd_deviceIdentifier == hd_deviceIdentifier2)
  {
    v10 = 1;
  }

  else
  {
    hd_deviceIdentifier3 = [v4 hd_deviceIdentifier];
    if (hd_deviceIdentifier3)
    {
      hd_deviceIdentifier4 = [self hd_deviceIdentifier];
      hd_deviceIdentifier5 = [v4 hd_deviceIdentifier];
      v10 = [hd_deviceIdentifier4 isEqualToString:hd_deviceIdentifier5];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)hd_shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  name = [self name];
  if ([self isActive])
  {
    v5 = "active";
  }

  else
  {
    v5 = "inactive";
  }

  hd_deviceIdentifier = [self hd_deviceIdentifier];
  v7 = [v2 stringWithFormat:@"<%@:%p %@ (%s) device-id:%@>", v3, self, name, v5, hd_deviceIdentifier];

  return v7;
}

@end