@interface NSSet(EFNSSetDifferenceAdditions)
- (EFNSSetDifference)differenceFromSet:()EFNSSetDifferenceAdditions;
@end

@implementation NSSet(EFNSSetDifferenceAdditions)

- (EFNSSetDifference)differenceFromSet:()EFNSSetDifferenceAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] setWithSet:self];
  [v5 minusSet:v4];
  v6 = [MEMORY[0x1E695DFA8] setWithSet:v4];
  [v6 minusSet:self];
  v7 = [EFNSSetDifference alloc];
  v8 = [v5 copy];
  v9 = [v6 copy];
  v10 = [(EFNSSetDifference *)v7 initWithInsertedObjects:v8 removedObjects:v9];

  return v10;
}

@end