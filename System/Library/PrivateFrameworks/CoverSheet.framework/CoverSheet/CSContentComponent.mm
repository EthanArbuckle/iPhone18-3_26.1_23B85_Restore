@interface CSContentComponent
- (CSContentComponent)init;
@end

@implementation CSContentComponent

- (CSContentComponent)init
{
  v5.receiver = self;
  v5.super_class = CSContentComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:15];
  }

  return v3;
}

@end