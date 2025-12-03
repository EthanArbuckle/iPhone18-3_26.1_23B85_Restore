@interface _HKConceptIndexableComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKConceptIndexableComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v2 setEntityClass:objc_opt_class()];
  if (self)
  {
    if ([self operatorType] == 4)
    {
      value = [self value];
      keyPath = [self keyPath];
      v13[0] = keyPath;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      self = HDConceptIndexEntityPredicateForConceptIdentifier(value, v5);

LABEL_6:
      goto LABEL_8;
    }

    if ([self operatorType] == 10)
    {
      value = [self value];
      keyPath = [self keyPath];
      self = HDConceptIndexEntityPredicateForConceptIdentifiers(value, keyPath);
      goto LABEL_6;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__conceptIndexPredicate object:self file:@"_HKConceptIndexableComparisonFilter+HealthDaemon.m" lineNumber:41 description:@"Unreachable code has been executed"];

    self = [MEMORY[0x277D10B70] falsePredicate];
  }

LABEL_8:
  [v2 setPredicate:self];

  v7 = MEMORY[0x277D10B18];
  v12 = @"object_id";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [v7 predicateWithProperty:@"data_id" comparisonType:7 subqueryDescriptor:v2 subqueryProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end