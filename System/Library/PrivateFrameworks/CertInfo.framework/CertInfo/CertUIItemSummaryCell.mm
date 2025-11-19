@interface CertUIItemSummaryCell
+ (double)titleOriginX;
- (CertUIItemSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (double)cellHeight;
- (id)_profileImageAppropriateForDevice;
- (void)_setupCell;
- (void)_setupConstraints;
@end

@implementation CertUIItemSummaryCell

- (CertUIItemSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CertUIItemSummaryCell;
  v4 = [(CertUIItemSummaryCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CertUIItemSummaryCell *)v4 setSelectionStyle:0];
    [(CertUIItemSummaryCell *)v5 _setupCell];
  }

  return v5;
}

- (void)_setupCell
{
  v21 = [(CertUIItemSummaryCell *)self _profileImageAppropriateForDevice];
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v21];
  itemImageView = self->_itemImageView;
  self->_itemImageView = v3;

  [(UIImageView *)self->_itemImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(CertUIItemSummaryCell *)self contentView];
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
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [(UILabel *)self->_itemTitleLabel setFont:v13];

  v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
  itemSubtitleLabel = self->_itemSubtitleLabel;
  self->_itemSubtitleLabel = v14;

  [(UILabel *)self->_itemSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_itemSubtitleLabel setBackgroundColor:0];
  [(UILabel *)self->_itemSubtitleLabel setOpaque:0];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)self->_itemSubtitleLabel setFont:v16];

  v17 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_itemSubtitleLabel setTextColor:v17];

  v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
  itemTitleView = self->_itemTitleView;
  self->_itemTitleView = v18;

  [(UIView *)self->_itemTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_itemTitleView addSubview:self->_itemTitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemSubtitleLabel];
  v20 = [(CertUIItemSummaryCell *)self contentView];
  [v20 addSubview:self->_itemTitleView];

  [(CertUIItemSummaryCell *)self _setupConstraints];
}

- (id)_profileImageAppropriateForDevice
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"profile-icon" inBundle:v6];
  v8 = [v7 _applicationIconImageForFormat:2 precomposed:1 scale:v4];

  return v8;
}

- (void)_setupConstraints
{
  v3 = [(CertUIItemSummaryCell *)self contentView];
  v4 = MEMORY[0x277CCAAD0];
  v5 = [(CertUIItemSummaryCell *)self itemImageView];
  v6 = [(CertUIItemSummaryCell *)self itemImageView];
  v7 = [(CertUIItemSummaryCell *)self itemImageView];
  v8 = [v7 image];
  [v8 size];
  v10 = [v4 constraintWithItem:v5 attribute:7 relatedBy:0 toItem:v6 attribute:7 multiplier:0.0 constant:v9];
  [v3 addConstraint:v10];

  v11 = [(CertUIItemSummaryCell *)self contentView];
  v12 = MEMORY[0x277CCAAD0];
  v13 = [(CertUIItemSummaryCell *)self itemImageView];
  v14 = [(CertUIItemSummaryCell *)self itemImageView];
  v15 = [(CertUIItemSummaryCell *)self itemImageView];
  v16 = [v15 image];
  [v16 size];
  v17 = [v12 constraintWithItem:v13 attribute:8 relatedBy:0 toItem:v14 attribute:8 multiplier:0.0 constant:?];
  [v11 addConstraint:v17];

  v18 = [(CertUIItemSummaryCell *)self contentView];
  v19 = MEMORY[0x277CCAAD0];
  v20 = [(CertUIItemSummaryCell *)self itemImageView];
  v21 = [(CertUIItemSummaryCell *)self contentView];
  v22 = [v19 constraintWithItem:v20 attribute:1 relatedBy:0 toItem:v21 attribute:1 multiplier:1.0 constant:15.0];
  [v18 addConstraint:v22];

  v23 = [(CertUIItemSummaryCell *)self contentView];
  v24 = MEMORY[0x277CCAAD0];
  v25 = [(CertUIItemSummaryCell *)self itemImageView];
  v26 = [(CertUIItemSummaryCell *)self contentView];
  v27 = [v24 constraintWithItem:v25 attribute:10 relatedBy:0 toItem:v26 attribute:10 multiplier:1.0 constant:0.0];
  [v23 addConstraint:v27];

  v28 = MEMORY[0x277CCAAD0];
  v29 = [(CertUIItemSummaryCell *)self contentView];
  v30 = [(CertUIItemSummaryCell *)self itemImageView];
  v88 = [v28 constraintWithItem:v29 attribute:8 relatedBy:1 toItem:v30 attribute:8 multiplier:1.0 constant:16.0];

  LODWORD(v31) = 1148829696;
  [v88 setPriority:v31];
  v32 = [(CertUIItemSummaryCell *)self contentView];
  [v32 addConstraint:v88];

  v33 = [(CertUIItemSummaryCell *)self itemTitleView];
  v34 = MEMORY[0x277CCAAD0];
  v35 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  v36 = [(CertUIItemSummaryCell *)self itemTitleView];
  v37 = [v34 constraintWithItem:v35 attribute:3 relatedBy:0 toItem:v36 attribute:3 multiplier:1.0 constant:0.0];
  [v33 addConstraint:v37];

  v38 = [(CertUIItemSummaryCell *)self itemTitleView];
  v39 = MEMORY[0x277CCAAD0];
  v40 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  v41 = [(CertUIItemSummaryCell *)self itemTitleView];
  v42 = [v39 constraintWithItem:v40 attribute:1 relatedBy:0 toItem:v41 attribute:1 multiplier:1.0 constant:0.0];
  [v38 addConstraint:v42];

  v43 = [(CertUIItemSummaryCell *)self itemTitleView];
  v44 = MEMORY[0x277CCAAD0];
  v45 = [(CertUIItemSummaryCell *)self itemTitleView];
  v46 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  v47 = [v44 constraintWithItem:v45 attribute:2 relatedBy:1 toItem:v46 attribute:2 multiplier:1.0 constant:0.0];
  [v43 addConstraint:v47];

  v48 = [(CertUIItemSummaryCell *)self itemTitleView];
  v49 = MEMORY[0x277CCAAD0];
  v50 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  v51 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  v52 = [v49 constraintWithItem:v50 attribute:3 relatedBy:0 toItem:v51 attribute:4 multiplier:1.0 constant:0.0];
  [v48 addConstraint:v52];

  v53 = [(CertUIItemSummaryCell *)self itemTitleView];
  v54 = MEMORY[0x277CCAAD0];
  v55 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  v56 = [(CertUIItemSummaryCell *)self itemTitleView];
  v57 = [v54 constraintWithItem:v55 attribute:1 relatedBy:0 toItem:v56 attribute:1 multiplier:1.0 constant:0.0];
  [v53 addConstraint:v57];

  v58 = [(CertUIItemSummaryCell *)self itemTitleView];
  v59 = MEMORY[0x277CCAAD0];
  v60 = [(CertUIItemSummaryCell *)self itemTitleView];
  v61 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  v62 = [v59 constraintWithItem:v60 attribute:2 relatedBy:1 toItem:v61 attribute:2 multiplier:1.0 constant:0.0];
  [v58 addConstraint:v62];

  v63 = [(CertUIItemSummaryCell *)self itemTitleView];
  v64 = MEMORY[0x277CCAAD0];
  v65 = [(CertUIItemSummaryCell *)self itemTitleView];
  v66 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  v67 = [v64 constraintWithItem:v65 attribute:4 relatedBy:0 toItem:v66 attribute:4 multiplier:1.0 constant:0.0];
  [v63 addConstraint:v67];

  v68 = [(CertUIItemSummaryCell *)self contentView];
  v69 = MEMORY[0x277CCAAD0];
  v70 = [(CertUIItemSummaryCell *)self itemTitleView];
  v71 = [(CertUIItemSummaryCell *)self itemImageView];
  v72 = [v69 constraintWithItem:v70 attribute:10 relatedBy:0 toItem:v71 attribute:10 multiplier:1.0 constant:0.0];
  [v68 addConstraint:v72];

  v73 = [(CertUIItemSummaryCell *)self contentView];
  v74 = MEMORY[0x277CCAAD0];
  v75 = [(CertUIItemSummaryCell *)self itemTitleView];
  v76 = [(CertUIItemSummaryCell *)self itemImageView];
  v77 = [v74 constraintWithItem:v75 attribute:1 relatedBy:0 toItem:v76 attribute:2 multiplier:1.0 constant:12.0];
  [v73 addConstraint:v77];

  v78 = [(CertUIItemSummaryCell *)self contentView];
  v79 = MEMORY[0x277CCAAD0];
  v80 = [(CertUIItemSummaryCell *)self itemTitleView];
  v81 = [(CertUIItemSummaryCell *)self contentView];
  v82 = [v79 constraintWithItem:v80 attribute:2 relatedBy:0 toItem:v81 attribute:2 multiplier:1.0 constant:-12.0];
  [v78 addConstraint:v82];

  v83 = [(CertUIItemSummaryCell *)self contentView];
  v84 = MEMORY[0x277CCAAD0];
  v85 = [(CertUIItemSummaryCell *)self contentView];
  v86 = [(CertUIItemSummaryCell *)self itemTitleView];
  v87 = [v84 constraintWithItem:v85 attribute:8 relatedBy:1 toItem:v86 attribute:8 multiplier:1.0 constant:0.0];
  [v83 addConstraint:v87];
}

- (double)cellHeight
{
  v2 = [(CertUIItemSummaryCell *)self itemImageView];
  v3 = [v2 image];
  [v3 size];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      v5 = 72.0;
    }

    else
    {
      v5 = 58.0;
    }
  }

  return v5 + 16.0;
}

+ (double)titleOriginX
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom] == 1;

  return dbl_2433CA2C0[v3];
}

@end