@interface BKUIPeriocularSelectionCell
- (BKUIPeriocularSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)BKUIPeriocularSelectionCellTopBottomPadding;
- (id)_descriptionFont;
- (id)_titleFont;
@end

@implementation BKUIPeriocularSelectionCell

- (double)BKUIPeriocularSelectionCellTopBottomPadding
{
  v2 = MGGetSInt32Answer();
  result = 30.0;
  if (v2 == 30)
  {
    return 28.0;
  }

  return result;
}

- (BKUIPeriocularSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v104[5] = *MEMORY[0x277D85DE8];
  v102.receiver = self;
  v102.super_class = BKUIPeriocularSelectionCell;
  v4 = [(BKUIPeriocularSelectionCell *)&v102 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    v6 = [MEMORY[0x277D755B8] imageNamed:@"faceid"];
    v7 = [v5 initWithImage:v6];
    iconView = v4->_iconView;
    v4->_iconView = v7;

    v9 = objc_alloc(MEMORY[0x277D756B8]);
    v10 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v14;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _titleFont = [(BKUIPeriocularSelectionCell *)v4 _titleFont];
    [(UILabel *)v4->_titleLabel setFont:_titleFont];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_titleLabel setTextColor:labelColor];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v18];
    v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v10, v11, v12, v13}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v19;

    [(UILabel *)v4->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _descriptionFont = [(BKUIPeriocularSelectionCell *)v4 _descriptionFont];
    [(UILabel *)v4->_subtitleLabel setFont:_descriptionFont];

    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_subtitleLabel setTextColor:labelColor2];

    [(UILabel *)v4->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v4->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v23];
    [(UIImageView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconView setContentMode:2];
    subtitleLabel = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    [subtitleLabel setNumberOfLines:0];

    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v11, v12, v13}];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    [v25 addSubview:titleLabel];

    subtitleLabel2 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    [v25 addSubview:subtitleLabel2];

    contentView = [(BKUIPeriocularSelectionCell *)v4 contentView];
    [contentView addSubview:v25];

    contentView2 = [(BKUIPeriocularSelectionCell *)v4 contentView];
    iconView = [(BKUIPeriocularSelectionCell *)v4 iconView];
    [contentView2 addSubview:iconView];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(BKUIPeriocularSelectionCell *)v4 setBackgroundColor:secondarySystemBackgroundColor];

    v83 = MEMORY[0x277CCAAD0];
    topAnchor = [v25 topAnchor];
    contentView3 = [(BKUIPeriocularSelectionCell *)v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v93 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v104[0] = v93;
    v101 = v25;
    bottomAnchor = [v25 bottomAnchor];
    contentView4 = [(BKUIPeriocularSelectionCell *)v4 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v85 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v104[1] = v85;
    leadingAnchor = [v25 leadingAnchor];
    leadingAnchor2 = [(BKUIPeriocularSelectionCell *)v4 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v104[2] = v33;
    trailingAnchor = [v25 trailingAnchor];
    trailingAnchor2 = [(BKUIPeriocularSelectionCell *)v4 trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v104[3] = v36;
    centerYAnchor = [v25 centerYAnchor];
    centerYAnchor2 = [(BKUIPeriocularSelectionCell *)v4 centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v104[4] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:5];
    [v83 activateConstraints:v40];

    v72 = MEMORY[0x277CCAAD0];
    iconView2 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    leadingAnchor3 = [iconView2 leadingAnchor];
    leadingAnchor4 = [v101 leadingAnchor];
    v94 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:21.0];
    v103[0] = v94;
    iconView3 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    widthAnchor = [iconView3 widthAnchor];
    v88 = [widthAnchor constraintEqualToConstant:37.0];
    v103[1] = v88;
    iconView4 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    heightAnchor = [iconView4 heightAnchor];
    v82 = [heightAnchor constraintEqualToConstant:37.0];
    v103[2] = v82;
    iconView5 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    centerYAnchor3 = [iconView5 centerYAnchor];
    centerYAnchor4 = [(BKUIPeriocularSelectionCell *)v4 centerYAnchor];
    v77 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v103[3] = v77;
    titleLabel2 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    topAnchor3 = [titleLabel2 topAnchor];
    topAnchor4 = [v101 topAnchor];
    [(BKUIPeriocularSelectionCell *)v4 BKUIPeriocularSelectionCellTopBottomPadding];
    v73 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:?];
    v103[4] = v73;
    titleLabel3 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    leadingAnchor5 = [titleLabel3 leadingAnchor];
    iconView6 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    trailingAnchor3 = [iconView6 trailingAnchor];
    v67 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:20.0];
    v103[5] = v67;
    titleLabel4 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    trailingAnchor4 = [titleLabel4 trailingAnchor];
    trailingAnchor5 = [v101 trailingAnchor];
    v63 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-38.0];
    v103[6] = v63;
    subtitleLabel3 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    topAnchor5 = [subtitleLabel3 topAnchor];
    titleLabel5 = [(BKUIPeriocularSelectionCell *)v4 titleLabel];
    bottomAnchor3 = [titleLabel5 bottomAnchor];
    v58 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:1.0];
    v103[7] = v58;
    subtitleLabel4 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    bottomAnchor4 = [subtitleLabel4 bottomAnchor];
    bottomAnchor5 = [v101 bottomAnchor];
    [(BKUIPeriocularSelectionCell *)v4 BKUIPeriocularSelectionCellTopBottomPadding];
    v54 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-v41];
    v103[8] = v54;
    subtitleLabel5 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    leadingAnchor6 = [subtitleLabel5 leadingAnchor];
    iconView7 = [(BKUIPeriocularSelectionCell *)v4 iconView];
    trailingAnchor6 = [iconView7 trailingAnchor];
    v45 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor6 constant:20.0];
    v103[9] = v45;
    subtitleLabel6 = [(BKUIPeriocularSelectionCell *)v4 subtitleLabel];
    trailingAnchor7 = [subtitleLabel6 trailingAnchor];
    trailingAnchor8 = [v101 trailingAnchor];
    v49 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-38.0];
    v103[10] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:11];
    [v72 activateConstraints:v50];
  }

  v51 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v3 = MEMORY[0x277D74300];
  v4 = [v2 fontDescriptorWithSymbolicTraits:2];
  v5 = [v3 fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)_descriptionFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

@end