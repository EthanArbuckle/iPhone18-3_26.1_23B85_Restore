@interface CSTintingComponent
- (CSTintingComponent)init;
@end

@implementation CSTintingComponent

- (CSTintingComponent)init
{
  v5.receiver = self;
  v5.super_class = CSTintingComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:7];
  }

  return v3;
}

@end