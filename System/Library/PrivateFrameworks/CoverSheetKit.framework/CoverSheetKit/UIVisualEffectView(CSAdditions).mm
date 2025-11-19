@interface UIVisualEffectView(CSAdditions)
- (id)cs_copyVisualEffectView;
@end

@implementation UIVisualEffectView(CSAdditions)

- (id)cs_copyVisualEffectView
{
  v2 = objc_alloc(objc_opt_class());
  [a1 frame];
  v3 = [v2 initWithFrame:?];
  [v3 setAutoresizingMask:{objc_msgSend(a1, "autoresizingMask")}];
  [v3 setClipsToBounds:{objc_msgSend(a1, "clipsToBounds")}];
  [v3 setUserInteractionEnabled:{objc_msgSend(a1, "isUserInteractionEnabled")}];
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [a1 backgroundEffects];
  v6 = [v4 initWithArray:v5 copyItems:1];

  [v3 setBackgroundEffects:v6];
  [a1 _continuousCornerRadius];
  [v3 _setContinuousCornerRadius:?];
  v7 = [a1 _groupName];
  [v3 _setGroupName:v7];

  v8 = [v3 contentView];
  v9 = [a1 contentView];
  v10 = [v9 backgroundColor];
  [v8 setBackgroundColor:v10];

  v11 = [v3 contentView];
  v12 = [a1 contentView];
  [v12 alpha];
  [v11 setAlpha:?];

  v13 = [v3 contentView];
  v14 = [a1 contentView];
  [v13 setHidden:{objc_msgSend(v14, "isHidden")}];

  return v3;
}

@end