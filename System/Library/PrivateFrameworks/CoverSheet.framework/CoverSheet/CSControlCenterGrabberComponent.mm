@interface CSControlCenterGrabberComponent
- (CSControlCenterGrabberComponent)init;
@end

@implementation CSControlCenterGrabberComponent

- (CSControlCenterGrabberComponent)init
{
  v5.receiver = self;
  v5.super_class = CSControlCenterGrabberComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:13];
  }

  return v3;
}

@end