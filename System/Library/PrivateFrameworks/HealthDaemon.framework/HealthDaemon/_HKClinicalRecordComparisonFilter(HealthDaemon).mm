@interface _HKClinicalRecordComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
@end

@implementation _HKClinicalRecordComparisonFilter(HealthDaemon)

- (__CFString)propertyForKeyPath
{
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC690]];

  if (v5)
  {
    v6 = HDClinicalRecordEntityPropertyFHIRResourceIdentifier;
LABEL_5:
    v9 = *v6;
    goto LABEL_7;
  }

  keyPath2 = [self keyPath];
  v8 = [keyPath2 isEqualToString:*MEMORY[0x277CCC698]];

  if (v8)
  {
    v6 = HDClinicalRecordEntityPropertyFHIRResourceResourceType;
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKClinicalRecordComparisonFilter+HealthDaemon.m" lineNumber:33 description:@"Unreachable code has been executed"];

  v9 = &stru_283BF39C8;
LABEL_7:

  return v9;
}

@end