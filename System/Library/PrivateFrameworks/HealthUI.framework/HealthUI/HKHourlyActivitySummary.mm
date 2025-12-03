@interface HKHourlyActivitySummary
- (id)dateComponentsForCalendar:(id)calendar;
@end

@implementation HKHourlyActivitySummary

- (id)dateComponentsForCalendar:(id)calendar
{
  calendarCopy = calendar;
  hourlyDateComponents = [(HKHourlyActivitySummary *)self hourlyDateComponents];
  calendar = [hourlyDateComponents calendar];
  v7 = [calendar isEqual:calendarCopy];

  if (v7)
  {
    hourlyDateComponents2 = [(HKHourlyActivitySummary *)self hourlyDateComponents];
  }

  else
  {
    hourlyDateComponents2 = 0;
  }

  return hourlyDateComponents2;
}

@end