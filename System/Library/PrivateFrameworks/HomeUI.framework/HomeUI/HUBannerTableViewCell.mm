@interface HUBannerTableViewCell
- (BOOL)areCellContentsHidden;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HFItem)item;
- (HUBannerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUBannerViewDelegate)delegate;
- (HUGridCellLayoutOptions)layoutOptions;
- (void)prepareForReuse;
- (void)setCellContentsHidden:(BOOL)hidden;
- (void)setDelegate:(id)delegate;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setItem:(id)item;
- (void)setLayoutOptions:(id)options;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUBannerTableViewCell

- (HUBannerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v28.receiver = self;
  v28.super_class = HUBannerTableViewCell;
  v4 = [(HUBannerTableViewCell *)&v28 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc([objc_opt_class() bannerViewClass]);
    contentView = [(HUBannerTableViewCell *)v4 contentView];
    [contentView bounds];
    v7 = [v5 initWithFrame:?];
    bannerView = v4->_bannerView;
    v4->_bannerView = v7;

    [(HUBannerView *)v4->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(HUBannerTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_bannerView];

    array = [MEMORY[0x277CBEB18] array];
    leadingAnchor = [(HUBannerView *)v4->_bannerView leadingAnchor];
    contentView3 = [(HUBannerTableViewCell *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v14];

    trailingAnchor = [(HUBannerView *)v4->_bannerView trailingAnchor];
    contentView4 = [(HUBannerTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v18];

    topAnchor = [(HUBannerView *)v4->_bannerView topAnchor];
    contentView5 = [(HUBannerTableViewCell *)v4 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v22];

    bottomAnchor = [(HUBannerView *)v4->_bannerView bottomAnchor];
    contentView6 = [(HUBannerTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v26];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  bannerView = [(HUBannerTableViewCell *)self bannerView];
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
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  item = [bannerView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  [bannerView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  [bannerView updateUIWithAnimation:animationCopy];
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  [bannerView setLayoutOptions:optionsCopy];
}

- (HUGridCellLayoutOptions)layoutOptions
{
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  layoutOptions = [bannerView layoutOptions];

  return layoutOptions;
}

- (void)setCellContentsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  [bannerView setCellContentsHidden:hiddenCopy];
}

- (BOOL)areCellContentsHidden
{
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  areCellContentsHidden = [bannerView areCellContentsHidden];

  return areCellContentsHidden;
}

- (void)prepareForReuse
{
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  [bannerView prepareForReuse];

  v4.receiver = self;
  v4.super_class = HUBannerTableViewCell;
  [(HUBannerTableViewCell *)&v4 prepareForReuse];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  [bannerView setHighlighted:highlightedCopy animated:animatedCopy];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  [bannerView setDelegate:delegateCopy];
}

- (HUBannerViewDelegate)delegate
{
  bannerView = [(HUBannerTableViewCell *)self bannerView];
  delegate = [bannerView delegate];

  return delegate;
}

@end