@interface CAMPhotoModeDepthDescriptionOverlayView
- (CAMPhotoModeDepthDescriptionOverlayView)initWithFrame:(CGRect)a3;
- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)a3 isLandscape:(BOOL)a4 usingFontSizeMultiplier:(double)a5;
- (id)attributedDescriptionTextUsingNarrowWidth:(BOOL)a3;
- (void)_handleDidTapButton:(id)a3;
- (void)layoutSubviews;
- (void)setCustomSubviewsVisible:(BOOL)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMPhotoModeDepthDescriptionOverlayView

- (CAMPhotoModeDepthDescriptionOverlayView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMPhotoModeDepthDescriptionOverlayView;
  v3 = [(CAMDescriptionOverlayView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CAMDepthEffectSuggestionButton);
    button = v3->__button;
    v3->__button = v4;

    [(CAMDepthEffectSuggestionButton *)v3->__button addTarget:v3 action:sel__handleDidTapButton_ forControlEvents:64];
    [(CAMPhotoModeDepthDescriptionOverlayView *)v3 addSubview:v3->__button];
  }

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CAMPhotoModeDepthDescriptionOverlayView;
  [(CAMDescriptionOverlayView *)&v6 layoutSubviews];
  v3 = [(CAMPhotoModeDepthDescriptionOverlayView *)self _button];
  [v3 intrinsicContentSize];
  CEKRectWithSize();
  v8 = CGRectInset(v7, -29.0, -16.0);
  width = v8.size.width;
  height = v8.size.height;
  [(CAMDescriptionOverlayView *)self viewportFrame:v8.origin.x];
  [v3 setFrame:{0.0, CGRectGetMaxY(v9) - height, width, height}];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = CAMPhotoModeDepthDescriptionOverlayView;
  [CAMDescriptionOverlayView setOrientation:sel_setOrientation_animated_ animated:?];
  v7 = [(CAMPhotoModeDepthDescriptionOverlayView *)self _button];
  [v7 setOrientation:a3 animated:v4];
}

- (id)attributedDescriptionTextUsingNarrowWidth:(BOOL)a3
{
  v3 = CAMLocalizedFrameworkString(@"PHOTO_MODE_DEPTH_OVERLAY_DESCRIPTION_%@_GLYPH", &stru_1F1660A30);
  v4 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3];
  v5 = [v3 rangeOfString:@"%@"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    v8 = v6;
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"f.cursive.circle.fill"];
    v10 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v9];
    v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
    [v4 replaceCharactersInRange:v7 withAttributedString:{v8, v11}];
  }

  return v4;
}

- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)a3 isLandscape:(BOOL)a4 usingFontSizeMultiplier:(double)a5
{
  v5 = a4;
  v6 = a3;
  [(CAMDescriptionOverlayView *)self additionalSpacing];
  v8 = 370.0;
  if (v6)
  {
    v8 = 340.0;
  }

  if (v5)
  {
    v7 = 0.0;
  }

  result = v8 + v7;
  if (v5)
  {

    UICeilToViewScale();
  }

  return result;
}

- (void)setCustomSubviewsVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMPhotoModeDepthDescriptionOverlayView *)self _button];
  [v4 setAlpha:v3];
}

- (void)_handleDidTapButton:(id)a3
{
  v5 = a3;
  v3 = [v5 mode];
  v4 = v3;
  if (v3 <= 3)
  {
    v4 = qword_1A3A6A588[v3];
  }

  [v5 setMode:v4];
}

@end