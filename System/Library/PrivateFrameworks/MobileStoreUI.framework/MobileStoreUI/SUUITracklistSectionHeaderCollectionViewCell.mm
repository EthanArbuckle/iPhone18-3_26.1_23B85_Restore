@interface SUUITracklistSectionHeaderCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (double)_titlesWidthForWidth:(double)a3 columnData:(id)a4;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (SUUITracklistSectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_buttonAction:(id)a3;
- (void)_showConfirmationAction:(id)a3;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUITracklistSectionHeaderCollectionViewCell

- (SUUITracklistSectionHeaderCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUITracklistSectionHeaderCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v4;

    v6 = v3->_separatorView;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    v8 = [(SUUITracklistSectionHeaderCollectionViewCell *)v3 contentView];
    [v8 addSubview:v3->_separatorView];
  }

  return v3;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 button];
  if (v9)
  {
    v10 = [v8 prefetchResourcesForViewElement:v9 reason:a4];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 titleLabels];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v10 |= [v8 prefetchResourcesForViewElement:*(*(&v17 + 1) + 8 * i) reason:a4];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  return v10 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v9 aggregateValueForKey:0x286AF1940];
  [a1 _titlesWidthForWidth:v10 columnData:a4];
  v12 = v11;
  v27 = v8;
  v13 = [v8 titleLabels];
  v14 = [v9 labelLayoutCache];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = SUUITracklistAttributedStringForLabel(0, v20, v9);
        [v14 requestLayoutForLabel:v20 attributedString:v21 width:v12];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  v22 = [v27 button];
  v23 = [v22 elementType];
  if (v23 == 141 || v23 == 12)
  {
    v24 = SUUITracklistAttributedStringForButton(0, v22, v9);
    v25 = [v10 columnForIdentifier:1];
    [v25 width];
    [v14 requestLayoutForButton:v22 attributedString:v24 width:v26];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [a4 titleLabels];
  v10 = [v8 aggregateValueForKey:0x286AF1940];
  [a1 _titlesWidthForWidth:v10 columnData:a3];
  v12 = v11;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    v17 = 0.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v8 sizeForViewElement:*(*(&v23 + 1) + 8 * i) width:{v12, v23}];
        v17 = v17 + v19;
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 0.0;
  }

  if (v17 <= 32.0)
  {
    v20 = 44.0;
  }

  else
  {
    v20 = v17 + 20.0;
  }

  v21 = a3;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  button = self->_button;
  self->_button = 0;

  buttonViewElement = self->_buttonViewElement;
  self->_buttonViewElement = 0;

  buyButtonDescriptor = self->_buyButtonDescriptor;
  self->_buyButtonDescriptor = 0;

  v13 = [v9 aggregateValueForKey:0x286AF1940];
  columnData = self->_columnData;
  self->_columnData = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  labels = self->_labels;
  self->_labels = v15;

  v17 = [v8 style];
  v18 = [v17 ikBorderColor];
  v19 = [v18 color];

  separatorView = self->_separatorView;
  if (v19)
  {
    [(UIView *)self->_separatorView setBackgroundColor:v19];
  }

  else
  {
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)separatorView setBackgroundColor:v21];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__SUUITracklistSectionHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v24[3] = &unk_2798F5EF0;
  v27 = a4;
  v24[4] = self;
  v25 = v8;
  v26 = v9;
  v22 = v9;
  v23 = v8;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v24];
}

void __84__SUUITracklistSectionHeaderCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [objc_opt_class() _titlesWidthForWidth:*(*(a1 + 32) + 848) columnData:*(a1 + 56)];
  v5 = v4;
  v6 = [*(a1 + 40) button];
  if (([v6 elementType] & 0xFFFFFFFFFFFFFF7FLL) == 0xD)
  {
    v7 = [*(*(a1 + 32) + 848) columnForIdentifier:1];
    [v7 width];
    v8 = [v3 addButtonWithElement:v6 width:*(a1 + 48) context:?];
    [v8 addTarget:*(a1 + 32) action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
    [v8 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:0x20000];
    [v8 addTarget:*(a1 + 32) action:sel__showConfirmationAction_ forControlEvents:0x40000];
    [v8 setItemOfferDelegate:*(a1 + 32)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 824);
    *(v9 + 824) = v8;
    v11 = v8;

    objc_storeStrong((*(a1 + 32) + 832), v6);
    v12 = [*(*(a1 + 32) + 832) buyButtonDescriptor];
    v13 = *(a1 + 32);
    v14 = *(v13 + 840);
    *(v13 + 840) = v12;
  }

  v15 = [*(a1 + 40) titleLabels];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v3 addLabelViewWithElement:*(*(&v21 + 1) + 8 * v19) width:*(a1 + 48) context:v5];
        [*(*(a1 + 32) + 856) addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SUUIBuyButtonDescriptor *)self->_buyButtonDescriptor canPersonalizeUsingItemState:v8];
  if (v10)
  {
    button = self->_button;
    buyButtonDescriptor = self->_buyButtonDescriptor;
    v13 = [v9 clientContext];
    [(UIControl *)button setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:v8 clientContext:v13 animated:v5];
  }

  return v10;
}

- (void)layoutSubviews
{
  v61 = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = SUUITracklistSectionHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v58 layoutSubviews];
  v3 = [(SUUITracklistSectionHeaderCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = objc_opt_class();
  [(SUUITracklistColumnData *)self->_columnData leftEdgeInset];
  v10 = v5 - v9;
  [(SUUITracklistColumnData *)self->_columnData rightEdgeInset];
  [v8 _titlesWidthForWidth:self->_columnData columnData:v10 - v11];
  v13 = v12;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = self->_labels;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    v18 = *MEMORY[0x277CBF3A0];
    v19 = *(MEMORY[0x277CBF3A0] + 8);
    v20 = 0.0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v54 + 1) + 8 * i);
        [v22 sizeThatFits:{v13, 1.79769313e308}];
        v62.size.height = v23;
        v62.origin.x = v18;
        v62.origin.y = v19;
        v62.size.width = v13;
        v63 = CGRectIntegral(v62);
        height = v63.size.height;
        [v22 setFrame:{v63.origin.x, v63.origin.y, v63.size.width}];
        v20 = v20 + height;
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v16);
  }

  else
  {
    v20 = 0.0;
  }

  [(SUUITracklistColumnData *)self->_columnData leftEdgeInset];
  v26 = v25;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v27 = self->_labels;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = (v7 - v20) * 0.5;
    MaxY = floorf(v30);
    v32 = *v51;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = *(*(&v50 + 1) + 8 * j);
        [v34 frame];
        v36 = v35;
        v38 = v37;
        [v34 setFrame:{v26, MaxY}];
        v64.origin.x = v26;
        v64.origin.y = MaxY;
        v64.size.width = v36;
        v64.size.height = v38;
        MaxY = CGRectGetMaxY(v64);
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v29);
  }

  button = self->_button;
  if (button)
  {
    [(UIControl *)button sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    v41 = v40;
    v43 = v42;
    [(SUUITracklistColumnData *)self->_columnData rightEdgeInset];
    v45 = (v7 - v43) * 0.5;
    [(UIControl *)self->_button setFrame:v5 - v44 - v41, floorf(v45), v41, v43];
  }

  v46 = [MEMORY[0x277D759A0] mainScreen];
  [v46 scale];
  v48 = 1.0 / v47;

  [(SUUITracklistColumnData *)self->_columnData leftEdgeInset];
  [(UIView *)self->_separatorView setFrame:v49, v7 - v48, v5 - v49, v48];
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  v15 = a3;
  [v15 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v15 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v12 = v11;
  v14 = v13;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [v15 setFrame:{CGRectGetMaxX(v17) - v12, v6, v12, v14}];
}

- (void)_buttonAction:(id)a3
{
  v8 = SUUICollectionViewForView(self);
  v4 = [v8 delegate];
  v5 = objc_opt_respondsToSelector();
  buttonViewElement = self->_buttonViewElement;
  if (v5)
  {
    v7 = [v8 indexPathForCell:self];
    [v4 collectionView:v8 didConfirmButtonElement:buttonViewElement withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [(SUUIButtonViewElement *)self->_buttonViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)_showConfirmationAction:(id)a3
{
  v4 = a3;
  v3 = [v4 superview];
  [v3 bringSubviewToFront:v4];

  [v4 setShowingConfirmation:1 animated:1];
}

+ (double)_titlesWidthForWidth:(double)a3 columnData:(id)a4
{
  v5 = a4;
  v6 = [v5 columnForIdentifier:1];
  v7 = v6;
  if (v6)
  {
    [v6 width];
    v9 = a3 - v8;
    [v5 interColumnSpacing];
    a3 = v9 - v10;
  }

  return a3;
}

@end