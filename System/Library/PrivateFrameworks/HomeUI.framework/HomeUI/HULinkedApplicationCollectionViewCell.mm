@interface HULinkedApplicationCollectionViewCell
- (BOOL)bottomSeparatorVisible;
- (BOOL)topSeparatorVisible;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HFItem)item;
- (HULinkedApplicationCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomSeparatorVisible:(BOOL)visible;
- (void)setItem:(id)item;
- (void)setTopSeparatorVisible:(BOOL)visible;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HULinkedApplicationCollectionViewCell

- (HULinkedApplicationCollectionViewCell)initWithFrame:(CGRect)frame
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HULinkedApplicationCollectionViewCell;
  v3 = [(HULinkedApplicationCollectionViewCell *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HULinkedApplicationCollectionViewCell *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_alloc_init(HULinkedApplicationView);
    linkedApplicationView = v3->_linkedApplicationView;
    v3->_linkedApplicationView = v5;

    contentView = [(HULinkedApplicationCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_linkedApplicationView];

    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    topSeparatorView = v3->_topSeparatorView;
    v3->_topSeparatorView = v8;

    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v10;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v26[0] = v3->_topSeparatorView;
    v26[1] = v3->_bottomSeparatorView;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:{2, 0}];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          [v17 setHidden:1];
          tableSeparatorDarkColor = [MEMORY[0x277D75348] tableSeparatorDarkColor];
          [v17 setBackgroundColor:tableSeparatorDarkColor];

          contentView2 = [(HULinkedApplicationCollectionViewCell *)v3 contentView];
          [contentView2 addSubview:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v14);
    }
  }

  return v3;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  linkedApplicationView = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [linkedApplicationView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = HULinkedApplicationCollectionViewCell;
  [(HULinkedApplicationCollectionViewCell *)&v24 layoutSubviews];
  contentView = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  linkedApplicationView = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  [linkedApplicationView setFrame:{v5, v7, v9, v11}];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v15 = 1.0 / v14;

  contentView2 = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [contentView2 bounds];
  Width = CGRectGetWidth(v25);
  topSeparatorView = [(HULinkedApplicationCollectionViewCell *)self topSeparatorView];
  [topSeparatorView setFrame:{0.0, 0.0, Width, v15}];

  contentView3 = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [contentView3 bounds];
  v20 = CGRectGetMaxY(v26) - v15;
  contentView4 = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [contentView4 bounds];
  v22 = CGRectGetWidth(v27);
  bottomSeparatorView = [(HULinkedApplicationCollectionViewCell *)self bottomSeparatorView];
  [bottomSeparatorView setFrame:{0.0, v20, v22, v15}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HULinkedApplicationCollectionViewCell;
  [(HULinkedApplicationCollectionViewCell *)&v3 prepareForReuse];
  [(HULinkedApplicationCollectionViewCell *)self setTopSeparatorVisible:0];
  [(HULinkedApplicationCollectionViewCell *)self setBottomSeparatorVisible:0];
}

- (HFItem)item
{
  linkedApplicationView = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  item = [linkedApplicationView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  linkedApplicationView = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  [linkedApplicationView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  linkedApplicationView = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  [linkedApplicationView updateUIWithAnimation:animationCopy];
}

- (BOOL)topSeparatorVisible
{
  topSeparatorView = [(HULinkedApplicationCollectionViewCell *)self topSeparatorView];
  isHidden = [topSeparatorView isHidden];

  return isHidden ^ 1;
}

- (void)setTopSeparatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  topSeparatorView = [(HULinkedApplicationCollectionViewCell *)self topSeparatorView];
  [topSeparatorView setHidden:!visibleCopy];
}

- (BOOL)bottomSeparatorVisible
{
  bottomSeparatorView = [(HULinkedApplicationCollectionViewCell *)self bottomSeparatorView];
  isHidden = [bottomSeparatorView isHidden];

  return isHidden ^ 1;
}

- (void)setBottomSeparatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  bottomSeparatorView = [(HULinkedApplicationCollectionViewCell *)self bottomSeparatorView];
  [bottomSeparatorView setHidden:!visibleCopy];
}

@end