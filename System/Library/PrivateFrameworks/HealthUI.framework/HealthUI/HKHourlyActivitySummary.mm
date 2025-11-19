@interface HKHourlyActivitySummary
- (id)dateComponentsForCalendar:(id)a3;
@end

@implementation HKHourlyActivitySummary

- (id)dateComponentsForCalendar:(id)a3
{
  v4 = a3;
  v5 = [(HKHourlyActivitySummary *)self hourlyDateComponents];
  v6 = [v5 calendar];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(HKHourlyActivitySummary *)self hourlyDateComponents];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end