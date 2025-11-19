@interface CSPageControlComponent
- (CSPageControlComponent)init;
@end

@implementation CSPageControlComponent

- (CSPageControlComponent)init
{
  v5.receiver = self;
  v5.super_class = CSPageControlComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:3];
  }

  return v3;
}

@end