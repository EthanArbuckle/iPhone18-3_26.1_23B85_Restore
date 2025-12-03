@interface CKInlineReplyTransparentBlurBackgroundView
- (CKInlineReplyTransparentBlurBackgroundView)initWithFrame:(CGRect)frame;
- (void)animateIn;
- (void)animateOut;
@end

@implementation CKInlineReplyTransparentBlurBackgroundView

- (CKInlineReplyTransparentBlurBackgroundView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = CKInlineReplyTransparentBlurBackgroundView;
  v3 = [(CKInlineReplyTransparentBlurBackgroundView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKInlineReplyTransparentBlurBackgroundView *)v3 setAlpha:0.0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKInlineReplyTransparentBlurBackgroundView *)v4 setBackgroundColor:clearColor];

    v6 = objc_alloc(MEMORY[0x1E69DD298]);
    v7 = MEMORY[0x1E69DC730];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    [theme replyTranscriptBlurBackgroundBlurRadius];
    v10 = [v7 effectWithBlurRadius:?];
    v11 = [v6 initWithEffect:v10];
    [(CKInlineReplyTransparentBlurBackgroundView *)v4 setBlurEffectView:v11];

    blurEffectView = [(CKInlineReplyTransparentBlurBackgroundView *)v4 blurEffectView];
    [blurEffectView setTranslatesAutoresizingMaskIntoConstraints:0];

    blurEffectView2 = [(CKInlineReplyTransparentBlurBackgroundView *)v4 blurEffectView];
    [(CKInlineReplyTransparentBlurBackgroundView *)v4 addSubview:blurEffectView2];

    blurEffectView3 = [(CKInlineReplyTransparentBlurBackgroundView *)v4 blurEffectView];
    [blurEffectView3 __ck_makeEdgesEqualTo:v4];
  }

  return v4;
}

- (void)animateIn
{
  [(CKInlineReplyTransparentBlurBackgroundView *)self setAlpha:1.0];
  if ([(CKInlineReplyTransparentBlurBackgroundView *)self _needsPlatter])
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    theme = [blackColor colorWithAlphaComponent:0.9];
    [(CKInlineReplyTransparentBlurBackgroundView *)self setBackgroundColor:theme];
  }

  else
  {
    blackColor = +[CKUIBehavior sharedBehaviors];
    theme = [blackColor theme];
    replyTranscriptBlurBackgroundColor = [theme replyTranscriptBlurBackgroundColor];
    [(CKInlineReplyTransparentBlurBackgroundView *)self setBackgroundColor:replyTranscriptBlurBackgroundColor];
  }
}

- (void)animateOut
{
  [(CKInlineReplyTransparentBlurBackgroundView *)self setAlpha:0.0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CKInlineReplyTransparentBlurBackgroundView *)self setBackgroundColor:clearColor];
}

@end