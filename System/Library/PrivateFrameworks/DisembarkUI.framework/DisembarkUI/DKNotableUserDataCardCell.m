@interface DKNotableUserDataCardCell
- (DKNotableUserDataCardCell)initWithTitle:(id)a3 subtitle:(id)a4 accessoryView:(id)a5;
- (id)_bodyFont;
- (id)_stateFont;
- (id)_titleFont;
- (int64_t)_stateStackViewAxis;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DKNotableUserDataCardCell

- (DKNotableUserDataCardCell)initWithTitle:(id)a3 subtitle:(id)a4 accessoryView:(id)a5
{
  v69[7] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v67.receiver = self;
  v67.super_class = DKNotableUserDataCardCell;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(DKNotableUserDataCardCell *)&v67 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  v16 = v15;
  if (v15)
  {
    v64 = v10;
    objc_storeStrong(&v15->_accessoryView, a5);
    [(UIView *)v16->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v8)
    {
      v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
      titleLabel = v16->_titleLabel;
      v16->_titleLabel = v17;

      [(UILabel *)v16->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = [(DKNotableUserDataCardCell *)v16 _titleFont];
      [(UILabel *)v16->_titleLabel setFont:v19];

      [(UILabel *)v16->_titleLabel setText:v8];
      [(UILabel *)v16->_titleLabel setNumberOfLines:0];
    }

    v66 = v8;
    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    subtitleLabel = v16->_subtitleLabel;
    v16->_subtitleLabel = v20;

    [(UILabel *)v16->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v16->_subtitleLabel setTextColor:v22];

    v23 = [(DKNotableUserDataCardCell *)v16 _bodyFont];
    [(UILabel *)v16->_subtitleLabel setFont:v23];

    v65 = v9;
    [(UILabel *)v16->_subtitleLabel setText:v9];
    [(UILabel *)v16->_subtitleLabel setNumberOfLines:0];
    v24 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v11, v12, v13, v14}];
    labelContainer = v16->_labelContainer;
    v16->_labelContainer = v24;

    [(UIStackView *)v16->_labelContainer setAxis:1];
    [(UIStackView *)v16->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v16->_labelContainer addArrangedSubview:v16->_titleLabel];
    [(UIStackView *)v16->_labelContainer addArrangedSubview:v16->_subtitleLabel];
    [(DKNotableUserDataCardCell *)v16 addSubview:v16->_labelContainer];
    if (v16->_accessoryView)
    {
      [(DKNotableUserDataCardCell *)v16 addSubview:?];
      v54 = [(UIView *)v16->_accessoryView widthAnchor];
      v56 = [v54 constraintEqualToConstant:40.0];
      v69[0] = v56;
      v53 = [(UIView *)v16->_accessoryView heightAnchor];
      v62 = [v53 constraintEqualToConstant:40.0];
      v69[1] = v62;
      v60 = [(UIView *)v16->_accessoryView leadingAnchor];
      v58 = [(DKNotableUserDataCardCell *)v16 leadingAnchor];
      v55 = [v60 constraintEqualToAnchor:v58];
      v69[2] = v55;
      v52 = [(UIView *)v16->_accessoryView topAnchor];
      v51 = [(DKNotableUserDataCardCell *)v16 topAnchor];
      v50 = [v52 constraintEqualToAnchor:v51];
      v69[3] = v50;
      v49 = [(UIStackView *)v16->_labelContainer leadingAnchor];
      v48 = [(UIView *)v16->_accessoryView trailingAnchor];
      v26 = [v49 constraintEqualToAnchor:v48 constant:14.0];
      v69[4] = v26;
      v27 = [(UIStackView *)v16->_labelContainer topAnchor];
      v28 = [(UIView *)v16->_accessoryView topAnchor];
      v29 = [v27 constraintLessThanOrEqualToAnchor:v28];
      v69[5] = v29;
      v30 = [(UIStackView *)v16->_labelContainer bottomAnchor];
      v31 = [(UIView *)v16->_accessoryView bottomAnchor];
      v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];
      v69[6] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:7];
      [(DKNotableUserDataCardCell *)v16 addConstraints:v33];

      v34 = v54;
      v35 = v56;

      v36 = v53;
    }

    else
    {
      v34 = [(UIStackView *)v16->_labelContainer leadingAnchor];
      v35 = [(DKNotableUserDataCardCell *)v16 leadingAnchor];
      v36 = [v34 constraintEqualToAnchor:v35 constant:54.0];
      [(DKNotableUserDataCardCell *)v16 addConstraint:v36];
    }

    v63 = [(UIStackView *)v16->_labelContainer trailingAnchor];
    v61 = [(DKNotableUserDataCardCell *)v16 trailingAnchor];
    v59 = [v63 constraintEqualToAnchor:v61];
    v68[0] = v59;
    v57 = [(UIStackView *)v16->_labelContainer centerYAnchor];
    v37 = [(DKNotableUserDataCardCell *)v16 centerYAnchor];
    v38 = [v57 constraintEqualToAnchor:v37];
    v68[1] = v38;
    v39 = [(UIStackView *)v16->_labelContainer topAnchor];
    v40 = [(DKNotableUserDataCardCell *)v16 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    v68[2] = v41;
    v42 = [(UIStackView *)v16->_labelContainer bottomAnchor];
    v43 = [(DKNotableUserDataCardCell *)v16 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v68[3] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
    [(DKNotableUserDataCardCell *)v16 addConstraints:v45];

    v9 = v65;
    v8 = v66;
    v10 = v64;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = DKNotableUserDataCardCell;
  [(DKNotableUserDataCardCell *)&v8 traitCollectionDidChange:a3];
  v4 = [(DKNotableUserDataCardCell *)self _titleFont];
  v5 = [(DKNotableUserDataCardCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(DKNotableUserDataCardCell *)self _bodyFont];
  v7 = [(DKNotableUserDataCardCell *)self subtitleLabel];
  [v7 setFont:v6];
}

- (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)_stateFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (int64_t)_stateStackViewAxis
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  return IsAccessibilityCategory;
}

@end