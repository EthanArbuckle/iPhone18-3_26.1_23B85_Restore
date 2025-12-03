@interface _HKDiagnosticTestResultComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
@end

@implementation _HKDiagnosticTestResultComparisonFilter(HealthDaemon)

- (__CFString)propertyForKeyPath
{
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCBC88]];

  if (v5)
  {
    v6 = HDDiagnosticTestResultEntityPropertyCategory;
LABEL_5:
    v9 = *v6;
    goto LABEL_7;
  }

  keyPath2 = [self keyPath];
  v8 = [keyPath2 isEqualToString:*MEMORY[0x277CCBCA0]];

  if (v8)
  {
    v6 = HDDiagnosticTestResultEntityPropertyReferenceRangeStatus;
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKDiagnosticTestResultComparisonFilter+HealthDaemon.m" lineNumber:32 description:@"Unreachable code has been executed"];

  v9 = &stru_283BF39C8;
LABEL_7:

  return v9;
}

@end