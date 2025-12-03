@interface HKMedicalDate(HealthRecordsUI)
- (uint64_t)hr_dateWithoutTime;
@end

@implementation HKMedicalDate(HealthRecordsUI)

- (uint64_t)hr_dateWithoutTime
{
  form = [self form];
  if (form <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = form;
  }

  return [self displayStringWithPreferredForm:v3 includeTimeZone:0];
}

@end