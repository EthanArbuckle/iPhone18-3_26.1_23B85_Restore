@interface HKFooterViewWithLink
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HKFooterViewWithLink)initWithReuseIdentifier:(id)identifier bodyText:(id)text linkText:(id)linkText link:(id)link;
- (HKFooterViewWithLink)initWithReuseIdentifier:(id)identifier fullText:(id)text linkRange:(_NSRange)range link:(id)link;
- (HKFooterViewWithLink)initWithReuseIdentifier:(id)identifier markdown:(id)markdown;
- (UITextViewDelegate)textViewDelegate;
- (id)_createAttributedMarkdown:(id)markdown;
- (id)_createAttributedTextWithFullText:(id)text linkRange:(_NSRange)range link:(id)link;
- (id)getTextViewDelegate;
- (void)_setUpFooterTextViewWithBodyText:(id)text linkText:(id)linkText link:(id)link;
- (void)_setUpFooterTextViewWithFullText:(id)text linkRange:(_NSRange)range link:(id)link;
- (void)_setUpTextView;
- (void)_setupConstraints;
- (void)setTextViewDelegate:(id)delegate;
- (void)updateWithMarkdown:(id)markdown;
@end

@implementation HKFooterViewWithLink

- (HKFooterViewWithLink)initWithReuseIdentifier:(id)identifier fullText:(id)text linkRange:(_NSRange)range link:(id)link
{
  length = range.length;
  location = range.location;
  textCopy = text;
  linkCopy = link;
  v16.receiver = self;
  v16.super_class = HKFooterViewWithLink;
  v13 = [(HKFooterViewWithLink *)&v16 initWithReuseIdentifier:identifier];
  v14 = v13;
  if (v13)
  {
    [(HKFooterViewWithLink *)v13 _setUpFooterTextViewWithFullText:textCopy linkRange:location link:length, linkCopy];
    [(HKFooterViewWithLink *)v14 _setupConstraints];
  }

  return v14;
}

- (HKFooterViewWithLink)initWithReuseIdentifier:(id)identifier bodyText:(id)text linkText:(id)linkText link:(id)link
{
  textCopy = text;
  linkTextCopy = linkText;
  linkCopy = link;
  v16.receiver = self;
  v16.super_class = HKFooterViewWithLink;
  v13 = [(HKFooterViewWithLink *)&v16 initWithReuseIdentifier:identifier];
  v14 = v13;
  if (v13)
  {
    [(HKFooterViewWithLink *)v13 _setUpFooterTextViewWithBodyText:textCopy linkText:linkTextCopy link:linkCopy];
    [(HKFooterViewWithLink *)v14 _setupConstraints];
  }

  return v14;
}

- (HKFooterViewWithLink)initWithReuseIdentifier:(id)identifier markdown:(id)markdown
{
  markdownCopy = markdown;
  v12.receiver = self;
  v12.super_class = HKFooterViewWithLink;
  v7 = [(HKFooterViewWithLink *)&v12 initWithReuseIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [(HKFooterViewWithLink *)v7 _setUpTextView];
    v9 = [(HKFooterViewWithLink *)v8 _createAttributedMarkdown:markdownCopy];
    footerTextView = [(HKFooterViewWithLink *)v8 footerTextView];
    [footerTextView setAttributedText:v9];

    [(HKFooterViewWithLink *)v8 _setupConstraints];
  }

  return v8;
}

- (void)updateWithMarkdown:(id)markdown
{
  v5 = [(HKFooterViewWithLink *)self _createAttributedMarkdown:markdown];
  footerTextView = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView setAttributedText:v5];
}

- (void)_setUpFooterTextViewWithBodyText:(id)text linkText:(id)linkText link:(id)link
{
  v8 = MEMORY[0x1E696AEC0];
  linkCopy = link;
  textCopy = text;
  linkText = [v8 localizedStringWithFormat:@"%@ %@", textCopy, linkText];
  v11 = [textCopy length];
  v12 = [linkText length];
  v13 = [textCopy length];

  [(HKFooterViewWithLink *)self _setUpFooterTextViewWithFullText:linkText linkRange:v11 + 1 link:v12 + ~v13, linkCopy];
}

- (void)_setUpTextView
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKFooterViewWithLink *)self setFooterTextView:v4];

  footerTextView = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView setAdjustsFontForContentSizeCategory:1];

  footerTextView2 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  footerTextView3 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView3 setScrollEnabled:0];

  footerTextView4 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView4 setUserInteractionEnabled:1];

  footerTextView5 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView5 setDelegate:self];

  footerTextView6 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView6 setEditable:0];

  footerTextView7 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView7 _setInteractiveTextSelectionDisabled:1];

  footerTextView8 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView8 setDataDetectorTypes:2];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  footerTextView9 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView9 setBackgroundColor:clearColor];

  v20 = *MEMORY[0x1E69DB650];
  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  v21[0] = hk_appKeyColor;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  footerTextView10 = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView10 setLinkTextAttributes:v16];

  contentView = [(HKFooterViewWithLink *)self contentView];
  footerTextView11 = [(HKFooterViewWithLink *)self footerTextView];
  [contentView addSubview:footerTextView11];
}

- (void)_setUpFooterTextViewWithFullText:(id)text linkRange:(_NSRange)range link:(id)link
{
  length = range.length;
  location = range.location;
  linkCopy = link;
  textCopy = text;
  [(HKFooterViewWithLink *)self _setUpTextView];
  linkCopy = [(HKFooterViewWithLink *)self _createAttributedTextWithFullText:textCopy linkRange:location link:length, linkCopy];

  footerTextView = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView setAttributedText:linkCopy];
}

- (id)_createAttributedMarkdown:(id)markdown
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD40];
  markdownCopy = markdown;
  v6 = [[v4 alloc] initWithMarkdownString:markdownCopy options:0 baseURL:0 error:0];

  defaultContentConfiguration = [(HKFooterViewWithLink *)self defaultContentConfiguration];
  textProperties = [defaultContentConfiguration textProperties];
  color = [textProperties color];

  v32 = *MEMORY[0x1E69DB648];
  v10 = v32;
  v11 = *MEMORY[0x1E69DDD28];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v33 = *MEMORY[0x1E69DB650];
  v13 = v33;
  v34[0] = v12;
  v34[1] = color;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v32 count:2];

  v30[0] = v10;
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  v30[1] = v13;
  v31[0] = v15;
  hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
  v31[1] = hk_appKeyColor;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v18 = *MEMORY[0x1E69DB670];
  v19 = [v6 length];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__HKFooterViewWithLink__createAttributedMarkdown___block_invoke;
  v26[3] = &unk_1E81B7DA0;
  v20 = v6;
  v27 = v20;
  v28 = v17;
  v29 = v14;
  v21 = v14;
  v22 = v17;
  [v20 enumerateAttribute:v18 inRange:0 options:v19 usingBlock:{0, v26}];
  v23 = v29;
  v24 = v20;

  return v20;
}

uint64_t __50__HKFooterViewWithLink__createAttributedMarkdown___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 40;
  if (!a2)
  {
    v4 = 48;
  }

  return [*(a1 + 32) addAttributes:*(a1 + v4) range:{a3, a4}];
}

- (id)_createAttributedTextWithFullText:(id)text linkRange:(_NSRange)range link:(id)link
{
  length = range.length;
  location = range.location;
  v27[2] = *MEMORY[0x1E69E9840];
  linkCopy = link;
  textCopy = text;
  defaultContentConfiguration = [(HKFooterViewWithLink *)self defaultContentConfiguration];
  textProperties = [defaultContentConfiguration textProperties];
  color = [textProperties color];

  v13 = *MEMORY[0x1E69DB648];
  v26[0] = *MEMORY[0x1E69DB648];
  v14 = *MEMORY[0x1E69DDD28];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v16 = *MEMORY[0x1E69DB650];
  v26[1] = *MEMORY[0x1E69DB650];
  v27[0] = v15;
  v27[1] = color;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy attributes:v17];
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24[0] = v13;
    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v14];
    v25[0] = v19;
    v24[1] = v16;
    hk_appKeyColor = [MEMORY[0x1E69DC888] hk_appKeyColor];
    v24[2] = *MEMORY[0x1E69DB670];
    v25[1] = hk_appKeyColor;
    v25[2] = linkCopy;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

    [v18 addAttributes:v21 range:{location, length}];
  }

  return v18;
}

- (void)_setupConstraints
{
  footerTextView = [(HKFooterViewWithLink *)self footerTextView];
  firstBaselineAnchor = [footerTextView firstBaselineAnchor];
  contentView = [(HKFooterViewWithLink *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide topAnchor];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:12.0];
  [v8 setActive:1];

  footerTextView2 = [(HKFooterViewWithLink *)self footerTextView];
  leadingAnchor = [footerTextView2 leadingAnchor];
  contentView2 = [(HKFooterViewWithLink *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:2.0];
  [v13 setActive:1];

  contentView3 = [(HKFooterViewWithLink *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  footerTextView3 = [(HKFooterViewWithLink *)self footerTextView];
  trailingAnchor2 = [footerTextView3 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  [v18 setActive:1];

  contentView4 = [(HKFooterViewWithLink *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  footerTextView4 = [(HKFooterViewWithLink *)self footerTextView];
  bottomAnchor2 = [footerTextView4 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  [v22 setActive:1];
}

- (void)setTextViewDelegate:(id)delegate
{
  delegateCopy = delegate;
  footerTextView = [(HKFooterViewWithLink *)self footerTextView];
  [footerTextView setDelegate:delegateCopy];
}

- (id)getTextViewDelegate
{
  footerTextView = [(HKFooterViewWithLink *)self footerTextView];
  delegate = [footerTextView delegate];

  return delegate;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"bridge"])
  {
    v9 = 1;
  }

  else
  {
    scheme2 = [lCopy scheme];
    v9 = [scheme2 isEqualToString:@"prefs"];
  }

  if (!interaction && v9)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
  }

  return v9 ^ 1;
}

- (UITextViewDelegate)textViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textViewDelegate);

  return WeakRetained;
}

@end