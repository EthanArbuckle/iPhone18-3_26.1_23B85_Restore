@interface SUUIReviewCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForDateLabel:(id)label context:(id)context;
+ (id)_attributedStringForTitleLabel:(id)label context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (void)_resetTapGestures;
- (void)contentViewTapped:(id)tapped;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SUUIReviewCollectionViewCell

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
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SUUIReviewCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke;
  v9[3] = &unk_2798FA8F8;
  widthCopy = width;
  v10 = contextCopy;
  v8 = contextCopy;
  [element enumerateChildrenUsingBlock:v9];
}

void __74__SUUIReviewCollectionViewCell_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  if (v3 <= 134)
  {
    if (v3 != 102)
    {
      if (v3 != 105)
      {
        goto LABEL_12;
      }

      v4 = off_2798F41C8;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v3 == 138)
  {
    if ([v6 labelViewStyle] == 1)
    {
      v5 = [*(a1 + 32) editorialLayoutForLabelElement:v6 width:*(a1 + 40)];
      [v5 enqueueLayoutRequests];
    }

LABEL_10:
    v4 = off_2798F41B8;
    goto LABEL_11;
  }

  if (v3 != 135)
  {
    goto LABEL_12;
  }

  v4 = off_2798F42C8;
LABEL_11:
  [(__objc2_class *)*v4 requestLayoutForViewElement:v6 width:*(a1 + 32) context:*(a1 + 40)];
LABEL_12:
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = "";
  v26 = *MEMORY[0x277CBF3A8];
  *&v26 = width;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__SUUIReviewCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke;
  v14[3] = &unk_2798F7600;
  widthCopy = width;
  v9 = contextCopy;
  v15 = v9;
  v16 = &v22;
  v17 = v21;
  v18 = v20;
  [elementCopy enumerateChildrenUsingBlock:v14];
  v10 = v23[4];
  v11 = v23[5];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __70__SUUIReviewCollectionViewCell_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 elementType] == 105)
  {
    [SUUIReviewListTitleView sizeThatFitsWidth:v12 viewElement:*(a1 + 32) context:*(a1 + 64)];
    v3 = *(*(a1 + 40) + 8);
    v5 = v4 + *(v3 + 40);
LABEL_5:
    *(v3 + 40) = v5;
    goto LABEL_9;
  }

  if ([v12 elementType] == 102)
  {
    [SUUIResponseView sizeThatFitsWidth:v12 viewElement:*(a1 + 32) context:*(a1 + 64)];
    v3 = *(*(a1 + 40) + 8);
    v5 = v6 + 10.0 + *(v3 + 40);
    goto LABEL_5;
  }

  [*(a1 + 32) sizeForViewElement:v12 width:*(a1 + 64)];
  *(*(*(a1 + 40) + 8) + 40) = v7 + 10.0 + *(*(*(a1 + 40) + 8) + 40);
  v8 = [*(a1 + 32) textPropertiesForViewElement:v12 width:*(a1 + 64)];
  v9 = v8;
  if (*(*(*(a1 + 48) + 8) + 24) >= 1)
  {
    [v8 desiredOffsetTop];
    *&v10 = v10 - *(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 40) + 8) + 40) + fmax(roundf(*&v10), 0.0);
  }

  [v9 baselineOffsetFromBottom];
  *(*(*(a1 + 56) + 8) + 24) = v11;

LABEL_9:
  ++*(*(*(a1 + 48) + 8) + 24);
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__SUUIReviewCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2798F5EF0;
  widthCopy = width;
  v13 = elementCopy;
  v14 = contextCopy;
  selfCopy = self;
  v10 = contextCopy;
  v11 = elementCopy;
  [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v12];
}

void __68__SUUIReviewCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __68__SUUIReviewCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2;
  v11 = &unk_2798F7628;
  v12 = v3;
  v15 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v7 = v3;
  [v4 enumerateChildrenUsingBlock:&v8];
  [*(a1 + 48) _resetTapGestures];
}

void __68__SUUIReviewCollectionViewCell_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 elementType];
  if (v3 <= 134)
  {
    if (v3 != 102)
    {
      if (v3 != 105)
      {
        goto LABEL_15;
      }

      v4 = [*(a1 + 32) addReviewListTitleViewWithViewElement:v7 width:*(a1 + 40) context:*(a1 + 56)];
LABEL_13:
      v5 = v4;
      if (!v4)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v5 = [*(a1 + 32) addResponseViewWithViewElement:v7 width:*(a1 + 40) context:*(a1 + 56)];
    [*(a1 + 48) setResponseView:v5];
    if (!v5)
    {
      goto LABEL_15;
    }

LABEL_14:
    v6 = [*(a1 + 40) textPropertiesForViewElement:v7 width:*(a1 + 56)];
    [*(a1 + 32) setTextProperties:v6 forView:v5];

    goto LABEL_15;
  }

  if (v3 == 135)
  {
    v4 = [*(a1 + 32) addStarRatingViewWithViewElement:v7 width:*(a1 + 40) context:*(a1 + 56)];
    goto LABEL_13;
  }

  if (v3 == 138 && [v7 labelViewStyle] == 1)
  {
    v5 = [*(a1 + 32) addTextViewWithElement:v7 width:*(a1 + 40) context:*(a1 + 56)];
    [*(a1 + 48) setDescriptionView:v5];
    if (v5)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = SUUIReviewCollectionViewCell;
  [(SUUICollectionViewCell *)&v9 setHighlighted:?];
  if (highlightedCopy)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
    [(SUUIViewReuseCollectionViewCell *)self setBackgroundColor:v5];

    [MEMORY[0x277D75348] colorWithWhite:0.9 alpha:1.0];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIViewReuseCollectionViewCell *)self setBackgroundColor:clearColor];

    [MEMORY[0x277D75348] clearColor];
  }
  v7 = ;
  contentView = [(SUUIReviewCollectionViewCell *)self contentView];
  [contentView setBackgroundColor:v7];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SUUIReviewCollectionViewCell;
  [(SUUICollectionViewCell *)&v27 layoutSubviews];
  v3 = storeShouldReverseLayoutDirection() ^ 1;
  contentView = [(SUUIReviewCollectionViewCell *)self contentView];
  [contentView bounds];
  v22 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUIViewReuseCollectionViewCell *)self contentInset];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v9 - v14 - v18;
  allExistingViews = [(SUUIViewReuseCollectionViewCell *)self allExistingViews];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = v13;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__SUUIReviewCollectionViewCell_layoutSubviews__block_invoke;
  v23[3] = &unk_2798F7678;
  v23[4] = self;
  v23[5] = v25;
  v23[6] = v26;
  v24 = v3;
  *&v23[7] = v20;
  v23[8] = v13;
  *&v23[9] = v15;
  v23[10] = v17;
  *&v23[11] = v19;
  v23[12] = v22;
  v23[13] = v7;
  *&v23[14] = v9;
  v23[15] = v11;
  [allExistingViews enumerateObjectsUsingBlock:v23];
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
}

void __46__SUUIReviewCollectionViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v5 = [*(a1 + 32) textPropertiesForView:v24];
  v6 = [*(a1 + 32) responseView];

  if (v6 == v24 || ([*(a1 + 32) descriptionView], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v24))
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 10.0;
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);
  if (a3)
  {
    [v5 desiredOffsetTop];
    *&v9 = v9 - *(*(*(a1 + 48) + 8) + 24);
    v8 = v8 + fmax(roundf(*&v9), 0.0);
  }

  [v24 sizeThatFits:{*(a1 + 56), 1.79769313e308}];
  v12 = v11;
  if (v10 >= *(a1 + 56))
  {
    v13 = *(a1 + 56);
  }

  else
  {
    v13 = v10;
  }

  if (*(a1 + 128) == 1)
  {
    v14 = *(a1 + 72);
  }

  else
  {
    Width = CGRectGetWidth(*(a1 + 96));
    v26.origin.x = 0.0;
    v26.origin.y = v8;
    v26.size.width = v13;
    v26.size.height = v12;
    v14 = Width - CGRectGetWidth(v26) - *(a1 + 72);
  }

  v16 = v8;
  v17 = v13;
  v18 = v12;
  v27 = CGRectIntegral(*&v14);
  x = v27.origin.x;
  y = v27.origin.y;
  v21 = v27.size.width;
  height = v27.size.height;
  [v24 setFrame:?];
  [v5 baselineOffsetFromBottom];
  *(*(*(a1 + 48) + 8) + 24) = v23;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = v21;
  v28.size.height = height;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxY(v28);
}

- (void)contentViewTapped:(id)tapped
{
  tappedCopy = tapped;
  descriptionView = [(SUUIReviewCollectionViewCell *)self descriptionView];
  superview = [descriptionView superview];
  [tappedCopy locationInView:superview];
  v7 = v6;
  v9 = v8;

  descriptionTapAction = [(SUUIReviewCollectionViewCell *)self descriptionTapAction];
  if (descriptionTapAction)
  {
    v11 = descriptionTapAction;
    descriptionView2 = [(SUUIReviewCollectionViewCell *)self descriptionView];
    [descriptionView2 frame];
    v30.x = v7;
    v30.y = v9;
    v13 = CGRectContainsPoint(v32, v30);

    if (v13)
    {
      descriptionTapAction2 = [(SUUIReviewCollectionViewCell *)self descriptionTapAction];
      descriptionTapAction2[2]();
    }
  }

  responseView = [(SUUIReviewCollectionViewCell *)self responseView];
  descriptionView3 = [responseView descriptionView];
  superview2 = [descriptionView3 superview];
  [tappedCopy locationInView:superview2];
  v19 = v18;
  v21 = v20;

  responseDescriptionTapAction = [(SUUIReviewCollectionViewCell *)self responseDescriptionTapAction];
  if (responseDescriptionTapAction)
  {
    v23 = responseDescriptionTapAction;
    responseView2 = [(SUUIReviewCollectionViewCell *)self responseView];
    descriptionView4 = [responseView2 descriptionView];
    [descriptionView4 frame];
    v31.x = v19;
    v31.y = v21;
    v26 = CGRectContainsPoint(v33, v31);

    if (v26)
    {
      responseDescriptionTapAction2 = [(SUUIReviewCollectionViewCell *)self responseDescriptionTapAction];
      responseDescriptionTapAction2[2]();
    }
  }
}

+ (id)_attributedStringForTitleLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SUUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(1);
  }

  tintColor = [contextCopy tintColor];
  blackColor = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  text = [labelCopy text];
  v12 = [text attributedStringWithDefaultFont:v8 foregroundColor:blackColor style:style];

  return v12;
}

+ (id)_attributedStringForDateLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SUUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(21);
  }

  tintColor = [contextCopy tintColor];
  v10 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  }

  text = [labelCopy text];
  v12 = [text attributedStringWithDefaultFont:v8 foregroundColor:v10 style:style];

  return v12;
}

- (void)_resetTapGestures
{
  v19 = *MEMORY[0x277D85DE8];
  contentView = [(SUUIReviewCollectionViewCell *)self contentView];
  [contentView setUserInteractionEnabled:1];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  contentView2 = [(SUUIReviewCollectionViewCell *)self contentView];
  gestureRecognizers = [contentView2 gestureRecognizers];

  v6 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        contentView3 = [(SUUIReviewCollectionViewCell *)self contentView];
        [contentView3 removeGestureRecognizer:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [gestureRecognizers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_contentViewTapped_];
  contentView4 = [(SUUIReviewCollectionViewCell *)self contentView];
  [contentView4 addGestureRecognizer:v12];
}

@end