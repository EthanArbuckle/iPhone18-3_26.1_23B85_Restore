@interface CLSManagedPublicEvent
- (NSTimeZone)timeZone;
- (int64_t)expectedAttendance;
- (void)setExpectedAttendance:(int64_t)attendance;
@end

@implementation CLSManagedPublicEvent

- (void)setExpectedAttendance:(int64_t)attendance
{
  if (attendance == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(CLSManagedPublicEvent *)self setExpectedAttendanceAsNumber:0];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [(CLSManagedPublicEvent *)self setExpectedAttendanceAsNumber:v4];
  }
}

- (int64_t)expectedAttendance
{
  expectedAttendanceAsNumber = [(CLSManagedPublicEvent *)self expectedAttendanceAsNumber];
  v3 = expectedAttendanceAsNumber;
  if (expectedAttendanceAsNumber)
  {
    integerValue = [expectedAttendanceAsNumber integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (NSTimeZone)timeZone
{
  v2 = MEMORY[0x277CBEBB0];
  timeZoneOffset = [(CLSManagedPublicEvent *)self timeZoneOffset];

  return [v2 timeZoneForSecondsFromGMT:timeZoneOffset];
}

@end