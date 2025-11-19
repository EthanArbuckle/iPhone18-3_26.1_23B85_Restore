@interface CSPoseidonComponent
- (CSPoseidonComponent)init;
@end

@implementation CSPoseidonComponent

- (CSPoseidonComponent)init
{
  v5.receiver = self;
  v5.super_class = CSPoseidonComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:17];
  }

  return v3;
}

@end