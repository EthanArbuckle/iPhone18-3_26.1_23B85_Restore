@interface NSPersonNameComponents(IC)
- (id)ic_componentsForSearchHighlighting;
@end

@implementation NSPersonNameComponents(IC)

- (id)ic_componentsForSearchHighlighting
{
  array = [MEMORY[0x1E695DF70] array];
  givenName = [self givenName];
  [array ic_addNonNilObject:givenName];

  familyName = [self familyName];
  [array ic_addNonNilObject:familyName];

  return array;
}

@end