@interface SUUIHorizontalListView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (double)_elementSpacingForViewElement:(id)element;
+ (double)_lineSpacingForLineElements:(id)elements;
+ (double)_lineSpacingForViewElement:(id)element;
+ (id)_attributedStringForButton:(id)button context:(id)context;
+ (id)_attributedStringForButtonText:(id)text type:(int64_t)type style:(id)style context:(id)context;
+ (id)_attributedStringForLabel:(id)label context:(id)context;
+ (id)_attributedStringForMenuItem:(id)item context:(id)context;
+ (id)_linesWithViewElement:(id)element width:(double)width context:(id)context;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (CGRect)hitRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIHorizontalListView)initWithFrame:(CGRect)frame;
- (id)_viewElementForView:(id)view;
- (id)viewForElementIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)_destroyMenuPopover;
- (void)_imageTapAction:(id)action;
- (void)_menuButtonAction:(id)action;
- (void)dealloc;
- (void)layoutSubviews;
- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index;
- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation SUUIHorizontalListView

- (SUUIHorizontalListView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SUUIHorizontalListView;
  v3 = [(SUUIViewReuseView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [(SUUIViewReuseView *)v3 registerClass:objc_opt_class() forViewWithReuseIdentifier:@"vlockup"];
  }

  return v3;
}

- (void)dealloc
{
  [(SUUIMenuPopoverController *)self->_popoverController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIHorizontalListView;
  [(SUUIViewReuseView *)&v3 dealloc];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SUUIHorizontalListView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2798F5E50;
  v9 = contextCopy;
  v13 = &v15;
  reasonCopy = reason;
  v12 = v9;
  [elementCopy enumerateChildrenUsingBlock:v11];
  LOBYTE(reason) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return reason;
}

uint64_t __73__SUUIHorizontalListView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = "";
  v33 = *MEMORY[0x277CBF3A8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__SUUIHorizontalListView_preferredSizeForViewElement_context___block_invoke;
  v21[3] = &unk_2798F80B8;
  v7 = contextCopy;
  v22 = v7;
  v23 = &v29;
  v24 = &v25;
  [elementCopy enumerateChildrenUsingBlock:v21];
  style = [elementCopy style];
  [style elementPadding];
  v10 = v9;
  v12 = v11;

  v13 = v30;
  v14 = v10 + v12 + v30[5];
  v30[5] = v14;
  v15 = v26[3];
  v16 = v15 <= 1;
  v17 = v15 - 1;
  if (v16)
  {
    v18 = v13[4];
  }

  else
  {
    v18 = v13[4] + (v17 * 5.0);
    v13[4] = v18;
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v19 = v18;
  v20 = v14;
  result.height = v20;
  result.width = v19;
  return result;
}

void __62__SUUIHorizontalListView_preferredSizeForViewElement_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = a2;
  v5 = [v20 elementType];
  if (v5 == 152)
  {
    v12 = *(a1 + 32);
    v13 = [v20 thumbnailImage];
    [v12 sizeForImageElement:v13];
    v15 = v14;
    v17 = v16;

    v8 = v20;
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    if (v19 < v17)
    {
      v19 = v17;
    }

    *(v18 + 40) = v19;
    v10 = *(*(a1 + 40) + 8);
    v11 = v15 + *(v10 + 32);
    goto LABEL_9;
  }

  if (v5 == 49)
  {
    [*(a1 + 32) sizeForImageElement:v20];
    v8 = v20;
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 40) >= v7)
    {
      v7 = *(v9 + 40);
    }

    *(v9 + 40) = v7;
    v10 = *(*(a1 + 40) + 8);
    v11 = v6 + *(v10 + 32);
LABEL_9:
    *(v10 + 32) = v11;
    ++*(*(*(a1 + 48) + 8) + 24);
    goto LABEL_11;
  }

  *(*(*(a1 + 40) + 8) + 32) = *MEMORY[0x277CBF3A8];
  *(*(*(a1 + 48) + 8) + 24) = 0;
  *a3 = 1;
  v8 = v20;
LABEL_11:
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  labelLayoutCache = [contextCopy labelLayoutCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SUUIHorizontalListView_requestLayoutForViewElement_width_context___block_invoke;
  v13[3] = &unk_2798F5E78;
  widthCopy = width;
  selfCopy = self;
  v14 = labelLayoutCache;
  v15 = contextCopy;
  v11 = contextCopy;
  v12 = labelLayoutCache;
  [elementCopy enumerateChildrenUsingBlock:v13];
}

uint64_t __68__SUUIHorizontalListView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 elementType];
  if (v3 > 134)
  {
    if (v3 > 140)
    {
      v4 = v10;
      if (v3 == 141)
      {
LABEL_16:
        v5 = [*(a1 + 56) _attributedStringForButton:v10 context:*(a1 + 40)];
        [*(a1 + 32) requestLayoutForButton:v10 attributedString:v5 width:*(a1 + 48)];
LABEL_17:

LABEL_23:
        v4 = v10;
        goto LABEL_24;
      }

      if (v3 != 144)
      {
        goto LABEL_24;
      }

      v7 = SUUITomatoRatingView;
    }

    else
    {
      v4 = v10;
      if (v3 != 135)
      {
        if (v3 != 138)
        {
          goto LABEL_24;
        }

        v5 = [*(a1 + 56) _attributedStringForLabel:v10 context:*(a1 + 40)];
        [*(a1 + 32) requestLayoutForLabel:v10 attributedString:v5 width:*(a1 + 48)];
        goto LABEL_17;
      }

      v7 = SUUIStarRatingControlView;
    }

    v8 = *(a1 + 48);
LABEL_22:
    v3 = [(__objc2_class *)v7 requestLayoutForViewElement:v10 width:*(a1 + 40) context:v8];
    goto LABEL_23;
  }

  if (v3 > 65)
  {
    v4 = v10;
    if (v3 != 66)
    {
      if (v3 != 69)
      {
        goto LABEL_24;
      }

      v5 = [v10 titleItem];
      v6 = [*(a1 + 56) _attributedStringForMenuItem:v5 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForViewElement:v5 attributedString:v6 width:*(a1 + 48)];

      goto LABEL_17;
    }

    [*(a1 + 56) _sizeForViewElement:v10 width:*(a1 + 40) context:*(a1 + 48)];
    v7 = SUUIVerticalLockupView;
    goto LABEL_22;
  }

  v4 = v10;
  if (v3 == 8)
  {
    v3 = [*(a1 + 32) requestLayoutForBadge:v10 width:*(a1 + 48)];
    goto LABEL_23;
  }

  if (v3 == 12)
  {
    goto LABEL_16;
  }

LABEL_24:

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3010000000;
  v52 = "";
  v53 = *MEMORY[0x277CBF3A8];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v10 = [self _linesWithViewElement:elementCopy width:contextCopy context:width];
  v11 = [v10 count];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __64__SUUIHorizontalListView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v28 = &unk_2798F80E0;
  v30 = &v37;
  selfCopy = self;
  widthCopy = width;
  v12 = contextCopy;
  v29 = v12;
  v31 = &v45;
  v32 = &v49;
  v33 = &v41;
  v36 = v11;
  [v10 enumerateObjectsUsingBlock:&v25];
  if (v42[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v10 objectAtIndex:{v25, v26, v27, v28}];
    v14 = [v13 count];

    if (v14 >= 2)
    {
      v50[4] = v50[4] + (v14 - 1) * v46[3];
    }
  }

  if (*(v38 + 24) == 1 && v50[4] < width)
  {
    v50[4] = width;
  }

  style = [elementCopy style];
  [style elementPadding];
  v17 = v16;
  v19 = v18;

  v20 = v17 + v19;
  v21 = v50[4];
  v22 = v20 + v50[5];
  v50[5] = v22;

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  v23 = v21;
  v24 = v22;
  result.height = v24;
  result.width = v23;
  return result;
}

void __64__SUUIHorizontalListView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 elementType] == 127)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        else
        {
          [*(a1 + 72) _sizeForViewElement:v12 width:*(a1 + 32) context:*(a1 + 80)];
          v14 = v13;
          v16 = v15;
          v17 = *(*(*(a1 + 48) + 8) + 24);
          [*(a1 + 72) _elementSpacingForViewElement:v12];
          if (v17 >= v18)
          {
            v18 = v17;
          }

          *(*(*(a1 + 48) + 8) + 24) = v18;
          if (v10 < v16)
          {
            v10 = v16;
          }

          v9 = v9 + v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
  }

  v19 = *(*(a1 + 56) + 8);
  if (v9 > *(v19 + 32))
  {
    *(v19 + 32) = v9;
    *(*(*(a1 + 64) + 8) + 24) = a3;
  }

  if (*(a1 + 88) - 1 > a3)
  {
    [*(a1 + 72) _lineSpacingForLineElements:v5];
    *(*(*(a1 + 56) + 8) + 40) = v20 + *(*(*(a1 + 56) + 8) + 40);
  }

  *(*(*(a1 + 56) + 8) + 40) = v10 + *(*(*(a1 + 56) + 8) + 40);
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  [(NSMutableArray *)self->_artworkRequestPassthroughViews removeAllObjects];
  self->_elementSpacing = 0.0;
  v10 = [objc_opt_class() _linesWithViewElement:elementCopy width:contextCopy context:width];
  lines = self->_lines;
  self->_lines = v10;

  listElement = self->_listElement;
  self->_listElement = elementCopy;
  v13 = elementCopy;

  self->_useBigHitTarget = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__SUUIHorizontalListView_reloadWithViewElement_width_context___block_invoke;
  v22[3] = &unk_2798F8108;
  widthCopy = width;
  v22[4] = self;
  v23 = contextCopy;
  v14 = contextCopy;
  [(SUUIViewReuseView *)self modifyUsingBlock:v22];
  p_bigHitInsets = &self->_bigHitInsets;
  if (self->_useBigHitTarget)
  {
    __asm { FMOV            V0.2D, #-15.0 }

    *&p_bigHitInsets->top = _Q0;
    *&self->_bigHitInsets.bottom = _Q0;
  }

  else
  {
    v21 = *(MEMORY[0x277D768C8] + 16);
    *&p_bigHitInsets->top = *MEMORY[0x277D768C8];
    *&self->_bigHitInsets.bottom = v21;
  }
}

void __62__SUUIHorizontalListView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = *(*(a1 + 32) + 520);
  v43 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v43)
  {
    v42 = *v51;
    v4 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v7 = *(MEMORY[0x277D768C8] + 24);
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v8;
        v9 = *(*(&v50 + 1) + 8 * v8);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v45 = v9;
        v10 = [v45 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v47;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(v45);
              }

              v14 = *(*(&v46 + 1) + 8 * i);
              v15 = [v14 elementType];
              v16 = 0;
              if (v15 <= 68)
              {
                if (v15 <= 48)
                {
                  if (v15 == 8)
                  {
                    v20 = [v3 addBadgeViewWithElement:v14 width:*(a1 + 40) context:*(a1 + 48)];
                    goto LABEL_37;
                  }

                  v17 = 0;
                  if (v15 != 12)
                  {
                    goto LABEL_61;
                  }
                }

                else
                {
                  if (v15 == 49)
                  {
                    v28 = [v3 addImageViewWithElement:v14 context:*(a1 + 40)];
                    v29 = [v28 tapRecognizer];
                    [v29 addTarget:*(a1 + 32) action:sel__imageTapAction_];

                    v23 = v28;
                    goto LABEL_43;
                  }

                  if (v15 != 50)
                  {
                    v17 = 0;
                    if (v15 != 66)
                    {
                      goto LABEL_61;
                    }

                    v17 = [v3 addReusableViewWithReuseIdentifier:@"vlockup"];
                    [v17 setContentInset:{v4, v5, v6, v7}];
                    v19 = 1;
                    [v17 setSizingStyle:1];
                    [objc_opt_class() _sizeForViewElement:v14 width:*(a1 + 40) context:*(a1 + 48)];
                    [v17 reloadWithViewElement:v14 width:*(a1 + 40) context:?];
                    v16 = 0;
                    if (!v17)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_55;
                  }
                }
              }

              else
              {
                if (v15 <= 140)
                {
                  if (v15 == 69)
                  {
                    v24 = [v14 titleItem];
                    v17 = [v3 addMenuButtonWithTitleItem:v24 width:*(a1 + 40) context:*(a1 + 48)];
                    [v17 addTarget:*(a1 + 32) action:sel__menuButtonAction_ forControlEvents:64];
                  }

                  else
                  {
                    if (v15 != 135)
                    {
                      v17 = 0;
                      if (v15 != 138)
                      {
                        goto LABEL_61;
                      }

                      v18 = [v3 addLabelViewWithElement:v14 width:*(a1 + 40) context:*(a1 + 48)];
LABEL_41:
                      v17 = v18;
LABEL_53:
                      v16 = 0;
                      goto LABEL_54;
                    }

                    v24 = v14;
                    v25 = [v24 starType];
                    v26 = *(a1 + 48);
                    v27 = *(a1 + 40);
                    if (v25 == 2)
                    {
                      [v3 addStarRatingControlViewWithViewElement:v24 width:v27 context:v26];
                    }

                    else
                    {
                      [v3 addStarRatingViewWithViewElement:v24 width:v27 context:v26];
                    }
                    v17 = ;
                  }

                  goto LABEL_53;
                }

                if (v15 != 141)
                {
                  if (v15 == 144)
                  {
                    v18 = [v3 addTomatoRatingViewWithViewElement:v14 width:*(a1 + 40) context:*(a1 + 48)];
                    goto LABEL_41;
                  }

                  v17 = 0;
                  if (v15 != 152)
                  {
                    goto LABEL_61;
                  }

                  v20 = [v3 addImageViewWithVideoElement:v14 context:*(a1 + 40)];
LABEL_37:
                  v23 = v20;
LABEL_43:
                  v16 = v23;
                  v17 = v23;
                  if (!v23)
                  {
                    goto LABEL_54;
                  }

LABEL_44:
                  v30 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v14];
                  if (v30)
                  {
                    v31 = *(*(a1 + 32) + 512);
                    if (!v31)
                    {
                      v32 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
                      v33 = *(a1 + 32);
                      v34 = *(v33 + 512);
                      *(v33 + 512) = v32;

                      v31 = *(*(a1 + 32) + 512);
                    }

                    [v31 setObject:v30 forKey:v16];
                  }

                  goto LABEL_54;
                }
              }

              v21 = v14;
              if ([v21 isBigHitButton])
              {
                *(*(a1 + 32) + 544) = 1;
              }

              v22 = [v3 addButtonWithElement:v21 width:*(a1 + 40) context:*(a1 + 48)];
              [v22 addTarget:*(a1 + 32) action:sel__buttonAction_ forControlEvents:64];
              v17 = v22;
              if ([v21 elementType] == 50)
              {
                v16 = v17;
              }

              else
              {
                v16 = 0;
              }

              if (v16)
              {
                goto LABEL_44;
              }

LABEL_54:
              v19 = 0;
              if (!v17)
              {
                goto LABEL_61;
              }

LABEL_55:
              v35 = *(*(a1 + 32) + 496);
              [objc_opt_class() _elementSpacingForViewElement:v14];
              if (v35 >= v36)
              {
                v36 = v35;
              }

              *(*(a1 + 32) + 496) = v36;
              if (v19)
              {
                v37 = *(*(a1 + 32) + 424);
                if (!v37)
                {
                  v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
                  v39 = *(a1 + 32);
                  v40 = *(v39 + 424);
                  *(v39 + 424) = v38;

                  v37 = *(*(a1 + 32) + 424);
                }

                [v37 addObject:v17];
              }

LABEL_61:
            }

            v11 = [v45 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v11);
        }

        v8 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v43);
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIHorizontalListView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  v28 = requestCopy;
  requestIdentifier = [requestCopy requestIdentifier];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15];
        v17 = [contextCopy requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == requestIdentifier)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            imageView = [v15 imageView];
            [imageView setImage:imageCopy];
          }

          else
          {
            [v15 setImage:imageCopy];
          }

          v12 = 1;
        }
      }

      v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = self->_artworkRequestPassthroughViews;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    v25 = v28;
    v24 = imageCopy;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v12 |= [*(*(&v32 + 1) + 8 * j) setImage:imageCopy forArtworkRequest:v28 context:contextCopy];
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v22);
  }

  else
  {
    v25 = v28;
    v24 = imageCopy;
  }

  return v12 & 1;
}

- (id)viewForElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  flattenedChildren = [(SUUIViewElement *)self->_listElement flattenedChildren];
  allExistingViews = [(SUUIViewReuseView *)self allExistingViews];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__21;
  v19 = __Block_byref_object_dispose__21;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SUUIHorizontalListView_viewForElementIdentifier___block_invoke;
  v11[3] = &unk_2798F6E20;
  v7 = identifierCopy;
  v12 = v7;
  v8 = allExistingViews;
  v13 = v8;
  v14 = &v15;
  [flattenedChildren enumerateObjectsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __51__SUUIHorizontalListView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = a2;
  v7 = [v21 itmlID];
  v8 = v21;
  if (v7)
  {
    v9 = [v21 itmlID];
    if ([v9 isEqual:*(a1 + 32)])
    {
    }

    else
    {
      v10 = [v21 elementID];
      v11 = [v10 isEqual:*(a1 + 32)];

      v8 = v21;
      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v12 = [*(a1 + 40) objectAtIndex:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [v13 imageView];

      if (v14)
      {
        v15 = [v13 imageView];
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;
      }
    }

    v18 = *(*(a1 + 48) + 8);
    v20 = *(v18 + 40);
    v19 = (v18 + 40);
    if (v20 || (objc_storeStrong(v19, v12), *(*(*(a1 + 48) + 8) + 40)))
    {
      *a4 = 1;
    }

    v8 = v21;
  }

LABEL_13:
}

- (CGRect)hitRect
{
  if (self->_useBigHitTarget)
  {
    v14.receiver = self;
    v14.super_class = SUUIHorizontalListView;
    [(SUUIHorizontalListView *)&v14 hitRect];
    top = self->_bigHitInsets.top;
    left = self->_bigHitInsets.left;
    v6 = v5 + left;
    v8 = v7 + top;
    v10 = v9 - (left + self->_bigHitInsets.right);
    v12 = v11 - (top + self->_bigHitInsets.bottom);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIHorizontalListView;
    [(SUUIHorizontalListView *)&v13 hitRect];
  }

  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)layoutSubviews
{
  v88 = *MEMORY[0x277D85DE8];
  v84.receiver = self;
  v84.super_class = SUUIHorizontalListView;
  [(SUUIHorizontalListView *)&v84 layoutSubviews];
  allExistingViews = [(SUUIViewReuseView *)self allExistingViews];
  style = [(SUUIListViewElement *)self->_listElement style];
  elementAlignment = [style elementAlignment];

  [(SUUIHorizontalListView *)self bounds];
  v69 = v6;
  v70 = v5;
  v71 = v7;
  v68 = v8;
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = self->_lines;
  v63 = [(NSArray *)obj countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v63)
  {
    v11 = 0;
    v61 = *v81;
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v66 = *(MEMORY[0x277CBF390] + 24);
    v67 = *(MEMORY[0x277CBF390] + 16);
    v59 = v13;
    v60 = *MEMORY[0x277CBF3A0];
    do
    {
      v14 = 0;
      do
      {
        if (*v81 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v14;
        v15 = *(*(&v80 + 1) + 8 * v14);
        v64 = [v15 count];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v76 objects:v86 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = *v77;
          v21 = 0.0;
          v22 = 0.0;
          v23 = v11;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v77 != v20)
              {
                objc_enumerationMutation(v16);
              }

              if ([*(*(&v76 + 1) + 8 * i) elementType] == 127)
              {
                ++v19;
              }

              else
              {
                v25 = [allExistingViews objectAtIndex:v23];
                [v25 sizeThatFits:{v67, v66}];
                v27 = v26;
                v29 = v28;
                [(SUUIHorizontalListView *)self bounds];
                if (v27 < v30)
                {
                  v30 = v27;
                }

                v31 = v12;
                v32 = v13;
                v33 = v29;
                v89 = CGRectIntegral(*(&v30 - 2));
                width = v89.size.width;
                height = v89.size.height;
                [v25 setFrame:{v89.origin.x, v89.origin.y}];
                if (v22 < height)
                {
                  v22 = height;
                }

                v21 = v21 + width;
                ++v23;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v76 objects:v86 count:16];
          }

          while (v18);
        }

        else
        {
          v19 = 0;
          v21 = 0.0;
          v22 = 0.0;
        }

        if (v64 > 1)
        {
          v21 = v21 + self->_elementSpacing * (v64 - 1);
        }

        if (v19 < 1)
        {
          v39 = 0.0;
        }

        else
        {
          [(SUUIHorizontalListView *)self bounds];
          v36 = CGRectGetWidth(v90) - self->_contentInset.left - self->_contentInset.right - v21;
          v37 = v36 <= 0.0;
          v38 = v36 / v19;
          if (v37)
          {
            v39 = 0.0;
          }

          else
          {
            v39 = v38;
          }
        }

        if (elementAlignment == 3)
        {
          left = v71 - v21 - self->_contentInset.right;
        }

        else if (elementAlignment == 2)
        {
          v40 = (v71 - v21) * 0.5;
          left = floorf(v40);
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v41 = v16;
        v42 = [v41 countByEnumeratingWithState:&v72 objects:v85 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v73;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v73 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v72 + 1) + 8 * j);
              if ([v46 elementType] == 127)
              {
                MaxX = v39 + left;
              }

              else
              {
                v48 = [allExistingViews objectAtIndex:v11];
                [v48 frame];
                v50 = v49;
                v52 = v51;
                style2 = [v46 style];
                elementPosition = [style2 elementPosition];

                v55 = top;
                if (elementPosition <= 9)
                {
                  if (((1 << elementPosition) & 0x33) != 0)
                  {
                    v56 = top + (v22 - v52) * 0.5;
                    v55 = roundf(v56);
                  }

                  else
                  {
                    v55 = top;
                    if (((1 << elementPosition) & 0x308) != 0)
                    {
                      v55 = top + v22 - v52;
                    }
                  }
                }

                [v48 setFrame:{SUUIRectByApplyingUserInterfaceLayoutDirectionInRect(left, v55, v50, v52, v70, v69, v71, v68)}];
                v91.origin.x = left;
                v91.origin.y = v55;
                v91.size.width = v50;
                v91.size.height = v52;
                MaxX = CGRectGetMaxX(v91);
                ++v11;
              }

              left = MaxX + self->_elementSpacing;
            }

            v43 = [v41 countByEnumeratingWithState:&v72 objects:v85 count:16];
          }

          while (v43);
        }

        left = self->_contentInset.left;
        [objc_opt_class() _lineSpacingForLineElements:v41];
        top = top + v22 + v57;
        v14 = v65 + 1;
        v13 = v59;
        v12 = v60;
      }

      while (v65 + 1 != v63);
      v63 = [(NSArray *)obj countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v63);
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  if (self->_useBigHitTarget)
  {
    [(SUUIHorizontalListView *)self hitRect];
    v10 = x;
    v11 = y;

    return CGRectContainsPoint(*&v6, *&v10);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIHorizontalListView;
    return [(SUUIHorizontalListView *)&v13 pointInside:event withEvent:inside.x, inside.y];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v58 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  allExistingViews = [(SUUIViewReuseView *)self allExistingViews];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  selfCopy = self;
  obj = self->_lines;
  v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  v7 = 0;
  v8 = 0;
  if (v43)
  {
    v9 = 0;
    v42 = *v53;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = 0;
      do
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v11;
        v46 = v8;
        v47 = v13;
        v44 = v14;
        v15 = *(*(&v52 + 1) + 8 * v14);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v49;
          v20 = 0.0;
          v21 = 0.0;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v49 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v23 = *(*(&v48 + 1) + 8 * i);
              if ([v23 elementType] == 127)
              {
                v7 = 1;
              }

              else
              {
                v24 = [allExistingViews objectAtIndex:v9];
                [v24 sizeThatFits:{width, 1.79769313e308}];
                v26 = v25;
                v28 = v27;
                [v5 _elementSpacingForViewElement:v23];
                if (v12 < v29)
                {
                  v12 = v29;
                }

                if (v21 < v28)
                {
                  v21 = v28;
                }

                v20 = v20 + v26;
                ++v9;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v18);
        }

        else
        {
          v20 = 0.0;
          v21 = 0.0;
        }

        v13 = v47 + v45 + v21;
        [v5 _lineSpacingForLineElements:v16];
        v11 = v30;
        v31 = [v16 count];
        v8 = v46;
        if (v31 > v46)
        {
          v10 = v20;
          v8 = v31;
        }

        v14 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v43);
  }

  else
  {
    v10 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  v32 = v10 + (v8 - 1) * v12;
  if (v8 <= 1)
  {
    v32 = v10;
  }

  if ((v7 & (v32 < width)) != 0)
  {
    v32 = width;
  }

  if (width >= v32)
  {
    width = v32;
  }

  style = [(SUUIListViewElement *)selfCopy->_listElement style];
  [style elementPadding];
  v35 = v34;
  v37 = v36;

  v38 = v13 + v35 + v37;
  v39 = width;
  result.height = v38;
  result.width = v39;
  return result;
}

- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index
{
  if (self->_focusedMenuButton)
  {
    v6 = [(SUUIHorizontalListView *)self _viewElementForView:?];
    [v6 dispatchEventOfType:2 forItemAtIndex:index];
    [(SUUIHorizontalListView *)self _destroyMenuPopover];
  }
}

- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view
{
  [(UIControl *)self->_focusedMenuButton frame:popover];
  rect->origin.x = v6;
  rect->origin.y = v7;
  rect->size.width = v8;
  rect->size.height = v9;
}

- (void)_buttonAction:(id)action
{
  v23[3] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  flattenedChildren = [(SUUIViewElement *)self->_listElement flattenedChildren];
  allExistingViews = [(SUUIViewReuseView *)self allExistingViews];
  v7 = [allExistingViews indexOfObjectIdenticalTo:actionCopy];

  if (v7 < [flattenedChildren count])
  {
    v8 = [flattenedChildren objectAtIndex:v7];
    if (SUUIIKViewElementTypeIsButton([v8 elementType]))
    {
      v9 = SUUICollectionViewCellForView(self);
      v10 = SUUICollectionViewForView(v9);
      delegate = [v10 delegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v20 = [v10 indexPathForCell:v9];
        [delegate collectionView:v10 didConfirmButtonElement:v8 withClickInfo:0 forItemAtIndexPath:v20];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v9;
          v12 = actionCopy;
          v13 = MEMORY[0x277CBEB38];
          v22[0] = @"toggled";
          v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "isToggled")}];
          v23[0] = v14;
          v23[1] = v8;
          v22[1] = @"target";
          v22[2] = @"count";
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "count")}];
          v23[2] = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
          v17 = [v13 dictionaryWithDictionary:v16];

          toggleItemIdentifier = [v12 toggleItemIdentifier];

          if (toggleItemIdentifier)
          {
            toggleItemIdentifier2 = [v12 toggleItemIdentifier];
            [v17 setObject:toggleItemIdentifier2 forKey:@"toggleId"];
          }

          v9 = v21;
        }

        else
        {
          v17 = 0;
        }

        [v8 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:v17 completionBlock:{0, v21}];
      }
    }
  }
}

- (void)_imageTapAction:(id)action
{
  listElement = self->_listElement;
  actionCopy = action;
  flattenedChildren = [(SUUIViewElement *)listElement flattenedChildren];
  allExistingViews = [(SUUIViewReuseView *)self allExistingViews];
  view = [actionCopy view];

  v8 = [allExistingViews indexOfObjectIdenticalTo:view];
  if (v8 < [flattenedChildren count])
  {
    v9 = [flattenedChildren objectAtIndex:v8];
    [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)_menuButtonAction:(id)action
{
  actionCopy = action;
  popoverController = self->_popoverController;
  if (popoverController)
  {
    [(SUUIMenuPopoverController *)popoverController setDelegate:0];
    [(SUUIMenuPopoverController *)self->_popoverController dismissAnimated:1];
    focusedMenuButton = self->_focusedMenuButton;
    self->_focusedMenuButton = 0;

    v7 = self->_popoverController;
    self->_popoverController = 0;
  }

  v8 = [(SUUIHorizontalListView *)self _viewElementForView:actionCopy];
  if (v8)
  {
    objc_storeStrong(&self->_focusedMenuButton, action);
    v9 = [SUUIMenuPopoverController alloc];
    menuItemTitles = [v8 menuItemTitles];
    v11 = -[SUUIMenuPopoverController initWithMenuTitles:selectedIndex:](v9, "initWithMenuTitles:selectedIndex:", menuItemTitles, [v8 selectedItemIndex]);
    v12 = self->_popoverController;
    self->_popoverController = v11;

    [(SUUIMenuPopoverController *)self->_popoverController setDelegate:self];
    v13 = self->_popoverController;
    [(UIControl *)self->_focusedMenuButton frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    superview = [(UIControl *)self->_focusedMenuButton superview];
    [(SUUIMenuPopoverController *)v13 presentFromRect:superview inView:15 permittedArrowDirections:1 animated:v15, v17, v19, v21];
  }
}

+ (id)_attributedStringForButton:(id)button context:(id)context
{
  buttonCopy = button;
  contextCopy = context;
  buttonText = [buttonCopy buttonText];
  buttonViewType = [buttonCopy buttonViewType];
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  if (buttonTitleStyle)
  {
    v11 = [self _attributedStringForButtonText:buttonText type:buttonViewType style:buttonTitleStyle context:contextCopy];
  }

  else
  {
    style = [buttonCopy style];
    v11 = [self _attributedStringForButtonText:buttonText type:buttonViewType style:style context:contextCopy];
  }

  return v11;
}

+ (id)_attributedStringForButtonText:(id)text type:(int64_t)type style:(id)style context:(id)context
{
  textCopy = text;
  styleCopy = style;
  contextCopy = context;
  v12 = SUUIViewElementFontWithStyle(styleCopy);
  if (!v12)
  {
    if (type)
    {
      v13 = 5;
    }

    else
    {
      v13 = 1;
    }

    v12 = SUUIFontPreferredFontForTextStyle(v13);
  }

  tintColor = [contextCopy tintColor];
  blackColor = SUUIViewElementPlainColorWithStyle(styleCopy, tintColor);

  if (!blackColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v16 = [textCopy attributedStringWithDefaultFont:v12 foregroundColor:blackColor style:styleCopy];

  return v16;
}

+ (id)_attributedStringForLabel:(id)label context:(id)context
{
  labelCopy = label;
  contextCopy = context;
  style = [labelCopy style];
  v8 = SUUIViewElementFontWithStyle(style);
  if (!v8)
  {
    v8 = SUUIFontPreferredFontForTextStyle(5);
  }

  tintColor = [contextCopy tintColor];
  v10 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  text = [labelCopy text];
  v12 = [text attributedStringWithDefaultFont:v8 foregroundColor:v10 style:style];

  return v12;
}

+ (id)_attributedStringForMenuItem:(id)item context:(id)context
{
  contextCopy = context;
  itemCopy = item;
  itemText = [itemCopy itemText];
  style = [itemCopy style];

  v10 = [self _attributedStringForButtonText:itemText type:0 style:style context:contextCopy];

  return v10;
}

+ (double)_elementSpacingForViewElement:(id)element
{
  elementType = [element elementType];
  result = 5.0;
  v5 = elementType - 8;
  if ((elementType - 8) <= 0x3A)
  {
    if (((1 << v5) & 0x40000000030) != 0)
    {
      return 20.0;
    }

    if (((1 << v5) & 0x20000000001) != 0)
    {
      return result;
    }

    if (elementType == 66)
    {
      return 10.0;
    }
  }

  if (elementType == 152)
  {
    return result;
  }

  if (elementType != 141)
  {
    return 8.0;
  }

  return 20.0;
}

+ (double)_lineSpacingForLineElements:(id)elements
{
  v17 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [elementsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(elementsCopy);
        }

        [self _lineSpacingForViewElement:*(*(&v12 + 1) + 8 * i)];
        if (v8 < v10)
        {
          v8 = v10;
        }
      }

      v6 = [elementsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

+ (double)_lineSpacingForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType == 66)
  {
    v7 = [elementCopy firstChildForElementType:138];
    if (v7)
    {
      v6 = 15.0;
    }

    else
    {
      v6 = 10.0;
    }
  }

  else
  {
    v5 = 0.0;
    if (elementType == 8)
    {
      v5 = 5.0;
    }

    if (elementType == 49)
    {
      v6 = 5.0;
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

+ (id)_linesWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v10 = objc_alloc_init(SUUIViewElementHorizontalLayout);
  [(SUUIViewElementHorizontalLayout *)v10 setLayoutWidth:width];
  style = [elementCopy style];
  -[SUUIViewElementHorizontalLayout setMaximumElementsPerLine:](v10, "setMaximumElementsPerLine:", [style columnCount]);
  -[SUUIViewElementHorizontalLayout setMaximumLines:](v10, "setMaximumLines:", [style maxTextLines]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__SUUIHorizontalListView__linesWithViewElement_width_context___block_invoke;
  v21[3] = &unk_2798F76C8;
  v23 = &v25;
  selfCopy = self;
  v13 = v12;
  v22 = v13;
  [elementCopy enumerateChildrenUsingBlock:v21];
  [(SUUIViewElementHorizontalLayout *)v10 setElementSpacing:v26[3]];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__SUUIHorizontalListView__linesWithViewElement_width_context___block_invoke_2;
  v17[3] = &unk_2798F8130;
  selfCopy2 = self;
  widthCopy = width;
  v14 = contextCopy;
  v18 = v14;
  v15 = [(SUUIViewElementHorizontalLayout *)v10 layoutViewElements:v13 usingSizingBlock:v17];

  _Block_object_dispose(&v25, 8);

  return v15;
}

void __62__SUUIHorizontalListView__linesWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v6 = a2;
  [v3 _elementSpacingForViewElement:v6];
  if (v4 >= v5)
  {
    v5 = v4;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  [*(a1 + 32) addObject:v6];
}

+ (CGSize)_sizeForViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if ([elementCopy elementType] == 66)
  {
    [SUUIVerticalLockupView sizeThatFitsWidth:elementCopy viewElement:contextCopy context:width];
    v10 = v9;
    v12 = v11;
    v13 = [elementCopy firstChildForElementType:49];
    if (v13)
    {
      [contextCopy sizeForViewElement:v13 width:width];
      v10 = v14;
    }
  }

  else
  {
    [contextCopy sizeForViewElement:elementCopy width:width];
    v10 = v15;
    v12 = v16;
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)_destroyMenuPopover
{
  [(SUUIMenuPopoverController *)self->_popoverController setDelegate:0];
  focusedMenuButton = self->_focusedMenuButton;
  self->_focusedMenuButton = 0;

  popoverController = self->_popoverController;
  self->_popoverController = 0;
}

- (id)_viewElementForView:(id)view
{
  listElement = self->_listElement;
  viewCopy = view;
  flattenedChildren = [(SUUIViewElement *)listElement flattenedChildren];
  allExistingViews = [(SUUIViewReuseView *)self allExistingViews];
  v8 = [allExistingViews indexOfObjectIdenticalTo:viewCopy];

  if (v8 >= [flattenedChildren count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [flattenedChildren objectAtIndex:v8];
  }

  return v9;
}

@end