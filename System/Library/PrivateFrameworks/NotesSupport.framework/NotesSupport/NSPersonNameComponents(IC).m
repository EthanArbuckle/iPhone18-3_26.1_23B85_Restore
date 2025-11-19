@interface NSPersonNameComponents(IC)
- (id)ic_componentsForSearchHighlighting;
@end

@implementation NSPersonNameComponents(IC)

- (id)ic_componentsForSearchHighlighting
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 givenName];
  [v2 ic_addNonNilObject:v3];

  v4 = [a1 familyName];
  [v2 ic_addNonNilObject:v4];

  return v2;
}

@end