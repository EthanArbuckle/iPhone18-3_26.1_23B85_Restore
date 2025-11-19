@interface CMPedometer(HealthDaemon)
- (void)hd_beginStreamingFromDatum:()HealthDaemon handler:;
@end

@implementation CMPedometer(HealthDaemon)

- (void)hd_beginStreamingFromDatum:()HealthDaemon handler:
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__CMPedometer_HealthDaemon__hd_beginStreamingFromDatum_handler___block_invoke;
    v14[3] = &unk_27861BB88;
    v15 = v7;
    [a1 _startPedometerUpdatesSinceDataRecord:v6 withHandler:v14];
    v8 = v15;
  }

  else
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__193;
    v12[4] = __Block_byref_object_dispose__193;
    v13 = [v6 hd_datestamp];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__CMPedometer_HealthDaemon__hd_beginStreamingFromDatum_handler___block_invoke_383;
    v9[3] = &unk_27862E248;
    v10 = v7;
    v11 = v12;
    v9[4] = a1;
    [a1 queryPedometerDataSinceDataRecord:v6 withHandler:v9];

    _Block_object_dispose(v12, 8);
    v8 = v13;
  }
}

@end