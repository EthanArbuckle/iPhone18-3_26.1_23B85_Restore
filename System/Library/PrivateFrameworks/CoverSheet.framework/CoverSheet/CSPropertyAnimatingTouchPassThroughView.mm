@interface CSPropertyAnimatingTouchPassThroughView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
@end

@implementation CSPropertyAnimatingTouchPassThroughView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  animatedLayerProperties = [(CSPropertyAnimatingTouchPassThroughView *)self animatedLayerProperties];
  v6 = [animatedLayerProperties containsObject:keyCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CSPropertyAnimatingTouchPassThroughView;
    v7 = [(CSPropertyAnimatingTouchPassThroughView *)&v9 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v7;
}

@end