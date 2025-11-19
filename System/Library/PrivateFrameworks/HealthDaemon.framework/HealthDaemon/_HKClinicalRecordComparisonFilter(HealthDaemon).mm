@interface _HKClinicalRecordComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
@end

@implementation _HKClinicalRecordComparisonFilter(HealthDaemon)

- (__CFString)propertyForKeyPath
{
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC690]];

  if (v5)
  {
    v6 = HDClinicalRecordEntityPropertyFHIRResourceIdentifier;
LABEL_5:
    v9 = *v6;
    goto LABEL_7;
  }

  v7 = [a1 keyPath];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCC698]];

  if (v8)
  {
    v6 = HDClinicalRecordEntityPropertyFHIRResourceResourceType;
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:a1 file:@"_HKClinicalRecordComparisonFilter+HealthDaemon.m" lineNumber:33 description:@"Unreachable code has been executed"];

  v9 = &stru_283BF39C8;
LABEL_7:

  return v9;
}

@end