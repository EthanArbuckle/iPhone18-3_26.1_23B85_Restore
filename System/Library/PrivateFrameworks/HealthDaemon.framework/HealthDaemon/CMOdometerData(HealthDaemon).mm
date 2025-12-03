@interface CMOdometerData(HealthDaemon)
- (uint64_t)hd_compare:()HealthDaemon;
@end

@implementation CMOdometerData(HealthDaemon)

- (uint64_t)hd_compare:()HealthDaemon
{
  v4 = a3;
  hd_datestamp = [self hd_datestamp];
  hd_datestamp2 = [v4 hd_datestamp];

  v7 = [hd_datestamp compare:hd_datestamp2];
  return v7;
}

@end