@interface UIMenu(IC)
+ (id)ic_inlineMenuWithElementSize:()IC children:;
@end

@implementation UIMenu(IC)

+ (id)ic_inlineMenuWithElementSize:()IC children:
{
  v5 = [self ic_inlineMenuWithChildren:a4];
  [v5 setPreferredElementSize:a3];

  return v5;
}

@end