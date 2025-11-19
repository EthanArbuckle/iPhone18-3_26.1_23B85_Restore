@interface CKEffectPickerBackgroundView
- (CKEffectPickerBackgroundView)initWithFrame:(CGRect)a3;
- (void)setBackgroundColorForTranscriptType:(BOOL)a3 hasPortalBackground:(BOOL)a4;
@end

@implementation CKEffectPickerBackgroundView

- (CKEffectPickerBackgroundView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKEffectPickerBackgroundView;
  v3 = [(CKEffectPickerBackgroundView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    [(CKEffectPickerBackgroundView *)v3 setEffectView:v4];

    v5 = [(CKEffectPickerBackgroundView *)v3 effectView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(CKEffectPickerBackgroundView *)v3 effectView];
    [(CKEffectPickerBackgroundView *)v3 insertSubview:v6 atIndex:0];

    v7 = [(CKEffectPickerBackgroundView *)v3 effectView];
    [v7 __ck_makeEdgesEqualToHorizontalSafeArea:v3];
  }

  return v3;
}

- (void)setBackgroundColorForTranscriptType:(BOOL)a3 hasPortalBackground:(BOOL)a4
{
  if (a4)
  {
    v8 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [v8 colorWithAlphaComponent:0.9];
    [(CKEffectPickerBackgroundView *)self setBackgroundColor:v5];
  }

  else
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    v5 = [(CKEffectPickerBackgroundView *)self traitCollection];
    v6 = [v8 chromeEffectForInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];
    v7 = [(CKEffectPickerBackgroundView *)self effectView];
    [v7 setEffect:v6];
  }
}

@end