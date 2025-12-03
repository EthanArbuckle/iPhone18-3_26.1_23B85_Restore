@interface HKCompoundConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKCompoundConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  v5 = a3;
  selections = [self selections];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__HKCompoundConceptSelection_HDSQLitePredicate__predicateWithProfile___block_invoke;
  v16[3] = &unk_2796B8E80;
  v7 = v5;
  v17 = v7;
  v8 = [selections hk_map:v16];

  operationType = [self operationType];
  if (operationType == 2)
  {
    v13 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v8];
    goto LABEL_7;
  }

  if (operationType == 1)
  {
    v13 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v8];
LABEL_7:
    v12 = v13;
    goto LABEL_9;
  }

  if (operationType)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKCompoundConceptSelection+HDSQLitePredicate.m" lineNumber:35 description:@"Unreachable code has been executed"];

    v12 = 0;
  }

  else
  {
    v10 = MEMORY[0x277D10B20];
    v11 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v8];
    v12 = [v10 negatedPredicate:v11];
  }

LABEL_9:

  return v12;
}

@end