@interface NRDevice(HealthDaemon)
- (id)hd_shortDescription;
- (uint64_t)hd_isActive;
- (uint64_t)hd_isAltAccount;
@end

@implementation NRDevice(HealthDaemon)

- (uint64_t)hd_isActive
{
  v1 = [self valueForProperty:*MEMORY[0x277D2BB20]];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hd_isAltAccount
{
  v1 = [self valueForProperty:*MEMORY[0x277D2BB28]];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (id)hd_shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  hd_name = [self hd_name];
  hd_pairingID = [self hd_pairingID];
  uUIDString = [hd_pairingID UUIDString];
  v7 = [v2 stringWithFormat:@"<%@:%p %@ %@>", v3, self, hd_name, uUIDString];

  return v7;
}

@end