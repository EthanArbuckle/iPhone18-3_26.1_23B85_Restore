@interface HUBannerTableViewCell
- (BOOL)areCellContentsHidden;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HFItem)item;
- (HUBannerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUBannerViewDelegate)delegate;
- (HUGridCellLayoutOptions)layoutOptions;
- (void)prepareForReuse;
- (void)setCellContentsHidden:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setItem:(id)a3;
- (void)setLayoutOptions:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUBannerTableViewCell

- (HUBannerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v28.receiver = self;
  v28.super_class = HUBannerTableViewCell;
  v4 = [(HUBannerTableViewCell *)&v28 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc([objc_opt_class() bannerViewClass]);
    v6 = [(HUBannerTableViewCell *)v4 contentView];
    [v6 bounds];
    v7 = [v5 initWithFrame:?];
    bannerView = v4->_bannerView;
    v4->_bannerView = v7;

    [(HUBannerView *)v4->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(HUBannerTableViewCell *)v4 contentView];
    [v9 addSubview:v4->_bannerView];

    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(HUBannerView *)v4->_bannerView leadingAnchor];
    v12 = [(HUBannerTableViewCell *)v4 contentView];
    v13 = [v12 leadingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v10 addObject:v14];

    v15 = [(HUBannerView *)v4->_bannerView trailingAnchor];
    v16 = [(HUBannerTableViewCell *)v4 contentView];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    [v10 addObject:v18];

    v19 = [(HUBannerView *)v4->_bannerView topAnchor];
    v20 = [(HUBannerTableViewCell *)v4 contentView];
    v21 = [v20 topAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v10 addObject:v22];

    v23 = [(HUBannerView *)v4->_bannerView bottomAnchor];
    v24 = [(HUBannerTableViewCell *)v4 contentView];
    v25 = [v24 bottomAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];
    [v10 addObject:v26];

    [MEMORY[0x277CCAAD0] activateConstraints:v10];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HUBannerTableViewCell *)self bannerView];
  *&v10 = a4;
  *&v11 = a5;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
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
  v2 = [(HUBannerTableViewCell *)self bannerView];
  v3 = [v2 item];

  return v3;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  v5 = [(HUBannerTableViewCell *)self bannerView];
  [v5 setItem:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUBannerTableViewCell *)self bannerView];
  [v4 updateUIWithAnimation:v3];
}

- (void)setLayoutOptions:(id)a3
{
  v4 = a3;
  v5 = [(HUBannerTableViewCell *)self bannerView];
  [v5 setLayoutOptions:v4];
}

- (HUGridCellLayoutOptions)layoutOptions
{
  v2 = [(HUBannerTableViewCell *)self bannerView];
  v3 = [v2 layoutOptions];

  return v3;
}

- (void)setCellContentsHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUBannerTableViewCell *)self bannerView];
  [v4 setCellContentsHidden:v3];
}

- (BOOL)areCellContentsHidden
{
  v2 = [(HUBannerTableViewCell *)self bannerView];
  v3 = [v2 areCellContentsHidden];

  return v3;
}

- (void)prepareForReuse
{
  v3 = [(HUBannerTableViewCell *)self bannerView];
  [v3 prepareForReuse];

  v4.receiver = self;
  v4.super_class = HUBannerTableViewCell;
  [(HUBannerTableViewCell *)&v4 prepareForReuse];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(HUBannerTableViewCell *)self bannerView];
  [v6 setHighlighted:v5 animated:v4];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HUBannerTableViewCell *)self bannerView];
  [v5 setDelegate:v4];
}

- (HUBannerViewDelegate)delegate
{
  v2 = [(HUBannerTableViewCell *)self bannerView];
  v3 = [v2 delegate];

  return v3;
}

@end