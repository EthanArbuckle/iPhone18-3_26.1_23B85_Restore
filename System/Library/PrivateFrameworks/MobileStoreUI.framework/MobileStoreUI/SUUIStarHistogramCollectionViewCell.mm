@interface SUUIStarHistogramCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForLabelViewElement:(id)element;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (SUUIStarHistogramCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
@end

@implementation SUUIStarHistogramCollectionViewCell

- (SUUIStarHistogramCollectionViewCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SUUIStarHistogramCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [(SUUIViewReuseCollectionViewCell *)v3 registerClass:objc_opt_class() forViewWithReuseIdentifier:@"starBar"];
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  [contextCopy defaultItemWidthForViewElement:elementCopy];
  [self sizeThatFitsWidth:elementCopy viewElement:contextCopy context:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__SUUIStarHistogramCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v10[3] = &unk_2798F75D8;
  widthCopy = width;
  v11 = contextCopy;
  selfCopy = self;
  v9 = contextCopy;
  [element enumerateChildrenUsingBlock:v10];
}

uint64_t __81__SUUIStarHistogramCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 elementType];
  if (v3 == 138)
  {
    v5 = [*(a1 + 48) _attributedStringForLabelViewElement:v8];
    v6 = [*(a1 + 32) labelLayoutCache];
    [v6 requestLayoutForLabel:v8 attributedString:v5 width:*(a1 + 40)];
  }

  else
  {
    v4 = v8;
    if (v3 != 135)
    {
      goto LABEL_6;
    }

    v3 = [SUUIStarRatingViewElementView requestLayoutForViewElement:v8 width:*(a1 + 32) context:*(a1 + 40)];
  }

  v4 = v8;
LABEL_6:

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v24 = "";
  v26 = *(MEMORY[0x277CBF3A8] + 8);
  widthCopy = width;
  labelLayoutCache = [contextCopy labelLayoutCache];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SUUIStarHistogramCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v16[3] = &unk_2798F9328;
  v19 = &v21;
  v10 = contextCopy;
  v17 = v10;
  widthCopy2 = width;
  v11 = labelLayoutCache;
  v18 = v11;
  [elementCopy enumerateChildrenUsingBlock:v16];
  v12 = v22[4];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);
  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

void __77__SUUIStarHistogramCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 elementType];
  if (v3 == 138)
  {
    [*(a1 + 40) estimatedSizeForLabel:v7 width:*(a1 + 56)];
    goto LABEL_7;
  }

  if (v3 == 135)
  {
    [*(a1 + 32) sizeForViewElement:v7 width:*(a1 + 56)];
LABEL_7:
    v4 = *(*(a1 + 48) + 8);
    v5 = v6 + *(v4 + 40);
    goto LABEL_8;
  }

  if (v3 != 133)
  {
    goto LABEL_9;
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40) + 14.0;
LABEL_8:
  *(v4 + 40) = v5;
LABEL_9:
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__SUUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2798F8108;
  widthCopy = width;
  v13 = elementCopy;
  v14 = contextCopy;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v12];
}

void __75__SUUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__SUUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v6[3] = &unk_2798F9350;
  v7 = v3;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateChildrenUsingBlock:v6];
}

void __75__SUUIStarHistogramCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 elementType];
  if (v3 == 138)
  {
    v9 = [*(a1 + 32) addLabelViewWithElement:v10 width:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_9;
  }

  if (v3 == 135)
  {
    v6 = [*(a1 + 32) addStarRatingViewWithViewElement:v10 width:*(a1 + 40) context:*(a1 + 48)];
    [v6 setElementSpacing:10];
    goto LABEL_7;
  }

  v4 = v3 == 133;
  v5 = v10;
  if (v4)
  {
    v6 = [*(a1 + 32) addReusableViewWithReuseIdentifier:@"starBar"];
    v7 = [v10 style];
    [v6 setColoringUsingStyle:v7];

    [v6 setNumberOfStars:{objc_msgSend(v10, "numberOfStars")}];
    [v10 value];
    [v6 setValue:v8];
LABEL_7:

LABEL_9:
    v5 = v10;
  }
}

- (void)layoutSubviews
{
  v46 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = SUUIStarHistogramCollectionViewCell;
  [(SUUICollectionViewCell *)&v44 layoutSubviews];
  contentView = [(SUUIStarHistogramCollectionViewCell *)self contentView];
  [contentView bounds];
  v37 = v5;
  v38 = v4;
  rect = v6;
  v8 = v7;

  [(SUUIViewReuseCollectionViewCell *)self contentInset];
  MaxY = v9;
  v12 = v11;
  v14 = v13;
  allExistingViews = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = allExistingViews;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    v21 = rect - v12 - v14;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        [v23 sizeThatFits:{v21, 1.79769313e308}];
        v25 = v24;
        v27 = v26;
        v28 = v12;
        if (ShouldReverseLayoutDirection)
        {
          v47.origin.y = v37;
          v47.origin.x = v38;
          v47.size.width = rect;
          v47.size.height = v8;
          Width = CGRectGetWidth(v47);
          v48.origin.x = 0.0;
          v48.origin.y = MaxY;
          v48.size.width = v25;
          v48.size.height = v27;
          v28 = Width - CGRectGetWidth(v48) - v12;
        }

        v30 = MaxY;
        v31 = v25;
        v32 = v27;
        v49 = CGRectIntegral(*&v28);
        x = v49.origin.x;
        y = v49.origin.y;
        v35 = v49.size.width;
        height = v49.size.height;
        [v23 setFrame:?];
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = v35;
        v50.size.height = height;
        MaxY = CGRectGetMaxY(v50);
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v19);
  }
}

+ (id)_attributedStringForLabelViewElement:(id)element
{
  text = [element text];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v6 = [text attributedStringWithDefaultFont:v4 foregroundColor:blackColor];

  return v6;
}

@end