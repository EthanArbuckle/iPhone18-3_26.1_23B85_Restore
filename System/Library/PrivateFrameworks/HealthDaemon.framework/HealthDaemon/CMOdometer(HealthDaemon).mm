@interface CMOdometer(HealthDaemon)
- (void)hd_beginStreamingFromDatum:()HealthDaemon handler:;
@end

@implementation CMOdometer(HealthDaemon)

- (void)hd_beginStreamingFromDatum:()HealthDaemon handler:
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CMOdometer_HealthDaemon__hd_beginStreamingFromDatum_handler___block_invoke;
  v7[3] = &unk_27861BB88;
  v8 = v5;
  v6 = v5;
  [self startCyclingWorkoutDistanceUpdatesWithHandler:v7];
}

@end