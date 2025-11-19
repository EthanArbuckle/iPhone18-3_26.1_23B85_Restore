@interface HKTitledBuddyHeaderView
- (HKTitledBuddyHeaderView)initWithTopInset:(double)a3 linkButtonTitle:(id)a4;
- (HKTitledBuddyHeaderViewDelegate)delegate;
- (double)bottomPadding;
- (id)_attributedBodyTextWithString:(id)a3 alignment:(int64_t)a4;
- (void)_linkButtonTapped:(id)a3;
- (void)_updateBodyTextViewConstraints;
- (void)_updateForCurrentSizeCategory;
- (void)deactivateDefaultTitleLabelBaselineConstraint;
- (void)layoutSubviews;
- (void)setBodyText:(id)a3;
- (void)setBodyText:(id)a3 alignment:(int64_t)a4;
- (void)setBodyTextAlignment:(int64_t)a3;
- (void)setUseSolariumDesign:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKTitledBuddyHeaderView

- (HKTitledBuddyHeaderView)initWithTopInset:(double)a3 linkButtonTitle:(id)a4
{
  v6 = a4;
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
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v13 setBackgroundColor:v14];

    v15 = [MEMORY[0x1E69DC888] labelColor];
    [(UITextView *)v13 setTextColor:v15];

    [(UITextView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v13 setScrollEnabled:0];
    [(UITextView *)v13 setEditable:0];
    [(UITextView *)v13 _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v13 setDataDetectorTypes:2];
    [(HKTitledBuddyHeaderView *)v8 addSubview:v13];
    if (v6)
    {
      v16 = MEMORY[0x1E69DC738];
      v17 = HKHealthKeyColor();
      v18 = [v16 hk_buttonTintedWithColor:v17 title:v6 target:v8 action:sel__linkButtonTapped_];

      [(HKTitledBuddyHeaderView *)v8 addSubview:v18];
    }

    else
    {
      v18 = 0;
    }

    v19 = [(UILabel *)v11 firstBaselineAnchor];
    v20 = [(HKTitledBuddyHeaderView *)v8 topAnchor];
    v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20 constant:a3];
    titleLabelBaselineConstraint = v8->_titleLabelBaselineConstraint;
    v8->_titleLabelBaselineConstraint = v21;

    [(NSLayoutConstraint *)v8->_titleLabelBaselineConstraint setActive:1];
    v23 = [(UITextView *)v13 firstBaselineAnchor];
    v24 = [(UILabel *)v11 lastBaselineAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:0.0];
    bodyFirstBaselineConstraint = v8->_bodyFirstBaselineConstraint;
    v8->_bodyFirstBaselineConstraint = v25;

    [(NSLayoutConstraint *)v8->_bodyFirstBaselineConstraint setActive:1];
    if (v18)
    {
      v27 = [(UIButton *)v18 widthAnchor];
      v28 = [v27 constraintEqualToConstant:288.0];
      [v28 setActive:1];

      v29 = [(UIButton *)v18 centerXAnchor];
      v30 = [(HKTitledBuddyHeaderView *)v8 centerXAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [v31 setActive:1];

      v32 = [(UITextView *)v13 lastBaselineAnchor];
      v33 = [(UIButton *)v18 firstBaselineAnchor];
      v34 = [v32 constraintEqualToAnchor:v33 constant:0.0];
      bodyLastBaselineToLinkConstraint = v8->_bodyLastBaselineToLinkConstraint;
      v8->_bodyLastBaselineToLinkConstraint = v34;

      [(NSLayoutConstraint *)v8->_bodyLastBaselineToLinkConstraint setActive:1];
      v36 = [(UIButton *)v18 lastBaselineAnchor];
      v37 = &OBJC_IVAR___HKTitledBuddyHeaderView__linkButtonLastBaselineToBottomConstraint;
    }

    else
    {
      v38 = [(UITextView *)v13 lastBaselineAnchor];
      v39 = [(HKTitledBuddyHeaderView *)v8 bottomAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:0.0];
      bodyBottomConstraint = v8->_bodyBottomConstraint;
      v8->_bodyBottomConstraint = v40;

      v36 = [(UILabel *)v11 lastBaselineAnchor];
      v37 = &OBJC_IVAR___HKTitledBuddyHeaderView__titleBottomConstraint;
    }

    v42 = [(HKTitledBuddyHeaderView *)v8 bottomAnchor];
    v43 = [v36 constraintEqualToAnchor:v42 constant:0.0];
    v44 = *v37;
    v45 = *(&v8->super.super.super.isa + v44);
    *(&v8->super.super.super.isa + v44) = v43;

    [*(&v8->super.super.super.isa + v44) setActive:1];
    [(UIView *)v8 hk_onboardingDirectionalEdgeInsets];
    v47 = v46;
    v49 = v48;
    v50 = [(UILabel *)v11 leadingAnchor];
    v51 = [(HKTitledBuddyHeaderView *)v8 leadingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:v47];
    titleLeadingConstraint = v8->_titleLeadingConstraint;
    v8->_titleLeadingConstraint = v52;

    [(NSLayoutConstraint *)v8->_titleLeadingConstraint setActive:1];
    v54 = [(UILabel *)v11 trailingAnchor];
    v55 = [(HKTitledBuddyHeaderView *)v8 trailingAnchor];
    v56 = -v49;
    v57 = [v54 constraintEqualToAnchor:v55 constant:v56];
    titleTrailingConstraint = v8->_titleTrailingConstraint;
    v8->_titleTrailingConstraint = v57;

    [(NSLayoutConstraint *)v8->_titleTrailingConstraint setActive:1];
    v59 = [(UITextView *)v13 leadingAnchor];
    v60 = [(HKTitledBuddyHeaderView *)v8 leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:v47];
    bodyLeadingConstraint = v8->_bodyLeadingConstraint;
    v8->_bodyLeadingConstraint = v61;

    [(NSLayoutConstraint *)v8->_bodyLeadingConstraint setActive:1];
    v63 = [(UITextView *)v13 trailingAnchor];
    v64 = [(HKTitledBuddyHeaderView *)v8 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:v56];
    bodyTrailingConstraint = v8->_bodyTrailingConstraint;
    v8->_bodyTrailingConstraint = v65;

    [(NSLayoutConstraint *)v8->_bodyTrailingConstraint setActive:1];
    v67 = [(UITextView *)v13 heightAnchor];
    v68 = [v67 constraintEqualToConstant:0.0];
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

- (void)setUseSolariumDesign:(BOOL)a3
{
  self->_useSolariumDesign = a3;
  if (a3)
  {
    [(UILabel *)self->_titleLabel setTextAlignment:4];
    v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:2];
    [(UILabel *)self->_titleLabel setFont:v4];

    v5 = [(UITextView *)self->_bodyTextView textContainer];
    [v5 setLineFragmentPadding:0.0];
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
  v10 = [(HKTitledBuddyHeaderView *)self titleLabel];
  [v10 setFont:v9];

  v11 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v12 = [(UIButton *)self->_optionalLinkButton titleLabel];
  [v12 setFont:v11];

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
  v16 = [(HKTitledBuddyHeaderView *)self bodyText];
  [(HKTitledBuddyHeaderView *)self setBodyText:v16];
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

- (void)setBodyText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_bodyText isEqualToString:?])
  {
    objc_storeStrong(&self->_bodyText, a3);
    if ([v6 length])
    {
      v5 = [(HKTitledBuddyHeaderView *)self _attributedBodyTextWithString:v6 alignment:self->_bodyTextAlignment];
      [(UITextView *)self->_bodyTextView setAttributedText:v5];
    }

    [(HKTitledBuddyHeaderView *)self _updateBodyTextViewConstraints];
  }
}

- (void)setBodyTextAlignment:(int64_t)a3
{
  if (self->_bodyTextAlignment != a3)
  {
    self->_bodyTextAlignment = a3;
    if ([(NSString *)self->_bodyText length])
    {
      v5 = [(HKTitledBuddyHeaderView *)self _attributedBodyTextWithString:self->_bodyText alignment:a3];
      [(UITextView *)self->_bodyTextView setAttributedText:v5];
    }
  }
}

- (void)setBodyText:(id)a3 alignment:(int64_t)a4
{
  v8 = a3;
  objc_storeStrong(&self->_bodyText, a3);
  self->_bodyTextAlignment = a4;
  if ([(NSString *)self->_bodyText length])
  {
    v7 = [(HKTitledBuddyHeaderView *)self _attributedBodyTextWithString:v8 alignment:a4];
    [(UITextView *)self->_bodyTextView setAttributedText:v7];
  }

  [(HKTitledBuddyHeaderView *)self _updateBodyTextViewConstraints];
}

- (void)_linkButtonTapped:(id)a3
{
  v4 = [(HKTitledBuddyHeaderView *)self delegate];
  [v4 titledBuddyHeaderViewDidTapLinkButton:self];
}

- (void)deactivateDefaultTitleLabelBaselineConstraint
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD8];
  v4[0] = self->_titleLabelBaselineConstraint;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 deactivateConstraints:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKTitledBuddyHeaderView;
  [(HKTitledBuddyHeaderView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKTitledBuddyHeaderView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKTitledBuddyHeaderView *)self _updateForCurrentSizeCategory];
    }
  }
}

- (id)_attributedBodyTextWithString:(id)a3 alignment:(int64_t)a4
{
  v26[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DB878];
  v7 = MEMORY[0x1E69DDCF8];
  if (self->_useSolariumDesign)
  {
    v7 = MEMORY[0x1E69DDDC0];
  }

  v8 = *v7;
  v9 = a3;
  v10 = [v6 hk_preferredFontForTextStyle:v8];
  [v10 _scaledValueForValue:22.0];
  v12 = v11;
  [v10 _scaledValueForValue:32.0];
  v14 = v13 - v12;
  v15 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v16 = [v15 mutableCopy];

  [v16 setMinimumLineHeight:v12];
  [v16 setParagraphSpacing:v14];
  [v16 setParagraphSpacingBefore:0.0];
  [v16 setAlignment:a4];
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

  v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:v19];
  v21 = [(HKTitledBuddyHeaderView *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(HKTitledBuddyHeaderView *)self delegate];
    [v23 updateBodyTextAttributesWithMutableString:v20];
  }

  return v20;
}

- (HKTitledBuddyHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end