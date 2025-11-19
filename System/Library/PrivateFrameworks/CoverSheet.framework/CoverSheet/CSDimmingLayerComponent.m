@interface CSDimmingLayerComponent
- (CSDimmingLayerComponent)init;
@end

@implementation CSDimmingLayerComponent

- (CSDimmingLayerComponent)init
{
  v5.receiver = self;
  v5.super_class = CSDimmingLayerComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:27];
  }

  return v3;
}

@end