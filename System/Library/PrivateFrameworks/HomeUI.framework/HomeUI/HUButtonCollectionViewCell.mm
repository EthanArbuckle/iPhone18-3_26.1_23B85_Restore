@interface HUButtonCollectionViewCell
- (BOOL)bottomSeparatorVisible;
- (BOOL)isDisabled;
- (BOOL)topSeparatorVisible;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HFItem)item;
- (HUButtonCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomSeparatorVisible:(BOOL)visible;
- (void)setDisabled:(BOOL)disabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItem:(id)item;
- (void)setTopSeparatorVisible:(BOOL)visible;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUButtonCollectionViewCell

- (HUButtonCollectionViewCell)initWithFrame:(CGRect)frame
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUButtonCollectionViewCell;
  v3 = [(HUButtonCollectionViewCell *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUButtonCollectionViewCell *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = [[HUButtonCell alloc] initWithStyle:0 reuseIdentifier:0];
    buttonView = v3->_buttonView;
    v3->_buttonView = v5;

    [(HUButtonCell *)v3->_buttonView setUserInteractionEnabled:0];
    contentView = [(HUButtonCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_buttonView];

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

          contentView2 = [(HUButtonCollectionViewCell *)v3 contentView];
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
  buttonView = [(HUButtonCollectionViewCell *)self buttonView];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [buttonView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
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
  v26.receiver = self;
  v26.super_class = HUButtonCollectionViewCell;
  [(HUButtonCollectionViewCell *)&v26 layoutSubviews];
  contentView = [(HUButtonCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  buttonView = [(HUButtonCollectionViewCell *)self buttonView];
  [buttonView setFrame:{v5, v7, v9, v11}];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v15 = 1.0 / v14;

  [(HUButtonCollectionViewCell *)self layoutMargins];
  v17 = v16;
  contentView2 = [(HUButtonCollectionViewCell *)self contentView];
  [contentView2 bounds];
  Width = CGRectGetWidth(v27);
  topSeparatorView = [(HUButtonCollectionViewCell *)self topSeparatorView];
  [topSeparatorView setFrame:{v17, 0.0, Width, v15}];

  contentView3 = [(HUButtonCollectionViewCell *)self contentView];
  [contentView3 bounds];
  v22 = CGRectGetMaxY(v28) - v15;
  contentView4 = [(HUButtonCollectionViewCell *)self contentView];
  [contentView4 bounds];
  v24 = CGRectGetWidth(v29);
  bottomSeparatorView = [(HUButtonCollectionViewCell *)self bottomSeparatorView];
  [bottomSeparatorView setFrame:{0.0, v22, v24, v15}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUButtonCollectionViewCell;
  [(HUButtonCollectionViewCell *)&v3 prepareForReuse];
  [(HUButtonCollectionViewCell *)self setTopSeparatorVisible:0];
  [(HUButtonCollectionViewCell *)self setBottomSeparatorVisible:0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v6.receiver = self;
  v6.super_class = HUButtonCollectionViewCell;
  [(HUButtonCollectionViewCell *)&v6 setHighlighted:?];
  if (highlighted)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v5 = ;
  [(HUButtonCollectionViewCell *)self setBackgroundColor:v5];
}

- (HFItem)item
{
  buttonView = [(HUButtonCollectionViewCell *)self buttonView];
  item = [buttonView item];

  return item;
}

- (void)setItem:(id)item
{
  itemCopy = item;
  buttonView = [(HUButtonCollectionViewCell *)self buttonView];
  [buttonView setItem:itemCopy];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  buttonView = [(HUButtonCollectionViewCell *)self buttonView];
  [buttonView updateUIWithAnimation:animationCopy];
}

- (BOOL)topSeparatorVisible
{
  topSeparatorView = [(HUButtonCollectionViewCell *)self topSeparatorView];
  isHidden = [topSeparatorView isHidden];

  return isHidden ^ 1;
}

- (void)setTopSeparatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  topSeparatorView = [(HUButtonCollectionViewCell *)self topSeparatorView];
  [topSeparatorView setHidden:!visibleCopy];
}

- (BOOL)bottomSeparatorVisible
{
  bottomSeparatorView = [(HUButtonCollectionViewCell *)self bottomSeparatorView];
  isHidden = [bottomSeparatorView isHidden];

  return isHidden ^ 1;
}

- (void)setBottomSeparatorVisible:(BOOL)visible
{
  visibleCopy = visible;
  bottomSeparatorView = [(HUButtonCollectionViewCell *)self bottomSeparatorView];
  [bottomSeparatorView setHidden:!visibleCopy];
}

- (BOOL)isDisabled
{
  buttonView = [(HUButtonCollectionViewCell *)self buttonView];
  isDisabled = [buttonView isDisabled];

  return isDisabled;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  buttonView = [(HUButtonCollectionViewCell *)self buttonView];
  [buttonView setDisabled:disabledCopy];
}

@end