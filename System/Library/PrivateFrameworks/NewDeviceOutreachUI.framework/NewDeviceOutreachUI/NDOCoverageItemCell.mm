@interface NDOCoverageItemCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (NDOCoverageItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_setupWarrantyCoverageCell;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
- (void)updateDeviceImage;
@end

@implementation NDOCoverageItemCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v19.receiver = self;
  v19.super_class = NDOCoverageItemCell;
  [(PSTableCell *)&v19 refreshCellContentsWithSpecifier:a3];
  [(NDOCoverageItemCell *)self updateDeviceImage];
  v4 = [(PSTableCell *)self specifier];
  v5 = [v4 name];
  [(UILabel *)self->_itemTitleLabel setText:v5];

  v6 = [(PSTableCell *)self specifier];
  v7 = [v6 objectForKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];
  [(UILabel *)self->_itemSubtitleLabel setText:v7];

  v8 = [(PSTableCell *)self specifier];
  v9 = [v8 objectForKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

  if (v9)
  {
    self->_hasOffer = 1;
    v10 = [(PSTableCell *)self specifier];
    v11 = [v10 objectForKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];
    [(UILabel *)self->_itemOfferLabel setText:v11];

    v12 = MEMORY[0x277CCACA8];
    v13 = [(PSTableCell *)self specifier];
    v14 = [v13 name];
    v15 = [(UILabel *)self->_itemSubtitleLabel text];
    v16 = [(UILabel *)self->_itemOfferLabel text];
    v17 = [v12 stringWithFormat:@"%@\n%@\n%@", v14, v15, v16];
    [(NDOCoverageItemCell *)self setAccessibilityLabel:v17];
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v13 = [(PSTableCell *)self specifier];
    v14 = [v13 name];
    v15 = [(UILabel *)self->_itemSubtitleLabel text];
    v16 = [v18 stringWithFormat:@"%@\n%@", v14, v15];
    [(NDOCoverageItemCell *)self setAccessibilityLabel:v16];
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

- (NDOCoverageItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = NDOCoverageItemCell;
  v5 = [(PSTableCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(NDOCoverageItemCell *)v5 _setupWarrantyCoverageCell];
  }

  return v6;
}

- (void)_setupWarrantyCoverageCell
{
  v3 = [(PSTableCell *)self titleLabel];
  [v3 setHidden:1];

  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
  itemImageView = self->_itemImageView;
  self->_itemImageView = v4;

  [(UIImageView *)self->_itemImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(NDOCoverageItemCell *)self contentView];
  [v6 addSubview:self->_itemImageView];

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

  v19 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_itemSubtitleLabel setTextColor:v19];

  v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v8, v9, v10, v11}];
  itemOfferLabel = self->_itemOfferLabel;
  self->_itemOfferLabel = v20;

  [(UILabel *)self->_itemOfferLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_itemOfferLabel setBackgroundColor:0];
  [(UILabel *)self->_itemOfferLabel setOpaque:0];
  [(UILabel *)self->_itemOfferLabel setNumberOfLines:2];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v17];
  [(UILabel *)self->_itemOfferLabel setFont:v22];

  v23 = [MEMORY[0x277D75348] systemOrangeColor];
  [(UILabel *)self->_itemOfferLabel setTextColor:v23];

  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v8, v9, v10, v11}];
  itemTitleView = self->_itemTitleView;
  self->_itemTitleView = v24;

  [(UIView *)self->_itemTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_itemTitleView addSubview:self->_itemTitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemSubtitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemOfferLabel];
  v26 = [(NDOCoverageItemCell *)self contentView];
  [v26 addSubview:self->_itemTitleView];

  [(NDOCoverageItemCell *)self layoutSubviews];
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  imageConstraints = self->_imageConstraints;
  self->_imageConstraints = v3;

  v5 = self->_imageConstraints;
  v6 = MEMORY[0x277CCAAD0];
  v7 = [(NDOCoverageItemCell *)self itemImageView];
  v8 = [(NDOCoverageItemCell *)self contentView];
  v9 = [v6 constraintWithItem:v7 attribute:5 relatedBy:0 toItem:v8 attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v5 addObject:v9];

  v10 = self->_imageConstraints;
  v11 = MEMORY[0x277CCAAD0];
  v12 = [(NDOCoverageItemCell *)self itemImageView];
  v13 = [(NDOCoverageItemCell *)self contentView];
  v14 = [v11 constraintWithItem:v12 attribute:3 relatedBy:1 toItem:v13 attribute:3 multiplier:1.0 constant:8.0];
  [(NSMutableArray *)v10 addObject:v14];

  v15 = self->_imageConstraints;
  v16 = MEMORY[0x277CCAAD0];
  v17 = [(NDOCoverageItemCell *)self itemImageView];
  v18 = [(NDOCoverageItemCell *)self contentView];
  v19 = [v16 constraintWithItem:v17 attribute:10 relatedBy:0 toItem:v18 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v15 addObject:v19];

  v20 = self->_imageConstraints;
  v21 = MEMORY[0x277CCAAD0];
  v22 = [(NDOCoverageItemCell *)self itemImageView];
  v23 = [v21 constraintWithItem:v22 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:40.0];
  [(NSMutableArray *)v20 addObject:v23];

  v24 = self->_imageConstraints;
  v25 = MEMORY[0x277CCAAD0];
  v26 = [(NDOCoverageItemCell *)self itemImageView];
  v27 = [v25 constraintWithItem:v26 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:40.0];
  [(NSMutableArray *)v24 addObject:v27];

  v28 = [(NDOCoverageItemCell *)self itemImageView];
  LODWORD(v29) = 1148846080;
  [v28 setContentCompressionResistancePriority:0 forAxis:v29];

  v30 = [(NDOCoverageItemCell *)self itemImageView];
  LODWORD(v31) = 1148846080;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];

  v32 = MEMORY[0x277CCAAD0];
  v33 = [(NDOCoverageItemCell *)self contentView];
  v34 = [(NDOCoverageItemCell *)self itemImageView];
  v35 = [v32 constraintWithItem:v33 attribute:8 relatedBy:1 toItem:v34 attribute:8 multiplier:1.0 constant:16.0];

  LODWORD(v36) = 1148829696;
  [v35 setPriority:v36];
  [(NSMutableArray *)self->_imageConstraints addObject:v35];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_imageConstraints];
  v37 = [(NDOCoverageItemCell *)self itemTitleView];
  v38 = MEMORY[0x277CCAAD0];
  v39 = [(NDOCoverageItemCell *)self itemTitleLabel];
  v40 = [(NDOCoverageItemCell *)self itemTitleView];
  v41 = [v38 constraintWithItem:v39 attribute:3 relatedBy:0 toItem:v40 attribute:3 multiplier:1.0 constant:0.0];
  [v37 addConstraint:v41];

  v42 = [(NDOCoverageItemCell *)self itemTitleView];
  v43 = MEMORY[0x277CCAAD0];
  v44 = [(NDOCoverageItemCell *)self itemTitleLabel];
  v45 = [(NDOCoverageItemCell *)self itemTitleView];
  v46 = [v43 constraintWithItem:v44 attribute:5 relatedBy:0 toItem:v45 attribute:5 multiplier:1.0 constant:0.0];
  [v42 addConstraint:v46];

  v47 = [(NDOCoverageItemCell *)self itemTitleView];
  v48 = MEMORY[0x277CCAAD0];
  v49 = [(NDOCoverageItemCell *)self itemTitleView];
  v50 = [(NDOCoverageItemCell *)self itemTitleLabel];
  v51 = [v48 constraintWithItem:v49 attribute:6 relatedBy:1 toItem:v50 attribute:6 multiplier:1.0 constant:0.0];
  [v47 addConstraint:v51];

  v52 = [(NDOCoverageItemCell *)self itemTitleView];
  v53 = MEMORY[0x277CCAAD0];
  v54 = [(NDOCoverageItemCell *)self itemSubtitleLabel];
  v55 = [(NDOCoverageItemCell *)self itemTitleLabel];
  v56 = [v53 constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v55 attribute:4 multiplier:1.0 constant:0.0];
  [v52 addConstraint:v56];

  v57 = [(NDOCoverageItemCell *)self itemTitleView];
  v58 = MEMORY[0x277CCAAD0];
  v59 = [(NDOCoverageItemCell *)self itemSubtitleLabel];
  v60 = [(NDOCoverageItemCell *)self itemTitleView];
  v61 = [v58 constraintWithItem:v59 attribute:5 relatedBy:0 toItem:v60 attribute:5 multiplier:1.0 constant:0.0];
  [v57 addConstraint:v61];

  v62 = [(NDOCoverageItemCell *)self itemTitleView];
  v63 = MEMORY[0x277CCAAD0];
  v64 = [(NDOCoverageItemCell *)self itemTitleView];
  v65 = [(NDOCoverageItemCell *)self itemSubtitleLabel];
  v66 = [v63 constraintWithItem:v64 attribute:6 relatedBy:1 toItem:v65 attribute:6 multiplier:1.0 constant:0.0];
  [v62 addConstraint:v66];

  LOBYTE(v66) = self->_hasOffer;
  v67 = [(NDOCoverageItemCell *)self itemTitleView];
  v68 = MEMORY[0x277CCAAD0];
  if (v66)
  {
    v69 = [(NDOCoverageItemCell *)self itemOfferLabel];
    v70 = [(NDOCoverageItemCell *)self itemSubtitleLabel];
    v71 = [v68 constraintWithItem:v69 attribute:3 relatedBy:0 toItem:v70 attribute:4 multiplier:1.0 constant:0.0];
    [v67 addConstraint:v71];

    v72 = [(NDOCoverageItemCell *)self itemTitleView];
    v73 = MEMORY[0x277CCAAD0];
    v74 = [(NDOCoverageItemCell *)self itemOfferLabel];
    v75 = [(NDOCoverageItemCell *)self itemTitleView];
    v76 = [v73 constraintWithItem:v74 attribute:5 relatedBy:0 toItem:v75 attribute:5 multiplier:1.0 constant:0.0];
    [v72 addConstraint:v76];

    v77 = [(NDOCoverageItemCell *)self itemTitleView];
    v78 = MEMORY[0x277CCAAD0];
    v79 = [(NDOCoverageItemCell *)self itemTitleView];
    v80 = [(NDOCoverageItemCell *)self itemOfferLabel];
    v81 = [v78 constraintWithItem:v79 attribute:6 relatedBy:1 toItem:v80 attribute:6 multiplier:1.0 constant:0.0];
    [v77 addConstraint:v81];

    v67 = [(NDOCoverageItemCell *)self itemTitleView];
    v68 = MEMORY[0x277CCAAD0];
    v82 = [(NDOCoverageItemCell *)self itemTitleView];
    [(NDOCoverageItemCell *)self itemOfferLabel];
  }

  else
  {
    v82 = [(NDOCoverageItemCell *)self itemTitleView];
    [(NDOCoverageItemCell *)self itemSubtitleLabel];
  }
  v83 = ;
  v84 = [v68 constraintWithItem:v82 attribute:4 relatedBy:0 toItem:v83 attribute:4 multiplier:1.0 constant:0.0];
  [v67 addConstraint:v84];

  v85 = [(NDOCoverageItemCell *)self contentView];
  v86 = MEMORY[0x277CCAAD0];
  v87 = [(NDOCoverageItemCell *)self itemTitleView];
  v88 = [(NDOCoverageItemCell *)self itemImageView];
  v89 = [v86 constraintWithItem:v87 attribute:10 relatedBy:0 toItem:v88 attribute:10 multiplier:1.0 constant:0.0];
  [v85 addConstraint:v89];

  v90 = [(NDOCoverageItemCell *)self contentView];
  v91 = MEMORY[0x277CCAAD0];
  v92 = [(NDOCoverageItemCell *)self itemTitleView];
  v93 = [(NDOCoverageItemCell *)self itemImageView];
  v94 = [v91 constraintWithItem:v92 attribute:5 relatedBy:0 toItem:v93 attribute:6 multiplier:1.0 constant:12.0];
  [v90 addConstraint:v94];

  v95 = [(NDOCoverageItemCell *)self contentView];
  v96 = MEMORY[0x277CCAAD0];
  v97 = [(NDOCoverageItemCell *)self itemTitleView];
  v98 = [(NDOCoverageItemCell *)self contentView];
  v99 = [v96 constraintWithItem:v97 attribute:6 relatedBy:0 toItem:v98 attribute:6 multiplier:1.0 constant:-12.0];
  [v95 addConstraint:v99];

  v100 = [(NDOCoverageItemCell *)self contentView];
  v101 = MEMORY[0x277CCAAD0];
  v102 = [(NDOCoverageItemCell *)self itemTitleView];
  v103 = [(NDOCoverageItemCell *)self contentView];
  v104 = [v101 constraintWithItem:v102 attribute:3 relatedBy:1 toItem:v103 attribute:3 multiplier:1.0 constant:8.0];
  [v100 addConstraint:v104];

  v105.receiver = self;
  v105.super_class = NDOCoverageItemCell;
  [(NDOCoverageItemCell *)&v105 updateConstraints];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = NDOCoverageItemCell;
  [(NDOCoverageItemCell *)&v5 sizeThatFits:a3.width, a3.height];
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
  v3 = [(PSTableCell *)self specifier];
  v4 = [v3 objectForKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

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
    v7 = [(PSTableCell *)self specifier];
    v8 = [v7 objectForKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];
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