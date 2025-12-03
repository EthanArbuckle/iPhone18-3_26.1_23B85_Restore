@interface DNDSMutableMetricsRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLastDailyHeartbeat:(id)heartbeat;
- (void)setLastMonthlyHeartbeat:(id)heartbeat;
- (void)setLastWeeklyHeartbeat:(id)heartbeat;
- (void)setMetricsByDay:(id)day;
- (void)setMetricsByMonth:(id)month;
- (void)setMetricsByWeek:(id)week;
@end

@implementation DNDSMutableMetricsRecord

- (void)setMetricsByDay:(id)day
{
  v4 = [day copy];
  metricsByDay = self->super._metricsByDay;
  self->super._metricsByDay = v4;

  MEMORY[0x2821F96F8](v4, metricsByDay);
}

- (void)setLastDailyHeartbeat:(id)heartbeat
{
  v4 = [heartbeat copy];
  lastDailyHeartbeat = self->super._lastDailyHeartbeat;
  self->super._lastDailyHeartbeat = v4;

  MEMORY[0x2821F96F8](v4, lastDailyHeartbeat);
}

- (void)setMetricsByWeek:(id)week
{
  v4 = [week copy];
  metricsByWeek = self->super._metricsByWeek;
  self->super._metricsByWeek = v4;

  MEMORY[0x2821F96F8](v4, metricsByWeek);
}

- (void)setLastWeeklyHeartbeat:(id)heartbeat
{
  v4 = [heartbeat copy];
  lastWeeklyHeartbeat = self->super._lastWeeklyHeartbeat;
  self->super._lastWeeklyHeartbeat = v4;

  MEMORY[0x2821F96F8](v4, lastWeeklyHeartbeat);
}

- (void)setMetricsByMonth:(id)month
{
  v4 = [month copy];
  metricsByMonth = self->super._metricsByMonth;
  self->super._metricsByMonth = v4;

  MEMORY[0x2821F96F8](v4, metricsByMonth);
}

- (void)setLastMonthlyHeartbeat:(id)heartbeat
{
  v4 = [heartbeat copy];
  lastMonthlyHeartbeat = self->super._lastMonthlyHeartbeat;
  self->super._lastMonthlyHeartbeat = v4;

  MEMORY[0x2821F96F8](v4, lastMonthlyHeartbeat);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMetricsRecord alloc];

  return [(DNDSMetricsRecord *)v4 _initWithRecord:self];
}

@end