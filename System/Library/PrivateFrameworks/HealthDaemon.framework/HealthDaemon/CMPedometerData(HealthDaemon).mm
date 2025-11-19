@interface CMPedometerData(HealthDaemon)
- (BOOL)hd_hasWorkout;
- (id)hd_unitForType:()HealthDaemon;
- (uint64_t)hd_compare:()HealthDaemon;
@end

@implementation CMPedometerData(HealthDaemon)

- (BOOL)hd_hasWorkout
{
  v1 = [a1 workoutType];
  v2 = [v1 integerValue] != 0;

  return v2;
}

- (uint64_t)hd_compare:()HealthDaemon
{
  v4 = a3;
  v5 = [a1 recordId];
  v6 = [v4 recordId];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (id)hd_unitForType:()HealthDaemon
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCCB40]];

  if (v4)
  {
    [MEMORY[0x277CCDAB0] meterUnit];
  }

  else
  {
    [MEMORY[0x277CCDAB0] countUnit];
  }
  v5 = ;

  return v5;
}

@end