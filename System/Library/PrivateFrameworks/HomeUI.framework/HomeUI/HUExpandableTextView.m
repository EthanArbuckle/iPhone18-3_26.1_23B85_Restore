@interface HUExpandableTextView
- (CGSize)intrinsicContentSize;
- (HUExpandableTextView)initWithFrame:(CGRect)a3;
- (HUExpandableTextViewDelegate)delegate;
- (NSAttributedString)attributedText;
- (NSString)text;
- (double)heightForWidth:(double)a3;
- (void)_resetMoreButtonLayoutConstraints;
- (void)_updateLanguageDirection;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setMoreButton:(id)a3;
- (void)setNumberOfLines:(unint64_t)a3;
- (void)setStringGenerator:(id)a3;
- (void)setText:(id)a3;
- (void)updateConstraints;
@end

@implementation HUExpandableTextView

- (HUExpandableTextView)initWithFrame:(CGRect)a3
{
  v31.receiver = self;
  v31.super_class = HUExpandableTextView;
  v3 = [(HUExpandableTextView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(UITextView *)v4->_textView textContainer];
    [v8 setLineBreakMode:4];

    v9 = [(UITextView *)v4->_textView textContainer];
    [v9 setLineFragmentPadding:0.0];

    v10 = *MEMORY[0x277D768C8];
    v11 = *(MEMORY[0x277D768C8] + 8);
    v12 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
    [(UITextView *)v4->_textView setTextContainerInset:*MEMORY[0x277D768C8], v11, v12, v13];
    [(UITextView *)v4->_textView setContentInset:v10, v11, v12, v13];
    v14 = [MEMORY[0x277D75348] clearColor];
    [(UITextView *)v4->_textView setBackgroundColor:v14];

    [(UITextView *)v4->_textView setDataDetectorTypes:7];
    [(UITextView *)v4->_textView setTextAlignment:4];
    [(UITextView *)v4->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [(UITextView *)v4->_textView setContentCompressionResistancePriority:1 forAxis:v15];
    LODWORD(v16) = 1132068864;
    [(UITextView *)v4->_textView setContentHuggingPriority:1 forAxis:v16];
    [(HUExpandableTextView *)v4 addSubview:v4->_textView];
    v17 = objc_opt_new();
    v18 = [(UITextView *)v4->_textView topAnchor];
    v19 = [(HUExpandableTextView *)v4 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v17 addObject:v20];

    v21 = [(UITextView *)v4->_textView bottomAnchor];
    v22 = [(HUExpandableTextView *)v4 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v17 addObject:v23];

    v24 = [(UITextView *)v4->_textView leadingAnchor];
    v25 = [(HUExpandableTextView *)v4 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v17 addObject:v26];

    v27 = [(UITextView *)v4->_textView trailingAnchor];
    v28 = [(HUExpandableTextView *)v4 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v17 addObject:v29];

    [MEMORY[0x277CCAAD0] activateConstraints:v17];
  }

  return v4;
}

- (void)updateConstraints
{
  v3 = [(HUExpandableTextView *)self moreButtonLayoutConstraints];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(UIButton *)self->_moreButton frame];
    [(UIButton *)self->_moreButton setFrame:?];
    v5 = [(UIButton *)self->_moreButton widthAnchor];
    [(UIButton *)self->_moreButton frame];
    v7 = [v5 constraintEqualToConstant:v6];
    [v4 addObject:v7];

    v8 = [(HUExpandableTextView *)self languageDirection];
    moreButton = self->_moreButton;
    if (v8 == 1)
    {
      v10 = [(UIButton *)moreButton leftAnchor];
      [(HUExpandableTextView *)self rightAnchor];
    }

    else
    {
      v10 = [(UIButton *)moreButton rightAnchor];
      [(HUExpandableTextView *)self leftAnchor];
    }
    v11 = ;
    [(UIButton *)self->_moreButton frame];
    v13 = [v10 constraintEqualToAnchor:v11 constant:-v12];
    [v4 addObject:v13];

    v14 = [(UIButton *)self->_moreButton firstBaselineAnchor];
    v15 = [(HUExpandableTextView *)self textView];
    v16 = [v15 lastBaselineAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
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
  v3 = [(HUExpandableTextView *)self moreButton];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUExpandableTextView *)self isExpanded];

    if (!v5)
    {
      v6 = [(HUExpandableTextView *)self textView];
      v7 = [v6 textContainer];
      [v7 setMaximumNumberOfLines:0];

      v8 = [(HUExpandableTextView *)self textView];
      [(HUExpandableTextView *)self bounds];
      [v8 sizeThatFits:{v9, 3.40282347e38}];
      v11 = v10;

      v12 = [(HUExpandableTextView *)self numberOfLines];
      v13 = [(HUExpandableTextView *)self textView];
      v14 = [v13 textContainer];
      [v14 setMaximumNumberOfLines:v12];

      v15 = [(HUExpandableTextView *)self textView];
      [(HUExpandableTextView *)self bounds];
      [v15 sizeThatFits:{v16, 3.40282347e38}];
      v18 = v17;

      if (![(HUExpandableTextView *)self alwaysShowMoreButtonUnlessExpanded])
      {
        v19 = v18;
        v20 = v11;
        if (vabdd_f64(ceilf(v20), ceilf(v19)) < 2.22044605e-16)
        {
          v21 = 1;
          [(HUExpandableTextView *)self setFitsWithinLineLimit:1];
          v22 = 0;
LABEL_9:
          v23 = [(HUExpandableTextView *)self textView];
          v24 = [v23 textContainer];
          [v24 setMaximumNumberOfLines:v22];

          v25 = [(HUExpandableTextView *)self moreButton];
          [v25 setHidden:v21];

          return;
        }
      }

      if ([(HUExpandableTextView *)self alwaysShowMoreButtonUnlessExpanded]|| [(HUExpandableTextView *)self fitsWithinLineLimit])
      {
        [(HUExpandableTextView *)self setFitsWithinLineLimit:0];
        v22 = [(HUExpandableTextView *)self numberOfLines];
        v21 = 0;
        goto LABEL_9;
      }
    }
  }
}

- (void)_resetMoreButtonLayoutConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUExpandableTextView *)self moreButtonLayoutConstraints];
  [v3 deactivateConstraints:v4];

  [(HUExpandableTextView *)self setMoreButtonLayoutConstraints:0];

  [(HUExpandableTextView *)self setNeedsUpdateConstraints];
}

- (void)setMoreButton:(id)a3
{
  v5 = a3;
  moreButton = self->_moreButton;
  if (moreButton != v5)
  {
    v7 = v5;
    [(UIButton *)moreButton removeTarget:self action:sel_moreButtonTapped_ forControlEvents:64];
    [(UIButton *)self->_moreButton removeFromSuperview];
    objc_storeStrong(&self->_moreButton, a3);
    [(UIButton *)self->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUExpandableTextView *)self addSubview:self->_moreButton];
    [(UIButton *)self->_moreButton addTarget:self action:sel_moreButtonTapped_ forControlEvents:64];
    [(HUExpandableTextView *)self setExpanded:0];
    [(HUExpandableTextView *)self _resetMoreButtonLayoutConstraints];
    v5 = v7;
  }
}

- (void)setExpanded:(BOOL)a3
{
  expanded = self->_expanded;
  self->_expanded = a3;
  if (a3)
  {
    v5 = [(HUExpandableTextView *)self textView];
    v6 = [v5 textContainer];
    [v6 setMaximumNumberOfLines:0];

    v7 = [(HUExpandableTextView *)self moreButton];
    [v7 setHidden:1];

    if (!expanded)
    {
      v8 = [(HUExpandableTextView *)self delegate];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(HUExpandableTextView *)self delegate];
        [v10 expandableTextViewDidExpand:self];
LABEL_8:
      }
    }
  }

  else
  {
    v11 = [(HUExpandableTextView *)self numberOfLines];
    v12 = [(HUExpandableTextView *)self textView];
    v13 = [v12 textContainer];
    [v13 setMaximumNumberOfLines:v11];

    v14 = [(HUExpandableTextView *)self moreButton];
    [v14 setHidden:0];

    if (expanded)
    {
      v15 = [(HUExpandableTextView *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v10 = [(HUExpandableTextView *)self delegate];
        [v10 expandableTextViewDidCollapse:self];
        goto LABEL_8;
      }
    }
  }

  [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
}

- (void)_updateLanguageDirection
{
  v3 = [(HUExpandableTextView *)self textView];
  v4 = [v3 attributedText];

  if (v4)
  {
    v5 = [(HUExpandableTextView *)self textView];
    v6 = [v5 text];
    v7 = [(HUExpandableTextView *)self textView];
    v8 = [v7 text];
    v16.length = [v8 length];
    v16.location = 0;
    v9 = CFStringTokenizerCopyBestStringLanguage(v6, v16);

    -[HUExpandableTextView setLanguageDirection:](self, "setLanguageDirection:", [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v9]);
  }

  else
  {
    [(HUExpandableTextView *)self setLanguageDirection:1];
  }

  objc_opt_class();
  v10 = [(HUExpandableTextView *)self moreButton];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(HUExpandableTextView *)self languageDirection]== 2;
  v14 = [(HUExpandableTextView *)self textView];
  [v14 setTextAlignment:2 * v13];

  [v12 setShouldFadeRightToLeft:v13];

  [(HUExpandableTextView *)self _resetMoreButtonLayoutConstraints];
}

- (void)setText:(id)a3
{
  v12 = a3;
  v4 = [(HUExpandableTextView *)self textView];
  v5 = [v4 text];
  v6 = [v12 isEqualToString:v5];

  v7 = v12;
  if ((v6 & 1) == 0)
  {
    if (v12)
    {
      v8 = objc_alloc(MEMORY[0x277CCA898]);
      v4 = [(HUExpandableTextView *)self textAttributes];
      v9 = [v8 initWithString:v12 attributes:v4];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(HUExpandableTextView *)self textView];
    [v10 setAttributedText:v9];

    if (v12)
    {
    }

    stringGenerator = self->_stringGenerator;
    self->_stringGenerator = 0;

    [(HUExpandableTextView *)self _updateLanguageDirection];
    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
    v7 = v12;
  }
}

- (NSString)text
{
  v2 = [(HUExpandableTextView *)self textView];
  v3 = [v2 text];

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v12 = a3;
  v4 = [v12 string];
  v5 = [(HUExpandableTextView *)self textView];
  v6 = [v5 text];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [v12 mutableCopy];
    v9 = [(HUExpandableTextView *)self textAttributes];
    [v8 addAttributes:v9 range:{0, objc_msgSend(v8, "length")}];

    v10 = [(HUExpandableTextView *)self textView];
    [v10 setAttributedText:v8];

    stringGenerator = self->_stringGenerator;
    self->_stringGenerator = 0;

    [(HUExpandableTextView *)self _updateLanguageDirection];
    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
  }
}

- (NSAttributedString)attributedText
{
  v2 = [(HUExpandableTextView *)self textView];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setStringGenerator:(id)a3
{
  v3 = a3;
  v7 = a3;
  if (([v7 isEqual:self->_stringGenerator] & 1) == 0)
  {
    objc_storeStrong(&self->_stringGenerator, v3);
    if (v7)
    {
      v3 = [(HUExpandableTextView *)self textAttributes];
      v5 = [v7 stringWithAttributes:v3];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(HUExpandableTextView *)self textView];
    [v6 setAttributedText:v5];

    if (v7)
    {
    }

    [(HUExpandableTextView *)self _updateLanguageDirection];
    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setNumberOfLines:(unint64_t)a3
{
  self->_numberOfLines = a3;
  if (![(HUExpandableTextView *)self isExpanded])
  {
    v5 = [(HUExpandableTextView *)self textView];
    v6 = [v5 textContainer];
    [v6 setMaximumNumberOfLines:a3];

    [(HUExpandableTextView *)self invalidateIntrinsicContentSize];
  }
}

- (double)heightForWidth:(double)a3
{
  v4 = [(HUExpandableTextView *)self textView];
  [v4 sizeThatFits:{a3, 3.40282347e38}];
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