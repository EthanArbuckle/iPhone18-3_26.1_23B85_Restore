@interface ICLearnMoreTextView
- (BOOL)accessibilityActivate;
- (UIViewController)parentViewController;
- (id)accessibilityHint;
- (id)attributedString:(id)string withColor:(id)color font:(id)font;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)dealloc;
- (void)didTapLearnMore;
- (void)resetTextView;
- (void)setAttributedText:(id)text addLearnMore:(BOOL)more;
- (void)setAttributedText:(id)text font:(id)font lineSpacing:(double)spacing addLearnMore:(BOOL)more;
- (void)setText:(id)text font:(id)font color:(id)color lineSpacing:(double)spacing addLearnMore:(BOOL)more;
- (void)sizeToFitWidthUsingHeightConstraint:(id)constraint;
- (void)tapGesture:(id)gesture;
- (void)updateForAccessibilityDarkerSystemColors;
@end

@implementation ICLearnMoreTextView

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = ICLearnMoreTextView;
  [(ICLearnMoreTextView *)&v4 awakeFromNib];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updateForAccessibilityDarkerSystemColors name:*MEMORY[0x1E69DD8B8] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  tapGestureRecognizer = [(ICLearnMoreTextView *)self tapGestureRecognizer];

  if (tapGestureRecognizer)
  {
    tapGestureRecognizer2 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
    [(ICLearnMoreTextView *)self removeGestureRecognizer:tapGestureRecognizer2];

    [(ICLearnMoreTextView *)self setTapGestureRecognizer:0];
  }

  v6.receiver = self;
  v6.super_class = ICLearnMoreTextView;
  [(ICLearnMoreTextView *)&v6 dealloc];
}

- (void)resetTextView
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  [(ICLearnMoreTextView *)self setAttributedText:v3];

  tapGestureRecognizer = [(ICLearnMoreTextView *)self tapGestureRecognizer];

  if (tapGestureRecognizer)
  {
    tapGestureRecognizer2 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
    [(ICLearnMoreTextView *)self removeGestureRecognizer:tapGestureRecognizer2];

    [(ICLearnMoreTextView *)self setTapGestureRecognizer:0];
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:0];
}

- (void)setText:(id)text font:(id)font color:(id)color lineSpacing:(double)spacing addLearnMore:(BOOL)more
{
  moreCopy = more;
  textCopy = text;
  fontCopy = font;
  colorCopy = color;
  if ([textCopy length])
  {
    v14 = [(ICLearnMoreTextView *)self attributedString:textCopy withColor:colorCopy font:fontCopy];
    [(ICLearnMoreTextView *)self setAttributedText:v14 font:fontCopy lineSpacing:moreCopy addLearnMore:spacing];
  }

  else
  {
    [(ICLearnMoreTextView *)self resetTextView];
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:moreCopy];
}

- (void)setAttributedText:(id)text addLearnMore:(BOOL)more
{
  moreCopy = more;
  textCopy = text;
  if ([textCopy length])
  {
    v6 = [textCopy attributesAtIndex:0 effectiveRange:0];
    v7 = [v6 mutableCopy];

    if (moreCopy)
    {
      iCLearnMoreLinkColor = [MEMORY[0x1E69DC888] ICLearnMoreLinkColor];
      if (!iCLearnMoreLinkColor)
      {
        iCLearnMoreLinkColor = [(ICLearnMoreTextView *)self tintColor];
      }

      v9 = __ICLocalizedFrameworkString_impl(@" Learn more…", @" Learn more…", 0, 1);
      v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:v7];
      v11 = [v10 length];
      [v10 addAttribute:@"ICLearnMoreTag" value:MEMORY[0x1E695E118] range:{0, v11}];
      [v10 addAttribute:*MEMORY[0x1E69DB650] value:iCLearnMoreLinkColor range:{0, objc_msgSend(v10, "length")}];
      v12 = [textCopy mutableCopy];
      [v12 appendAttributedString:v10];
      v13 = [v12 copy];

      tapGestureRecognizer = [(ICLearnMoreTextView *)self tapGestureRecognizer];

      if (!tapGestureRecognizer)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGesture_];
        [(ICLearnMoreTextView *)self setTapGestureRecognizer:v15];

        tapGestureRecognizer2 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
        [(ICLearnMoreTextView *)self addGestureRecognizer:tapGestureRecognizer2];
      }

      textCopy = v13;
    }
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:moreCopy];
  [(ICLearnMoreTextView *)self setAttributedText:textCopy];
}

- (void)setAttributedText:(id)text font:(id)font lineSpacing:(double)spacing addLearnMore:(BOOL)more
{
  moreCopy = more;
  textCopy = text;
  fontCopy = font;
  [(ICLearnMoreTextView *)self resetTextView];
  if ([textCopy length])
  {
    v11 = [textCopy mutableCopy];
    if (moreCopy)
    {
      iCLearnMoreLinkColor = [MEMORY[0x1E69DC888] ICLearnMoreLinkColor];
      v13 = __ICLocalizedFrameworkString_impl(@" Learn more…", @" Learn more…", 0, 1);
      v14 = [(ICLearnMoreTextView *)self attributedString:v13 withColor:iCLearnMoreLinkColor font:fontCopy];
      v15 = [v14 mutableCopy];

      v16 = [v15 length];
      [v15 addAttribute:@"ICLearnMoreTag" value:MEMORY[0x1E695E118] range:{0, v16}];
      [v11 appendAttributedString:v15];
    }

    v17 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v17 setAlignment:1];
    [v17 setLineSpacing:spacing];
    [v11 addAttribute:*MEMORY[0x1E69DB688] value:v17 range:{0, objc_msgSend(v11, "length")}];
    [(ICLearnMoreTextView *)self setAttributedText:v11];
    if (moreCopy)
    {
      tapGestureRecognizer = [(ICLearnMoreTextView *)self tapGestureRecognizer];

      if (!tapGestureRecognizer)
      {
        v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGesture_];
        [(ICLearnMoreTextView *)self setTapGestureRecognizer:v19];

        tapGestureRecognizer2 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
        [(ICLearnMoreTextView *)self addGestureRecognizer:tapGestureRecognizer2];
      }
    }
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:moreCopy];
}

- (void)tapGesture:(id)gesture
{
  gestureCopy = gesture;
  layoutManager = [(ICLearnMoreTextView *)self layoutManager];
  [gestureCopy locationInView:self];
  v7 = v6;
  v9 = v8;

  [(ICLearnMoreTextView *)self textContainerInset];
  v11 = v7 - v10;
  [(ICLearnMoreTextView *)self textContainerInset];
  v13 = v9 - v12;
  textContainer = [(ICLearnMoreTextView *)self textContainer];
  v15 = [layoutManager characterIndexForPoint:textContainer inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v11, v13}];

  textStorage = [(ICLearnMoreTextView *)self textStorage];
  v17 = [textStorage length];

  if (v15 < v17)
  {
    v18 = [(ICLearnMoreTextView *)self textStorage:0];
    v19 = [v18 attribute:@"ICLearnMoreTag" atIndex:v15 effectiveRange:&v20];

    if (v19)
    {
      [(ICLearnMoreTextView *)self didTapLearnMore];
    }
  }
}

- (void)didTapLearnMore
{
  helpTopic = [(ICLearnMoreTextView *)self helpTopic];

  if (!helpTopic)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.helpTopic) != nil)" functionName:"-[ICLearnMoreTextView didTapLearnMore]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.helpTopic"}];
  }

  parentViewController = [(ICLearnMoreTextView *)self parentViewController];
  view = [parentViewController view];
  window = [view window];

  if (!window)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.parentViewController.view.window) != nil)" functionName:"-[ICLearnMoreTextView didTapLearnMore]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.parentViewController.view.window"}];
  }

  helpTopic2 = [(ICLearnMoreTextView *)self helpTopic];
  parentViewController2 = [(ICLearnMoreTextView *)self parentViewController];
  [ICHelp presentWithTopic:helpTopic2 presentingViewController:parentViewController2];
}

- (id)attributedString:(id)string withColor:(id)color font:(id)font
{
  colorCopy = color;
  fontCopy = font;
  v9 = MEMORY[0x1E695DF90];
  stringCopy = string;
  dictionary = [v9 dictionary];
  v12 = dictionary;
  if (fontCopy)
  {
    [dictionary setObject:fontCopy forKeyedSubscript:*MEMORY[0x1E69DB648]];
  }

  if (colorCopy)
  {
    [v12 setObject:colorCopy forKeyedSubscript:*MEMORY[0x1E69DB650]];
  }

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (stringCopy)
  {
    v14 = stringCopy;
  }

  else
  {
    v14 = &stru_1F4F94F00;
  }

  v15 = [v13 initWithString:v14 attributes:v12];

  return v15;
}

- (void)sizeToFitWidthUsingHeightConstraint:(id)constraint
{
  constraintCopy = constraint;
  [(ICLearnMoreTextView *)self frame];
  [(ICLearnMoreTextView *)self sizeThatFits:v4, 3.40282347e38];
  [constraintCopy setConstant:v5];
}

- (BOOL)accessibilityActivate
{
  isShowingLearnMore = [(ICLearnMoreTextView *)self isShowingLearnMore];
  if (isShowingLearnMore)
  {
    [(ICLearnMoreTextView *)self didTapLearnMore];
  }

  return isShowingLearnMore;
}

- (unint64_t)accessibilityTraits
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return *MEMORY[0x1E69DDA18];
  }

  v3 = *MEMORY[0x1E69DD9E8];
  if (UIAccessibilityIsSwitchControlRunning())
  {
    return *MEMORY[0x1E69DD9B8];
  }

  else
  {
    return v3;
  }
}

- (id)accessibilityHint
{
  accessibilityUserDefinedHint = [(ICLearnMoreTextView *)self accessibilityUserDefinedHint];
  if (![accessibilityUserDefinedHint length] && -[ICLearnMoreTextView isShowingLearnMore](self, "isShowingLearnMore"))
  {
    v4 = __ICLocalizedFrameworkString_impl(@"Double tap to learn more.", @"Double tap to learn more.", 0, 1);

    accessibilityUserDefinedHint = v4;
  }

  return accessibilityUserDefinedHint;
}

- (void)updateForAccessibilityDarkerSystemColors
{
  v3 = __ICLocalizedFrameworkString_impl(@" Learn more…", @" Learn more…", 0, 1);
  text = [(ICLearnMoreTextView *)self text];
  v5 = [text rangeOfString:v3];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    attributedText = [(ICLearnMoreTextView *)self attributedText];
    v7 = [attributedText mutableCopy];

    v12 = 0;
    v13 = 0;
    v8 = [v7 attributesAtIndex:v5 effectiveRange:&v12];
    v9 = [v8 mutableCopy];

    iCLearnMoreLinkColor = [MEMORY[0x1E69DC888] ICLearnMoreLinkColor];
    [v9 setObject:iCLearnMoreLinkColor forKeyedSubscript:*MEMORY[0x1E69DB650]];
    [v7 setAttributes:v9 range:{v12, v13}];
    v11 = [v7 copy];
    [(ICLearnMoreTextView *)self setAttributedText:v11];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end