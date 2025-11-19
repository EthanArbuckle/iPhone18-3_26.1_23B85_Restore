@interface DNDSMutableMetricsRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLastDailyHeartbeat:(id)a3;
- (void)setLastMonthlyHeartbeat:(id)a3;
- (void)setLastWeeklyHeartbeat:(id)a3;
- (void)setMetricsByDay:(id)a3;
- (void)setMetricsByMonth:(id)a3;
- (void)setMetricsByWeek:(id)a3;
@end

@implementation DNDSMutableMetricsRecord

- (void)setMetricsByDay:(id)a3
{
  v4 = [a3 copy];
  metricsByDay = self->super._metricsByDay;
  self->super._metricsByDay = v4;

  MEMORY[0x2821F96F8](v4, metricsByDay);
}

- (void)setLastDailyHeartbeat:(id)a3
{
  v4 = [a3 copy];
  lastDailyHeartbeat = self->super._lastDailyHeartbeat;
  self->super._lastDailyHeartbeat = v4;

  MEMORY[0x2821F96F8](v4, lastDailyHeartbeat);
}

- (void)setMetricsByWeek:(id)a3
{
  v4 = [a3 copy];
  metricsByWeek = self->super._metricsByWeek;
  self->super._metricsByWeek = v4;

  MEMORY[0x2821F96F8](v4, metricsByWeek);
}

- (void)setLastWeeklyHeartbeat:(id)a3
{
  v4 = [a3 copy];
  lastWeeklyHeartbeat = self->super._lastWeeklyHeartbeat;
  self->super._lastWeeklyHeartbeat = v4;

  MEMORY[0x2821F96F8](v4, lastWeeklyHeartbeat);
}

- (void)setMetricsByMonth:(id)a3
{
  v4 = [a3 copy];
  metricsByMonth = self->super._metricsByMonth;
  self->super._metricsByMonth = v4;

  MEMORY[0x2821F96F8](v4, metricsByMonth);
}

- (void)setLastMonthlyHeartbeat:(id)a3
{
  v4 = [a3 copy];
  lastMonthlyHeartbeat = self->super._lastMonthlyHeartbeat;
  self->super._lastMonthlyHeartbeat = v4;

  MEMORY[0x2821F96F8](v4, lastMonthlyHeartbeat);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMetricsRecord alloc];

  return [(DNDSMetricsRecord *)v4 _initWithRecord:self];
}

@end