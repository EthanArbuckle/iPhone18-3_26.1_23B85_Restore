@interface DKNotableUserDataCardPrimaryCell
- (DKNotableUserDataCardPrimaryCell)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)setExpanded:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DKNotableUserDataCardPrimaryCell

- (DKNotableUserDataCardPrimaryCell)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v88[15] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v87.receiver = self;
  v87.super_class = DKNotableUserDataCardPrimaryCell;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(DKNotableUserDataCardPrimaryCell *)&v87 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
    iconView = v15->_iconView;
    v15->_iconView = v16;

    [(UIView *)v15->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v15->_iconView setContentMode:1];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    titleLabel = v15->_titleLabel;
    v15->_titleLabel = v18;

    [(UILabel *)v15->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DKNotableUserDataCardPrimaryCell *)v15 _titleFont];
    v20 = v84 = v10;
    [(UILabel *)v15->_titleLabel setFont:v20];

    [(UILabel *)v15->_titleLabel setText:v8];
    [(UILabel *)v15->_titleLabel setNumberOfLines:0];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    subtitleLabel = v15->_subtitleLabel;
    v15->_subtitleLabel = v21;

    [(UILabel *)v15->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v86 = v8;
    v23 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v15->_subtitleLabel setTextColor:v23];

    v24 = [(DKNotableUserDataCardPrimaryCell *)v15 _subtitleFont];
    [(UILabel *)v15->_subtitleLabel setFont:v24];

    [(UILabel *)v15->_subtitleLabel setText:v9];
    v25 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v11, v12, v13, v14}];
    labelContainer = v15->_labelContainer;
    v15->_labelContainer = v25;

    [(UIStackView *)v15->_labelContainer setAxis:1];
    [(UIStackView *)v15->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v15->_labelContainer addArrangedSubview:v15->_titleLabel];
    [(UIStackView *)v15->_labelContainer addArrangedSubview:v15->_subtitleLabel];
    v27 = objc_alloc(MEMORY[0x277D755E8]);
    v28 = [DKCardChevron imageForExpandedCard:[(DKNotableUserDataCardPrimaryCell *)v15 isExpanded]];
    v29 = [v27 initWithImage:v28];
    chevronImageView = v15->_chevronImageView;
    v15->_chevronImageView = v29;

    v31 = [MEMORY[0x277D75348] secondaryLabelColor];
    v32 = [v31 colorWithAlphaComponent:0.3];
    [(UIImageView *)v15->_chevronImageView setTintColor:v32];

    [(UIImageView *)v15->_chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v15->_chevronImageView setContentMode:1];
    LODWORD(v33) = 1148846080;
    [(UIImageView *)v15->_chevronImageView setContentHuggingPriority:0 forAxis:v33];
    v34 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v11, v12, v13, v14}];
    separatorView = v15->_separatorView;
    v15->_separatorView = v34;

    [(UIView *)v15->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v15->_separatorView setHidden:1];
    v36 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v15->_separatorView setBackgroundColor:v36];

    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_iconView];
    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_labelContainer];
    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_chevronImageView];
    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_separatorView];
    v83 = [(UIView *)v15->_iconView widthAnchor];
    v82 = [v83 constraintEqualToConstant:40.0];
    v88[0] = v82;
    v81 = [(UIView *)v15->_iconView heightAnchor];
    v80 = [v81 constraintEqualToConstant:40.0];
    v88[1] = v80;
    v78 = [(UIView *)v15->_iconView leadingAnchor];
    v79 = [(DKNotableUserDataCardPrimaryCell *)v15 layoutMarginsGuide];
    v77 = [v79 leadingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v88[2] = v76;
    v75 = [(UIView *)v15->_iconView centerYAnchor];
    v74 = [(DKNotableUserDataCardPrimaryCell *)v15 centerYAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v88[3] = v73;
    v72 = [(UIStackView *)v15->_labelContainer leadingAnchor];
    v71 = [(UIView *)v15->_iconView trailingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:14.0];
    v88[4] = v70;
    v69 = [(UIStackView *)v15->_labelContainer trailingAnchor];
    v68 = [(UIImageView *)v15->_chevronImageView leadingAnchor];
    v67 = [v69 constraintEqualToAnchor:v68];
    v88[5] = v67;
    v66 = [(UIStackView *)v15->_labelContainer centerYAnchor];
    v65 = [(DKNotableUserDataCardPrimaryCell *)v15 centerYAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v88[6] = v64;
    v63 = [(UIStackView *)v15->_labelContainer topAnchor];
    v62 = [(DKNotableUserDataCardPrimaryCell *)v15 topAnchor];
    v61 = [v63 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v62 multiplier:1.0];
    v88[7] = v61;
    v60 = [(DKNotableUserDataCardPrimaryCell *)v15 bottomAnchor];
    v59 = [(UIStackView *)v15->_labelContainer bottomAnchor];
    v58 = [v60 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v59 multiplier:1.0];
    v88[8] = v58;
    v57 = [(UIImageView *)v15->_chevronImageView centerYAnchor];
    v56 = [(DKNotableUserDataCardPrimaryCell *)v15 centerYAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v88[9] = v55;
    v53 = [(UIImageView *)v15->_chevronImageView trailingAnchor];
    v54 = [(DKNotableUserDataCardPrimaryCell *)v15 layoutMarginsGuide];
    v52 = [v54 trailingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v88[10] = v51;
    v50 = [(UIView *)v15->_separatorView heightAnchor];
    v49 = [v50 constraintEqualToConstant:1.0];
    v88[11] = v49;
    v48 = [(UIView *)v15->_separatorView leadingAnchor];
    v37 = [(UIStackView *)v15->_labelContainer leadingAnchor];
    v38 = [v48 constraintEqualToAnchor:v37];
    v88[12] = v38;
    v39 = [(UIView *)v15->_separatorView trailingAnchor];
    v40 = [(DKNotableUserDataCardPrimaryCell *)v15 trailingAnchor];
    [v39 constraintEqualToAnchor:v40];
    v41 = v85 = v9;
    v88[13] = v41;
    v42 = [(UIView *)v15->_separatorView bottomAnchor];
    v43 = [(DKNotableUserDataCardPrimaryCell *)v15 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v88[14] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:15];
    [(DKNotableUserDataCardPrimaryCell *)v15 addConstraints:v45];

    v10 = v84;
    v9 = v85;

    v8 = v86;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)setExpanded:(BOOL)a3
{
  v3 = a3;
  self->_expanded = a3;
  v5 = [DKCardChevron imageForExpandedCard:[(DKNotableUserDataCardPrimaryCell *)self isExpanded]];
  v6 = [(DKNotableUserDataCardPrimaryCell *)self chevronImageView];
  [v6 setImage:v5];

  v7 = [(DKNotableUserDataCardPrimaryCell *)self separatorView];
  [v7 setHidden:!v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = DKNotableUserDataCardPrimaryCell;
  [(DKNotableUserDataCardPrimaryCell *)&v8 traitCollectionDidChange:a3];
  v4 = [(DKNotableUserDataCardPrimaryCell *)self _titleFont];
  v5 = [(DKNotableUserDataCardPrimaryCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(DKNotableUserDataCardPrimaryCell *)self _subtitleFont];
  v7 = [(DKNotableUserDataCardPrimaryCell *)self subtitleLabel];
  [v7 setFont:v6];
}

- (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)_subtitleFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

@end