@interface CAMReviewButton
+ (id)_sharedNumberOfCapturesFormatter;
- (CAMReviewButton)initWithCoder:(id)coder;
- (CAMReviewButton)initWithFrame:(CGRect)frame;
- (id)_localizedTitleForNumberOfCaptures;
- (void)_commonCAMReviewButtonInitialization;
@end

@implementation CAMReviewButton

- (void)_commonCAMReviewButtonInitialization
{
  v17[2] = *MEMORY[0x1E69E9840];
  self->__numberOfCaptures = 0;
  _localizedTitleForNumberOfCaptures = [(CAMReviewButton *)self _localizedTitleForNumberOfCaptures];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(CAMReviewButton *)self setTitleColor:whiteColor forState:0];
  [(CAMReviewButton *)self setExclusiveTouch:1];
  titleLabel = [(CAMReviewButton *)self titleLabel];
  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = [v6 fontWithDescriptor:v7 size:18.0];
  [titleLabel setFont:v8];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  if (cam_initialLayoutStyle == 1)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    [v11 setShadowColor:v12];

    [v11 setShadowOffset:{0.0, 0.0}];
    [v11 setShadowBlurRadius:3.0];
    v13 = *MEMORY[0x1E69DB650];
    v16[0] = *MEMORY[0x1E69DB6A8];
    v16[1] = v13;
    v17[0] = v11;
    v17[1] = whiteColor;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_localizedTitleForNumberOfCaptures attributes:v14];
    [(CAMReviewButton *)self setAttributedTitle:v15 forState:0];
  }

  else
  {
    [(CAMReviewButton *)self setTitle:_localizedTitleForNumberOfCaptures forState:0];
  }
}

- (CAMReviewButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMReviewButton;
  v3 = [(CAMReviewButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMReviewButton *)v3 _commonCAMReviewButtonInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMReviewButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMReviewButton;
  v3 = [(CAMReviewButton *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAMReviewButton *)v3 _commonCAMReviewButtonInitialization];
    v5 = v4;
  }

  return v4;
}

+ (id)_sharedNumberOfCapturesFormatter
{
  if (_sharedNumberOfCapturesFormatter_onceToken != -1)
  {
    +[CAMReviewButton _sharedNumberOfCapturesFormatter];
  }

  v3 = _sharedNumberOfCapturesFormatter_sharedCountFormatter;

  return v3;
}

uint64_t __51__CAMReviewButton__sharedNumberOfCapturesFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _sharedNumberOfCapturesFormatter_sharedCountFormatter;
  _sharedNumberOfCapturesFormatter_sharedCountFormatter = v0;

  [_sharedNumberOfCapturesFormatter_sharedCountFormatter setGeneratesDecimalNumbers:1];
  v2 = _sharedNumberOfCapturesFormatter_sharedCountFormatter;

  return [v2 setNumberStyle:1];
}

- (id)_localizedTitleForNumberOfCaptures
{
  v3 = CAMLocalizedFrameworkString(@"API_CANCEL_TITLE", @"Title for the Cancel button, which dismisses the view controller");
  _numberOfCaptures = [(CAMReviewButton *)self _numberOfCaptures];
  if (_numberOfCaptures)
  {
    v5 = _numberOfCaptures;
    v6 = +[CAMReviewButton _sharedNumberOfCapturesFormatter];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v8 = [v6 stringFromNumber:v7];

    v9 = CAMLocalizedFrameworkString(@"API_REVIEW_NUMBER", @"Title for the Review button, which presents the review view controller");
    v10 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v8];
    v11 = CAMLocalizedFrameworkString(@"API_REVIEW_TITLE", @"Title for the Review button, which presents the review view controller");
    v12 = CAMLocalizedFrameworkString(@"API_REVIEW_TITLE_FORMAT", @"Format for the Review button title, which presents the review view controller");
    v13 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@%@" error:0, v11, v10];

    v3 = v13;
  }

  return v3;
}

@end