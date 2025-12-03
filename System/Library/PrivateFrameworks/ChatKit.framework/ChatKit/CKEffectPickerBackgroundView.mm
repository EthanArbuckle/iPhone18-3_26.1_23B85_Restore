@interface CKEffectPickerBackgroundView
- (CKEffectPickerBackgroundView)initWithFrame:(CGRect)frame;
- (void)setBackgroundColorForTranscriptType:(BOOL)type hasPortalBackground:(BOOL)background;
@end

@implementation CKEffectPickerBackgroundView

- (CKEffectPickerBackgroundView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKEffectPickerBackgroundView;
  v3 = [(CKEffectPickerBackgroundView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    [(CKEffectPickerBackgroundView *)v3 setEffectView:v4];

    effectView = [(CKEffectPickerBackgroundView *)v3 effectView];
    [effectView setTranslatesAutoresizingMaskIntoConstraints:0];

    effectView2 = [(CKEffectPickerBackgroundView *)v3 effectView];
    [(CKEffectPickerBackgroundView *)v3 insertSubview:effectView2 atIndex:0];

    effectView3 = [(CKEffectPickerBackgroundView *)v3 effectView];
    [effectView3 __ck_makeEdgesEqualToHorizontalSafeArea:v3];
  }

  return v3;
}

- (void)setBackgroundColorForTranscriptType:(BOOL)type hasPortalBackground:(BOOL)background
{
  if (background)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    traitCollection = [blackColor colorWithAlphaComponent:0.9];
    [(CKEffectPickerBackgroundView *)self setBackgroundColor:traitCollection];
  }

  else
  {
    blackColor = +[CKUIBehavior sharedBehaviors];
    traitCollection = [(CKEffectPickerBackgroundView *)self traitCollection];
    v6 = [blackColor chromeEffectForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
    effectView = [(CKEffectPickerBackgroundView *)self effectView];
    [effectView setEffect:v6];
  }
}

@end