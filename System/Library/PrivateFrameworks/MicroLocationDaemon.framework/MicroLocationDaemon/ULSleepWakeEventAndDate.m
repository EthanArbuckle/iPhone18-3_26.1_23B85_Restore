@interface ULSleepWakeEventAndDate
- (ULSleepWakeEventAndDate)initWithSleepWakeEvent:(uint64_t)a3 andDate:(uint64_t)a4;
@end

@implementation ULSleepWakeEventAndDate

- (ULSleepWakeEventAndDate)initWithSleepWakeEvent:(uint64_t)a3 andDate:(uint64_t)a4
{
  v9.receiver = a1;
  v9.super_class = ULSleepWakeEventAndDate;
  v6 = [(ULSleepWakeEventAndDate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(ULSleepWakeEventAndDate *)v6 setSleepWakeState:a4];
    [(ULSleepWakeEventAndDate *)v7 setTime:a2];
  }

  return v7;
}

@end