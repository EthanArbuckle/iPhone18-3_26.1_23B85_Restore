@interface SUUIHorizontalListScrollView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)_sizeForViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringForText:(id)a3 style:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIHorizontalListScrollView)initWithFrame:(CGRect)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIHorizontalListScrollView

- (SUUIHorizontalListScrollView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIHorizontalListScrollView;
  v3 = [(SUUIViewReuseView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    viewElementViews = v3->_viewElementViews;
    v3->_viewElementViews = v4;

    v6 = objc_alloc(MEMORY[0x277D759D8]);
    [(SUUIHorizontalListScrollView *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    scrollView = v3->_scrollView;
    v3->_scrollView = v7;

    [(UIScrollView *)v3->_scrollView setAlwaysBounceHorizontal:0];
    [(UIScrollView *)v3->_scrollView setAlwaysBounceVertical:0];
    [(UIScrollView *)v3->_scrollView setScrollsToTop:0];
    [(UIScrollView *)v3->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v3->_scrollView setShowsVerticalScrollIndicator:0];
    [(SUUIHorizontalListScrollView *)v3 addSubview:v3->_scrollView];
  }

  return v3;
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__SUUIHorizontalListScrollView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2798F5E50;
  v9 = v8;
  v13 = &v15;
  v14 = a4;
  v12 = v9;
  [v7 enumerateChildrenUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

uint64_t __79__SUUIHorizontalListScrollView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
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
  v8 = a5;
  v9 = a3;
  v10 = [v8 labelLayoutCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SUUIHorizontalListScrollView_requestLayoutForViewElement_width_context___block_invoke;
  v13[3] = &unk_2798F5E78;
  v16 = a4;
  v17 = a1;
  v14 = v10;
  v15 = v8;
  v11 = v8;
  v12 = v10;
  [v9 enumerateChildrenUsingBlock:v13];
}

void __74__SUUIHorizontalListScrollView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  if (v3 <= 137)
  {
    if (v3 == 8)
    {
      [*(a1 + 32) requestLayoutForBadge:v5 width:*(a1 + 48)];
      goto LABEL_12;
    }

    if (v3 != 12)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  switch(v3)
  {
    case 138:
      v4 = [*(a1 + 56) _attributedStringForLabel:v5 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForLabel:v5 attributedString:v4 width:*(a1 + 48)];
      goto LABEL_10;
    case 141:
LABEL_8:
      v4 = [*(a1 + 56) _attributedStringForButton:v5 context:*(a1 + 40)];
      [*(a1 + 32) requestLayoutForButton:v5 attributedString:v4 width:*(a1 + 48)];
LABEL_10:

      break;
    case 144:
      [SUUITomatoRatingView requestLayoutForViewElement:v5 width:*(a1 + 40) context:*(a1 + 48)];
      break;
  }

LABEL_12:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v32 = "";
  v33 = *MEMORY[0x277CBF3A8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__SUUIHorizontalListScrollView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v19[3] = &unk_2798FDC38;
  v23 = a1;
  v24 = a3;
  v10 = v9;
  v20 = v10;
  v21 = &v29;
  v22 = &v25;
  [v8 enumerateChildrenUsingBlock:v19];
  v11 = v26[3];
  v12 = v30;
  v13 = v11 <= 1;
  v14 = v11 - 1;
  if (v13)
  {
    v15 = v30[4];
  }

  else
  {
    v15 = v30[4] + (v14 * 18.0);
    v30[4] = v15;
  }

  v16 = v12[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v17 = v15;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

double __70__SUUIHorizontalListScrollView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 56) _sizeForViewElement:a2 width:*(a1 + 32) context:*(a1 + 64)];
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 40) >= v4)
  {
    v4 = *(v5 + 40);
  }

  *(v5 + 40) = v4;
  v6 = *(*(a1 + 40) + 8);
  result = v3 + *(v6 + 32);
  *(v6 + 32) = result;
  ++*(*(*(a1 + 48) + 8) + 24);
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__SUUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2798F5EF0;
  v16 = a4;
  v13 = v8;
  v14 = v9;
  v15 = self;
  v10 = v9;
  v11 = v8;
  [(SUUIViewReuseView *)self modifyUsingBlock:v12];
}

void __68__SUUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SUUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke_2;
  v8[3] = &unk_2798F7628;
  v9 = v3;
  v12 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 enumerateChildrenUsingBlock:v8];
}

void __68__SUUIHorizontalListScrollView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 elementType];
  v4 = 0;
  if (v3 > 49)
  {
    if (v3 > 140)
    {
      if (v3 != 141)
      {
        if (v3 != 144)
        {
          goto LABEL_27;
        }

        v5 = [*(a1 + 32) addTomatoRatingViewWithViewElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
        goto LABEL_13;
      }
    }

    else if (v3 != 50)
    {
      if (v3 != 138)
      {
        goto LABEL_27;
      }

      v5 = [*(a1 + 32) addLabelViewWithElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
LABEL_13:
      v4 = v5;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (v3 != 8)
  {
    if (v3 != 12)
    {
      if (v3 != 32)
      {
        goto LABEL_27;
      }

      v4 = [*(a1 + 32) addDividerWithElement:v14 context:*(a1 + 40)];
      [v4 setDividerOrientation:1];
      [v4 setDividerSize:16.0];
LABEL_14:
      v6 = 0;
      if (!v4)
      {
        goto LABEL_21;
      }

LABEL_20:
      [*(*(a1 + 48) + 432) setObject:v14 forKey:v4];
      goto LABEL_21;
    }

LABEL_16:
    v7 = [*(a1 + 32) addButtonWithElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
    [v7 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
    LODWORD(v8) = -1097229926;
    [v7 setCharge:v8];
    v4 = v7;
    if ([v14 elementType] == 50)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v6 = [*(a1 + 32) addBadgeViewWithElement:v14 width:*(a1 + 40) context:*(a1 + 56)];
  v4 = v6;
  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v6)
  {
    v9 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v14];
    if (v9)
    {
      v10 = *(*(a1 + 48) + 440);
      if (!v10)
      {
        v11 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
        v12 = *(a1 + 48);
        v13 = *(v12 + 440);
        *(v12 + 440) = v11;

        v10 = *(*(a1 + 48) + 440);
      }

      [v10 setObject:v9 forKey:v6];
    }
  }

LABEL_27:
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [a4 requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v22 = v8;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15, v22];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v15 imageView];
            v8 = v22;
            [v20 setImage:v22];
          }

          else
          {
            v8 = v22;
            [v15 setImage:v22];
          }

          v19 = 1;
          goto LABEL_16;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v19 = 0;
    v8 = v22;
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

- (id)viewForElementIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_viewElementViews;
  v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_viewElementViews objectForKey:v9];
        v11 = [v10 itmlID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)layoutSubviews
{
  v25 = *MEMORY[0x277D85DE8];
  [(SUUIHorizontalListScrollView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView setFrame:?];
  v7 = [(SUUIViewReuseView *)self allExistingViews];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        [v13 sizeThatFits:{1.79769313e308, v6}];
        v15 = v14;
        v17 = v16;
        *&v14 = (v6 - v16) * 0.5;
        v18 = floorf(*&v14);
        [v13 setFrame:{v11, v18, v15, v16}];
        v26.origin.x = v11;
        v26.origin.y = v18;
        v26.size.width = v15;
        v26.size.height = v17;
        MaxX = CGRectGetMaxX(v26);
        v27.origin.x = v11;
        v27.origin.y = v18;
        v27.size.width = v15;
        v27.size.height = v17;
        v11 = CGRectGetMaxX(v27) + 18.0;
        [(UIScrollView *)self->_scrollView addSubview:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  else
  {
    MaxX = 0.0;
  }

  [(UIScrollView *)self->_scrollView setContentSize:MaxX, v6];
  [(UIScrollView *)self->_scrollView setScrollEnabled:MaxX > v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v23 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v8 = [(SUUIViewReuseView *)self allExistingViews];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v18 + 1) + 8 * v12) sizeThatFits:{width, height}];
        if (v6 < v14)
        {
          v6 = v14;
        }

        v7 = v7 + v13;
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v8 count] >= 2)
  {
    v7 = v7 + (([v8 count] - 1) * 18.0);
  }

  [(UIScrollView *)self->_scrollView contentInset];
  if (v7 + v15 < width)
  {
    width = v7 + v15;
  }

  v16 = width;
  v17 = v6;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_buttonAction:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v7 = [v4 defaultCenter];
  [v7 postNotificationName:0x286AF1D80 object:self];
  v6 = [(NSMapTable *)self->_viewElementViews objectForKey:v5];

  [v6 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

+ (id)_attributedStringForButton:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 buttonText];
  v9 = [v6 buttonTitleStyle];
  if (v9)
  {
    v10 = [a1 _attributedStringForText:v8 style:v9 context:v7];
  }

  else
  {
    v11 = [v6 style];
    v10 = [a1 _attributedStringForText:v8 style:v11 context:v7];
  }

  return v10;
}

+ (id)_attributedStringForLabel:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 text];
  v9 = [v7 style];

  v10 = [a1 _attributedStringForText:v8 style:v9 context:v6];

  return v10;
}

+ (id)_attributedStringForText:(id)a3 style:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = SUUIViewElementFontWithStyle(v8);
  if (!v10)
  {
    v10 = SUUIFontForTextStyle(5);
  }

  v11 = [v9 tintColor];
  v12 = SUUIViewElementPlainColorWithStyle(v8, v11);

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
  }

  v13 = [v7 attributedStringWithDefaultFont:v10 foregroundColor:v12 style:v8];

  return v13;
}

+ (CGSize)_sizeForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 elementType] == 32)
  {
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    v10 = 16.0;
    v12 = 1.0 / v11;
  }

  else
  {
    [v8 sizeForViewElement:v7 width:a4];
    v12 = v13;
    v10 = v14;
  }

  v15 = v12;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

@end