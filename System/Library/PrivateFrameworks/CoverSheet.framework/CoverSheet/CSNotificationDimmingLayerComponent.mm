@interface CSNotificationDimmingLayerComponent
- (CSNotificationDimmingLayerComponent)init;
@end

@implementation CSNotificationDimmingLayerComponent

- (CSNotificationDimmingLayerComponent)init
{
  v5.receiver = self;
  v5.super_class = CSNotificationDimmingLayerComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:28];
  }

  return v3;
}

@end