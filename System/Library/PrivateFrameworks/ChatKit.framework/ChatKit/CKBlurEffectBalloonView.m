@interface CKBlurEffectBalloonView
- (CKBlurEffectBalloonView)initWithFrame:(CGRect)a3;
- (UIView)commSafetyBadgeView;
- (UIVisualEffectView)blurEffectView;
- (id)description;
- (void)layoutSubviews;
@end

@implementation CKBlurEffectBalloonView

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKImageBalloonView *)self animatedImage];
  v8.receiver = self;
  v8.super_class = CKBlurEffectBalloonView;
  v5 = [(CKImageBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKBlurEffectBalloonView animatedImage:%@ %@]", v4, v5];

  return v6;
}

- (CKBlurEffectBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKBlurEffectBalloonView;
  v3 = [(CKImageBalloonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKBlurEffectBalloonView *)v3 blurEffectView];
    [(CKBlurEffectBalloonView *)v4 addSubview:v5];
  }

  return v4;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = CKBlurEffectBalloonView;
  [(CKImageBalloonView *)&v31 layoutSubviews];
  if (CKIsRunningInMessagesNotificationExtension() || CKIsRunningInMessagesNotificationViewService())
  {
    v3 = [(CKBlurEffectBalloonView *)self layer];
    [v3 setContents:0];
  }

  v4 = [(CKBlurEffectBalloonView *)self blurEffectView];
  [(CKBlurEffectBalloonView *)self bounds];
  [v4 setFrame:?];

  v5 = [(CKBlurEffectBalloonView *)self blurEffectView];
  [(CKBlurEffectBalloonView *)self bringSubviewToFront:v5];

  v6 = [(CKBlurEffectBalloonView *)self blurEffectView];
  v7 = [v6 superview];

  if (!v7)
  {
    v8 = [(CKBlurEffectBalloonView *)self blurEffectView];
    [(CKBlurEffectBalloonView *)self addSubview:v8];
  }

  v9 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];

  if (v9)
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 verticalBalloonBadgeInset];
    v12 = v11;

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 horizontalBalloonBadgeInset];
    v15 = v14;

    v16 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [v16 sizeToFit];

    v17 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [v17 frame];
    v19 = v18;
    v21 = v20;

    [(CKBlurEffectBalloonView *)self frame];
    v23 = v22 - v19 - v15;
    [(CKBlurEffectBalloonView *)self frame];
    v25 = v24 - v21 - v12;
    if ([(CKBalloonView *)self orientation]== 1)
    {
      v26 = +[CKUIBehavior sharedBehaviors];
      [v26 balloonMaskTailSizeForTailShape:1];
      v23 = v23 - v27;
    }

    v28 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [v28 setFrame:{v23, v25, v19, v21}];
  }

  v29 = [(CKBlurEffectBalloonView *)self blurEffectView];
  if (v29)
  {
    v30 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [(CKBlurEffectBalloonView *)self insertSubview:v30 aboveSubview:v29];
  }
}

- (UIVisualEffectView)blurEffectView
{
  blurEffectView = self->_blurEffectView;
  if (!blurEffectView)
  {
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
    v6 = self->_blurEffectView;
    self->_blurEffectView = v5;

    blurEffectView = self->_blurEffectView;
  }

  return blurEffectView;
}

- (UIView)commSafetyBadgeView
{
  [(CKImageBalloonView *)self setIsIrisAsset:0];
  [(CKImageBalloonView *)self setIsMonoskiAsset:0];
  commSafetyBadgeView = self->_commSafetyBadgeView;
  if (!commSafetyBadgeView)
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.slash"];
    v5 = [MEMORY[0x1E69DC888] labelColor];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:v5];
    v7 = [v4 imageWithSymbolConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    v9 = self->_commSafetyBadgeView;
    self->_commSafetyBadgeView = v8;

    commSafetyBadgeView = self->_commSafetyBadgeView;
  }

  return commSafetyBadgeView;
}

@end