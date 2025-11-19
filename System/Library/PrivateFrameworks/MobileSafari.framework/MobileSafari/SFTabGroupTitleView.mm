@interface SFTabGroupTitleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SFTabGroupTitleView)initWithFrame:(CGRect)a3;
- (double)_horizontalPadding;
- (id)_attributedStringWithImageNamed:(id)a3 textStyle:(id)a4 additionalSymbolicTraits:(unsigned int)a5 color:(id)a6 baselineOffset:(double)a7;
- (void)setTabGroup:(id)a3;
- (void)updateTitle;
@end

@implementation SFTabGroupTitleView

- (SFTabGroupTitleView)initWithFrame:(CGRect)a3
{
  v40[7] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = SFTabGroupTitleView;
  v3 = [(SFTabGroupTitleView *)&v39 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(SFTabGroupTitleView *)v3 addSubview:v3->_titleLabel];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v7;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [(UILabel *)v3->_subtitleLabel setFont:v9];

    v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v10];

    LODWORD(v11) = 1132593152;
    [(UILabel *)v3->_subtitleLabel setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1144913920;
    [(UILabel *)v3->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v12];
    [(SFTabGroupTitleView *)v3 addSubview:v3->_subtitleLabel];
    v31 = MEMORY[0x1E696ACD8];
    v38 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v37 = [(SFTabGroupTitleView *)v3 leadingAnchor];
    [(SFTabGroupTitleView *)v3 _horizontalPadding];
    v36 = [v38 constraintEqualToAnchor:v37 constant:?];
    v40[0] = v36;
    v35 = [(UILabel *)v3->_titleLabel widthAnchor];
    v34 = [(SFTabGroupTitleView *)v3 widthAnchor];
    [(SFTabGroupTitleView *)v3 _horizontalPadding];
    v33 = [v35 constraintEqualToAnchor:v34 constant:v13 * -2.0];
    v40[1] = v33;
    v32 = [(UILabel *)v3->_titleLabel topAnchor];
    v30 = [(SFTabGroupTitleView *)v3 topAnchor];
    v29 = [v32 constraintEqualToAnchor:v30];
    v40[2] = v29;
    v28 = [(UILabel *)v3->_subtitleLabel topAnchor];
    v27 = [(UILabel *)v3->_titleLabel bottomAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v40[3] = v26;
    v25 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    v14 = [(SFTabGroupTitleView *)v3 leadingAnchor];
    v15 = [v25 constraintEqualToAnchor:v14];
    v40[4] = v15;
    v16 = [(UILabel *)v3->_subtitleLabel widthAnchor];
    v17 = [(SFTabGroupTitleView *)v3 widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v40[5] = v18;
    v19 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    v20 = [(SFTabGroupTitleView *)v3 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v40[6] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:7];
    [v31 activateConstraints:v22];

    v23 = v3;
  }

  return v3;
}

- (void)setTabGroup:(id)a3
{
  v5 = a3;
  if (self->_tabGroup != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_tabGroup, a3);
    [(SFTabGroupTitleView *)self updateTitle];
    v5 = v6;
  }
}

- (void)updateTitle
{
  v35[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1EFF36230];
  if ([(WBTabGroup *)self->_tabGroup isShared])
  {
    v4 = [(SFTabGroupTitleView *)self _attributedStringWithImageNamed:@"person.2.fill" textStyle:*MEMORY[0x1E69DDD80] additionalSymbolicTraits:0 color:0 baselineOffset:0.0];
    [v3 appendAttributedString:v4];

    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v3 appendAttributedString:v5];
  }

  v6 = objc_alloc(MEMORY[0x1E696AAB0]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(WBTabGroup *)self->_tabGroup displayTitle];
  v9 = [v7 stringWithFormat:@"%@ ", v8];
  v10 = [v6 initWithString:v9];
  [v3 appendAttributedString:v10];

  v11 = *MEMORY[0x1E69DDD08];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v13 = [(SFTabGroupTitleView *)self _attributedStringWithImageNamed:@"chevron.forward" textStyle:v11 additionalSymbolicTraits:2 color:v12 baselineOffset:0.5];
  [v3 appendAttributedString:v13];

  [(UILabel *)self->_titleLabel setAttributedText:v3];
  if ([0 length])
  {
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v11];
    v15 = MEMORY[0x1E69DB878];
    v16 = [v14 fontDescriptorWithSymbolicTraits:{objc_msgSend(v14, "symbolicTraits") | 2}];
    [v14 pointSize];
    v17 = [v15 fontWithDescriptor:v16 size:?];

    v18 = objc_alloc(MEMORY[0x1E696AD40]);
    v19 = _WBSLocalizedString();
    v20 = [v18 initWithString:v19];

    v21 = *MEMORY[0x1E69DB648];
    v35[0] = v17;
    v22 = *MEMORY[0x1E69DB650];
    v34[0] = v21;
    v34[1] = v22;
    v23 = [MEMORY[0x1E69DC888] labelColor];
    v35[1] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v25 = [v20 string];
    v26 = [v25 rangeOfString:@"%@"];
    [v20 setAttributes:v24 range:{v26, v27}];

    v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithFormat:v20 options:0 locale:0, 0];
    v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v28 appendAttributedString:v29];

    v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v31 = MEMORY[0x1E696AAB0];
    v32 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v30];
    v33 = [v31 attributedStringWithAttachment:v32];

    [v28 appendAttributedString:v33];
    [(UILabel *)self->_subtitleLabel setAttributedText:v28];
  }

  else
  {
    [(UILabel *)self->_subtitleLabel setText:&stru_1EFF36230];
  }
}

- (double)_horizontalPadding
{
  v2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 0.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v11.receiver = self;
  v11.super_class = SFTabGroupTitleView;
  [(SFTabGroupTitleView *)&v11 systemLayoutSizeFittingSize:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  [(SFTabGroupTitleView *)self _horizontalPadding];
  v9 = v5 + v8 * 2.0;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)_attributedStringWithImageNamed:(id)a3 textStyle:(id)a4 additionalSymbolicTraits:(unsigned int)a5 color:(id)a6 baselineOffset:(double)a7
{
  v11 = a6;
  v12 = MEMORY[0x1E69DCAB8];
  v13 = a4;
  v14 = [v12 systemImageNamed:a3];
  v15 = MEMORY[0x1E696AAB0];
  v16 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v14];
  v17 = [v15 attributedStringWithAttachment:v16];
  v18 = [v17 mutableCopy];

  v19 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v13];

  v20 = MEMORY[0x1E69DB878];
  v21 = [v19 fontDescriptorWithSymbolicTraits:{objc_msgSend(v19, "symbolicTraits") | a5}];
  [v19 pointSize];
  v22 = [v20 fontWithDescriptor:v21 size:?];

  [v18 addAttribute:*MEMORY[0x1E69DB648] value:v22 range:{0, 1}];
  if (v11)
  {
    [v18 addAttribute:*MEMORY[0x1E69DB650] value:v11 range:{0, 1}];
  }

  if (a7 != 0.0)
  {
    v23 = *MEMORY[0x1E69DB610];
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:a7];
    [v18 addAttribute:v23 value:v24 range:{0, 1}];
  }

  return v18;
}

@end