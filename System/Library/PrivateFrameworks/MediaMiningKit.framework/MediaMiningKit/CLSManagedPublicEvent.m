@interface CLSManagedPublicEvent
- (NSTimeZone)timeZone;
- (int64_t)expectedAttendance;
- (void)setExpectedAttendance:(int64_t)a3;
@end

@implementation CLSManagedPublicEvent

- (void)setExpectedAttendance:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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
  v2 = [(CLSManagedPublicEvent *)self expectedAttendanceAsNumber];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (NSTimeZone)timeZone
{
  v2 = MEMORY[0x277CBEBB0];
  v3 = [(CLSManagedPublicEvent *)self timeZoneOffset];

  return [v2 timeZoneForSecondsFromGMT:v3];
}

@end