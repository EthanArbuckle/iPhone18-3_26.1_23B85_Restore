@interface HUExpandableTextView
- (CGSize)intrinsicContentSize;
- (HUExpandableTextView)initWithFrame:(CGRect)frame;
- (HUExpandableTextViewDelegate)delegate;
- (NSAttributedString)attributedText;
- (NSString)text;
- (double)heightForWidth:(double)width;
- (void)_resetMoreButtonLayoutConstraints;
- (void)_updateLanguageDirection;
- (void)layoutSubviews;
- (void)setAttributedText:(id)text;
- (void)setExpanded:(BOOL)expanded;
- (void)setMoreButton:(id)button;
- (void)setNumberOfLines:(unint64_t)lines;
- (void)setStringGenerator:(id)generator;
- (void)setText:(id)text;
- (void)updateConstraints;
@end

@implementation HUExpandableTextView

- (HUExpandableTextView)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = HUExpandableTextView;
  v3 = [(HUExpandableTextView *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_numberOfLines = 2;
    v3->_expanded = 1;
    v3->_fitsWithinLineLimit = 0;
    v3->_languageDirection = 1;
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v4->_textView;
    v4->_textView = v6;

    [(UITextView *)v4->_textView setScrollEnabled:0];
    [(UITextView *)v4->_textView setEditable:0];
    textContainer = [(UITextView *)v4->_textView textContainer];
    [textContainer setLineBreakMode:4];

    textContainer2 = [(UITextView *)v4->_textView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    [(UITextView *)v4->_textView setTextContainerInset:*MEMORY[0x277D768C8], v11, v12, v13];
    [(UITextView *)v4->_textView setContentInset:v10, v11, v12, v13];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:clearColor];

    [(UITextView *)v4->_textView setDataDetectorTypes:7];
    [(UITextView *)v4->_textView setTextAlignment:4];
    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [(UITextView *)v4->_textView setContentCompressionResistancePriority:1 forAxis:v15];
    LODWORD(v16) = 1132068864;
    [(UITextView *)v4->_textView setContentHuggingPriority:1 forAxis:v16];
    [(HUExpandableTextView *)v4 addSubview:v4->_textView];
    v17 = objc_opt_new();
    topAnchor = [(UITextView *)v4->_textView topAnchor];
    topAnchor2 = [(HUExpandableTextView *)v4 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v17 addObject:v20];

    bottomAnchor = [(UITextView *)v4->_textView bottomAnchor];
    bottomAnchor2 = [(HUExpandableTextView *)v4 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v17 addObject:v23];

    leadingAnchor = [(UITextView *)v4->_textView leadingAnchor];
    leadingAnchor2 = [(HUExpandableTextView *)v4 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v17 addObject:v26];

    trailingAnchor = [(UITextView *)v4->_textView trailingAnchor];
    trailingAnchor2 = [(HUExpandableTextView *)v4 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v17 addObject:v29];

    [MEMORY[0x277CCAAD0] activateConstraints:v17];
  }

  return v4;
}

- (void)updateConstraints
{
  moreButtonLayoutConstraints = [(HUExpandableTextView *)self moreButtonLayoutConstraints];

  if (!moreButtonLayoutConstraints)
  {
    v4 = objc_opt_new();
    [(UIButton *)self->_moreButton frame];
    [(UIButton *)self->_moreButton setFrame:?];
    widthAnchor = [(UIButton *)self->_moreButton widthAnchor];
    [(UIButton *)self->_moreButton frame];
    v7 = [widthAnchor constraintEqualToConstant:v6];
    [v4 addObject:v7];

    languageDirection = [(HUExpandableTextView *)self languageDirection];
    moreButton = self->_moreButton;
    if (languageDirection == 1)
    {
      leftAnchor = [(UIButton *)moreButton leftAnchor];
      [(HUExpandableTextView *)self rightAnchor];
    }

    else
    {
      leftAnchor = [(UIButton *)moreButton rightAnchor];
      [(HUExpandableTextView *)self leftAnchor];
    }
    v11 = ;
    [(UIButton *)self->_moreButton frame];
    v13 = [leftAnchor constraintEqualToAnchor:v11 constant:-v12];
    [v4 addObject:v13];

    firstBaselineAnchor = [(UIButton *)self->_moreButton firstBaselineAnchor];
    textView = [(HUExpandableTextView *)self textView];
    lastBaselineAnchor = [textView lastBaselineAnchor];
    v17 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor];
    [v4 addObject:v17];

    [MEMORY[0x277CCAAD0] activateConstraints:v4];
    [(HUExpandableTextView *)self setMoreButtonLayoutConstraints:v4];
  }

  v18.receiver = self;
  v18.super_class = HUExpandableTextView;
  [(HUExpandableTextView *)&v18 updateConstraints];
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = HUExpandableTextView;
  [(HUExpandableTextView *)&v26 layoutSubviews];
  moreButton = [(HUExpandableTextView *)self moreButton];
  if (moreButton)
  {
    v4 = moreButton;
    isExpanded = [(HUExpandableTextView *)self isExpanded];

    if (!isExpanded)
    {
      textView = [(HUExpandableTextView *)self textView];
      textContainer = [textView textContainer];
      [textContainer setMaximumNumberOfLines:0];

      textView2 = [(HUExpandableTextView *)self textView];
      [(HUExpandableTextView *)self bounds];
      [textView2 sizeThatFits:{v9, 3.40282347e38}];
      v11 = v10;

      numberOfLines = [(HUExpandableTextView *)self numberOfLines];
      textView3 = [(HUExpandableTextView *)self textView];
      textContainer2 = [textView3 textContainer];
      [textContainer2 setMaximumNumberOfLines:numberOfLines];

      textView4 = [(HUExpandableTextView *)self textView];
      [(HUExpandableTextView *)self bounds];
      [textView4 sizeThatFits:{v16, 3.40282347e38}];
      v18 = v17;

      if (![(HUExpandableTextView *)self alwaysShowMoreButtonUnlessExpanded])
      {
        v19 = v18;
        v20 = v11;
        if (vabdd_f64(ceilf(v20), ceilf(v19)) < 2.22044605e-16)
        {
          v21 = 1;
          [(HUExpandableTextView *)self setFitsWithinLineLimit:1];
          numberOfLines2 = 0;
LABEL_9:
          textView5 = [(HUExpandableTextView *)self textView];
          textContainer3 = [textView5 textContainer];
          [textContainer3 setMaximumNumberOfLines:numberOfLines2];

          moreButton2 = [(HUExpandableTextView *)self moreButton];
          [moreButton2 setHidden:v21];

          return;
        }
      }

      if ([(HUExpandableTextView *)self alwaysShowMoreButtonUnlessExpanded]|| [(HUExpandableTextView *)self fitsWithinLineLimit])
      {
        [(HUExpandableTextView *)self setFitsWithinLineLimit:0];
        numberOfLines2 = [(HUExpandableTextView *)self numberOfLines];
        v21 = 0;
        goto LABEL_9;
      }
    }
  }
}

- (void)_resetMoreButtonLayoutConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  moreButtonLayoutConstraints = [(HUExpandableTextView *)self moreButtonLayoutConstraints];
  [v3 deactivateConstraints:moreButtonLayoutConstraints];

  [(HUExpandableTextView *)self setMoreButtonLayoutConstraints:0];

  [(HUExpandableTextView *)self setNeedsUpdateConstraints];
}

- (void)setMoreButton:(id)button
{
  buttonCopy = button;
  moreButton = self->_moreButton;
  if (moreButton != buttonCopy)
  {
    v7 = buttonCopy;
    [(UIButton *)moreButton removeTarget:self action:sel_moreButtonTapped_ forControlEvents:64];
    [(UIButton *)self->_moreButton removeFromSuperview];
    objc_storeStrong(&self->_moreButton, button);
    [(UIButton *)self->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUExpandableTextView *)self addSubview:self->_moreButton];
    [(UIButton *)self->_moreButton addTarget:self action:sel_moreButtonTapped_ forControlEvents:64];
    [(HUExpandableTextView *)self setExpanded:0];
    [(HUExpandableTextView *)self _resetMoreButtonLayoutConstraints];
    buttonCopy = v7;
  }
}

- (void)setExpanded:(BOOL)expanded
{
  expanded = self->_expanded;
  self->_expanded = expanded;
  if (expanded)
  {
    textView = [(HUExpandableTextView *)self textView];
    textContainer = [textView textContainer];
    [textContainer setMaximumNumberOfLines:0];

    moreButton = [(HUExpandableTextView *)self moreButton];
    [moreButton setHidden:1];

    if (!expanded)
    {
      delegate = [(HUExpandableTextView *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate2 = [(HUExpandableTextView *)self delegate];
        [delegate2 expandableTextViewDidExpand:self];
LABEL_8:
      }
    }
  }

  else
  {
    numberOfLines = [(HUExpandableTextView *)self numberOfLines];
    textView2 = [(HUExpandableTextView *)self textView];
    textContainer2 = [textView2 textContainer];
    [textContainer2 setMaximumNumberOfLines:numberOfLines];

    moreButton2 = [(HUExpandableTextView *)self moreButton];
    [moreButton2 setHidden:0];

    if (expanded)
    {
      delegate3 = [(HUExpandableTextView *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate2 = [(HUExpandableTextView *)self delegate];
        [delegate2 expandableTextViewDidCollapse:self];
        goto LABEL_8;
      }
    }
  }

  [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
}

- (void)_updateLanguageDirection
{
  textView = [(HUExpandableTextView *)self textView];
  attributedText = [textView attributedText];

  if (attributedText)
  {
    textView2 = [(HUExpandableTextView *)self textView];
    text = [textView2 text];
    textView3 = [(HUExpandableTextView *)self textView];
    text2 = [textView3 text];
    v16.length = [text2 length];
    v16.location = 0;
    v9 = CFStringTokenizerCopyBestStringLanguage(text, v16);

    -[HUExpandableTextView setLanguageDirection:](self, "setLanguageDirection:", [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v9]);
  }

  else
  {
    [(HUExpandableTextView *)self setLanguageDirection:1];
  }

  objc_opt_class();
  moreButton = [(HUExpandableTextView *)self moreButton];
  if (objc_opt_isKindOfClass())
  {
    v11 = moreButton;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(HUExpandableTextView *)self languageDirection]== 2;
  textView4 = [(HUExpandableTextView *)self textView];
  [textView4 setTextAlignment:2 * v13];

  [v12 setShouldFadeRightToLeft:v13];

  [(HUExpandableTextView *)self _resetMoreButtonLayoutConstraints];
}

- (void)setText:(id)text
{
  textCopy = text;
  textView = [(HUExpandableTextView *)self textView];
  text = [textView text];
  v6 = [textCopy isEqualToString:text];

  v7 = textCopy;
  if ((v6 & 1) == 0)
  {
    if (textCopy)
    {
      v8 = objc_alloc(MEMORY[0x277CCA898]);
      textView = [(HUExpandableTextView *)self textAttributes];
      v9 = [v8 initWithString:textCopy attributes:textView];
    }

    else
    {
      v9 = 0;
    }

    textView2 = [(HUExpandableTextView *)self textView];
    [textView2 setAttributedText:v9];

    if (textCopy)
    {
    }

    stringGenerator = self->_stringGenerator;
    self->_stringGenerator = 0;

    [(HUExpandableTextView *)self _updateLanguageDirection];
    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
    v7 = textCopy;
  }
}

- (NSString)text
{
  textView = [(HUExpandableTextView *)self textView];
  text = [textView text];

  return text;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  string = [textCopy string];
  textView = [(HUExpandableTextView *)self textView];
  text = [textView text];
  v7 = [string isEqualToString:text];

  if ((v7 & 1) == 0)
  {
    v8 = [textCopy mutableCopy];
    textAttributes = [(HUExpandableTextView *)self textAttributes];
    [v8 addAttributes:textAttributes range:{0, objc_msgSend(v8, "length")}];

    textView2 = [(HUExpandableTextView *)self textView];
    [textView2 setAttributedText:v8];

    stringGenerator = self->_stringGenerator;
    self->_stringGenerator = 0;

    [(HUExpandableTextView *)self _updateLanguageDirection];
    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
  }
}

- (NSAttributedString)attributedText
{
  textView = [(HUExpandableTextView *)self textView];
  attributedText = [textView attributedText];

  return attributedText;
}

- (void)setStringGenerator:(id)generator
{
  generatorCopy = generator;
  generatorCopy2 = generator;
  if (([generatorCopy2 isEqual:self->_stringGenerator] & 1) == 0)
  {
    objc_storeStrong(&self->_stringGenerator, generatorCopy);
    if (generatorCopy2)
    {
      generatorCopy = [(HUExpandableTextView *)self textAttributes];
      v5 = [generatorCopy2 stringWithAttributes:generatorCopy];
    }

    else
    {
      v5 = 0;
    }

    textView = [(HUExpandableTextView *)self textView];
    [textView setAttributedText:v5];

    if (generatorCopy2)
    {
    }

    [(HUExpandableTextView *)self _updateLanguageDirection];
    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setNumberOfLines:(unint64_t)lines
{
  self->_numberOfLines = lines;
  if (![(HUExpandableTextView *)self isExpanded])
  {
    textView = [(HUExpandableTextView *)self textView];
    textContainer = [textView textContainer];
    [textContainer setMaximumNumberOfLines:lines];

    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
  }
}

- (double)heightForWidth:(double)width
{
  textView = [(HUExpandableTextView *)self textView];
  [textView sizeThatFits:{width, 3.40282347e38}];
  v6 = v5;
  v7 = ceilf(v6);

  return v7;
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x277D77260];
  [(HUExpandableTextView *)self bounds];
  [(HUExpandableTextView *)self heightForWidth:v4];
  v6 = v5;
  v7 = v3;
  result.height = v6;
  result.width = v7;
  return result;
}

- (HUExpandableTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end