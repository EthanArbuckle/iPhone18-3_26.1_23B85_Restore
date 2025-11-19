@interface DNDMutableScheduleSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setTimePeriod:(id)a3;
@end

@implementation DNDMutableScheduleSettings

- (void)setTimePeriod:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
  }

  else
  {
    v4 = objc_alloc_init(DNDScheduleTimePeriod);
  }

  timePeriod = self->super._timePeriod;
  self->super._timePeriod = v4;

  MEMORY[0x2821F96F8](v4, timePeriod);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDScheduleSettings alloc];

  return [(DNDScheduleSettings *)v4 _initWithSettings:self];
}

@end