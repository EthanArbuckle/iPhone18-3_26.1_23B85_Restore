@interface EQKitMathMLTokenContent
- (EQKitMathMLTokenContent)initWithChildren:(id)children;
- (void)dealloc;
@end

@implementation EQKitMathMLTokenContent

- (EQKitMathMLTokenContent)initWithChildren:(id)children
{
  v6.receiver = self;
  v6.super_class = EQKitMathMLTokenContent;
  v4 = [(EQKitMathMLTokenContent *)&v6 init];
  if (v4)
  {
    v4->mChildren = [children copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLTokenContent;
  [(EQKitMathMLTokenContent *)&v3 dealloc];
}

@end