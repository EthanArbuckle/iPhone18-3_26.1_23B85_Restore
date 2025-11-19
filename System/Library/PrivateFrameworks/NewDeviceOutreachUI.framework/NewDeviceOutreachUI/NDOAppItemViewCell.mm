@interface NDOAppItemViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (NDOAppItemViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_setupWarrantyCoverageCell;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation NDOAppItemViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NDOAppItemViewCell;
  [(PSTableCell *)&v13 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:*MEMORY[0x277D3FFB8]];
  v6 = [v5 isEqualToString:@"COVERAGE_ITEM"];

  if (v6)
  {
    v7 = [v4 propertyForKey:@"NDOWarranty"];
    v8 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v8 imageNamed:@"applecare-badge" inBundle:v9 withConfiguration:0];

    [(UIImageView *)self->_itemImageView setImage:v10];
    v11 = [v7 coverageLocalizedDesc];
    [(UILabel *)self->_itemTitleLabel setText:v11];

    v12 = [v4 propertyForKey:@"NDOCoverageItemSubtitle"];
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

- (NDOAppItemViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = NDOAppItemViewCell;
  v9 = [(PSTableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
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
  v5 = [(NDOAppItemViewCell *)self contentView];
  [v5 addSubview:self->_itemImageView];

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

  v17 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_itemSubtitleLabel setTextColor:v17];

  v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
  itemTitleView = self->_itemTitleView;
  self->_itemTitleView = v18;

  [(UIView *)self->_itemTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_itemTitleView addSubview:self->_itemTitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemSubtitleLabel];
  v20 = [(NDOAppItemViewCell *)self contentView];
  [v20 addSubview:self->_itemTitleView];

  [(NDOAppItemViewCell *)self layoutSubviews];
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  imageConstraints = self->_imageConstraints;
  self->_imageConstraints = v3;

  v5 = self->_imageConstraints;
  v6 = MEMORY[0x277CCAAD0];
  v7 = [(NDOAppItemViewCell *)self itemImageView];
  v8 = [(NDOAppItemViewCell *)self contentView];
  v9 = [v6 constraintWithItem:v7 attribute:5 relatedBy:0 toItem:v8 attribute:5 multiplier:1.0 constant:15.0];
  [(NSMutableArray *)v5 addObject:v9];

  v10 = self->_imageConstraints;
  v11 = MEMORY[0x277CCAAD0];
  v12 = [(NDOAppItemViewCell *)self itemImageView];
  v13 = [(NDOAppItemViewCell *)self contentView];
  v14 = [v11 constraintWithItem:v12 attribute:10 relatedBy:0 toItem:v13 attribute:10 multiplier:1.0 constant:0.0];
  [(NSMutableArray *)v10 addObject:v14];

  v15 = [(NDOAppItemViewCell *)self itemImageView];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:0 forAxis:v16];

  v17 = [(NDOAppItemViewCell *)self itemImageView];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v18];

  v19 = MEMORY[0x277CCAAD0];
  v20 = [(NDOAppItemViewCell *)self contentView];
  v21 = [(NDOAppItemViewCell *)self itemImageView];
  v22 = [v19 constraintWithItem:v20 attribute:8 relatedBy:1 toItem:v21 attribute:8 multiplier:1.0 constant:16.0];

  LODWORD(v23) = 1148829696;
  [v22 setPriority:v23];
  [(NSMutableArray *)self->_imageConstraints addObject:v22];
  [MEMORY[0x277CCAAD0] activateConstraints:self->_imageConstraints];
  v24 = [(NDOAppItemViewCell *)self itemTitleView];
  v25 = MEMORY[0x277CCAAD0];
  v26 = [(NDOAppItemViewCell *)self itemTitleLabel];
  v27 = [(NDOAppItemViewCell *)self itemTitleView];
  v28 = [v25 constraintWithItem:v26 attribute:3 relatedBy:0 toItem:v27 attribute:3 multiplier:1.0 constant:0.0];
  [v24 addConstraint:v28];

  v29 = [(NDOAppItemViewCell *)self itemTitleView];
  v30 = MEMORY[0x277CCAAD0];
  v31 = [(NDOAppItemViewCell *)self itemTitleLabel];
  v32 = [(NDOAppItemViewCell *)self itemTitleView];
  v33 = [v30 constraintWithItem:v31 attribute:5 relatedBy:0 toItem:v32 attribute:5 multiplier:1.0 constant:0.0];
  [v29 addConstraint:v33];

  v34 = [(NDOAppItemViewCell *)self itemTitleView];
  v35 = MEMORY[0x277CCAAD0];
  v36 = [(NDOAppItemViewCell *)self itemTitleView];
  v37 = [(NDOAppItemViewCell *)self itemTitleLabel];
  v38 = [v35 constraintWithItem:v36 attribute:6 relatedBy:1 toItem:v37 attribute:6 multiplier:1.0 constant:0.0];
  [v34 addConstraint:v38];

  v39 = [(NDOAppItemViewCell *)self itemTitleView];
  v40 = MEMORY[0x277CCAAD0];
  v41 = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  v42 = [(NDOAppItemViewCell *)self itemTitleLabel];
  v43 = [v40 constraintWithItem:v41 attribute:3 relatedBy:0 toItem:v42 attribute:4 multiplier:1.0 constant:0.0];
  [v39 addConstraint:v43];

  v44 = [(NDOAppItemViewCell *)self itemTitleView];
  v45 = MEMORY[0x277CCAAD0];
  v46 = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  v47 = [(NDOAppItemViewCell *)self itemTitleView];
  v48 = [v45 constraintWithItem:v46 attribute:5 relatedBy:0 toItem:v47 attribute:5 multiplier:1.0 constant:0.0];
  [v44 addConstraint:v48];

  v49 = [(NDOAppItemViewCell *)self itemTitleView];
  v50 = MEMORY[0x277CCAAD0];
  v51 = [(NDOAppItemViewCell *)self itemTitleView];
  v52 = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  v53 = [v50 constraintWithItem:v51 attribute:6 relatedBy:1 toItem:v52 attribute:6 multiplier:1.0 constant:0.0];
  [v49 addConstraint:v53];

  v54 = [(NDOAppItemViewCell *)self itemTitleView];
  v55 = MEMORY[0x277CCAAD0];
  v56 = [(NDOAppItemViewCell *)self itemTitleView];
  v57 = [(NDOAppItemViewCell *)self itemSubtitleLabel];
  v58 = [v55 constraintWithItem:v56 attribute:4 relatedBy:0 toItem:v57 attribute:4 multiplier:1.0 constant:0.0];
  [v54 addConstraint:v58];

  v59 = [(NDOAppItemViewCell *)self contentView];
  v60 = MEMORY[0x277CCAAD0];
  v61 = [(NDOAppItemViewCell *)self itemTitleView];
  v62 = [(NDOAppItemViewCell *)self itemImageView];
  v63 = [v60 constraintWithItem:v61 attribute:10 relatedBy:0 toItem:v62 attribute:10 multiplier:1.0 constant:0.0];
  [v59 addConstraint:v63];

  v64 = [(NDOAppItemViewCell *)self contentView];
  v65 = MEMORY[0x277CCAAD0];
  v66 = [(NDOAppItemViewCell *)self itemTitleView];
  v67 = [(NDOAppItemViewCell *)self itemImageView];
  v68 = [v65 constraintWithItem:v66 attribute:5 relatedBy:0 toItem:v67 attribute:6 multiplier:1.0 constant:12.0];
  [v64 addConstraint:v68];

  v69 = [(NDOAppItemViewCell *)self contentView];
  v70 = MEMORY[0x277CCAAD0];
  v71 = [(NDOAppItemViewCell *)self itemTitleView];
  v72 = [(NDOAppItemViewCell *)self contentView];
  v73 = [v70 constraintWithItem:v71 attribute:6 relatedBy:0 toItem:v72 attribute:6 multiplier:1.0 constant:-12.0];
  [v69 addConstraint:v73];

  v74 = [(NDOAppItemViewCell *)self contentView];
  v75 = MEMORY[0x277CCAAD0];
  v76 = [(NDOAppItemViewCell *)self contentView];
  v77 = [(NDOAppItemViewCell *)self itemTitleView];
  v78 = [v75 constraintWithItem:v76 attribute:8 relatedBy:1 toItem:v77 attribute:8 multiplier:1.0 constant:0.0];
  [v74 addConstraint:v78];

  v79.receiver = self;
  v79.super_class = NDOAppItemViewCell;
  [(NDOAppItemViewCell *)&v79 updateConstraints];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = NDOAppItemViewCell;
  [(NDOAppItemViewCell *)&v5 sizeThatFits:a3.width, a3.height];
  if (v4 < 81.0)
  {
    v4 = 81.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

@end