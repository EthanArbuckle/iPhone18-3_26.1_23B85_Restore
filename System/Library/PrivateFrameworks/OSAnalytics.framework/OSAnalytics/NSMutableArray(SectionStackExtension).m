@interface NSMutableArray(SectionStackExtension)
- (id)section_pop;
@end

@implementation NSMutableArray(SectionStackExtension)

- (id)section_pop
{
  v2 = [a1 lastObject];
  [a1 removeLastObject];

  return v2;
}

@end