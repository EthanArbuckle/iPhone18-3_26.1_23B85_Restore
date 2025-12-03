@interface CKSensitiveBadgeBalloonView
- (CKSensitiveBadgeBalloonView)initWithFrame:(CGRect)frame;
- (UIView)commSafetyBadgeView;
- (id)description;
- (void)layoutSubviews;
@end

@implementation CKSensitiveBadgeBalloonView

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  animatedImage = [(CKImageBalloonView *)self animatedImage];
  v8.receiver = self;
  v8.super_class = CKSensitiveBadgeBalloonView;
  v5 = [(CKImageBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKSensitiveBadgeBalloonView animatedImage:%@ %@]", animatedImage, v5];

  return v6;
}

- (CKSensitiveBadgeBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKSensitiveBadgeBalloonView;
  v3 = [(CKImageBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    commSafetyBadgeView = [(CKSensitiveBadgeBalloonView *)v3 commSafetyBadgeView];
    [(CKSensitiveBadgeBalloonView *)v4 addSubview:commSafetyBadgeView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CKSensitiveBadgeBalloonView;
  [(CKImageBalloonView *)&v24 layoutSubviews];
  commSafetyBadgeView = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];

  if (commSafetyBadgeView)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 verticalBalloonBadgeInset];
    v6 = v5;

    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 horizontalBalloonBadgeInset];
    v9 = v8;

    commSafetyBadgeView2 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView2 sizeToFit];

    commSafetyBadgeView3 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView3 frame];
    v13 = v12;
    v15 = v14;

    [(CKSensitiveBadgeBalloonView *)self frame];
    v17 = v16 - v13 - v9;
    [(CKSensitiveBadgeBalloonView *)self frame];
    v19 = v18 - v15 - v6;
    if ([(CKBalloonView *)self orientation]== 1)
    {
      v20 = +[CKUIBehavior sharedBehaviors];
      [v20 balloonMaskTailSizeForTailShape:1];
      v17 = v17 - v21;
    }

    commSafetyBadgeView4 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView4 setFrame:{v17, v19, v13, v15}];
  }

  commSafetyBadgeView5 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
  [(CKSensitiveBadgeBalloonView *)self bringSubviewToFront:commSafetyBadgeView5];
}

- (UIView)commSafetyBadgeView
{
  [(CKImageBalloonView *)self setIsIrisAsset:0];
  [(CKImageBalloonView *)self setIsMonoskiAsset:0];
  commSafetyBadgeView = self->_commSafetyBadgeView;
  if (!commSafetyBadgeView)
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.trianglebadge.exclamationmark.fill"];
    v5 = MEMORY[0x1E69DCAD8];
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    v7 = [v5 configurationWithHierarchicalColor:systemWhiteColor];

    v8 = [v4 imageWithSymbolConfiguration:v7];

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    v10 = self->_commSafetyBadgeView;
    self->_commSafetyBadgeView = v9;

    commSafetyBadgeView = self->_commSafetyBadgeView;
  }

  return commSafetyBadgeView;
}

@end