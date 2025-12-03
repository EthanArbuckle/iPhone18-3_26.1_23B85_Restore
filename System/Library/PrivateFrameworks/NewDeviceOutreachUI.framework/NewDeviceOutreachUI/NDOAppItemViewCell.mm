@interface NDOAppItemViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (NDOAppItemViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_setupWarrantyCoverageCell;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation NDOAppItemViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = NDOAppItemViewCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFB8]];
  v6 = [v5 isEqualToString:@"COVERAGE_ITEM"];

  if (v6)
  {
    v7 = [specifierCopy propertyForKey:@"NDOWarranty"];
    v8 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v8 imageNamed:@"applecare-badge" inBundle:v9 withConfiguration:0];

    [(UIImageView *)self->_itemImageView setImage:v10];
    coverageLocalizedDesc = [v7 coverageLocalizedDesc];
    [(UILabel *)self->_itemTitleLabel setText:coverageLocalizedDesc];

    v12 = [specifierCopy propertyForKey:@"NDOCoverageItemSubtitle"];
    [(UILabel *)self->_itemSubtitleLabel setText:v12];
  }

  [(NDOAppItemViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NDOAppItemViewCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(NDOAppItemViewCell *)self setNeedsUpdateConstraints];
  [(PSTableCell *)self setCellEnabled:1];
}

- (NDOAppItemViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v13.receiver = self;
  v13.super_class = NDOAppItemViewCell;
  v9 = [(PSTableCell *)&v13 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy propertyForKey:*MEMORY[0x277D3FFB8]];
    v11 = [v10 isEqualToString:@"COVERAGE_ITEM"];

    if (v11)
    {
      [(NDOAppItemViewCell *)v9 _setupWarrantyCoverageCell];
    }
  }

  return v9;
}

- (void)_setupWarrantyCoverageCell
{
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
  itemImageView = self->_itemImageView;
  self->_itemImageView = v3;

  [(UIImageView *)self->_itemImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(NDOAppItemViewCell *)self contentView];
  [contentView addSubview:self->_itemImageView];

  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
  itemTitleLabel = self->_itemTitleLabel;
  self->_itemTitleLabel = v11;

  [(UILabel *)self->_itemTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_itemTitleLabel setBackgroundColor:0];
  [(UILabel *)self->_itemTitleLabel setOpaque:0];
  [(UILabel *)self->_itemTitleLabel setNumberOfLines:0];
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_itemTitleLabel setFont:v13];

  v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  itemSubtitleLabel = self->_itemSubtitleLabel;
  self->_itemSubtitleLabel = v14;

  [(UILabel *)self->_itemSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_itemSubtitleLabel setBackgroundColor:0];
  [(UILabel *)self->_itemSubtitleLabel setOpaque:0];
  [(UILabel *)self->_itemSubtitleLabel setNumberOfLines:2];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_itemSubtitleLabel setFont:v16];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_itemSubtitleLabel setTextColor:systemGrayColor];

  v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
  itemTitleView = self->_itemTitleView;
  self->_itemTitleView = v18;

  [(UIView *)self->_itemTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_itemTitleView addSubview:self->_itemTitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemSubtitleLabel];
  contentView2 = [(NDOAppItemViewCell *)self contentView];
  [contentView2 addSubview:self->_itemTitleView];

  [(NDOAppItemViewCell *)self layoutSubviews];
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  imageConstraints = self->_imageConstraints;
  self->_imageConstraints = array;

  v5 = self->_imageConstraints;
  v6 = MEMORY[0x277CCAAD0];
  itemImageView = [(NDOAppItemViewCell *)self itemImageView];
  contentView = [(NDOAppItemViewCell *)self contentView];
  v9 = [v6 constraintWithItem:itemImageView attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v5 addObject:v9];

  v10 = self->_imageConstraints;
  v11 = MEMORY[0x277CCAAD0];
  itemImageView2 = [(NDOAppItemViewCell *)self itemImageView];
  contentView2 = [(NDOAppItemViewCell *)self contentView];
  v14 = [v11 constraintWithItem:itemImageView2 attribute:10 relatedBy:0 toItem:contentView2 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v10 addObject:v14];

  itemImageView3 = [(NDOAppItemViewCell *)self itemImageView];
  LODWORD(v16) = 1148846080;
  [itemImageView3 setContentCompressionResistancePriority:0 forAxis:v16];

  itemImageView4 = [(NDOAppItemViewCell *)self itemImageView];
  LODWORD(v18) = 1148846080;
  [itemImageView4 setContentCompressionResistancePriority:1 forAxis:v18];

  v19 = MEMORY[0x277CCAAD0];
  contentView3 = [(NDOAppItemViewCell *)self contentView];
  itemImageView5 = [(NDOAppItemViewCell *)self itemImageView];
  v22 = [v19 constraintWithItem:contentView3 attribute:8 relatedBy:1 toItem:itemImageView5 attribute:8 multiplier:1.0 constant:16.0];

  LODWORD(v23) = 1148829696;
  [v22 setPriority:v23];
  [(NSMutableArray *)self->_imageConstraints addObject:v22];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_imageConstraints];
  itemTitleView = [(NDOAppItemViewCell *)self itemTitleView];
  v25 = MEMORY[0x277CCAAD0];
  itemTitleLabel = [(NDOAppItemViewCell *)self itemTitleLabel];
  itemTitleView2 = [(NDOAppItemViewCell *)self itemTitleView];
  v28 = [v25 constraintWithItem:itemTitleLabel attribute:3 relatedBy:0 toItem:itemTitleView2 attribute:3 multiplier:1.0 constant:0.0];
  [itemTitleView addConstraint:v28];

  itemTitleView3 = [(NDOAppItemViewCell *)self itemTitleView];
  v30 = MEMORY[0x277CCAAD0];
  itemTitleLabel2 = [(NDOAppItemViewCell *)self itemTitleLabel];
  itemTitleView4 = [(NDOAppItemViewCell *)self itemTitleView];
  v33 = [v30 constraintWithItem:itemTitleLabel2 attribute:5 relatedBy:0 toItem:itemTitleView4 attribute:5 multiplier:1.0 constant:0.0];
  [itemTitleView3 addConstraint:v33];

  itemTitleView5 = [(NDOAppItemViewCell *)self itemTitleView];
  v35 = MEMORY[0x277CCAAD0];
  itemTitleView6 = [(NDOAppItemViewCell *)self itemTitleView];
  itemTitleLabel3 = [(NDOAppItemViewCell *)self itemTitleLabel];
  v38 = [v35 constraintWithItem:itemTitleView6 attribute:6 relatedBy:1 toItem:itemTitleLabel3 attribute:6 multiplier:1.0 constant:0.0];
  [itemTitleView5 addConstraint:v38];

  itemTitleView7 = [(NDOAppItemViewCell *)self itemTitleView];
  v40 = MEMORY[0x277CCAAD0];
  itemSubtitleLabel = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  itemTitleLabel4 = [(NDOAppItemViewCell *)self itemTitleLabel];
  v43 = [v40 constraintWithItem:itemSubtitleLabel attribute:3 relatedBy:0 toItem:itemTitleLabel4 attribute:4 multiplier:1.0 constant:0.0];
  [itemTitleView7 addConstraint:v43];

  itemTitleView8 = [(NDOAppItemViewCell *)self itemTitleView];
  v45 = MEMORY[0x277CCAAD0];
  itemSubtitleLabel2 = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  itemTitleView9 = [(NDOAppItemViewCell *)self itemTitleView];
  v48 = [v45 constraintWithItem:itemSubtitleLabel2 attribute:5 relatedBy:0 toItem:itemTitleView9 attribute:5 multiplier:1.0 constant:0.0];
  [itemTitleView8 addConstraint:v48];

  itemTitleView10 = [(NDOAppItemViewCell *)self itemTitleView];
  v50 = MEMORY[0x277CCAAD0];
  itemTitleView11 = [(NDOAppItemViewCell *)self itemTitleView];
  itemSubtitleLabel3 = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  v53 = [v50 constraintWithItem:itemTitleView11 attribute:6 relatedBy:1 toItem:itemSubtitleLabel3 attribute:6 multiplier:1.0 constant:0.0];
  [itemTitleView10 addConstraint:v53];

  itemTitleView12 = [(NDOAppItemViewCell *)self itemTitleView];
  v55 = MEMORY[0x277CCAAD0];
  itemTitleView13 = [(NDOAppItemViewCell *)self itemTitleView];
  itemSubtitleLabel4 = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  v58 = [v55 constraintWithItem:itemTitleView13 attribute:4 relatedBy:0 toItem:itemSubtitleLabel4 attribute:4 multiplier:1.0 constant:0.0];
  [itemTitleView12 addConstraint:v58];

  contentView4 = [(NDOAppItemViewCell *)self contentView];
  v60 = MEMORY[0x277CCAAD0];
  itemTitleView14 = [(NDOAppItemViewCell *)self itemTitleView];
  itemImageView6 = [(NDOAppItemViewCell *)self itemImageView];
  v63 = [v60 constraintWithItem:itemTitleView14 attribute:10 relatedBy:0 toItem:itemImageView6 attribute:10 multiplier:1.0 constant:0.0];
  [contentView4 addConstraint:v63];

  contentView5 = [(NDOAppItemViewCell *)self contentView];
  v65 = MEMORY[0x277CCAAD0];
  itemTitleView15 = [(NDOAppItemViewCell *)self itemTitleView];
  itemImageView7 = [(NDOAppItemViewCell *)self itemImageView];
  v68 = [v65 constraintWithItem:itemTitleView15 attribute:5 relatedBy:0 toItem:itemImageView7 attribute:6 multiplier:1.0 constant:12.0];
  [contentView5 addConstraint:v68];

  contentView6 = [(NDOAppItemViewCell *)self contentView];
  v70 = MEMORY[0x277CCAAD0];
  itemTitleView16 = [(NDOAppItemViewCell *)self itemTitleView];
  contentView7 = [(NDOAppItemViewCell *)self contentView];
  v73 = [v70 constraintWithItem:itemTitleView16 attribute:6 relatedBy:0 toItem:contentView7 attribute:6 multiplier:1.0 constant:-12.0];
  [contentView6 addConstraint:v73];

  contentView8 = [(NDOAppItemViewCell *)self contentView];
  v75 = MEMORY[0x277CCAAD0];
  contentView9 = [(NDOAppItemViewCell *)self contentView];
  itemTitleView17 = [(NDOAppItemViewCell *)self itemTitleView];
  v78 = [v75 constraintWithItem:contentView9 attribute:8 relatedBy:1 toItem:itemTitleView17 attribute:8 multiplier:1.0 constant:0.0];
  [contentView8 addConstraint:v78];

  v79.receiver = self;
  v79.super_class = NDOAppItemViewCell;
  [(NDOAppItemViewCell *)&v79 updateConstraints];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = NDOAppItemViewCell;
  [(NDOAppItemViewCell *)&v5 sizeThatFits:fits.width, fits.height];
  if (v4 < 81.0)
  {
    v4 = 81.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

@end