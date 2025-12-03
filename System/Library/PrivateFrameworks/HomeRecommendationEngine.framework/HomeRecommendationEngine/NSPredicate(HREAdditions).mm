@interface NSPredicate(HREAdditions)
- (uint64_t)isEqualToPredicate:()HREAdditions;
@end

@implementation NSPredicate(HREAdditions)

- (uint64_t)isEqualToPredicate:()HREAdditions
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  predicateFormat = [v3 predicateFormat];
  predicateFormat2 = [v3 predicateFormat];

  v6 = [predicateFormat isEqualToString:predicateFormat2];
  return v6;
}

@end