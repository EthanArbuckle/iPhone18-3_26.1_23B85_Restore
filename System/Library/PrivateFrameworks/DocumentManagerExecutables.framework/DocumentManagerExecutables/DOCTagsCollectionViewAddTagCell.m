@interface DOCTagsCollectionViewAddTagCell
- (DOCTagsCollectionViewAddTagCell)initWithFrame:(CGRect)a3;
- (void)tintColorDidChange;
@end

@implementation DOCTagsCollectionViewAddTagCell

- (DOCTagsCollectionViewAddTagCell)initWithFrame:(CGRect)a3
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = DOCTagsCollectionViewAddTagCell;
  v3 = [(DOCTagsCollectionViewAddTagCell *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    addTagLabel = v3->_addTagLabel;
    v3->_addTagLabel = v4;

    [(UILabel *)v3->_addTagLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(DOCTagsCollectionViewAddTagCell *)v3 tintColor];
    [(UILabel *)v3->_addTagLabel setTextColor:v6];

    v7 = MEMORY[0x277D74300];
    v8 = *MEMORY[0x277D76968];
    v9 = [(DOCTagsCollectionViewAddTagCell *)v3 traitCollection];
    v10 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v9];
    [(UILabel *)v3->_addTagLabel setFont:v10];

    [(UILabel *)v3->_addTagLabel setAdjustsFontForContentSizeCategory:1];
    v11 = _DocumentManagerBundle();
    v12 = [v11 localizedStringForKey:@"Add Tag [Action Title]" value:@"Add Tag" table:@"Localizable"];
    [(UILabel *)v3->_addTagLabel setText:v12];

    v13 = [(DOCTagsCollectionViewAddTagCell *)v3 contentView];
    v14 = [(DOCTagsCollectionViewAddTagCell *)v3 addTagLabel];
    [v13 addSubview:v14];

    v25 = MEMORY[0x277CCAAD0];
    v30 = [v13 leadingAnchor];
    v31 = [(DOCTagsCollectionViewAddTagCell *)v3 addTagLabel];
    v29 = [v31 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v33[0] = v28;
    v26 = [v13 trailingAnchor];
    v27 = [(DOCTagsCollectionViewAddTagCell *)v3 addTagLabel];
    v24 = [v27 trailingAnchor];
    v15 = [v26 constraintEqualToAnchor:v24];
    v33[1] = v15;
    v16 = [(UILabel *)v3->_addTagLabel firstBaselineAnchor];
    v17 = [v13 topAnchor];
    v18 = [v16 constraintEqualToSystemSpacingBelowAnchor:v17 multiplier:0.727272727];
    v33[2] = v18;
    v19 = [v13 bottomAnchor];
    v20 = [(UILabel *)v3->_addTagLabel lastBaselineAnchor];
    v21 = [v19 constraintEqualToSystemSpacingBelowAnchor:v20 multiplier:0.52173913];
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
  v3 = [(DOCTagsCollectionViewAddTagCell *)self tintColor];
  v4 = [(DOCTagsCollectionViewAddTagCell *)self addTagLabel];
  [v4 setTextColor:v3];
}

@end