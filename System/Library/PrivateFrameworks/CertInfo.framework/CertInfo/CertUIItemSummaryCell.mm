@interface CertUIItemSummaryCell
+ (double)titleOriginX;
- (CertUIItemSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)cellHeight;
- (id)_profileImageAppropriateForDevice;
- (void)_setupCell;
- (void)_setupConstraints;
@end

@implementation CertUIItemSummaryCell

- (CertUIItemSummaryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CertUIItemSummaryCell;
  v4 = [(CertUIItemSummaryCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  _profileImageAppropriateForDevice = [(CertUIItemSummaryCell *)self _profileImageAppropriateForDevice];
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:_profileImageAppropriateForDevice];
  itemImageView = self->_itemImageView;
  self->_itemImageView = v3;

  [(UIImageView *)self->_itemImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CertUIItemSummaryCell *)self contentView];
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

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_itemSubtitleLabel setTextColor:systemGrayColor];

  v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
  itemTitleView = self->_itemTitleView;
  self->_itemTitleView = v18;

  [(UIView *)self->_itemTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_itemTitleView addSubview:self->_itemTitleLabel];
  [(UIView *)self->_itemTitleView addSubview:self->_itemSubtitleLabel];
  contentView2 = [(CertUIItemSummaryCell *)self contentView];
  [contentView2 addSubview:self->_itemTitleView];

  [(CertUIItemSummaryCell *)self _setupConstraints];
}

- (id)_profileImageAppropriateForDevice
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"profile-icon" inBundle:v6];
  v8 = [v7 _applicationIconImageForFormat:2 precomposed:1 scale:v4];

  return v8;
}

- (void)_setupConstraints
{
  contentView = [(CertUIItemSummaryCell *)self contentView];
  v4 = MEMORY[0x277CCAAD0];
  itemImageView = [(CertUIItemSummaryCell *)self itemImageView];
  itemImageView2 = [(CertUIItemSummaryCell *)self itemImageView];
  itemImageView3 = [(CertUIItemSummaryCell *)self itemImageView];
  image = [itemImageView3 image];
  [image size];
  v10 = [v4 constraintWithItem:itemImageView attribute:7 relatedBy:0 toItem:itemImageView2 attribute:7 multiplier:0.0 constant:v9];
  [contentView addConstraint:v10];

  contentView2 = [(CertUIItemSummaryCell *)self contentView];
  v12 = MEMORY[0x277CCAAD0];
  itemImageView4 = [(CertUIItemSummaryCell *)self itemImageView];
  itemImageView5 = [(CertUIItemSummaryCell *)self itemImageView];
  itemImageView6 = [(CertUIItemSummaryCell *)self itemImageView];
  image2 = [itemImageView6 image];
  [image2 size];
  v17 = [v12 constraintWithItem:itemImageView4 attribute:8 relatedBy:0 toItem:itemImageView5 attribute:8 multiplier:0.0 constant:?];
  [contentView2 addConstraint:v17];

  contentView3 = [(CertUIItemSummaryCell *)self contentView];
  v19 = MEMORY[0x277CCAAD0];
  itemImageView7 = [(CertUIItemSummaryCell *)self itemImageView];
  contentView4 = [(CertUIItemSummaryCell *)self contentView];
  v22 = [v19 constraintWithItem:itemImageView7 attribute:1 relatedBy:0 toItem:contentView4 attribute:1 multiplier:1.0 constant:15.0];
  [contentView3 addConstraint:v22];

  contentView5 = [(CertUIItemSummaryCell *)self contentView];
  v24 = MEMORY[0x277CCAAD0];
  itemImageView8 = [(CertUIItemSummaryCell *)self itemImageView];
  contentView6 = [(CertUIItemSummaryCell *)self contentView];
  v27 = [v24 constraintWithItem:itemImageView8 attribute:10 relatedBy:0 toItem:contentView6 attribute:10 multiplier:1.0 constant:0.0];
  [contentView5 addConstraint:v27];

  v28 = MEMORY[0x277CCAAD0];
  contentView7 = [(CertUIItemSummaryCell *)self contentView];
  itemImageView9 = [(CertUIItemSummaryCell *)self itemImageView];
  v88 = [v28 constraintWithItem:contentView7 attribute:8 relatedBy:1 toItem:itemImageView9 attribute:8 multiplier:1.0 constant:16.0];

  LODWORD(v31) = 1148829696;
  [v88 setPriority:v31];
  contentView8 = [(CertUIItemSummaryCell *)self contentView];
  [contentView8 addConstraint:v88];

  itemTitleView = [(CertUIItemSummaryCell *)self itemTitleView];
  v34 = MEMORY[0x277CCAAD0];
  itemTitleLabel = [(CertUIItemSummaryCell *)self itemTitleLabel];
  itemTitleView2 = [(CertUIItemSummaryCell *)self itemTitleView];
  v37 = [v34 constraintWithItem:itemTitleLabel attribute:3 relatedBy:0 toItem:itemTitleView2 attribute:3 multiplier:1.0 constant:0.0];
  [itemTitleView addConstraint:v37];

  itemTitleView3 = [(CertUIItemSummaryCell *)self itemTitleView];
  v39 = MEMORY[0x277CCAAD0];
  itemTitleLabel2 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  itemTitleView4 = [(CertUIItemSummaryCell *)self itemTitleView];
  v42 = [v39 constraintWithItem:itemTitleLabel2 attribute:1 relatedBy:0 toItem:itemTitleView4 attribute:1 multiplier:1.0 constant:0.0];
  [itemTitleView3 addConstraint:v42];

  itemTitleView5 = [(CertUIItemSummaryCell *)self itemTitleView];
  v44 = MEMORY[0x277CCAAD0];
  itemTitleView6 = [(CertUIItemSummaryCell *)self itemTitleView];
  itemTitleLabel3 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  v47 = [v44 constraintWithItem:itemTitleView6 attribute:2 relatedBy:1 toItem:itemTitleLabel3 attribute:2 multiplier:1.0 constant:0.0];
  [itemTitleView5 addConstraint:v47];

  itemTitleView7 = [(CertUIItemSummaryCell *)self itemTitleView];
  v49 = MEMORY[0x277CCAAD0];
  itemSubtitleLabel = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  itemTitleLabel4 = [(CertUIItemSummaryCell *)self itemTitleLabel];
  v52 = [v49 constraintWithItem:itemSubtitleLabel attribute:3 relatedBy:0 toItem:itemTitleLabel4 attribute:4 multiplier:1.0 constant:0.0];
  [itemTitleView7 addConstraint:v52];

  itemTitleView8 = [(CertUIItemSummaryCell *)self itemTitleView];
  v54 = MEMORY[0x277CCAAD0];
  itemSubtitleLabel2 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  itemTitleView9 = [(CertUIItemSummaryCell *)self itemTitleView];
  v57 = [v54 constraintWithItem:itemSubtitleLabel2 attribute:1 relatedBy:0 toItem:itemTitleView9 attribute:1 multiplier:1.0 constant:0.0];
  [itemTitleView8 addConstraint:v57];

  itemTitleView10 = [(CertUIItemSummaryCell *)self itemTitleView];
  v59 = MEMORY[0x277CCAAD0];
  itemTitleView11 = [(CertUIItemSummaryCell *)self itemTitleView];
  itemSubtitleLabel3 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  v62 = [v59 constraintWithItem:itemTitleView11 attribute:2 relatedBy:1 toItem:itemSubtitleLabel3 attribute:2 multiplier:1.0 constant:0.0];
  [itemTitleView10 addConstraint:v62];

  itemTitleView12 = [(CertUIItemSummaryCell *)self itemTitleView];
  v64 = MEMORY[0x277CCAAD0];
  itemTitleView13 = [(CertUIItemSummaryCell *)self itemTitleView];
  itemSubtitleLabel4 = [(CertUIItemSummaryCell *)self itemSubtitleLabel];
  v67 = [v64 constraintWithItem:itemTitleView13 attribute:4 relatedBy:0 toItem:itemSubtitleLabel4 attribute:4 multiplier:1.0 constant:0.0];
  [itemTitleView12 addConstraint:v67];

  contentView9 = [(CertUIItemSummaryCell *)self contentView];
  v69 = MEMORY[0x277CCAAD0];
  itemTitleView14 = [(CertUIItemSummaryCell *)self itemTitleView];
  itemImageView10 = [(CertUIItemSummaryCell *)self itemImageView];
  v72 = [v69 constraintWithItem:itemTitleView14 attribute:10 relatedBy:0 toItem:itemImageView10 attribute:10 multiplier:1.0 constant:0.0];
  [contentView9 addConstraint:v72];

  contentView10 = [(CertUIItemSummaryCell *)self contentView];
  v74 = MEMORY[0x277CCAAD0];
  itemTitleView15 = [(CertUIItemSummaryCell *)self itemTitleView];
  itemImageView11 = [(CertUIItemSummaryCell *)self itemImageView];
  v77 = [v74 constraintWithItem:itemTitleView15 attribute:1 relatedBy:0 toItem:itemImageView11 attribute:2 multiplier:1.0 constant:12.0];
  [contentView10 addConstraint:v77];

  contentView11 = [(CertUIItemSummaryCell *)self contentView];
  v79 = MEMORY[0x277CCAAD0];
  itemTitleView16 = [(CertUIItemSummaryCell *)self itemTitleView];
  contentView12 = [(CertUIItemSummaryCell *)self contentView];
  v82 = [v79 constraintWithItem:itemTitleView16 attribute:2 relatedBy:0 toItem:contentView12 attribute:2 multiplier:1.0 constant:-12.0];
  [contentView11 addConstraint:v82];

  contentView13 = [(CertUIItemSummaryCell *)self contentView];
  v84 = MEMORY[0x277CCAAD0];
  contentView14 = [(CertUIItemSummaryCell *)self contentView];
  itemTitleView17 = [(CertUIItemSummaryCell *)self itemTitleView];
  v87 = [v84 constraintWithItem:contentView14 attribute:8 relatedBy:1 toItem:itemTitleView17 attribute:8 multiplier:1.0 constant:0.0];
  [contentView13 addConstraint:v87];
}

- (double)cellHeight
{
  itemImageView = [(CertUIItemSummaryCell *)self itemImageView];
  image = [itemImageView image];
  [image size];
  v5 = v4;

  if (v5 <= 0.0)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return dbl_2433CA2C0[v3];
}

@end