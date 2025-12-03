@interface DNDMutableScheduleTimePeriod
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEndTime:(id)time;
- (void)setStartTime:(id)time;
@end

@implementation DNDMutableScheduleTimePeriod

- (void)setStartTime:(id)time
{
  if (time)
  {
    v4 = [time copy];
  }

  else
  {
    v4 = +[DNDScheduleTime defaultStartTime];
  }

  startTime = self->super._startTime;
  self->super._startTime = v4;

  MEMORY[0x2821F96F8](v4, startTime);
}

- (void)setEndTime:(id)time
{
  if (time)
  {
    v4 = [time copy];
  }

  else
  {
    v4 = +[DNDScheduleTime defaultEndTime];
  }

  endTime = self->super._endTime;
  self->super._endTime = v4;

  MEMORY[0x2821F96F8](v4, endTime);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDScheduleTimePeriod alloc];

  return [(DNDScheduleTimePeriod *)v4 _initWithPeriod:self];
}

@end