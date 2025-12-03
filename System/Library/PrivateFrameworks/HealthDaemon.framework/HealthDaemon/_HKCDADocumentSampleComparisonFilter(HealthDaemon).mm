@interface _HKCDADocumentSampleComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
@end

@implementation _HKCDADocumentSampleComparisonFilter(HealthDaemon)

- (__CFString)propertyForKeyPath
{
  keyPath = [self keyPath];
  v5 = [keyPath isEqualToString:*MEMORY[0x277CCC668]];

  if (v5)
  {
    v6 = _HDCDASamplePropertyAuthorName;
LABEL_9:
    v13 = *v6;
    goto LABEL_10;
  }

  keyPath2 = [self keyPath];
  v8 = [keyPath2 isEqualToString:*MEMORY[0x277CCC670]];

  if (v8)
  {
    v6 = _HDCDASamplePropertyCustodianName;
    goto LABEL_9;
  }

  keyPath3 = [self keyPath];
  v10 = [keyPath3 isEqualToString:*MEMORY[0x277CCC678]];

  if (v10)
  {
    v6 = _HDCDASamplePropertyPatientName;
    goto LABEL_9;
  }

  keyPath4 = [self keyPath];
  v12 = [keyPath4 isEqualToString:*MEMORY[0x277CCC680]];

  if (v12)
  {
    v6 = _HDCDASamplePropertyTitle;
    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_HKCDADocumentSampleComparisonFilter+HealthDaemon.m" lineNumber:37 description:@"Unreachable code has been executed"];

  v13 = &stru_283BF39C8;
LABEL_10:

  return v13;
}

@end