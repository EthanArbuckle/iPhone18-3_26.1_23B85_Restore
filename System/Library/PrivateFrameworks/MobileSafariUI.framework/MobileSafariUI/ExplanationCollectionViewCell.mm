@interface ExplanationCollectionViewCell
- (ExplanationCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ExplanationCollectionViewCell

- (ExplanationCollectionViewCell)initWithFrame:(CGRect)frame
{
  v39[7] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = ExplanationCollectionViewCell;
  v3 = [(ExplanationCollectionViewCell *)&v38 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v4;

    [(UILabel *)v3->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_headerLabel setTextColor:labelColor];

    [(UILabel *)v3->_headerLabel setTextAlignment:1];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v7;

    [(UILabel *)v3->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_bodyLabel setTextColor:labelColor2];

    [(UILabel *)v3->_bodyLabel setNumberOfLines:0];
    [(UILabel *)v3->_bodyLabel setTextAlignment:1];
    contentView = [(ExplanationCollectionViewCell *)v3 contentView];
    tertiarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] tertiarySystemGroupedBackgroundColor];
    [contentView setBackgroundColor:tertiarySystemGroupedBackgroundColor];

    [contentView _setOverrideUserInterfaceStyle:2];
    [contentView _setContinuousCornerRadius:8.0];
    UIEdgeInsetsMakeWithEdges();
    [contentView setLayoutMargins:?];
    [contentView addSubview:v3->_headerLabel];
    [contentView addSubview:v3->_bodyLabel];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v27 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILabel *)v3->_headerLabel leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v34;
    trailingAnchor = [(UILabel *)v3->_headerLabel trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[1] = v31;
    topAnchor = [(UILabel *)v3->_headerLabel topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[2] = v28;
    topAnchor3 = [(UILabel *)v3->_bodyLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->_headerLabel bottomAnchor];
    v24 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
    v39[3] = v24;
    leadingAnchor3 = [(UILabel *)v3->_bodyLabel leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v12 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v39[4] = v12;
    trailingAnchor3 = [(UILabel *)v3->_bodyLabel trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v39[5] = v15;
    bottomAnchor2 = [(UILabel *)v3->_bodyLabel bottomAnchor];
    bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
    v18 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v39[6] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:7];
    [v27 activateConstraints:v19];

    v20 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = ExplanationCollectionViewCell;
  [(ExplanationCollectionViewCell *)&v5 layoutSubviews];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [(UILabel *)self->_headerLabel setFont:v3];

  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_bodyLabel setFont:v4];

  [(UILabel *)self->_bodyLabel bounds];
  [(UILabel *)self->_bodyLabel setPreferredMaxLayoutWidth:CGRectGetWidth(v6)];
}

@end