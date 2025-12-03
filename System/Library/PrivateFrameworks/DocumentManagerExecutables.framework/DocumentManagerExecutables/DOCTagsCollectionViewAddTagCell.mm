@interface DOCTagsCollectionViewAddTagCell
- (DOCTagsCollectionViewAddTagCell)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation DOCTagsCollectionViewAddTagCell

- (DOCTagsCollectionViewAddTagCell)initWithFrame:(CGRect)frame
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = DOCTagsCollectionViewAddTagCell;
  v3 = [(DOCTagsCollectionViewAddTagCell *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    addTagLabel = v3->_addTagLabel;
    v3->_addTagLabel = v4;

    [(UILabel *)v3->_addTagLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    tintColor = [(DOCTagsCollectionViewAddTagCell *)v3 tintColor];
    [(UILabel *)v3->_addTagLabel setTextColor:tintColor];

    v7 = MEMORY[0x277D74300];
    v8 = *MEMORY[0x277D76968];
    traitCollection = [(DOCTagsCollectionViewAddTagCell *)v3 traitCollection];
    v10 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:traitCollection];
    [(UILabel *)v3->_addTagLabel setFont:v10];

    [(UILabel *)v3->_addTagLabel setAdjustsFontForContentSizeCategory:1];
    v11 = _DocumentManagerBundle();
    v12 = [v11 localizedStringForKey:@"Add Tag [Action Title]" value:@"Add Tag" table:@"Localizable"];
    [(UILabel *)v3->_addTagLabel setText:v12];

    contentView = [(DOCTagsCollectionViewAddTagCell *)v3 contentView];
    addTagLabel = [(DOCTagsCollectionViewAddTagCell *)v3 addTagLabel];
    [contentView addSubview:addTagLabel];

    v25 = MEMORY[0x277CCAAD0];
    leadingAnchor = [contentView leadingAnchor];
    addTagLabel2 = [(DOCTagsCollectionViewAddTagCell *)v3 addTagLabel];
    leadingAnchor2 = [addTagLabel2 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v33[0] = v28;
    trailingAnchor = [contentView trailingAnchor];
    addTagLabel3 = [(DOCTagsCollectionViewAddTagCell *)v3 addTagLabel];
    trailingAnchor2 = [addTagLabel3 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v33[1] = v15;
    firstBaselineAnchor = [(UILabel *)v3->_addTagLabel firstBaselineAnchor];
    topAnchor = [contentView topAnchor];
    v18 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:0.727272727];
    v33[2] = v18;
    bottomAnchor = [contentView bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v3->_addTagLabel lastBaselineAnchor];
    v21 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:0.52173913];
    v33[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
    [v25 activateConstraints:v22];
  }

  return v3;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = DOCTagsCollectionViewAddTagCell;
  [(DOCTagsCollectionViewAddTagCell *)&v5 tintColorDidChange];
  tintColor = [(DOCTagsCollectionViewAddTagCell *)self tintColor];
  addTagLabel = [(DOCTagsCollectionViewAddTagCell *)self addTagLabel];
  [addTagLabel setTextColor:tintColor];
}

@end