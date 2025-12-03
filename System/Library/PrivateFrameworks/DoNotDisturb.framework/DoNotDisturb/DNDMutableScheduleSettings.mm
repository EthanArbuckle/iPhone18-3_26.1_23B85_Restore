@interface DNDMutableScheduleSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTimePeriod:(id)period;
@end

@implementation DNDMutableScheduleSettings

- (void)setTimePeriod:(id)period
{
  if (period)
  {
    v4 = [period copy];
  }

  else
  {
    v4 = objc_alloc_init(DNDScheduleTimePeriod);
  }

  timePeriod = self->super._timePeriod;
  self->super._timePeriod = v4;

  MEMORY[0x2821F96F8](v4, timePeriod);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDScheduleSettings alloc];

  return [(DNDScheduleSettings *)v4 _initWithSettings:self];
}

@end