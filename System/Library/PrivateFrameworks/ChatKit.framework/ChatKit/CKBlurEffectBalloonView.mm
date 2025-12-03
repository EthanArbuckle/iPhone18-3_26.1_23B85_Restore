@interface CKBlurEffectBalloonView
- (CKBlurEffectBalloonView)initWithFrame:(CGRect)frame;
- (UIView)commSafetyBadgeView;
- (UIVisualEffectView)blurEffectView;
- (id)description;
- (void)layoutSubviews;
@end

@implementation CKBlurEffectBalloonView

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  animatedImage = [(CKImageBalloonView *)self animatedImage];
  v8.receiver = self;
  v8.super_class = CKBlurEffectBalloonView;
  v5 = [(CKImageBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKBlurEffectBalloonView animatedImage:%@ %@]", animatedImage, v5];

  return v6;
}

- (CKBlurEffectBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKBlurEffectBalloonView;
  v3 = [(CKImageBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    blurEffectView = [(CKBlurEffectBalloonView *)v3 blurEffectView];
    [(CKBlurEffectBalloonView *)v4 addSubview:blurEffectView];
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
    layer = [(CKBlurEffectBalloonView *)self layer];
    [layer setContents:0];
  }

  blurEffectView = [(CKBlurEffectBalloonView *)self blurEffectView];
  [(CKBlurEffectBalloonView *)self bounds];
  [blurEffectView setFrame:?];

  blurEffectView2 = [(CKBlurEffectBalloonView *)self blurEffectView];
  [(CKBlurEffectBalloonView *)self bringSubviewToFront:blurEffectView2];

  blurEffectView3 = [(CKBlurEffectBalloonView *)self blurEffectView];
  superview = [blurEffectView3 superview];

  if (!superview)
  {
    blurEffectView4 = [(CKBlurEffectBalloonView *)self blurEffectView];
    [(CKBlurEffectBalloonView *)self addSubview:blurEffectView4];
  }

  commSafetyBadgeView = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];

  if (commSafetyBadgeView)
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 verticalBalloonBadgeInset];
    v12 = v11;

    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 horizontalBalloonBadgeInset];
    v15 = v14;

    commSafetyBadgeView2 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView2 sizeToFit];

    commSafetyBadgeView3 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView3 frame];
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

    commSafetyBadgeView4 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView4 setFrame:{v23, v25, v19, v21}];
  }

  blurEffectView5 = [(CKBlurEffectBalloonView *)self blurEffectView];
  if (blurEffectView5)
  {
    commSafetyBadgeView5 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [(CKBlurEffectBalloonView *)self insertSubview:commSafetyBadgeView5 aboveSubview:blurEffectView5];
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
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:labelColor];
    v7 = [v4 imageWithSymbolConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    v9 = self->_commSafetyBadgeView;
    self->_commSafetyBadgeView = v8;

    commSafetyBadgeView = self->_commSafetyBadgeView;
  }

  return commSafetyBadgeView;
}

@end