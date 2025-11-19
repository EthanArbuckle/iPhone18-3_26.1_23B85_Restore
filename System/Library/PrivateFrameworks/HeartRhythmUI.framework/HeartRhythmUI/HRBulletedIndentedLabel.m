@interface HRBulletedIndentedLabel
+ (id)_bodyFontTextStyleEmbedded:(BOOL)a3;
- (HRBulletedIndentedLabel)initWithText:(id)a3 isEmbedded:(BOOL)a4;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateLeadingDetailAttributedTextSize;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HRBulletedIndentedLabel

- (HRBulletedIndentedLabel)initWithText:(id)a3 isEmbedded:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HRBulletedIndentedLabel;
  v8 = [(HRBulletedIndentedLabel *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, a3);
    v9->_isEmbedded = a4;
    [(HRBulletedIndentedLabel *)v9 _setUpUI];
    [(HRBulletedIndentedLabel *)v9 _setUpConstraints];
  }

  return v9;
}

- (void)setText:(id)a3
{
  objc_storeStrong(&self->_text, a3);

  [(HRBulletedIndentedLabel *)self _updateLeadingDetailAttributedTextSize];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9 = a3;
  if (!v9 || ([v9 preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), -[HRBulletedIndentedLabel traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v8 = v9, (v7 & 1) == 0))
  {
    [(HRBulletedIndentedLabel *)self _updateLeadingDetailAttributedTextSize];
    [(HRBulletedIndentedLabel *)self setNeedsUpdateConstraints];
    v8 = v9;
  }
}

- (void)_setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(HRBulletedIndentedLabel *)self setLabel:v3];

  v4 = [(HRBulletedIndentedLabel *)self label];
  [v4 setAdjustsFontForContentSizeCategory:1];

  v5 = [(HRBulletedIndentedLabel *)self label];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HRBulletedIndentedLabel *)self label];
  [v6 setNumberOfLines:0];

  if (!self->_isEmbedded)
  {
    v7 = [MEMORY[0x277D75348] secondaryLabelColor];
    v8 = [(HRBulletedIndentedLabel *)self label];
    [v8 setTextColor:v7];
  }

  v9 = [(HRBulletedIndentedLabel *)self label];
  [(HRBulletedIndentedLabel *)self addSubview:v9];

  [(HRBulletedIndentedLabel *)self _updateLeadingDetailAttributedTextSize];
}

- (void)_setUpConstraints
{
  v3 = [(HRBulletedIndentedLabel *)self label];
  [v3 hk_alignConstraintsWithView:self];
}

- (void)_updateLeadingDetailAttributedTextSize
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _bodyFontTextStyleEmbedded:self->_isEmbedded];
  v5 = [v3 preferredFontForTextStyle:v4];
  v6 = [(HRBulletedIndentedLabel *)self label];
  [v6 setFont:v5];

  v7 = MEMORY[0x277CCAB48];
  v11 = [(HRBulletedIndentedLabel *)self text];
  v8 = [objc_opt_class() _bodyFontTextStyleEmbedded:self->_isEmbedded];
  v9 = [v7 hrui_bulletedString:v11 textStyle:v8];
  v10 = [(HRBulletedIndentedLabel *)self label];
  [v10 setAttributedText:v9];
}

- (id)firstBaselineAnchor
{
  v2 = [(HRBulletedIndentedLabel *)self label];
  v3 = [v2 firstBaselineAnchor];

  return v3;
}

- (id)lastBaselineAnchor
{
  v2 = [(HRBulletedIndentedLabel *)self label];
  v3 = [v2 lastBaselineAnchor];

  return v3;
}

+ (id)_bodyFontTextStyleEmbedded:(BOOL)a3
{
  v3 = MEMORY[0x277D76918];
  if (!a3)
  {
    v3 = MEMORY[0x277D76A20];
  }

  return *v3;
}

@end