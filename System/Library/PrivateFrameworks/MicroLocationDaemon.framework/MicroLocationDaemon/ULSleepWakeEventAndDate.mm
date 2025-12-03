@interface ULSleepWakeEventAndDate
- (ULSleepWakeEventAndDate)initWithSleepWakeEvent:(uint64_t)event andDate:(uint64_t)date;
@end

@implementation ULSleepWakeEventAndDate

- (ULSleepWakeEventAndDate)initWithSleepWakeEvent:(uint64_t)event andDate:(uint64_t)date
{
  v9.receiver = self;
  v9.super_class = ULSleepWakeEventAndDate;
  v6 = [(ULSleepWakeEventAndDate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ULSleepWakeEventAndDate *)v6 setSleepWakeState:date];
    [(ULSleepWakeEventAndDate *)v7 setTime:a2];
  }

  return v7;
}

@end