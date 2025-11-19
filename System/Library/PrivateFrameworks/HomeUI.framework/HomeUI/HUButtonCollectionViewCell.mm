@interface HUButtonCollectionViewCell
- (BOOL)bottomSeparatorVisible;
- (BOOL)isDisabled;
- (BOOL)topSeparatorVisible;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HFItem)item;
- (HUButtonCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomSeparatorVisible:(BOOL)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)setTopSeparatorVisible:(BOOL)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUButtonCollectionViewCell

- (HUButtonCollectionViewCell)initWithFrame:(CGRect)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HUButtonCollectionViewCell;
  v3 = [(HUButtonCollectionViewCell *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HUButtonCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = [[HUButtonCell alloc] initWithStyle:0 reuseIdentifier:0];
    buttonView = v3->_buttonView;
    v3->_buttonView = v5;

    [(HUButtonCell *)v3->_buttonView setUserInteractionEnabled:0];
    v7 = [(HUButtonCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_buttonView];

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
          v18 = [MEMORY[0x277D75348] tableSeparatorDarkColor];
          [v17 setBackgroundColor:v18];

          v19 = [(HUButtonCollectionViewCell *)v3 contentView];
          [v19 addSubview:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v14);
    }
  }

  return v3;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = [(HUButtonCollectionViewCell *)self buttonView];
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

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = HUButtonCollectionViewCell;
  [(HUButtonCollectionViewCell *)&v26 layoutSubviews];
  v3 = [(HUButtonCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HUButtonCollectionViewCell *)self buttonView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  v15 = 1.0 / v14;

  [(HUButtonCollectionViewCell *)self layoutMargins];
  v17 = v16;
  v18 = [(HUButtonCollectionViewCell *)self contentView];
  [v18 bounds];
  Width = CGRectGetWidth(v27);
  v20 = [(HUButtonCollectionViewCell *)self topSeparatorView];
  [v20 setFrame:{v17, 0.0, Width, v15}];

  v21 = [(HUButtonCollectionViewCell *)self contentView];
  [v21 bounds];
  v22 = CGRectGetMaxY(v28) - v15;
  v23 = [(HUButtonCollectionViewCell *)self contentView];
  [v23 bounds];
  v24 = CGRectGetWidth(v29);
  v25 = [(HUButtonCollectionViewCell *)self bottomSeparatorView];
  [v25 setFrame:{0.0, v22, v24, v15}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUButtonCollectionViewCell;
  [(HUButtonCollectionViewCell *)&v3 prepareForReuse];
  [(HUButtonCollectionViewCell *)self setTopSeparatorVisible:0];
  [(HUButtonCollectionViewCell *)self setBottomSeparatorVisible:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HUButtonCollectionViewCell;
  [(HUButtonCollectionViewCell *)&v6 setHighlighted:?];
  if (a3)
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
  v2 = [(HUButtonCollectionViewCell *)self buttonView];
  v3 = [v2 item];

  return v3;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  v5 = [(HUButtonCollectionViewCell *)self buttonView];
  [v5 setItem:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUButtonCollectionViewCell *)self buttonView];
  [v4 updateUIWithAnimation:v3];
}

- (BOOL)topSeparatorVisible
{
  v2 = [(HUButtonCollectionViewCell *)self topSeparatorView];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (void)setTopSeparatorVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUButtonCollectionViewCell *)self topSeparatorView];
  [v4 setHidden:!v3];
}

- (BOOL)bottomSeparatorVisible
{
  v2 = [(HUButtonCollectionViewCell *)self bottomSeparatorView];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (void)setBottomSeparatorVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUButtonCollectionViewCell *)self bottomSeparatorView];
  [v4 setHidden:!v3];
}

- (BOOL)isDisabled
{
  v2 = [(HUButtonCollectionViewCell *)self buttonView];
  v3 = [v2 isDisabled];

  return v3;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUButtonCollectionViewCell *)self buttonView];
  [v4 setDisabled:v3];
}

@end