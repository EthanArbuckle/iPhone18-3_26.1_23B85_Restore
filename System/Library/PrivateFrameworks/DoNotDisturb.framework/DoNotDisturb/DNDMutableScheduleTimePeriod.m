@interface DNDMutableScheduleTimePeriod
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEndTime:(id)a3;
- (void)setStartTime:(id)a3;
@end

@implementation DNDMutableScheduleTimePeriod

- (void)setStartTime:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
  }

  else
  {
    v4 = +[DNDScheduleTime defaultStartTime];
  }

  startTime = self->super._startTime;
  self->super._startTime = v4;

  MEMORY[0x2821F96F8](v4, startTime);
}

- (void)setEndTime:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
  }

  else
  {
    v4 = +[DNDScheduleTime defaultEndTime];
  }

  endTime = self->super._endTime;
  self->super._endTime = v4;

  MEMORY[0x2821F96F8](v4, endTime);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDScheduleTimePeriod alloc];

  return [(DNDScheduleTimePeriod *)v4 _initWithPeriod:self];
}

@end