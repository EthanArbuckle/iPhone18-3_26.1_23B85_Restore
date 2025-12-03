@interface UIVisualEffectView(CSAdditions)
- (id)cs_copyVisualEffectView;
@end

@implementation UIVisualEffectView(CSAdditions)

- (id)cs_copyVisualEffectView
{
  v2 = objc_alloc(objc_opt_class());
  [self frame];
  v3 = [v2 initWithFrame:?];
  [v3 setAutoresizingMask:{objc_msgSend(self, "autoresizingMask")}];
  [v3 setClipsToBounds:{objc_msgSend(self, "clipsToBounds")}];
  [v3 setUserInteractionEnabled:{objc_msgSend(self, "isUserInteractionEnabled")}];
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  backgroundEffects = [self backgroundEffects];
  v6 = [v4 initWithArray:backgroundEffects copyItems:1];

  [v3 setBackgroundEffects:v6];
  [self _continuousCornerRadius];
  [v3 _setContinuousCornerRadius:?];
  _groupName = [self _groupName];
  [v3 _setGroupName:_groupName];

  contentView = [v3 contentView];
  contentView2 = [self contentView];
  backgroundColor = [contentView2 backgroundColor];
  [contentView setBackgroundColor:backgroundColor];

  contentView3 = [v3 contentView];
  contentView4 = [self contentView];
  [contentView4 alpha];
  [contentView3 setAlpha:?];

  contentView5 = [v3 contentView];
  contentView6 = [self contentView];
  [contentView5 setHidden:{objc_msgSend(contentView6, "isHidden")}];

  return v3;
}

@end