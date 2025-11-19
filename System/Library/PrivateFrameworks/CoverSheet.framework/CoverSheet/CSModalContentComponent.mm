@interface CSModalContentComponent
- (CSModalContentComponent)init;
@end

@implementation CSModalContentComponent

- (CSModalContentComponent)init
{
  v5.receiver = self;
  v5.super_class = CSModalContentComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:22];
  }

  return v3;
}

@end