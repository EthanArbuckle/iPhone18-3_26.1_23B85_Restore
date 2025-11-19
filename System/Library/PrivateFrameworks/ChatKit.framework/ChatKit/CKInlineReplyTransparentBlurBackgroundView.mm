@interface CKInlineReplyTransparentBlurBackgroundView
- (CKInlineReplyTransparentBlurBackgroundView)initWithFrame:(CGRect)a3;
- (void)animateIn;
- (void)animateOut;
@end

@implementation CKInlineReplyTransparentBlurBackgroundView

- (CKInlineReplyTransparentBlurBackgroundView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = CKInlineReplyTransparentBlurBackgroundView;
  v3 = [(CKInlineReplyTransparentBlurBackgroundView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKInlineReplyTransparentBlurBackgroundView *)v3 setAlpha:0.0];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(CKInlineReplyTransparentBlurBackgroundView *)v4 setBackgroundColor:v5];

    v6 = objc_alloc(MEMORY[0x1E69DD298]);
    v7 = MEMORY[0x1E69DC730];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 theme];
    [v9 replyTranscriptBlurBackgroundBlurRadius];
    v10 = [v7 effectWithBlurRadius:?];
    v11 = [v6 initWithEffect:v10];
    [(CKInlineReplyTransparentBlurBackgroundView *)v4 setBlurEffectView:v11];

    v12 = [(CKInlineReplyTransparentBlurBackgroundView *)v4 blurEffectView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(CKInlineReplyTransparentBlurBackgroundView *)v4 blurEffectView];
    [(CKInlineReplyTransparentBlurBackgroundView *)v4 addSubview:v13];

    v14 = [(CKInlineReplyTransparentBlurBackgroundView *)v4 blurEffectView];
    [v14 __ck_makeEdgesEqualTo:v4];
  }

  return v4;
}

- (void)animateIn
{
  [(CKInlineReplyTransparentBlurBackgroundView *)self setAlpha:1.0];
  if ([(CKInlineReplyTransparentBlurBackgroundView *)self _needsPlatter])
  {
    v5 = [MEMORY[0x1E69DC888] blackColor];
    v3 = [v5 colorWithAlphaComponent:0.9];
    [(CKInlineReplyTransparentBlurBackgroundView *)self setBackgroundColor:v3];
  }

  else
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v3 = [v5 theme];
    v4 = [v3 replyTranscriptBlurBackgroundColor];
    [(CKInlineReplyTransparentBlurBackgroundView *)self setBackgroundColor:v4];
  }
}

- (void)animateOut
{
  [(CKInlineReplyTransparentBlurBackgroundView *)self setAlpha:0.0];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [(CKInlineReplyTransparentBlurBackgroundView *)self setBackgroundColor:v3];
}

@end