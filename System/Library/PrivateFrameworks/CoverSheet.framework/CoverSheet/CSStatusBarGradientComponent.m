@interface CSStatusBarGradientComponent
- (CSStatusBarGradientComponent)init;
@end

@implementation CSStatusBarGradientComponent

- (CSStatusBarGradientComponent)init
{
  v5.receiver = self;
  v5.super_class = CSStatusBarGradientComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:16];
  }

  return v3;
}

@end