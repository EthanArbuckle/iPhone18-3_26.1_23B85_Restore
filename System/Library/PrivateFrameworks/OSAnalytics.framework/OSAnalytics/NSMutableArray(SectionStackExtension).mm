@interface NSMutableArray(SectionStackExtension)
- (id)section_pop;
@end

@implementation NSMutableArray(SectionStackExtension)

- (id)section_pop
{
  lastObject = [self lastObject];
  [self removeLastObject];

  return lastObject;
}

@end