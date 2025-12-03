@interface NDOCoverageItemCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (NDOCoverageItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_setupWarrantyCoverageCell;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
- (void)updateDeviceImage;
@end

@implementation NDOCoverageItemCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v19.receiver = self;
  v19.super_class = NDOCoverageItemCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:specifier];
  [(NDOCoverageItemCell *)self updateDeviceImage];
  specifier = [(PSTableCell *)self specifier];
  name = [specifier name];
  [(UILabel *)self->_itemTitleLabel setText:name];

  specifier2 = [(PSTableCell *)self specifier];
  v7 = [specifier2 objectForKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];
  [(UILabel *)self->_itemSubtitleLabel setText:v7];

  specifier3 = [(PSTableCell *)self specifier];
  v9 = [specifier3 objectForKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

  if (v9)
  {
    self->_hasOffer = 1;
    specifier4 = [(PSTableCell *)self specifier];
    v11 = [specifier4 objectForKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];
    [(UILabel *)self->_itemOfferLabel setText:v11];

    v12 = MEMORY[0x277CCACA8];
    specifier5 = [(PSTableCell *)self specifier];
    name2 = [specifier5 name];
    text = [(UILabel *)self->_itemSubtitleLabel text];
    text2 = [(UILabel *)self->_itemOfferLabel text];
    v17 = [v12 stringWithFormat:@"%@\n%@\n%@", name2, text, text2];
    [(NDOCoverageItemCell *)self setAccessibilityLabel:v17];
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    specifier5 = [(PSTableCell *)self specifier];
    name2 = [specifier5 name];
    text = [(UILabel *)self->_itemSubtitleLabel text];
    text2 = [v18 stringWithFormat:@"%@\n%@", name2, text];
    [(NDOCoverageItemCell *)self setAccessibilityLabel:text2];
  }

  [(NDOCoverageItemCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NDOCoverageItemCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(NDOCoverageItemCell *)self setNeedsUpdateConstraints];
  [(PSTableCell *)self setCellEnabled:1];
}

- (NDOCoverageItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = NDOCoverageItemCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(NDOCoverageItemCell *)v5 _setupWarrantyCoverageCell];
  }

  return v6;
}

- (void)_setupWarrantyCoverageCell
{
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setHidden:1];

  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
  itemImageView = self->_itemImageView;
  self->_itemImageView = v4;

  [(UIImageView *)self->_itemImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(NDOCoverageItemCell *)self contentView];
  [contentView addSubview:self->_itemImageView];

  v7 = objc_alloc(MEMORY[0x277D756B8]);
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  v12 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], v9, v10, v11}];
  itemTitleLabel = self->_itemTitleLabel;
  self->_itemTitleLabel = v12;

  [(UILabel *)self->_itemTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_itemTitleLabel setBackgroundColor:0];
  [(UILabel *)self->_itemTitleLabel setOpaque:0];
  [(UILabel *)self->_itemTitleLabel setNumberOfLines:0];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_itemTitleLabel setFont:v14];

  v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
  itemSubtitleLabel = self->_itemSubtitleLabel;
  self->_itemSubtitleLabel = v15;

  [(UILabel *)self->_itemSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_itemSubtitleLabel setBackgroundColor:0];
  [(UILabel *)self->_itemSubtitleLabel setOpaque:0];
  [(UILabel *)self->_itemSubtitleLabel setNumberOfLines:2];
  v17 = *MEMORY[0x277D76968];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(UILabel *)self->_itemSubtitleLabel setFont:v18];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_itemSubtitleLabel setTextColor:systemGrayColor];

  v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
  itemOfferLabel = self->_itemOfferLabel;
  self->_itemOfferLabel = v20;

  [(UILabel *)self->_itemOfferLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_itemOfferLabel setBackgroundColor:0];
  [(UILabel *)self->_itemOfferLabel setOpaque:0];
  [(UILabel *)self->_itemOfferLabel setNumberOfLines:2];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v17];
  [(UILabel *)self->_itemOfferLabel setFont:v22];

  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [(UILabel *)self->_itemOfferLabel setTextColor:systemOrangeColor];

  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v8, v9, v10, v11}];
  itemTitleView = self->_itemTitleView;
  self->_itemTitleView = v24;

  [(UIView *)self->_itemTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_itemTitleView addSubview:self->_itemTitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemSubtitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemOfferLabel];
  contentView2 = [(NDOCoverageItemCell *)self contentView];
  [contentView2 addSubview:self->_itemTitleView];

  [(NDOCoverageItemCell *)self layoutSubviews];
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  imageConstraints = self->_imageConstraints;
  self->_imageConstraints = array;

  v5 = self->_imageConstraints;
  v6 = MEMORY[0x277CCAAD0];
  itemImageView = [(NDOCoverageItemCell *)self itemImageView];
  contentView = [(NDOCoverageItemCell *)self contentView];
  v9 = [v6 constraintWithItem:itemImageView attribute:5 relatedBy:0 toItem:contentView attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v5 addObject:v9];

  v10 = self->_imageConstraints;
  v11 = MEMORY[0x277CCAAD0];
  itemImageView2 = [(NDOCoverageItemCell *)self itemImageView];
  contentView2 = [(NDOCoverageItemCell *)self contentView];
  v14 = [v11 constraintWithItem:itemImageView2 attribute:3 relatedBy:1 toItem:contentView2 attribute:3 multiplier:1.0 constant:8.0];
  [(NSMutableArray *)v10 addObject:v14];

  v15 = self->_imageConstraints;
  v16 = MEMORY[0x277CCAAD0];
  itemImageView3 = [(NDOCoverageItemCell *)self itemImageView];
  contentView3 = [(NDOCoverageItemCell *)self contentView];
  v19 = [v16 constraintWithItem:itemImageView3 attribute:10 relatedBy:0 toItem:contentView3 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v15 addObject:v19];

  v20 = self->_imageConstraints;
  v21 = MEMORY[0x277CCAAD0];
  itemImageView4 = [(NDOCoverageItemCell *)self itemImageView];
  v23 = [v21 constraintWithItem:itemImageView4 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:40.0];
  [(NSMutableArray *)v20 addObject:v23];

  v24 = self->_imageConstraints;
  v25 = MEMORY[0x277CCAAD0];
  itemImageView5 = [(NDOCoverageItemCell *)self itemImageView];
  v27 = [v25 constraintWithItem:itemImageView5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:40.0];
  [(NSMutableArray *)v24 addObject:v27];

  itemImageView6 = [(NDOCoverageItemCell *)self itemImageView];
  LODWORD(v29) = 1148846080;
  [itemImageView6 setContentCompressionResistancePriority:0 forAxis:v29];

  itemImageView7 = [(NDOCoverageItemCell *)self itemImageView];
  LODWORD(v31) = 1148846080;
  [itemImageView7 setContentCompressionResistancePriority:1 forAxis:v31];

  v32 = MEMORY[0x277CCAAD0];
  contentView4 = [(NDOCoverageItemCell *)self contentView];
  itemImageView8 = [(NDOCoverageItemCell *)self itemImageView];
  v35 = [v32 constraintWithItem:contentView4 attribute:8 relatedBy:1 toItem:itemImageView8 attribute:8 multiplier:1.0 constant:16.0];

  LODWORD(v36) = 1148829696;
  [v35 setPriority:v36];
  [(NSMutableArray *)self->_imageConstraints addObject:v35];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_imageConstraints];
  itemTitleView = [(NDOCoverageItemCell *)self itemTitleView];
  v38 = MEMORY[0x277CCAAD0];
  itemTitleLabel = [(NDOCoverageItemCell *)self itemTitleLabel];
  itemTitleView2 = [(NDOCoverageItemCell *)self itemTitleView];
  v41 = [v38 constraintWithItem:itemTitleLabel attribute:3 relatedBy:0 toItem:itemTitleView2 attribute:3 multiplier:1.0 constant:0.0];
  [itemTitleView addConstraint:v41];

  itemTitleView3 = [(NDOCoverageItemCell *)self itemTitleView];
  v43 = MEMORY[0x277CCAAD0];
  itemTitleLabel2 = [(NDOCoverageItemCell *)self itemTitleLabel];
  itemTitleView4 = [(NDOCoverageItemCell *)self itemTitleView];
  v46 = [v43 constraintWithItem:itemTitleLabel2 attribute:5 relatedBy:0 toItem:itemTitleView4 attribute:5 multiplier:1.0 constant:0.0];
  [itemTitleView3 addConstraint:v46];

  itemTitleView5 = [(NDOCoverageItemCell *)self itemTitleView];
  v48 = MEMORY[0x277CCAAD0];
  itemTitleView6 = [(NDOCoverageItemCell *)self itemTitleView];
  itemTitleLabel3 = [(NDOCoverageItemCell *)self itemTitleLabel];
  v51 = [v48 constraintWithItem:itemTitleView6 attribute:6 relatedBy:1 toItem:itemTitleLabel3 attribute:6 multiplier:1.0 constant:0.0];
  [itemTitleView5 addConstraint:v51];

  itemTitleView7 = [(NDOCoverageItemCell *)self itemTitleView];
  v53 = MEMORY[0x277CCAAD0];
  itemSubtitleLabel = [(NDOCoverageItemCell *)self itemSubtitleLabel];
  itemTitleLabel4 = [(NDOCoverageItemCell *)self itemTitleLabel];
  v56 = [v53 constraintWithItem:itemSubtitleLabel attribute:3 relatedBy:0 toItem:itemTitleLabel4 attribute:4 multiplier:1.0 constant:0.0];
  [itemTitleView7 addConstraint:v56];

  itemTitleView8 = [(NDOCoverageItemCell *)self itemTitleView];
  v58 = MEMORY[0x277CCAAD0];
  itemSubtitleLabel2 = [(NDOCoverageItemCell *)self itemSubtitleLabel];
  itemTitleView9 = [(NDOCoverageItemCell *)self itemTitleView];
  v61 = [v58 constraintWithItem:itemSubtitleLabel2 attribute:5 relatedBy:0 toItem:itemTitleView9 attribute:5 multiplier:1.0 constant:0.0];
  [itemTitleView8 addConstraint:v61];

  itemTitleView10 = [(NDOCoverageItemCell *)self itemTitleView];
  v63 = MEMORY[0x277CCAAD0];
  itemTitleView11 = [(NDOCoverageItemCell *)self itemTitleView];
  itemSubtitleLabel3 = [(NDOCoverageItemCell *)self itemSubtitleLabel];
  v66 = [v63 constraintWithItem:itemTitleView11 attribute:6 relatedBy:1 toItem:itemSubtitleLabel3 attribute:6 multiplier:1.0 constant:0.0];
  [itemTitleView10 addConstraint:v66];

  LOBYTE(v66) = self->_hasOffer;
  itemTitleView12 = [(NDOCoverageItemCell *)self itemTitleView];
  v68 = MEMORY[0x277CCAAD0];
  if (v66)
  {
    itemOfferLabel = [(NDOCoverageItemCell *)self itemOfferLabel];
    itemSubtitleLabel4 = [(NDOCoverageItemCell *)self itemSubtitleLabel];
    v71 = [v68 constraintWithItem:itemOfferLabel attribute:3 relatedBy:0 toItem:itemSubtitleLabel4 attribute:4 multiplier:1.0 constant:0.0];
    [itemTitleView12 addConstraint:v71];

    itemTitleView13 = [(NDOCoverageItemCell *)self itemTitleView];
    v73 = MEMORY[0x277CCAAD0];
    itemOfferLabel2 = [(NDOCoverageItemCell *)self itemOfferLabel];
    itemTitleView14 = [(NDOCoverageItemCell *)self itemTitleView];
    v76 = [v73 constraintWithItem:itemOfferLabel2 attribute:5 relatedBy:0 toItem:itemTitleView14 attribute:5 multiplier:1.0 constant:0.0];
    [itemTitleView13 addConstraint:v76];

    itemTitleView15 = [(NDOCoverageItemCell *)self itemTitleView];
    v78 = MEMORY[0x277CCAAD0];
    itemTitleView16 = [(NDOCoverageItemCell *)self itemTitleView];
    itemOfferLabel3 = [(NDOCoverageItemCell *)self itemOfferLabel];
    v81 = [v78 constraintWithItem:itemTitleView16 attribute:6 relatedBy:1 toItem:itemOfferLabel3 attribute:6 multiplier:1.0 constant:0.0];
    [itemTitleView15 addConstraint:v81];

    itemTitleView12 = [(NDOCoverageItemCell *)self itemTitleView];
    v68 = MEMORY[0x277CCAAD0];
    itemTitleView17 = [(NDOCoverageItemCell *)self itemTitleView];
    [(NDOCoverageItemCell *)self itemOfferLabel];
  }

  else
  {
    itemTitleView17 = [(NDOCoverageItemCell *)self itemTitleView];
    [(NDOCoverageItemCell *)self itemSubtitleLabel];
  }
  v83 = ;
  v84 = [v68 constraintWithItem:itemTitleView17 attribute:4 relatedBy:0 toItem:v83 attribute:4 multiplier:1.0 constant:0.0];
  [itemTitleView12 addConstraint:v84];

  contentView5 = [(NDOCoverageItemCell *)self contentView];
  v86 = MEMORY[0x277CCAAD0];
  itemTitleView18 = [(NDOCoverageItemCell *)self itemTitleView];
  itemImageView9 = [(NDOCoverageItemCell *)self itemImageView];
  v89 = [v86 constraintWithItem:itemTitleView18 attribute:10 relatedBy:0 toItem:itemImageView9 attribute:10 multiplier:1.0 constant:0.0];
  [contentView5 addConstraint:v89];

  contentView6 = [(NDOCoverageItemCell *)self contentView];
  v91 = MEMORY[0x277CCAAD0];
  itemTitleView19 = [(NDOCoverageItemCell *)self itemTitleView];
  itemImageView10 = [(NDOCoverageItemCell *)self itemImageView];
  v94 = [v91 constraintWithItem:itemTitleView19 attribute:5 relatedBy:0 toItem:itemImageView10 attribute:6 multiplier:1.0 constant:12.0];
  [contentView6 addConstraint:v94];

  contentView7 = [(NDOCoverageItemCell *)self contentView];
  v96 = MEMORY[0x277CCAAD0];
  itemTitleView20 = [(NDOCoverageItemCell *)self itemTitleView];
  contentView8 = [(NDOCoverageItemCell *)self contentView];
  v99 = [v96 constraintWithItem:itemTitleView20 attribute:6 relatedBy:0 toItem:contentView8 attribute:6 multiplier:1.0 constant:-12.0];
  [contentView7 addConstraint:v99];

  contentView9 = [(NDOCoverageItemCell *)self contentView];
  v101 = MEMORY[0x277CCAAD0];
  itemTitleView21 = [(NDOCoverageItemCell *)self itemTitleView];
  contentView10 = [(NDOCoverageItemCell *)self contentView];
  v104 = [v101 constraintWithItem:itemTitleView21 attribute:3 relatedBy:1 toItem:contentView10 attribute:3 multiplier:1.0 constant:8.0];
  [contentView9 addConstraint:v104];

  v105.receiver = self;
  v105.super_class = NDOCoverageItemCell;
  [(NDOCoverageItemCell *)&v105 updateConstraints];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = NDOCoverageItemCell;
  [(NDOCoverageItemCell *)&v5 sizeThatFits:fits.width, fits.height];
  if (v4 < 60.0)
  {
    v4 = 60.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)updateDeviceImage
{
  specifier = [(PSTableCell *)self specifier];
  v4 = [specifier objectForKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = +[NDOImageManager sharedManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__NDOCoverageItemCell_updateDeviceImage__block_invoke;
    v9[3] = &unk_279978928;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v6 = [v5 fetchImageWithURLString:v10 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    specifier2 = [(PSTableCell *)self specifier];
    v8 = [specifier2 objectForKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];
    [(UIImageView *)self->_itemImageView setImage:v8];
  }
}

void __40__NDOCoverageItemCell_updateDeviceImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v5 || v6)
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __40__NDOCoverageItemCell_updateDeviceImage__block_invoke_cold_1(v6, a1, v10);
    }

    v9 = [v8 specifier];
    v11 = [v9 objectForKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];
    v12 = [v8 itemImageView];
    [v12 setImage:v11];
  }

  else
  {
    v9 = [WeakRetained itemImageView];
    [v9 setImage:v5];
  }
}

void __40__NDOCoverageItemCell_updateDeviceImage__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_25BD8D000, log, OS_LOG_TYPE_ERROR, "Image fetch failed with error: %@ for: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end