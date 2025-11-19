@interface CMOdometerData(HealthDaemon)
- (uint64_t)hd_compare:()HealthDaemon;
@end

@implementation CMOdometerData(HealthDaemon)

- (uint64_t)hd_compare:()HealthDaemon
{
  v4 = a3;
  v5 = [a1 hd_datestamp];
  v6 = [v4 hd_datestamp];

  v7 = [v5 compare:v6];
  return v7;
}

@end