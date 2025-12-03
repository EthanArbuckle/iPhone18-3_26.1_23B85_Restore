@interface DKNotableUserDataCardPrimaryCell
- (DKNotableUserDataCardPrimaryCell)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)setExpanded:(BOOL)expanded;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DKNotableUserDataCardPrimaryCell

- (DKNotableUserDataCardPrimaryCell)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  v88[15] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  subtitleCopy = subtitle;
  iconCopy = icon;
  v87.receiver = self;
  v87.super_class = DKNotableUserDataCardPrimaryCell;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(DKNotableUserDataCardPrimaryCell *)&v87 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:iconCopy];
    iconView = v15->_iconView;
    v15->_iconView = v16;

    [(UIView *)v15->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v15->_iconView setContentMode:1];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    titleLabel = v15->_titleLabel;
    v15->_titleLabel = v18;

    [(UILabel *)v15->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DKNotableUserDataCardPrimaryCell *)v15 _titleFont];
    v20 = v84 = iconCopy;
    [(UILabel *)v15->_titleLabel setFont:v20];

    [(UILabel *)v15->_titleLabel setText:titleCopy];
    [(UILabel *)v15->_titleLabel setNumberOfLines:0];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    subtitleLabel = v15->_subtitleLabel;
    v15->_subtitleLabel = v21;

    [(UILabel *)v15->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v86 = titleCopy;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v15->_subtitleLabel setTextColor:secondaryLabelColor];

    _subtitleFont = [(DKNotableUserDataCardPrimaryCell *)v15 _subtitleFont];
    [(UILabel *)v15->_subtitleLabel setFont:_subtitleFont];

    [(UILabel *)v15->_subtitleLabel setText:subtitleCopy];
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

    secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
    v32 = [secondaryLabelColor2 colorWithAlphaComponent:0.3];
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
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v15->_separatorView setBackgroundColor:separatorColor];

    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_iconView];
    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_labelContainer];
    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_chevronImageView];
    [(DKNotableUserDataCardPrimaryCell *)v15 addSubview:v15->_separatorView];
    widthAnchor = [(UIView *)v15->_iconView widthAnchor];
    v82 = [widthAnchor constraintEqualToConstant:40.0];
    v88[0] = v82;
    heightAnchor = [(UIView *)v15->_iconView heightAnchor];
    v80 = [heightAnchor constraintEqualToConstant:40.0];
    v88[1] = v80;
    leadingAnchor = [(UIView *)v15->_iconView leadingAnchor];
    layoutMarginsGuide = [(DKNotableUserDataCardPrimaryCell *)v15 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v88[2] = v76;
    centerYAnchor = [(UIView *)v15->_iconView centerYAnchor];
    centerYAnchor2 = [(DKNotableUserDataCardPrimaryCell *)v15 centerYAnchor];
    v73 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v88[3] = v73;
    leadingAnchor3 = [(UIStackView *)v15->_labelContainer leadingAnchor];
    trailingAnchor = [(UIView *)v15->_iconView trailingAnchor];
    v70 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:14.0];
    v88[4] = v70;
    trailingAnchor2 = [(UIStackView *)v15->_labelContainer trailingAnchor];
    leadingAnchor4 = [(UIImageView *)v15->_chevronImageView leadingAnchor];
    v67 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
    v88[5] = v67;
    centerYAnchor3 = [(UIStackView *)v15->_labelContainer centerYAnchor];
    centerYAnchor4 = [(DKNotableUserDataCardPrimaryCell *)v15 centerYAnchor];
    v64 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v88[6] = v64;
    topAnchor = [(UIStackView *)v15->_labelContainer topAnchor];
    topAnchor2 = [(DKNotableUserDataCardPrimaryCell *)v15 topAnchor];
    v61 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v88[7] = v61;
    bottomAnchor = [(DKNotableUserDataCardPrimaryCell *)v15 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v15->_labelContainer bottomAnchor];
    v58 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v88[8] = v58;
    centerYAnchor5 = [(UIImageView *)v15->_chevronImageView centerYAnchor];
    centerYAnchor6 = [(DKNotableUserDataCardPrimaryCell *)v15 centerYAnchor];
    v55 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v88[9] = v55;
    trailingAnchor3 = [(UIImageView *)v15->_chevronImageView trailingAnchor];
    layoutMarginsGuide2 = [(DKNotableUserDataCardPrimaryCell *)v15 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v88[10] = v51;
    heightAnchor2 = [(UIView *)v15->_separatorView heightAnchor];
    v49 = [heightAnchor2 constraintEqualToConstant:1.0];
    v88[11] = v49;
    leadingAnchor5 = [(UIView *)v15->_separatorView leadingAnchor];
    leadingAnchor6 = [(UIStackView *)v15->_labelContainer leadingAnchor];
    v38 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v88[12] = v38;
    trailingAnchor5 = [(UIView *)v15->_separatorView trailingAnchor];
    trailingAnchor6 = [(DKNotableUserDataCardPrimaryCell *)v15 trailingAnchor];
    [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v41 = v85 = subtitleCopy;
    v88[13] = v41;
    bottomAnchor3 = [(UIView *)v15->_separatorView bottomAnchor];
    bottomAnchor4 = [(DKNotableUserDataCardPrimaryCell *)v15 bottomAnchor];
    v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v88[14] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:15];
    [(DKNotableUserDataCardPrimaryCell *)v15 addConstraints:v45];

    iconCopy = v84;
    subtitleCopy = v85;

    titleCopy = v86;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  self->_expanded = expanded;
  v5 = [DKCardChevron imageForExpandedCard:[(DKNotableUserDataCardPrimaryCell *)self isExpanded]];
  chevronImageView = [(DKNotableUserDataCardPrimaryCell *)self chevronImageView];
  [chevronImageView setImage:v5];

  separatorView = [(DKNotableUserDataCardPrimaryCell *)self separatorView];
  [separatorView setHidden:!expandedCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = DKNotableUserDataCardPrimaryCell;
  [(DKNotableUserDataCardPrimaryCell *)&v8 traitCollectionDidChange:change];
  _titleFont = [(DKNotableUserDataCardPrimaryCell *)self _titleFont];
  titleLabel = [(DKNotableUserDataCardPrimaryCell *)self titleLabel];
  [titleLabel setFont:_titleFont];

  _subtitleFont = [(DKNotableUserDataCardPrimaryCell *)self _subtitleFont];
  subtitleLabel = [(DKNotableUserDataCardPrimaryCell *)self subtitleLabel];
  [subtitleLabel setFont:_subtitleFont];
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