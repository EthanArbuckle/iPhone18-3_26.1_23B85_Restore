@interface SFURLLabelFadeOutImageView
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key;
@end

@implementation SFURLLabelFadeOutImageView

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = SFURLLabelFadeOutImageView;
  if ([(SFURLLabelFadeOutImageView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"contentsTransform"];
  }

  return v5;
}

@end