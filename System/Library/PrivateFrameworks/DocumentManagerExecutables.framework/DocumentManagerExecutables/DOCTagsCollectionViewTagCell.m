@interface DOCTagsCollectionViewTagCell
- (DOCTagsCollectionViewTagCell)initWithFrame:(CGRect)a3;
- (double)maxTagWidth;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
@end

@implementation DOCTagsCollectionViewTagCell

- (DOCTagsCollectionViewTagCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v37[5] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = DOCTagsCollectionViewTagCell;
  v7 = [(DOCTagsCollectionViewTagCell *)&v36 initWithFrame:?];
  if (v7)
  {
    v8 = [[DOCTagsCollectionItemContentView alloc] initWithFrame:x, y, width, height];
    tagView = v7->_tagView;
    v7->_tagView = v8;

    [(DOCTagsCollectionItemContentView *)v7->_tagView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(DOCTagsCollectionViewTagCell *)v7 contentView];
    v11 = [(DOCTagsCollectionViewTagCell *)v7 contentView];
    v12 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    [v11 addSubview:v12];

    v27 = v10;
    v28 = MEMORY[0x277CCAAD0];
    v34 = [v10 leadingAnchor];
    v35 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    v33 = [v35 leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v37[0] = v32;
    v31 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    v30 = [v31 widthAnchor];
    [(DOCTagsCollectionViewTagCell *)v7 maxTagWidth];
    v29 = [v30 constraintLessThanOrEqualToConstant:?];
    v37[1] = v29;
    v25 = [v10 trailingAnchor];
    v26 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    v24 = [v26 trailingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v37[2] = v23;
    v13 = [v10 topAnchor];
    v14 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v37[3] = v16;
    v17 = [v10 bottomAnchor];
    v18 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v37[4] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
    [v28 activateConstraints:v21];
  }

  return v7;
}

- (double)maxTagWidth
{
  v2 = [MEMORY[0x277D75520] defaultMetrics];
  [v2 scaledValueForValue:125.0];
  v4 = v3;

  return v4;
}

- (id)viewForFirstBaselineLayout
{
  v2 = [(DOCTagsCollectionViewTagCell *)self tagView];
  v3 = [v2 viewForFirstBaselineLayout];

  return v3;
}

- (id)viewForLastBaselineLayout
{
  v2 = [(DOCTagsCollectionViewTagCell *)self tagView];
  v3 = [v2 viewForLastBaselineLayout];

  return v3;
}

@end