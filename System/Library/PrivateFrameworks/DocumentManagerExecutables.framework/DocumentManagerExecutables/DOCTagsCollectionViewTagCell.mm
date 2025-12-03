@interface DOCTagsCollectionViewTagCell
- (DOCTagsCollectionViewTagCell)initWithFrame:(CGRect)frame;
- (double)maxTagWidth;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
@end

@implementation DOCTagsCollectionViewTagCell

- (DOCTagsCollectionViewTagCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v37[5] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = DOCTagsCollectionViewTagCell;
  v7 = [(DOCTagsCollectionViewTagCell *)&v36 initWithFrame:?];
  if (v7)
  {
    height = [[DOCTagsCollectionItemContentView alloc] initWithFrame:x, y, width, height];
    tagView = v7->_tagView;
    v7->_tagView = height;

    [(DOCTagsCollectionItemContentView *)v7->_tagView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(DOCTagsCollectionViewTagCell *)v7 contentView];
    contentView2 = [(DOCTagsCollectionViewTagCell *)v7 contentView];
    tagView = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    [contentView2 addSubview:tagView];

    v27 = contentView;
    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor = [contentView leadingAnchor];
    tagView2 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    leadingAnchor2 = [tagView2 leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[0] = v32;
    tagView3 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    widthAnchor = [tagView3 widthAnchor];
    [(DOCTagsCollectionViewTagCell *)v7 maxTagWidth];
    v29 = [widthAnchor constraintLessThanOrEqualToConstant:?];
    v37[1] = v29;
    trailingAnchor = [contentView trailingAnchor];
    tagView4 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    trailingAnchor2 = [tagView4 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[2] = v23;
    topAnchor = [contentView topAnchor];
    tagView5 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    topAnchor2 = [tagView5 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[3] = v16;
    bottomAnchor = [contentView bottomAnchor];
    tagView6 = [(DOCTagsCollectionViewTagCell *)v7 tagView];
    bottomAnchor2 = [tagView6 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[4] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
    [v28 activateConstraints:v21];
  }

  return v7;
}

- (double)maxTagWidth
{
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:125.0];
  v4 = v3;

  return v4;
}

- (id)viewForFirstBaselineLayout
{
  tagView = [(DOCTagsCollectionViewTagCell *)self tagView];
  viewForFirstBaselineLayout = [tagView viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
}

- (id)viewForLastBaselineLayout
{
  tagView = [(DOCTagsCollectionViewTagCell *)self tagView];
  viewForLastBaselineLayout = [tagView viewForLastBaselineLayout];

  return viewForLastBaselineLayout;
}

@end