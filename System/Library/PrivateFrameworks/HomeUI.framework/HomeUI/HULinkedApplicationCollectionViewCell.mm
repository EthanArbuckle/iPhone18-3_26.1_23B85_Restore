@interface HULinkedApplicationCollectionViewCell
- (BOOL)bottomSeparatorVisible;
- (BOOL)topSeparatorVisible;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HFItem)item;
- (HULinkedApplicationCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomSeparatorVisible:(BOOL)a3;
- (void)setItem:(id)a3;
- (void)setTopSeparatorVisible:(BOOL)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HULinkedApplicationCollectionViewCell

- (HULinkedApplicationCollectionViewCell)initWithFrame:(CGRect)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = HULinkedApplicationCollectionViewCell;
  v3 = [(HULinkedApplicationCollectionViewCell *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(HULinkedApplicationCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(HULinkedApplicationView);
    linkedApplicationView = v3->_linkedApplicationView;
    v3->_linkedApplicationView = v5;

    v7 = [(HULinkedApplicationCollectionViewCell *)v3 contentView];
    [v7 addSubview:v3->_linkedApplicationView];

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

          v19 = [(HULinkedApplicationCollectionViewCell *)v3 contentView];
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
  v9 = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
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
  v24.receiver = self;
  v24.super_class = HULinkedApplicationCollectionViewCell;
  [(HULinkedApplicationCollectionViewCell *)&v24 layoutSubviews];
  v3 = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [MEMORY[0x277D759A0] mainScreen];
  [v13 scale];
  v15 = 1.0 / v14;

  v16 = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [v16 bounds];
  Width = CGRectGetWidth(v25);
  v18 = [(HULinkedApplicationCollectionViewCell *)self topSeparatorView];
  [v18 setFrame:{0.0, 0.0, Width, v15}];

  v19 = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [v19 bounds];
  v20 = CGRectGetMaxY(v26) - v15;
  v21 = [(HULinkedApplicationCollectionViewCell *)self contentView];
  [v21 bounds];
  v22 = CGRectGetWidth(v27);
  v23 = [(HULinkedApplicationCollectionViewCell *)self bottomSeparatorView];
  [v23 setFrame:{0.0, v20, v22, v15}];
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
  v2 = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  v3 = [v2 item];

  return v3;
}

- (void)setItem:(id)a3
{
  v4 = a3;
  v5 = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  [v5 setItem:v4];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = [(HULinkedApplicationCollectionViewCell *)self linkedApplicationView];
  [v4 updateUIWithAnimation:v3];
}

- (BOOL)topSeparatorVisible
{
  v2 = [(HULinkedApplicationCollectionViewCell *)self topSeparatorView];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (void)setTopSeparatorVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(HULinkedApplicationCollectionViewCell *)self topSeparatorView];
  [v4 setHidden:!v3];
}

- (BOOL)bottomSeparatorVisible
{
  v2 = [(HULinkedApplicationCollectionViewCell *)self bottomSeparatorView];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (void)setBottomSeparatorVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(HULinkedApplicationCollectionViewCell *)self bottomSeparatorView];
  [v4 setHidden:!v3];
}

@end