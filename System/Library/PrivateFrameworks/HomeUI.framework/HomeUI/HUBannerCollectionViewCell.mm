@interface HUBannerCollectionViewCell
- (BOOL)areCellContentsHidden;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HFItem)item;
- (HUBannerCollectionViewCell)initWithFrame:(CGRect)frame;
- (HUBannerViewDelegate)delegate;
- (HUGridCellLayoutOptions)layoutOptions;
- (void)prepareForReuse;
- (void)setCellContentsHidden:(BOOL)hidden;
- (void)setDelegate:(id)delegate;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItem:(id)item;
- (void)setLayoutOptions:(id)options;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUBannerCollectionViewCell

- (HUBannerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = HUBannerCollectionViewCell;
  v3 = [(HUBannerCollectionViewCell *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc([objc_opt_class() bannerViewClass]);
    contentView = [(HUBannerCollectionViewCell *)v3 contentView];
    [contentView bounds];
    v6 = [v4 initWithFrame:?];
    bannerView = v3->_bannerView;
    v3->_bannerView = v6;

    [(HUBannerView *)v3->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HUBannerCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_bannerView];

    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(HUBannerView *)v3->_bannerView leadingAnchor];
    contentView3 = [(HUBannerCollectionViewCell *)v3 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v13];

    trailingAnchor = [(HUBannerView *)v3->_bannerView trailingAnchor];
    contentView4 = [(HUBannerCollectionViewCell *)v3 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v17];

    topAnchor = [(HUBannerView *)v3->_bannerView topAnchor];
    contentView5 = [(HUBannerCollectionViewCell *)v3 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v21];

    bottomAnchor = [(HUBannerView *)v3->_bannerView bottomAnchor];
    contentView6 = [(HUBannerCollectionViewCell *)v3 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v25];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v3;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [bannerView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (HFItem)item
{
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  item = [bannerView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  [bannerView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  [bannerView updateUIWithAnimation:animationCopy];
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  [bannerView setLayoutOptions:optionsCopy];
}

- (HUGridCellLayoutOptions)layoutOptions
{
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  layoutOptions = [bannerView layoutOptions];

  return layoutOptions;
}

- (void)setCellContentsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  [bannerView setCellContentsHidden:hiddenCopy];
}

- (BOOL)areCellContentsHidden
{
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  areCellContentsHidden = [bannerView areCellContentsHidden];

  return areCellContentsHidden;
}

- (void)prepareForReuse
{
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  [bannerView prepareForReuse];

  v4.receiver = self;
  v4.super_class = HUBannerCollectionViewCell;
  [(HUBannerCollectionViewCell *)&v4 prepareForReuse];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  [bannerView setHighlighted:highlightedCopy animated:0];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  [bannerView setDelegate:delegateCopy];
}

- (HUBannerViewDelegate)delegate
{
  bannerView = [(HUBannerCollectionViewCell *)self bannerView];
  delegate = [bannerView delegate];

  return delegate;
}

@end