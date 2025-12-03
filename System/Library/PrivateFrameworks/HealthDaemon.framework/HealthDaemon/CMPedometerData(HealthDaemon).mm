@interface CMPedometerData(HealthDaemon)
- (BOOL)hd_hasWorkout;
- (id)hd_unitForType:()HealthDaemon;
- (uint64_t)hd_compare:()HealthDaemon;
@end

@implementation CMPedometerData(HealthDaemon)

- (BOOL)hd_hasWorkout
{
  workoutType = [self workoutType];
  v2 = [workoutType integerValue] != 0;

  return v2;
}

- (uint64_t)hd_compare:()HealthDaemon
{
  v4 = a3;
  recordId = [self recordId];
  recordId2 = [v4 recordId];

  if (recordId < recordId2)
  {
    return -1;
  }

  else
  {
    return recordId > recordId2;
  }
}

- (id)hd_unitForType:()HealthDaemon
{
  identifier = [a3 identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x277CCCB40]];

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