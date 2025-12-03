@interface HKAllConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKAllConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  if ([self value])
  {
    [MEMORY[0x277D10B70] truePredicate];
  }

  else
  {
    [MEMORY[0x277D10B70] falsePredicate];
  }
  v1 = ;

  return v1;
}

@end