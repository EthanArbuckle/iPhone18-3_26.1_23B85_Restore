@interface CAMPhotoModeDepthDescriptionOverlayView
- (CAMPhotoModeDepthDescriptionOverlayView)initWithFrame:(CGRect)frame;
- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)width isLandscape:(BOOL)landscape usingFontSizeMultiplier:(double)multiplier;
- (id)attributedDescriptionTextUsingNarrowWidth:(BOOL)width;
- (void)_handleDidTapButton:(id)button;
- (void)layoutSubviews;
- (void)setCustomSubviewsVisible:(BOOL)visible;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation CAMPhotoModeDepthDescriptionOverlayView

- (CAMPhotoModeDepthDescriptionOverlayView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMPhotoModeDepthDescriptionOverlayView;
  v3 = [(CAMDescriptionOverlayView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  _button = [(CAMPhotoModeDepthDescriptionOverlayView *)self _button];
  [_button intrinsicContentSize];
  CEKRectWithSize();
  v8 = CGRectInset(v7, -29.0, -16.0);
  width = v8.size.width;
  height = v8.size.height;
  [(CAMDescriptionOverlayView *)self viewportFrame:v8.origin.x];
  [_button setFrame:{0.0, CGRectGetMaxY(v9) - height, width, height}];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = CAMPhotoModeDepthDescriptionOverlayView;
  [CAMDescriptionOverlayView setOrientation:sel_setOrientation_animated_ animated:?];
  _button = [(CAMPhotoModeDepthDescriptionOverlayView *)self _button];
  [_button setOrientation:orientation animated:animatedCopy];
}

- (id)attributedDescriptionTextUsingNarrowWidth:(BOOL)width
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

- (double)maxDescriptionTextWidthForNarrowWidth:(BOOL)width isLandscape:(BOOL)landscape usingFontSizeMultiplier:(double)multiplier
{
  landscapeCopy = landscape;
  widthCopy = width;
  [(CAMDescriptionOverlayView *)self additionalSpacing];
  v8 = 370.0;
  if (widthCopy)
  {
    v8 = 340.0;
  }

  if (landscapeCopy)
  {
    v7 = 0.0;
  }

  result = v8 + v7;
  if (landscapeCopy)
  {

    UICeilToViewScale();
  }

  return result;
}

- (void)setCustomSubviewsVisible:(BOOL)visible
{
  visibleCopy = visible;
  _button = [(CAMPhotoModeDepthDescriptionOverlayView *)self _button];
  [_button setAlpha:visibleCopy];
}

- (void)_handleDidTapButton:(id)button
{
  buttonCopy = button;
  mode = [buttonCopy mode];
  v4 = mode;
  if (mode <= 3)
  {
    v4 = qword_1A3A6A588[mode];
  }

  [buttonCopy setMode:v4];
}

@end