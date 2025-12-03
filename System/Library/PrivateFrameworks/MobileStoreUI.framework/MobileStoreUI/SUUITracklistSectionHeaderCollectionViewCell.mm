@interface SUUITracklistSectionHeaderCollectionViewCell
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)_titlesWidthForWidth:(double)width columnData:(id)data;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated;
- (SUUITracklistSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_buttonAction:(id)action;
- (void)_showConfirmationAction:(id)action;
- (void)itemOfferButtonWillAnimateTransition:(id)transition;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SUUITracklistSectionHeaderCollectionViewCell

- (SUUITracklistSectionHeaderCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUITracklistSectionHeaderCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v4;

    v6 = v3->_separatorView;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    contentView = [(SUUITracklistSectionHeaderCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_separatorView];
  }

  return v3;
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  button = [elementCopy button];
  if (button)
  {
    v10 = [contextCopy prefetchResourcesForViewElement:button reason:reason];
  }

  else
  {
    v10 = 0;
  }

  titleLabels = [elementCopy titleLabels];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [titleLabels countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(titleLabels);
        }

        v10 |= [contextCopy prefetchResourcesForViewElement:*(*(&v17 + 1) + 8 * i) reason:reason];
      }

      v13 = [titleLabels countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  return v10 & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  v10 = [contextCopy aggregateValueForKey:0x286AF1940];
  [self _titlesWidthForWidth:v10 columnData:width];
  v12 = v11;
  v27 = elementCopy;
  titleLabels = [elementCopy titleLabels];
  labelLayoutCache = [contextCopy labelLayoutCache];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = titleLabels;
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
        v21 = SUUITracklistAttributedStringForLabel(0, v20, contextCopy);
        [labelLayoutCache requestLayoutForLabel:v20 attributedString:v21 width:v12];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  button = [v27 button];
  elementType = [button elementType];
  if (elementType == 141 || elementType == 12)
  {
    v24 = SUUITracklistAttributedStringForButton(0, button, contextCopy);
    v25 = [v10 columnForIdentifier:1];
    [v25 width];
    [labelLayoutCache requestLayoutForButton:button attributedString:v24 width:v26];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  titleLabels = [element titleLabels];
  v10 = [contextCopy aggregateValueForKey:0x286AF1940];
  [self _titlesWidthForWidth:v10 columnData:width];
  v12 = v11;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = titleLabels;
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

        [contextCopy sizeForViewElement:*(*(&v23 + 1) + 8 * i) width:{v12, v23}];
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

  widthCopy = width;
  v22 = v20;
  result.height = v22;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  button = self->_button;
  self->_button = 0;

  buttonViewElement = self->_buttonViewElement;
  self->_buttonViewElement = 0;

  buyButtonDescriptor = self->_buyButtonDescriptor;
  self->_buyButtonDescriptor = 0;

  v13 = [contextCopy aggregateValueForKey:0x286AF1940];
  columnData = self->_columnData;
  self->_columnData = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  labels = self->_labels;
  self->_labels = v15;

  style = [elementCopy style];
  ikBorderColor = [style ikBorderColor];
  color = [ikBorderColor color];

  separatorView = self->_separatorView;
  if (color)
  {
    [(UIView *)self->_separatorView setBackgroundColor:color];
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
  widthCopy = width;
  v24[4] = self;
  v25 = elementCopy;
  v26 = contextCopy;
  v22 = contextCopy;
  v23 = elementCopy;
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

- (BOOL)updateWithItemState:(id)state context:(id)context animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  contextCopy = context;
  v10 = [(SUUIBuyButtonDescriptor *)self->_buyButtonDescriptor canPersonalizeUsingItemState:stateCopy];
  if (v10)
  {
    button = self->_button;
    buyButtonDescriptor = self->_buyButtonDescriptor;
    clientContext = [contextCopy clientContext];
    [(UIControl *)button setValuesUsingBuyButtonDescriptor:buyButtonDescriptor itemState:stateCopy clientContext:clientContext animated:animatedCopy];
  }

  return v10;
}

- (void)layoutSubviews
{
  v61 = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = SUUITracklistSectionHeaderCollectionViewCell;
  [(SUUICollectionViewCell *)&v58 layoutSubviews];
  contentView = [(SUUITracklistSectionHeaderCollectionViewCell *)self contentView];
  [contentView bounds];
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

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v48 = 1.0 / v47;

  [(SUUITracklistColumnData *)self->_columnData leftEdgeInset];
  [(UIView *)self->_separatorView setFrame:v49, v7 - v48, v5 - v49, v48];
}

- (void)itemOfferButtonWillAnimateTransition:(id)transition
{
  transitionCopy = transition;
  [transitionCopy frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [transitionCopy sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v12 = v11;
  v14 = v13;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [transitionCopy setFrame:{CGRectGetMaxX(v17) - v12, v6, v12, v14}];
}

- (void)_buttonAction:(id)action
{
  v8 = SUUICollectionViewForView(self);
  delegate = [v8 delegate];
  v5 = objc_opt_respondsToSelector();
  buttonViewElement = self->_buttonViewElement;
  if (v5)
  {
    v7 = [v8 indexPathForCell:self];
    [delegate collectionView:v8 didConfirmButtonElement:buttonViewElement withClickInfo:0 forItemAtIndexPath:v7];
  }

  else
  {
    [(SUUIButtonViewElement *)self->_buttonViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)_showConfirmationAction:(id)action
{
  actionCopy = action;
  superview = [actionCopy superview];
  [superview bringSubviewToFront:actionCopy];

  [actionCopy setShowingConfirmation:1 animated:1];
}

+ (double)_titlesWidthForWidth:(double)width columnData:(id)data
{
  dataCopy = data;
  v6 = [dataCopy columnForIdentifier:1];
  v7 = v6;
  if (v6)
  {
    [v6 width];
    v9 = width - v8;
    [dataCopy interColumnSpacing];
    width = v9 - v10;
  }

  return width;
}

@end