@interface ICLearnMoreTextView
- (BOOL)accessibilityActivate;
- (UIViewController)parentViewController;
- (id)accessibilityHint;
- (id)attributedString:(id)a3 withColor:(id)a4 font:(id)a5;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)dealloc;
- (void)didTapLearnMore;
- (void)resetTextView;
- (void)setAttributedText:(id)a3 addLearnMore:(BOOL)a4;
- (void)setAttributedText:(id)a3 font:(id)a4 lineSpacing:(double)a5 addLearnMore:(BOOL)a6;
- (void)setText:(id)a3 font:(id)a4 color:(id)a5 lineSpacing:(double)a6 addLearnMore:(BOOL)a7;
- (void)sizeToFitWidthUsingHeightConstraint:(id)a3;
- (void)tapGesture:(id)a3;
- (void)updateForAccessibilityDarkerSystemColors;
@end

@implementation ICLearnMoreTextView

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = ICLearnMoreTextView;
  [(ICLearnMoreTextView *)&v4 awakeFromNib];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_updateForAccessibilityDarkerSystemColors name:*MEMORY[0x1E69DD8B8] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(ICLearnMoreTextView *)self tapGestureRecognizer];

  if (v4)
  {
    v5 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
    [(ICLearnMoreTextView *)self removeGestureRecognizer:v5];

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

  v4 = [(ICLearnMoreTextView *)self tapGestureRecognizer];

  if (v4)
  {
    v5 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
    [(ICLearnMoreTextView *)self removeGestureRecognizer:v5];

    [(ICLearnMoreTextView *)self setTapGestureRecognizer:0];
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:0];
}

- (void)setText:(id)a3 font:(id)a4 color:(id)a5 lineSpacing:(double)a6 addLearnMore:(BOOL)a7
{
  v7 = a7;
  v15 = a3;
  v12 = a4;
  v13 = a5;
  if ([v15 length])
  {
    v14 = [(ICLearnMoreTextView *)self attributedString:v15 withColor:v13 font:v12];
    [(ICLearnMoreTextView *)self setAttributedText:v14 font:v12 lineSpacing:v7 addLearnMore:a6];
  }

  else
  {
    [(ICLearnMoreTextView *)self resetTextView];
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:v7];
}

- (void)setAttributedText:(id)a3 addLearnMore:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  if ([v17 length])
  {
    v6 = [v17 attributesAtIndex:0 effectiveRange:0];
    v7 = [v6 mutableCopy];

    if (v4)
    {
      v8 = [MEMORY[0x1E69DC888] ICLearnMoreLinkColor];
      if (!v8)
      {
        v8 = [(ICLearnMoreTextView *)self tintColor];
      }

      v9 = __ICLocalizedFrameworkString_impl(@" Learn more…", @" Learn more…", 0, 1);
      v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:v7];
      v11 = [v10 length];
      [v10 addAttribute:@"ICLearnMoreTag" value:MEMORY[0x1E695E118] range:{0, v11}];
      [v10 addAttribute:*MEMORY[0x1E69DB650] value:v8 range:{0, objc_msgSend(v10, "length")}];
      v12 = [v17 mutableCopy];
      [v12 appendAttributedString:v10];
      v13 = [v12 copy];

      v14 = [(ICLearnMoreTextView *)self tapGestureRecognizer];

      if (!v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGesture_];
        [(ICLearnMoreTextView *)self setTapGestureRecognizer:v15];

        v16 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
        [(ICLearnMoreTextView *)self addGestureRecognizer:v16];
      }

      v17 = v13;
    }
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:v4];
  [(ICLearnMoreTextView *)self setAttributedText:v17];
}

- (void)setAttributedText:(id)a3 font:(id)a4 lineSpacing:(double)a5 addLearnMore:(BOOL)a6
{
  v6 = a6;
  v21 = a3;
  v10 = a4;
  [(ICLearnMoreTextView *)self resetTextView];
  if ([v21 length])
  {
    v11 = [v21 mutableCopy];
    if (v6)
    {
      v12 = [MEMORY[0x1E69DC888] ICLearnMoreLinkColor];
      v13 = __ICLocalizedFrameworkString_impl(@" Learn more…", @" Learn more…", 0, 1);
      v14 = [(ICLearnMoreTextView *)self attributedString:v13 withColor:v12 font:v10];
      v15 = [v14 mutableCopy];

      v16 = [v15 length];
      [v15 addAttribute:@"ICLearnMoreTag" value:MEMORY[0x1E695E118] range:{0, v16}];
      [v11 appendAttributedString:v15];
    }

    v17 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v17 setAlignment:1];
    [v17 setLineSpacing:a5];
    [v11 addAttribute:*MEMORY[0x1E69DB688] value:v17 range:{0, objc_msgSend(v11, "length")}];
    [(ICLearnMoreTextView *)self setAttributedText:v11];
    if (v6)
    {
      v18 = [(ICLearnMoreTextView *)self tapGestureRecognizer];

      if (!v18)
      {
        v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGesture_];
        [(ICLearnMoreTextView *)self setTapGestureRecognizer:v19];

        v20 = [(ICLearnMoreTextView *)self tapGestureRecognizer];
        [(ICLearnMoreTextView *)self addGestureRecognizer:v20];
      }
    }
  }

  [(ICLearnMoreTextView *)self setIsShowingLearnMore:v6];
}

- (void)tapGesture:(id)a3
{
  v4 = a3;
  v5 = [(ICLearnMoreTextView *)self layoutManager];
  [v4 locationInView:self];
  v7 = v6;
  v9 = v8;

  [(ICLearnMoreTextView *)self textContainerInset];
  v11 = v7 - v10;
  [(ICLearnMoreTextView *)self textContainerInset];
  v13 = v9 - v12;
  v14 = [(ICLearnMoreTextView *)self textContainer];
  v15 = [v5 characterIndexForPoint:v14 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v11, v13}];

  v16 = [(ICLearnMoreTextView *)self textStorage];
  v17 = [v16 length];

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
  v3 = [(ICLearnMoreTextView *)self helpTopic];

  if (!v3)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.helpTopic) != nil)" functionName:"-[ICLearnMoreTextView didTapLearnMore]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.helpTopic"}];
  }

  v4 = [(ICLearnMoreTextView *)self parentViewController];
  v5 = [v4 view];
  v6 = [v5 window];

  if (!v6)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((self.parentViewController.view.window) != nil)" functionName:"-[ICLearnMoreTextView didTapLearnMore]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.parentViewController.view.window"}];
  }

  v8 = [(ICLearnMoreTextView *)self helpTopic];
  v7 = [(ICLearnMoreTextView *)self parentViewController];
  [ICHelp presentWithTopic:v8 presentingViewController:v7];
}

- (id)attributedString:(id)a3 withColor:(id)a4 font:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v10 = a3;
  v11 = [v9 dictionary];
  v12 = v11;
  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69DB648]];
  }

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB650]];
  }

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = &stru_1F4F94F00;
  }

  v15 = [v13 initWithString:v14 attributes:v12];

  return v15;
}

- (void)sizeToFitWidthUsingHeightConstraint:(id)a3
{
  v6 = a3;
  [(ICLearnMoreTextView *)self frame];
  [(ICLearnMoreTextView *)self sizeThatFits:v4, 3.40282347e38];
  [v6 setConstant:v5];
}

- (BOOL)accessibilityActivate
{
  v3 = [(ICLearnMoreTextView *)self isShowingLearnMore];
  if (v3)
  {
    [(ICLearnMoreTextView *)self didTapLearnMore];
  }

  return v3;
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
  v3 = [(ICLearnMoreTextView *)self accessibilityUserDefinedHint];
  if (![v3 length] && -[ICLearnMoreTextView isShowingLearnMore](self, "isShowingLearnMore"))
  {
    v4 = __ICLocalizedFrameworkString_impl(@"Double tap to learn more.", @"Double tap to learn more.", 0, 1);

    v3 = v4;
  }

  return v3;
}

- (void)updateForAccessibilityDarkerSystemColors
{
  v3 = __ICLocalizedFrameworkString_impl(@" Learn more…", @" Learn more…", 0, 1);
  v4 = [(ICLearnMoreTextView *)self text];
  v5 = [v4 rangeOfString:v3];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(ICLearnMoreTextView *)self attributedText];
    v7 = [v6 mutableCopy];

    v12 = 0;
    v13 = 0;
    v8 = [v7 attributesAtIndex:v5 effectiveRange:&v12];
    v9 = [v8 mutableCopy];

    v10 = [MEMORY[0x1E69DC888] ICLearnMoreLinkColor];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69DB650]];
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