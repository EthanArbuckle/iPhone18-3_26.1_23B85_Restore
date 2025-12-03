@interface HKTitledBuddyHeaderView
- (HKTitledBuddyHeaderView)initWithTopInset:(double)inset linkButtonTitle:(id)title;
- (HKTitledBuddyHeaderViewDelegate)delegate;
- (double)bottomPadding;
- (id)_attributedBodyTextWithString:(id)string alignment:(int64_t)alignment;
- (void)_linkButtonTapped:(id)tapped;
- (void)_updateBodyTextViewConstraints;
- (void)_updateForCurrentSizeCategory;
- (void)deactivateDefaultTitleLabelBaselineConstraint;
- (void)layoutSubviews;
- (void)setBodyText:(id)text;
- (void)setBodyText:(id)text alignment:(int64_t)alignment;
- (void)setBodyTextAlignment:(int64_t)alignment;
- (void)setUseSolariumDesign:(BOOL)design;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKTitledBuddyHeaderView

- (HKTitledBuddyHeaderView)initWithTopInset:(double)inset linkButtonTitle:(id)title
{
  titleCopy = title;
  v76.receiver = self;
  v76.super_class = HKTitledBuddyHeaderView;
  v7 = [(HKTitledBuddyHeaderView *)&v76 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(HKTitledBuddyHeaderView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v9) = 1148846080;
    [(HKTitledBuddyHeaderView *)v8 setContentCompressionResistancePriority:1 forAxis:v9];
    bodyText = v8->_bodyText;
    v8->_bodyText = 0;

    v8->_bodyTextAlignment = 1;
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(UILabel *)v11 setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v11 setNumberOfLines:0];
    [(UILabel *)v11 setTextAlignment:1];
    LODWORD(v12) = 1057803469;
    [(UILabel *)v11 _setHyphenationFactor:v12];
    [(HKTitledBuddyHeaderView *)v8 addSubview:v11];
    v13 = objc_alloc_init(MEMORY[0x1E69DD168]);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v13 setBackgroundColor:clearColor];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v13 setTextColor:labelColor];

    [(UITextView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v13 setScrollEnabled:0];
    [(UITextView *)v13 setEditable:0];
    [(UITextView *)v13 _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v13 setDataDetectorTypes:2];
    [(HKTitledBuddyHeaderView *)v8 addSubview:v13];
    if (titleCopy)
    {
      v16 = MEMORY[0x1E69DC738];
      v17 = HKHealthKeyColor();
      v18 = [v16 hk_buttonTintedWithColor:v17 title:titleCopy target:v8 action:sel__linkButtonTapped_];

      [(HKTitledBuddyHeaderView *)v8 addSubview:v18];
    }

    else
    {
      v18 = 0;
    }

    firstBaselineAnchor = [(UILabel *)v11 firstBaselineAnchor];
    topAnchor = [(HKTitledBuddyHeaderView *)v8 topAnchor];
    v21 = [firstBaselineAnchor constraintGreaterThanOrEqualToAnchor:topAnchor constant:inset];
    titleLabelBaselineConstraint = v8->_titleLabelBaselineConstraint;
    v8->_titleLabelBaselineConstraint = v21;

    [(NSLayoutConstraint *)v8->_titleLabelBaselineConstraint setActive:1];
    firstBaselineAnchor2 = [(UITextView *)v13 firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v11 lastBaselineAnchor];
    v25 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:0.0];
    bodyFirstBaselineConstraint = v8->_bodyFirstBaselineConstraint;
    v8->_bodyFirstBaselineConstraint = v25;

    [(NSLayoutConstraint *)v8->_bodyFirstBaselineConstraint setActive:1];
    if (v18)
    {
      widthAnchor = [(UIButton *)v18 widthAnchor];
      v28 = [widthAnchor constraintEqualToConstant:288.0];
      [v28 setActive:1];

      centerXAnchor = [(UIButton *)v18 centerXAnchor];
      centerXAnchor2 = [(HKTitledBuddyHeaderView *)v8 centerXAnchor];
      v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v31 setActive:1];

      lastBaselineAnchor2 = [(UITextView *)v13 lastBaselineAnchor];
      firstBaselineAnchor3 = [(UIButton *)v18 firstBaselineAnchor];
      v34 = [lastBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:0.0];
      bodyLastBaselineToLinkConstraint = v8->_bodyLastBaselineToLinkConstraint;
      v8->_bodyLastBaselineToLinkConstraint = v34;

      [(NSLayoutConstraint *)v8->_bodyLastBaselineToLinkConstraint setActive:1];
      lastBaselineAnchor3 = [(UIButton *)v18 lastBaselineAnchor];
      v37 = &OBJC_IVAR___HKTitledBuddyHeaderView__linkButtonLastBaselineToBottomConstraint;
    }

    else
    {
      lastBaselineAnchor4 = [(UITextView *)v13 lastBaselineAnchor];
      bottomAnchor = [(HKTitledBuddyHeaderView *)v8 bottomAnchor];
      v40 = [lastBaselineAnchor4 constraintEqualToAnchor:bottomAnchor constant:0.0];
      bodyBottomConstraint = v8->_bodyBottomConstraint;
      v8->_bodyBottomConstraint = v40;

      lastBaselineAnchor3 = [(UILabel *)v11 lastBaselineAnchor];
      v37 = &OBJC_IVAR___HKTitledBuddyHeaderView__titleBottomConstraint;
    }

    bottomAnchor2 = [(HKTitledBuddyHeaderView *)v8 bottomAnchor];
    v43 = [lastBaselineAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v44 = *v37;
    v45 = *(&v8->super.super.super.isa + v44);
    *(&v8->super.super.super.isa + v44) = v43;

    [*(&v8->super.super.super.isa + v44) setActive:1];
    [(UIView *)v8 hk_onboardingDirectionalEdgeInsets];
    v47 = v46;
    v49 = v48;
    leadingAnchor = [(UILabel *)v11 leadingAnchor];
    leadingAnchor2 = [(HKTitledBuddyHeaderView *)v8 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v47];
    titleLeadingConstraint = v8->_titleLeadingConstraint;
    v8->_titleLeadingConstraint = v52;

    [(NSLayoutConstraint *)v8->_titleLeadingConstraint setActive:1];
    trailingAnchor = [(UILabel *)v11 trailingAnchor];
    trailingAnchor2 = [(HKTitledBuddyHeaderView *)v8 trailingAnchor];
    v56 = -v49;
    v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v56];
    titleTrailingConstraint = v8->_titleTrailingConstraint;
    v8->_titleTrailingConstraint = v57;

    [(NSLayoutConstraint *)v8->_titleTrailingConstraint setActive:1];
    leadingAnchor3 = [(UITextView *)v13 leadingAnchor];
    leadingAnchor4 = [(HKTitledBuddyHeaderView *)v8 leadingAnchor];
    v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v47];
    bodyLeadingConstraint = v8->_bodyLeadingConstraint;
    v8->_bodyLeadingConstraint = v61;

    [(NSLayoutConstraint *)v8->_bodyLeadingConstraint setActive:1];
    trailingAnchor3 = [(UITextView *)v13 trailingAnchor];
    trailingAnchor4 = [(HKTitledBuddyHeaderView *)v8 trailingAnchor];
    v65 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v56];
    bodyTrailingConstraint = v8->_bodyTrailingConstraint;
    v8->_bodyTrailingConstraint = v65;

    [(NSLayoutConstraint *)v8->_bodyTrailingConstraint setActive:1];
    heightAnchor = [(UITextView *)v13 heightAnchor];
    v68 = [heightAnchor constraintEqualToConstant:0.0];
    bodyZeroHeightConstraint = v8->_bodyZeroHeightConstraint;
    v8->_bodyZeroHeightConstraint = v68;

    [(NSLayoutConstraint *)v8->_bodyZeroHeightConstraint setActive:1];
    titleLabel = v8->_titleLabel;
    v8->_titleLabel = v11;
    v71 = v11;

    bodyTextView = v8->_bodyTextView;
    v8->_bodyTextView = v13;
    v73 = v13;

    optionalLinkButton = v8->_optionalLinkButton;
    v8->_optionalLinkButton = v18;

    [(HKTitledBuddyHeaderView *)v8 _updateForCurrentSizeCategory];
  }

  return v8;
}

- (void)setUseSolariumDesign:(BOOL)design
{
  self->_useSolariumDesign = design;
  if (design)
  {
    [(UILabel *)self->_titleLabel setTextAlignment:4];
    v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:2];
    [(UILabel *)self->_titleLabel setFont:v4];

    textContainer = [(UITextView *)self->_bodyTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];
  }
}

- (void)_updateForCurrentSizeCategory
{
  v3 = *MEMORY[0x1E69DDDC0];
  if (self->_useSolariumDesign)
  {
    v4 = *MEMORY[0x1E69DDDC0];
  }

  else
  {
    v4 = *MEMORY[0x1E69DDDB8];
  }

  v17 = v4;
  if ([MEMORY[0x1E69DCEB0] hk_currentDeviceHas4InchScreen])
  {
    v5 = v3;

    v6 = v5;
  }

  else
  {
    v6 = v17;
  }

  v7 = MEMORY[0x1E69DB878];
  v18 = v6;
  v8 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:? addingSymbolicTraits:? options:?];
  v9 = [v7 fontWithDescriptor:v8 size:0.0];
  titleLabel = [(HKTitledBuddyHeaderView *)self titleLabel];
  [titleLabel setFont:v9];

  v11 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  titleLabel2 = [(UIButton *)self->_optionalLinkButton titleLabel];
  [titleLabel2 setFont:v11];

  [v11 _scaledValueForValue:32.0];
  [(NSLayoutConstraint *)self->_bodyFirstBaselineConstraint setConstant:?];
  if (self->_optionalLinkButton)
  {
    [v11 _scaledValueForValue:30.0];
    [(NSLayoutConstraint *)self->_bodyLastBaselineToLinkConstraint setConstant:-v13];
  }

  [(HKTitledBuddyHeaderView *)self bottomPadding];
  v15 = -v14;
  [(NSLayoutConstraint *)self->_linkButtonLastBaselineToBottomConstraint setConstant:-v14];
  [(NSLayoutConstraint *)self->_bodyBottomConstraint setConstant:v15];
  [(NSLayoutConstraint *)self->_titleBottomConstraint setConstant:v15];
  bodyText = [(HKTitledBuddyHeaderView *)self bodyText];
  [(HKTitledBuddyHeaderView *)self setBodyText:bodyText];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = HKTitledBuddyHeaderView;
  [(HKTitledBuddyHeaderView *)&v8 layoutSubviews];
  [(UIView *)self hk_onboardingDirectionalEdgeInsets];
  v4 = v3;
  v6 = v5;
  [(NSLayoutConstraint *)self->_bodyLeadingConstraint setConstant:v3];
  v7 = -v6;
  [(NSLayoutConstraint *)self->_bodyTrailingConstraint setConstant:v7];
  [(NSLayoutConstraint *)self->_titleLeadingConstraint setConstant:v4];
  [(NSLayoutConstraint *)self->_bodyTrailingConstraint setConstant:v7];
}

- (void)_updateBodyTextViewConstraints
{
  v3 = [(NSString *)self->_bodyText length];
  if (v3)
  {
    bodyZeroHeightConstraint = self->_bodyZeroHeightConstraint;
    v5 = 0;
  }

  else
  {
    [(UITextView *)self->_bodyTextView setText:0];
    [(UITextView *)self->_bodyTextView setAttributedText:0];
    bodyZeroHeightConstraint = self->_bodyZeroHeightConstraint;
    v5 = 1;
  }

  [(NSLayoutConstraint *)bodyZeroHeightConstraint setActive:v5];
  if (self->_titleBottomConstraint)
  {
    v6 = v3 == 0;
    v7 = v3 == 0;
    v8 = !v6;
    [(NSLayoutConstraint *)self->_bodyBottomConstraint setActive:v8];
    titleBottomConstraint = self->_titleBottomConstraint;

    [(NSLayoutConstraint *)titleBottomConstraint setActive:v7];
  }
}

- (double)bottomPadding
{
  v2 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (void)setBodyText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_bodyText isEqualToString:?])
  {
    objc_storeStrong(&self->_bodyText, text);
    if ([textCopy length])
    {
      v5 = [(HKTitledBuddyHeaderView *)self _attributedBodyTextWithString:textCopy alignment:self->_bodyTextAlignment];
      [(UITextView *)self->_bodyTextView setAttributedText:v5];
    }

    [(HKTitledBuddyHeaderView *)self _updateBodyTextViewConstraints];
  }
}

- (void)setBodyTextAlignment:(int64_t)alignment
{
  if (self->_bodyTextAlignment != alignment)
  {
    self->_bodyTextAlignment = alignment;
    if ([(NSString *)self->_bodyText length])
    {
      v5 = [(HKTitledBuddyHeaderView *)self _attributedBodyTextWithString:self->_bodyText alignment:alignment];
      [(UITextView *)self->_bodyTextView setAttributedText:v5];
    }
  }
}

- (void)setBodyText:(id)text alignment:(int64_t)alignment
{
  textCopy = text;
  objc_storeStrong(&self->_bodyText, text);
  self->_bodyTextAlignment = alignment;
  if ([(NSString *)self->_bodyText length])
  {
    v7 = [(HKTitledBuddyHeaderView *)self _attributedBodyTextWithString:textCopy alignment:alignment];
    [(UITextView *)self->_bodyTextView setAttributedText:v7];
  }

  [(HKTitledBuddyHeaderView *)self _updateBodyTextViewConstraints];
}

- (void)_linkButtonTapped:(id)tapped
{
  delegate = [(HKTitledBuddyHeaderView *)self delegate];
  [delegate titledBuddyHeaderViewDidTapLinkButton:self];
}

- (void)deactivateDefaultTitleLabelBaselineConstraint
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD8];
  v4[0] = self->_titleLabelBaselineConstraint;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 deactivateConstraints:v3];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKTitledBuddyHeaderView;
  [(HKTitledBuddyHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKTitledBuddyHeaderView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKTitledBuddyHeaderView *)self _updateForCurrentSizeCategory];
    }
  }
}

- (id)_attributedBodyTextWithString:(id)string alignment:(int64_t)alignment
{
  v26[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DB878];
  v7 = MEMORY[0x1E69DDCF8];
  if (self->_useSolariumDesign)
  {
    v7 = MEMORY[0x1E69DDDC0];
  }

  v8 = *v7;
  stringCopy = string;
  v10 = [v6 hk_preferredFontForTextStyle:v8];
  [v10 _scaledValueForValue:22.0];
  v12 = v11;
  [v10 _scaledValueForValue:32.0];
  v14 = v13 - v12;
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v16 = [defaultParagraphStyle mutableCopy];

  [v16 setMinimumLineHeight:v12];
  [v16 setParagraphSpacing:v14];
  [v16 setParagraphSpacingBefore:0.0];
  [v16 setAlignment:alignment];
  v17 = *MEMORY[0x1E69DB688];
  v25[0] = *MEMORY[0x1E69DB648];
  v25[1] = v17;
  v26[0] = v10;
  v26[1] = v16;
  v25[2] = *MEMORY[0x1E69DB650];
  if (self->_useSolariumDesign)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v18 = ;
  v26[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:stringCopy attributes:v19];
  delegate = [(HKTitledBuddyHeaderView *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    delegate2 = [(HKTitledBuddyHeaderView *)self delegate];
    [delegate2 updateBodyTextAttributesWithMutableString:v20];
  }

  return v20;
}

- (HKTitledBuddyHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end