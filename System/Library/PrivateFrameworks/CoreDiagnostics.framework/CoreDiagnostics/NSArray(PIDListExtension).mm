@interface NSArray(PIDListExtension)
- (id)sortedPids;
@end

@implementation NSArray(PIDListExtension)

- (id)sortedPids
{
  v1 = [self sortedArrayUsingSelector:sel_compare_];
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

@end