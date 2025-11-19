@interface SFURLLabelFadeOutImageView
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)a3;
@end

@implementation SFURLLabelFadeOutImageView

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SFURLLabelFadeOutImageView;
  if ([(SFURLLabelFadeOutImageView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"contentsTransform"];
  }

  return v5;
}

@end