@interface HKFooterViewWithLink
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HKFooterViewWithLink)initWithReuseIdentifier:(id)a3 bodyText:(id)a4 linkText:(id)a5 link:(id)a6;
- (HKFooterViewWithLink)initWithReuseIdentifier:(id)a3 fullText:(id)a4 linkRange:(_NSRange)a5 link:(id)a6;
- (HKFooterViewWithLink)initWithReuseIdentifier:(id)a3 markdown:(id)a4;
- (UITextViewDelegate)textViewDelegate;
- (id)_createAttributedMarkdown:(id)a3;
- (id)_createAttributedTextWithFullText:(id)a3 linkRange:(_NSRange)a4 link:(id)a5;
- (id)getTextViewDelegate;
- (void)_setUpFooterTextViewWithBodyText:(id)a3 linkText:(id)a4 link:(id)a5;
- (void)_setUpFooterTextViewWithFullText:(id)a3 linkRange:(_NSRange)a4 link:(id)a5;
- (void)_setUpTextView;
- (void)_setupConstraints;
- (void)setTextViewDelegate:(id)a3;
- (void)updateWithMarkdown:(id)a3;
@end

@implementation HKFooterViewWithLink

- (HKFooterViewWithLink)initWithReuseIdentifier:(id)a3 fullText:(id)a4 linkRange:(_NSRange)a5 link:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HKFooterViewWithLink;
  v13 = [(HKFooterViewWithLink *)&v16 initWithReuseIdentifier:a3];
  v14 = v13;
  if (v13)
  {
    [(HKFooterViewWithLink *)v13 _setUpFooterTextViewWithFullText:v11 linkRange:location link:length, v12];
    [(HKFooterViewWithLink *)v14 _setupConstraints];
  }

  return v14;
}

- (HKFooterViewWithLink)initWithReuseIdentifier:(id)a3 bodyText:(id)a4 linkText:(id)a5 link:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HKFooterViewWithLink;
  v13 = [(HKFooterViewWithLink *)&v16 initWithReuseIdentifier:a3];
  v14 = v13;
  if (v13)
  {
    [(HKFooterViewWithLink *)v13 _setUpFooterTextViewWithBodyText:v10 linkText:v11 link:v12];
    [(HKFooterViewWithLink *)v14 _setupConstraints];
  }

  return v14;
}

- (HKFooterViewWithLink)initWithReuseIdentifier:(id)a3 markdown:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKFooterViewWithLink;
  v7 = [(HKFooterViewWithLink *)&v12 initWithReuseIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    [(HKFooterViewWithLink *)v7 _setUpTextView];
    v9 = [(HKFooterViewWithLink *)v8 _createAttributedMarkdown:v6];
    v10 = [(HKFooterViewWithLink *)v8 footerTextView];
    [v10 setAttributedText:v9];

    [(HKFooterViewWithLink *)v8 _setupConstraints];
  }

  return v8;
}

- (void)updateWithMarkdown:(id)a3
{
  v5 = [(HKFooterViewWithLink *)self _createAttributedMarkdown:a3];
  v4 = [(HKFooterViewWithLink *)self footerTextView];
  [v4 setAttributedText:v5];
}

- (void)_setUpFooterTextViewWithBodyText:(id)a3 linkText:(id)a4 link:(id)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a3;
  v14 = [v8 localizedStringWithFormat:@"%@ %@", v10, a4];
  v11 = [v10 length];
  v12 = [v14 length];
  v13 = [v10 length];

  [(HKFooterViewWithLink *)self _setUpFooterTextViewWithFullText:v14 linkRange:v11 + 1 link:v12 + ~v13, v9];
}

- (void)_setUpTextView
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD168]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKFooterViewWithLink *)self setFooterTextView:v4];

  v5 = [(HKFooterViewWithLink *)self footerTextView];
  [v5 setAdjustsFontForContentSizeCategory:1];

  v6 = [(HKFooterViewWithLink *)self footerTextView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HKFooterViewWithLink *)self footerTextView];
  [v7 setScrollEnabled:0];

  v8 = [(HKFooterViewWithLink *)self footerTextView];
  [v8 setUserInteractionEnabled:1];

  v9 = [(HKFooterViewWithLink *)self footerTextView];
  [v9 setDelegate:self];

  v10 = [(HKFooterViewWithLink *)self footerTextView];
  [v10 setEditable:0];

  v11 = [(HKFooterViewWithLink *)self footerTextView];
  [v11 _setInteractiveTextSelectionDisabled:1];

  v12 = [(HKFooterViewWithLink *)self footerTextView];
  [v12 setDataDetectorTypes:2];

  v13 = [MEMORY[0x1E69DC888] clearColor];
  v14 = [(HKFooterViewWithLink *)self footerTextView];
  [v14 setBackgroundColor:v13];

  v20 = *MEMORY[0x1E69DB650];
  v15 = [MEMORY[0x1E69DC888] hk_appKeyColor];
  v21[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v17 = [(HKFooterViewWithLink *)self footerTextView];
  [v17 setLinkTextAttributes:v16];

  v18 = [(HKFooterViewWithLink *)self contentView];
  v19 = [(HKFooterViewWithLink *)self footerTextView];
  [v18 addSubview:v19];
}

- (void)_setUpFooterTextViewWithFullText:(id)a3 linkRange:(_NSRange)a4 link:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  [(HKFooterViewWithLink *)self _setUpTextView];
  v12 = [(HKFooterViewWithLink *)self _createAttributedTextWithFullText:v10 linkRange:location link:length, v9];

  v11 = [(HKFooterViewWithLink *)self footerTextView];
  [v11 setAttributedText:v12];
}

- (id)_createAttributedMarkdown:(id)a3
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD40];
  v5 = a3;
  v6 = [[v4 alloc] initWithMarkdownString:v5 options:0 baseURL:0 error:0];

  v7 = [(HKFooterViewWithLink *)self defaultContentConfiguration];
  v8 = [v7 textProperties];
  v9 = [v8 color];

  v32 = *MEMORY[0x1E69DB648];
  v10 = v32;
  v11 = *MEMORY[0x1E69DDD28];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v33 = *MEMORY[0x1E69DB650];
  v13 = v33;
  v34[0] = v12;
  v34[1] = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v32 count:2];

  v30[0] = v10;
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  v30[1] = v13;
  v31[0] = v15;
  v16 = [MEMORY[0x1E69DC888] hk_appKeyColor];
  v31[1] = v16;
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

- (id)_createAttributedTextWithFullText:(id)a3 linkRange:(_NSRange)a4 link:(id)a5
{
  length = a4.length;
  location = a4.location;
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = [(HKFooterViewWithLink *)self defaultContentConfiguration];
  v11 = [v10 textProperties];
  v12 = [v11 color];

  v13 = *MEMORY[0x1E69DB648];
  v26[0] = *MEMORY[0x1E69DB648];
  v14 = *MEMORY[0x1E69DDD28];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v16 = *MEMORY[0x1E69DB650];
  v26[1] = *MEMORY[0x1E69DB650];
  v27[0] = v15;
  v27[1] = v12;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:v17];
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24[0] = v13;
    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v14];
    v25[0] = v19;
    v24[1] = v16;
    v20 = [MEMORY[0x1E69DC888] hk_appKeyColor];
    v24[2] = *MEMORY[0x1E69DB670];
    v25[1] = v20;
    v25[2] = v8;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

    [v18 addAttributes:v21 range:{location, length}];
  }

  return v18;
}

- (void)_setupConstraints
{
  v3 = [(HKFooterViewWithLink *)self footerTextView];
  v4 = [v3 firstBaselineAnchor];
  v5 = [(HKFooterViewWithLink *)self contentView];
  v6 = [v5 layoutMarginsGuide];
  v7 = [v6 topAnchor];
  v8 = [v4 constraintEqualToAnchor:v7 constant:12.0];
  [v8 setActive:1];

  v9 = [(HKFooterViewWithLink *)self footerTextView];
  v10 = [v9 leadingAnchor];
  v11 = [(HKFooterViewWithLink *)self contentView];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToSystemSpacingAfterAnchor:v12 multiplier:2.0];
  [v13 setActive:1];

  v14 = [(HKFooterViewWithLink *)self contentView];
  v15 = [v14 trailingAnchor];
  v16 = [(HKFooterViewWithLink *)self footerTextView];
  v17 = [v16 trailingAnchor];
  v18 = [v15 constraintEqualToSystemSpacingAfterAnchor:v17 multiplier:1.0];
  [v18 setActive:1];

  v23 = [(HKFooterViewWithLink *)self contentView];
  v19 = [v23 bottomAnchor];
  v20 = [(HKFooterViewWithLink *)self footerTextView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToSystemSpacingBelowAnchor:v21 multiplier:1.0];
  [v22 setActive:1];
}

- (void)setTextViewDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HKFooterViewWithLink *)self footerTextView];
  [v5 setDelegate:v4];
}

- (id)getTextViewDelegate
{
  v2 = [(HKFooterViewWithLink *)self footerTextView];
  v3 = [v2 delegate];

  return v3;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = [v7 scheme];
  if ([v8 isEqualToString:@"bridge"])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v7 scheme];
    v9 = [v10 isEqualToString:@"prefs"];
  }

  if (!a6 && v9)
  {
    v11 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v11 openSensitiveURL:v7 withOptions:0];
  }

  return v9 ^ 1;
}

- (UITextViewDelegate)textViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textViewDelegate);

  return WeakRetained;
}

@end