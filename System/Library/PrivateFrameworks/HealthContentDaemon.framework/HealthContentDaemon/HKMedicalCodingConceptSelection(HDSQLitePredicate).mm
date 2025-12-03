@interface HKMedicalCodingConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKMedicalCodingConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  v4 = a3;
  ontologyConceptManager = [v4 ontologyConceptManager];
  coding = [self coding];
  codingSystem = [coding codingSystem];
  v8 = [ontologyConceptManager attributeIdentifierForCodingSystem:codingSystem];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCD020]);
    longLongValue = [v8 longLongValue];
    coding2 = [self coding];
    code = [coding2 code];
    v13 = [v9 initWithAttribute:longLongValue operatorType:4 value:code];

    falsePredicate = [v13 predicateWithProfile:v4];
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogHealthOntology();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(HKMedicalCodingConceptSelection(HDSQLitePredicate) *)self predicateWithProfile:v15];
    }

    falsePredicate = [MEMORY[0x277D10B70] falsePredicate];
  }

  return falsePredicate;
}

- (void)predicateWithProfile:()HDSQLitePredicate .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 coding];
  v5 = [v4 codingSystem];
  v6 = HKSensitiveLogItem();
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_2514A1000, a2, OS_LOG_TYPE_ERROR, "%{public}@ received no attribute identifier for %{public}@, will return 'false' predicate", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end