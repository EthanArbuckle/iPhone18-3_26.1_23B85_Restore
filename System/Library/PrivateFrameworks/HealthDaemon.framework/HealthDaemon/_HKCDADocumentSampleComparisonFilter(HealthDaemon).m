@interface _HKCDADocumentSampleComparisonFilter(HealthDaemon)
- (__CFString)propertyForKeyPath;
@end

@implementation _HKCDADocumentSampleComparisonFilter(HealthDaemon)

- (__CFString)propertyForKeyPath
{
  v4 = [a1 keyPath];
  v5 = [v4 isEqualToString:*MEMORY[0x277CCC668]];

  if (v5)
  {
    v6 = _HDCDASamplePropertyAuthorName;
LABEL_9:
    v13 = *v6;
    goto LABEL_10;
  }

  v7 = [a1 keyPath];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCC670]];

  if (v8)
  {
    v6 = _HDCDASamplePropertyCustodianName;
    goto LABEL_9;
  }

  v9 = [a1 keyPath];
  v10 = [v9 isEqualToString:*MEMORY[0x277CCC678]];

  if (v10)
  {
    v6 = _HDCDASamplePropertyPatientName;
    goto LABEL_9;
  }

  v11 = [a1 keyPath];
  v12 = [v11 isEqualToString:*MEMORY[0x277CCC680]];

  if (v12)
  {
    v6 = _HDCDASamplePropertyTitle;
    goto LABEL_9;
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"_HKCDADocumentSampleComparisonFilter+HealthDaemon.m" lineNumber:37 description:@"Unreachable code has been executed"];

  v13 = &stru_283BF39C8;
LABEL_10:

  return v13;
}

@end