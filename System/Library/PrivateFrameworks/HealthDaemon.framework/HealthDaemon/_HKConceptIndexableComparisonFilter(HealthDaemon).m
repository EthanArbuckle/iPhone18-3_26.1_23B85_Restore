@interface _HKConceptIndexableComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKConceptIndexableComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v2 setEntityClass:objc_opt_class()];
  if (a1)
  {
    if ([a1 operatorType] == 4)
    {
      v3 = [a1 value];
      v4 = [a1 keyPath];
      v13[0] = v4;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      a1 = HDConceptIndexEntityPredicateForConceptIdentifier(v3, v5);

LABEL_6:
      goto LABEL_8;
    }

    if ([a1 operatorType] == 10)
    {
      v3 = [a1 value];
      v4 = [a1 keyPath];
      a1 = HDConceptIndexEntityPredicateForConceptIdentifiers(v3, v4);
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:sel__conceptIndexPredicate object:a1 file:@"_HKConceptIndexableComparisonFilter+HealthDaemon.m" lineNumber:41 description:@"Unreachable code has been executed"];

    a1 = [MEMORY[0x277D10B70] falsePredicate];
  }

LABEL_8:
  [v2 setPredicate:a1];

  v7 = MEMORY[0x277D10B18];
  v12 = @"object_id";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v9 = [v7 predicateWithProperty:@"data_id" comparisonType:7 subqueryDescriptor:v2 subqueryProperties:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end