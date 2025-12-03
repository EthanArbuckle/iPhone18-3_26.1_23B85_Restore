@interface HRBulletedIndentedLabel
+ (id)_bodyFontTextStyleEmbedded:(BOOL)embedded;
- (HRBulletedIndentedLabel)initWithText:(id)text isEmbedded:(BOOL)embedded;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateLeadingDetailAttributedTextSize;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HRBulletedIndentedLabel

- (HRBulletedIndentedLabel)initWithText:(id)text isEmbedded:(BOOL)embedded
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = HRBulletedIndentedLabel;
  v8 = [(HRBulletedIndentedLabel *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, text);
    v9->_isEmbedded = embedded;
    [(HRBulletedIndentedLabel *)v9 _setUpUI];
    [(HRBulletedIndentedLabel *)v9 _setUpConstraints];
  }

  return v9;
}

- (void)setText:(id)text
{
  objc_storeStrong(&self->_text, text);

  [(HRBulletedIndentedLabel *)self _updateLeadingDetailAttributedTextSize];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), -[HRBulletedIndentedLabel traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v8 = changeCopy, (v7 & 1) == 0))
  {
    [(HRBulletedIndentedLabel *)self _updateLeadingDetailAttributedTextSize];
    [(HRBulletedIndentedLabel *)self setNeedsUpdateConstraints];
    v8 = changeCopy;
  }
}

- (void)_setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRBulletedIndentedLabel *)self setLabel:v3];

  label = [(HRBulletedIndentedLabel *)self label];
  [label setAdjustsFontForContentSizeCategory:1];

  label2 = [(HRBulletedIndentedLabel *)self label];
  [label2 setTranslatesAutoresizingMaskIntoConstraints:0];

  label3 = [(HRBulletedIndentedLabel *)self label];
  [label3 setNumberOfLines:0];

  if (!self->_isEmbedded)
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    label4 = [(HRBulletedIndentedLabel *)self label];
    [label4 setTextColor:secondaryLabelColor];
  }

  label5 = [(HRBulletedIndentedLabel *)self label];
  [(HRBulletedIndentedLabel *)self addSubview:label5];

  [(HRBulletedIndentedLabel *)self _updateLeadingDetailAttributedTextSize];
}

- (void)_setUpConstraints
{
  label = [(HRBulletedIndentedLabel *)self label];
  [label hk_alignConstraintsWithView:self];
}

- (void)_updateLeadingDetailAttributedTextSize
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _bodyFontTextStyleEmbedded:self->_isEmbedded];
  v5 = [v3 preferredFontForTextStyle:v4];
  label = [(HRBulletedIndentedLabel *)self label];
  [label setFont:v5];

  v7 = MEMORY[0x277CCAB48];
  text = [(HRBulletedIndentedLabel *)self text];
  v8 = [objc_opt_class() _bodyFontTextStyleEmbedded:self->_isEmbedded];
  v9 = [v7 hrui_bulletedString:text textStyle:v8];
  label2 = [(HRBulletedIndentedLabel *)self label];
  [label2 setAttributedText:v9];
}

- (id)firstBaselineAnchor
{
  label = [(HRBulletedIndentedLabel *)self label];
  firstBaselineAnchor = [label firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (id)lastBaselineAnchor
{
  label = [(HRBulletedIndentedLabel *)self label];
  lastBaselineAnchor = [label lastBaselineAnchor];

  return lastBaselineAnchor;
}

+ (id)_bodyFontTextStyleEmbedded:(BOOL)embedded
{
  v3 = MEMORY[0x277D76918];
  if (!embedded)
  {
    v3 = MEMORY[0x277D76A20];
  }

  return *v3;
}

@end