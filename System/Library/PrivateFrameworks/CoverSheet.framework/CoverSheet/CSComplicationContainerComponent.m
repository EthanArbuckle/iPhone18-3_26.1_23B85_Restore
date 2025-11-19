@interface CSComplicationContainerComponent
- (CSComplicationContainerComponent)init;
@end

@implementation CSComplicationContainerComponent

- (CSComplicationContainerComponent)init
{
  v5.receiver = self;
  v5.super_class = CSComplicationContainerComponent;
  v2 = [(CSComponent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CSComponent *)v2 setType:20];
  }

  return v3;
}

@end