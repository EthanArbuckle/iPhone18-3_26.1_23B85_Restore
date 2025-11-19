@interface NRDevice(HealthDaemon)
- (id)hd_shortDescription;
- (uint64_t)hd_isActive;
- (uint64_t)hd_isAltAccount;
@end

@implementation NRDevice(HealthDaemon)

- (uint64_t)hd_isActive
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BB20]];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)hd_isAltAccount
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BB28]];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)hd_shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 hd_name];
  v5 = [a1 hd_pairingID];
  v6 = [v5 UUIDString];
  v7 = [v2 stringWithFormat:@"<%@:%p %@ %@>", v3, a1, v4, v6];

  return v7;
}

@end