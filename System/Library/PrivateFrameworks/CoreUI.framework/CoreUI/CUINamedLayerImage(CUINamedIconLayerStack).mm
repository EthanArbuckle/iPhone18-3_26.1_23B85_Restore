@interface CUINamedLayerImage(CUINamedIconLayerStack)
- (void)_setGradientOrColorName:()CUINamedIconLayerStack;
@end

@implementation CUINamedLayerImage(CUINamedIconLayerStack)

- (void)_setGradientOrColorName:()CUINamedIconLayerStack
{
  gradientOrColorName = self->_gradientOrColorName;
  if (gradientOrColorName != a3)
  {

    self->_gradientOrColorName = a3;
  }
}

@end