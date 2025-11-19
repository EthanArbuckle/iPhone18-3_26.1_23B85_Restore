@interface CKSensitiveBadgeBalloonView
- (CKSensitiveBadgeBalloonView)initWithFrame:(CGRect)a3;
- (UIView)commSafetyBadgeView;
- (id)description;
- (void)layoutSubviews;
@end

@implementation CKSensitiveBadgeBalloonView

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKImageBalloonView *)self animatedImage];
  v8.receiver = self;
  v8.super_class = CKSensitiveBadgeBalloonView;
  v5 = [(CKImageBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKSensitiveBadgeBalloonView animatedImage:%@ %@]", v4, v5];

  return v6;
}

- (CKSensitiveBadgeBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKSensitiveBadgeBalloonView;
  v3 = [(CKImageBalloonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKSensitiveBadgeBalloonView *)v3 commSafetyBadgeView];
    [(CKSensitiveBadgeBalloonView *)v4 addSubview:v5];
  }

  return v4;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CKSensitiveBadgeBalloonView;
  [(CKImageBalloonView *)&v24 layoutSubviews];
  v3 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];

  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 verticalBalloonBadgeInset];
    v6 = v5;

    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 horizontalBalloonBadgeInset];
    v9 = v8;

    v10 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
    [v10 sizeToFit];

    v11 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
    [v11 frame];
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

    v22 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
    [v22 setFrame:{v17, v19, v13, v15}];
  }

  v23 = [(CKSensitiveBadgeBalloonView *)self commSafetyBadgeView];
  [(CKSensitiveBadgeBalloonView *)self bringSubviewToFront:v23];
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
    v6 = [MEMORY[0x1E69DC888] systemWhiteColor];
    v7 = [v5 configurationWithHierarchicalColor:v6];

    v8 = [v4 imageWithSymbolConfiguration:v7];

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    v10 = self->_commSafetyBadgeView;
    self->_commSafetyBadgeView = v9;

    commSafetyBadgeView = self->_commSafetyBadgeView;
  }

  return commSafetyBadgeView;
}

@end