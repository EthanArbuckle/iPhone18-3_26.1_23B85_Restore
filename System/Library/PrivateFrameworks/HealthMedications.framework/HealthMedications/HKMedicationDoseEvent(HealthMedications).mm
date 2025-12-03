@interface HKMedicationDoseEvent(HealthMedications)
+ (id)syncIdentifierForScheduleItemIdentifier:()HealthMedications medicationIdentifier:;
+ (id)syncVersionForStatus:()HealthMedications;
@end

@implementation HKMedicationDoseEvent(HealthMedications)

+ (id)syncVersionForStatus:()HealthMedications
{
  if ((a3 - 1) >= 3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v4 = *(&off_2796C9F30 + a3 - 1);
  }

  return v4;
}

+ (id)syncIdentifierForScheduleItemIdentifier:()HealthMedications medicationIdentifier:
{
  if (a3 && a4)
  {
    uUIDString = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a4, a3];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  return uUIDString;
}

@end