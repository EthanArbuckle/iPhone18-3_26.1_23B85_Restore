@interface NSString(DNDSModeAssertionInvalidationPredicateTypeHelper)
+ (__CFString)dnds_stringForPredicateType:()DNDSModeAssertionInvalidationPredicateTypeHelper;
- (uint64_t)dnds_predicateTypeValue;
@end

@implementation NSString(DNDSModeAssertionInvalidationPredicateTypeHelper)

+ (__CFString)dnds_stringForPredicateType:()DNDSModeAssertionInvalidationPredicateTypeHelper
{
  if ((a3 - 1) > 2)
  {
    return @"any";
  }

  else
  {
    return off_278F8BB30[a3 - 1];
  }
}

- (uint64_t)dnds_predicateTypeValue
{
  if ([a1 isEqualToString:@"any"])
  {
    return 0;
  }

  if ([a1 isEqualToString:@"date"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"client-identifier"])
  {
    return 2;
  }

  if ([a1 isEqualToString:@"uuid"])
  {
    return 3;
  }

  return 0;
}

@end