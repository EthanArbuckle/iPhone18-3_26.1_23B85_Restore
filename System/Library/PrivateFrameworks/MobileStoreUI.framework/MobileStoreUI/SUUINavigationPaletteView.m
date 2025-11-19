@interface SUUINavigationPaletteView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)_sizeForViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForButton:(id)a3 context:(id)a4;
+ (id)_attributedStringForLabel:(id)a3 context:(id)a4;
+ (id)_attributedStringForText:(id)a3 style:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (SUUINavigationPaletteView)initWithFrame:(CGRect)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setVerticalAlignment:(int64_t)a3;
@end

@implementation SUUINavigationPaletteView

- (SUUINavigationPaletteView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = SUUINavigationPaletteView;
  v3 = [(SUUIViewReuseView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    segmentedControls = v3->_segmentedControls;
    v3->_segmentedControls = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stretchViews = v3->_stretchViews;
    v3->_stretchViews = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    viewElementViews = v3->_viewElementViews;
    v3->_viewElementViews = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    viewSpacings = v3->_viewSpacings;
    v3->_viewSpacings = v10;
  }

  return v3;
}

- (void)setVerticalAlignment:(int64_t)a3
{
  if (self->_verticalAlignment != a3)
  {
    self->_verticalAlignment = a3;
    [(SUUINavigationPaletteView *)self setNeedsLayout];
  }
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
  v11[2] = __76__SUUINavigationPaletteView_prefetchResourcesForViewElement_reason_context___block_invoke;
  v11[3] = &unk_2798F5E50;
  v14 = a4;
  v9 = v8;
  v12 = v9;
  v13 = &v15;
  [v7 enumerateChildrenUsingBlock:v11];
  LOBYTE(a4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return a4;
}

void __76__SUUINavigationPaletteView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 62)
  {
    v4 = [SUUIHorizontalListScrollView prefetchResourcesForViewElement:v3 reason:*(a1 + 48) context:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 32) prefetchResourcesForViewElement:v3 reason:*(a1 + 48)];
  }

  v5 = v4;

  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | v5) & 1;
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
  v13[2] = __71__SUUINavigationPaletteView_requestLayoutForViewElement_width_context___block_invoke;
  v13[3] = &unk_2798F5E78;
  v15 = v10;
  v16 = a1;
  v14 = v8;
  v17 = a4;
  v11 = v10;
  v12 = v8;
  [v9 enumerateChildrenUsingBlock:v13];
}

void __71__SUUINavigationPaletteView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  if (v3 <= 61)
  {
    if (v3 == 12)
    {
      goto LABEL_9;
    }

    if (v3 != 40)
    {
      goto LABEL_14;
    }

    v4 = SUUIFilterBarView;
LABEL_11:
    [(__objc2_class *)v4 requestLayoutForViewElement:v6 width:*(a1 + 32) context:*(a1 + 56)];
    goto LABEL_14;
  }

  switch(v3)
  {
    case 62:
      v4 = SUUIHorizontalListScrollView;
      goto LABEL_11;
    case 138:
      v5 = [*(a1 + 48) _attributedStringForLabel:v6 context:*(a1 + 32)];
      [*(a1 + 40) requestLayoutForLabel:v6 attributedString:v5 width:*(a1 + 56)];
      goto LABEL_13;
    case 141:
LABEL_9:
      v5 = [*(a1 + 48) _attributedStringForButton:v6 context:*(a1 + 32)];
      [*(a1 + 40) requestLayoutForButton:v6 attributedString:v5 width:*(a1 + 56)];
LABEL_13:

      break;
  }

LABEL_14:
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v23 = "";
  v24 = a3;
  v25 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__SUUINavigationPaletteView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v15[3] = &unk_2798F5EA0;
  v18 = a1;
  v19 = a3;
  v10 = v9;
  v16 = v10;
  v17 = &v20;
  [v8 enumerateChildrenUsingBlock:v15];
  v11 = v21[4];
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);
  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

uint64_t __67__SUUINavigationPaletteView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 48) _sizeForViewElement:a2 width:*(a1 + 32) context:*(a1 + 56)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  if (v6 < v4)
  {
    v6 = v4;
  }

  *(v5 + 40) = v6;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(NSHashTable *)self->_artworkRelatedChildViewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  [(NSMutableArray *)self->_segmentedControls removeAllObjects];
  [(NSMutableArray *)self->_stretchViews removeAllObjects];
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_viewSpacings removeAllObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SUUINavigationPaletteView_reloadWithViewElement_width_context___block_invoke;
  v12[3] = &unk_2798F5EF0;
  v16 = a4;
  v13 = v8;
  v14 = v9;
  v15 = self;
  v10 = v9;
  v11 = v8;
  [(SUUIViewReuseView *)self modifyUsingBlock:v12];
}

void __65__SUUINavigationPaletteView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SUUINavigationPaletteView_reloadWithViewElement_width_context___block_invoke_2;
  v8[3] = &unk_2798F5EC8;
  v5 = v3;
  v9 = v5;
  v13 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v6;
  v11 = v7;
  v12 = v14;
  [v4 enumerateChildrenUsingBlock:v8];

  _Block_object_dispose(v14, 8);
}

void __65__SUUINavigationPaletteView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [v28 elementType];
  if (v3 > 61)
  {
    if (v3 > 137)
    {
      if (v3 == 138)
      {
        v4 = [*(a1 + 32) addLabelViewWithElement:v28 width:*(a1 + 40) context:*(a1 + 64)];
        [*(*(a1 + 48) + 480) addObject:v4];
        goto LABEL_22;
      }

      if (v3 != 141)
      {
LABEL_12:
        v9 = 0;
        v8 = 0;
        v4 = 0;
        *(*(*(a1 + 56) + 8) + 24) = 0;
        goto LABEL_37;
      }

LABEL_15:
      v11 = [*(a1 + 32) addButtonWithElement:v28 width:*(a1 + 40) context:*(a1 + 64)];
      [v11 addTarget:*(a1 + 48) action:sel__buttonAction_ forControlEvents:64];
      LODWORD(v12) = -1097229926;
      [v11 setCharge:v12];
      v13 = *(*(a1 + 56) + 8);
      v10 = *(v13 + 24);
      *(v13 + 24) = 0x4022000000000000;
      v4 = v11;
      if ([v28 elementType] == 50)
      {
        v8 = v4;
      }

      else
      {
        v8 = 0;
      }

      v9 = 0;
      goto LABEL_23;
    }

    if (v3 == 62)
    {
      v14 = [*(a1 + 32) addReusableViewWithReuseIdentifier:0x286AF98E0];
      [v14 reloadWithViewElement:v28 width:*(a1 + 40) context:*(a1 + 64)];
      v10 = 0.0;
      [v14 setContentInset:{0.0, *(*(*(a1 + 56) + 8) + 24), 0.0, *(*(a1 + 48) + 456)}];
      [*(*(a1 + 48) + 480) addObject:v14];
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v4 = v14;
      v8 = v4;
      v9 = v4;
    }

    else
    {
      if (v3 != 109)
      {
        goto LABEL_12;
      }

      v5 = [[SUUISegmentedControlViewElementController alloc] initWithViewElement:v28];
      v6 = [*(a1 + 40) clientContext];
      [(SUUISegmentedControlViewElementController *)v5 setClientContext:v6];

      v7 = [*(a1 + 40) parentViewController];
      [(SUUISegmentedControlViewElementController *)v5 setParentViewController:v7];

      v4 = [(SUUISegmentedControlViewElementController *)v5 segmentedControlView];
      [*(a1 + 32) addView:v4];
      [*(*(a1 + 48) + 472) addObject:v5];
      [*(*(a1 + 48) + 480) addObject:v4];
      *(*(*(a1 + 56) + 8) + 24) = 0;

      v8 = 0;
      v9 = 0;
      v10 = 0.0;
    }
  }

  else
  {
    if (v3 <= 39)
    {
      if (v3 != 12)
      {
        if (v3 == 32)
        {
          v4 = [*(a1 + 32) addDividerWithElement:v28 context:*(a1 + 40)];
          [v4 setDividerOrientation:1];
          [v4 setDividerSize:16.0];
LABEL_22:
          v8 = 0;
          v9 = 0;
          v16 = *(*(a1 + 56) + 8);
          v10 = *(v16 + 24);
          *(v16 + 24) = 0x4022000000000000;
          goto LABEL_23;
        }

        goto LABEL_12;
      }

      goto LABEL_15;
    }

    if (v3 != 40)
    {
      if (v3 != 50)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    v15 = [*(a1 + 32) addReusableViewWithReuseIdentifier:0x286AF87C0];
    [v15 reloadWithViewElement:v28 width:*(a1 + 40) context:*(a1 + 64)];
    v10 = 0.0;
    [v15 setContentInset:{0.0, *(*(*(a1 + 56) + 8) + 24), 0.0, *(*(a1 + 48) + 456)}];
    [*(*(a1 + 48) + 480) addObject:v15];
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v4 = v15;
    v9 = 0;
    v8 = v4;
  }

LABEL_23:
  if (v4)
  {
    if (v10 > 0.00000011920929)
    {
      v17 = *(*(a1 + 48) + 504);
      v18 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
      [v17 setObject:v18 forKey:v4];
    }

    [*(*(a1 + 48) + 496) setObject:v28 forKey:v4];
  }

  if (v8)
  {
    v19 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v28];
    if (v19)
    {
      v20 = *(*(a1 + 48) + 464);
      if (!v20)
      {
        v21 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
        v22 = *(a1 + 48);
        v23 = *(v22 + 464);
        *(v22 + 464) = v21;

        v20 = *(*(a1 + 48) + 464);
      }

      [v20 setObject:v19 forKey:v8];
    }
  }

  if (v9)
  {
    v24 = *(*(a1 + 48) + 424);
    if (!v24)
    {
      v25 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
      v26 = *(a1 + 48);
      v27 = *(v26 + 424);
      *(v26 + 424) = v25;

      v24 = *(*(a1 + 48) + 424);
    }

    [v24 addObject:v9];
  }

LABEL_37:
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v8 = a4;
  v9 = a5;
  v26 = v8;
  v10 = [v8 requestIdentifier];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v15];
        v17 = [v9 requestIdentifierForResourceCacheKey:v16];
        v18 = v17;
        if (v17 && [v17 unsignedIntegerValue] == v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v22 = v8;
            v21 = v27;
            [v15 setImage:v27 forArtworkRequest:v8 context:v9];
          }

          else
          {
            objc_opt_class();
            v22 = v8;
            v21 = v27;
            if (objc_opt_isKindOfClass())
            {
              v25 = [v15 imageView];
              [v25 setImage:v27];
            }

            else
            {
              [v15 setImage:v27];
            }
          }

          goto LABEL_23;
        }
      }

      v12 = [(NSMapTable *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_artworkRelatedChildViewElementViews;
  v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = *v30;
    v22 = v26;
    v21 = v27;
LABEL_12:
    v23 = 0;
    while (1)
    {
      if (*v30 != v20)
      {
        objc_enumerationMutation(obj);
      }

      if ([*(*(&v29 + 1) + 8 * v23) setImage:v27 forArtworkRequest:v26 context:v9])
      {
        break;
      }

      if (v19 == ++v23)
      {
        v19 = [(NSMapTable *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    LOBYTE(v19) = 1;
  }

  else
  {
    v22 = v8;
    v21 = v27;
  }

LABEL_24:

  return v19;
}

- (id)viewForElementIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_viewElementViews;
  v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_viewElementViews objectForKey:v9];
        v11 = [v10 itmlID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v9;
LABEL_13:
          v14 = v13;

          goto LABEL_14;
        }

        if ([v9 conformsToProtocol:&unk_286BDBC58])
        {
          v13 = [v9 viewForElementIdentifier:v4];
          if (v13)
          {
            goto LABEL_13;
          }
        }
      }

      v6 = [(NSMapTable *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (void)layoutSubviews
{
  v55 = *MEMORY[0x277D85DE8];
  [(SUUINavigationPaletteView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v11 = [(SUUIViewReuseView *)self allExistingViews];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __43__SUUINavigationPaletteView_layoutSubviews__block_invoke;
  v45[3] = &unk_2798F5F18;
  v45[7] = v4;
  v45[8] = v6;
  *&v45[9] = v8;
  *&v45[10] = v10;
  v45[4] = self;
  v45[5] = &v50;
  v45[6] = &v46;
  [v11 enumerateObjectsUsingBlock:v45];
  v35 = v6;
  v36 = v4;
  v12 = [(NSMutableArray *)self->_stretchViews count];
  left = self->_contentInset.left;
  v14 = v47[3];
  v37 = [v11 count];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = self->_stretchViews;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v16)
  {
    v17 = left + v14;
    v18 = *v42;
    v19 = v12;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        [v21 frame];
        v23 = v22;
        v25 = v24;
        if ([v11 indexOfObjectIdenticalTo:v21] == v37 - 1 && (segmentedControls = self->_segmentedControls, v40[0] = MEMORY[0x277D85DD0], v40[1] = 3221225472, v40[2] = __43__SUUINavigationPaletteView_layoutSubviews__block_invoke_2, v40[3] = &unk_2798F5F40, v40[4] = v21, -[NSMutableArray indexOfObjectPassingTest:](segmentedControls, "indexOfObjectPassingTest:", v40) == 0x7FFFFFFFFFFFFFFFLL))
        {
          v27 = v8 - v17;
          [v21 sizeThatFits:{floorf(v27), v10}];
        }

        else
        {
          v30 = (v8 - self->_contentInset.left - self->_contentInset.right - v47[3]) / v19;
          [v21 sizeThatFits:{floorf(v30), v10}];
        }

        v31 = v28;
        v32 = v29;
        [v21 setFrame:{v23, v25, v28, v29}];
        v33 = v51[3];
        if (v33 < v32)
        {
          v33 = v32;
        }

        v51[3] = v33;
        v17 = v17 + v31;
      }

      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v16);
  }

  v39[0] = 0;
  v39[1] = v39;
  v34 = self->_contentInset.left;
  v39[2] = 0x2020000000;
  *&v39[3] = v34;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__SUUINavigationPaletteView_layoutSubviews__block_invoke_3;
  v38[3] = &unk_2798F5F68;
  v38[4] = self;
  v38[5] = v39;
  v38[8] = v36;
  v38[9] = v35;
  *&v38[10] = v8;
  *&v38[11] = v10;
  v38[6] = &v50;
  v38[7] = v37;
  [v11 enumerateObjectsUsingBlock:v38];
  _Block_object_dispose(v39, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
}

void __43__SUUINavigationPaletteView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  if (([*(*(a1 + 32) + 480) containsObject:?] & 1) == 0)
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    [v16 sizeThatFits:{*(a1 + 72), *(a1 + 80)}];
    v8 = v7;
    v10 = v9;
    [v16 setFrame:{v5, v6, v7, v9}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 24);
    if (v12 < v10)
    {
      v12 = v10;
    }

    *(v11 + 24) = v12;
    *(*(*(a1 + 48) + 8) + 24) = v8 + *(*(*(a1 + 48) + 8) + 24);
    if (a3)
    {
      v13 = [*(*(a1 + 32) + 504) objectForKey:v16];
      v14 = v13;
      if (v13)
      {
        [v13 floatValue];
        *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v15;
      }
    }
  }
}

BOOL __43__SUUINavigationPaletteView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 segmentedControlView];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __43__SUUINavigationPaletteView_layoutSubviews__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a2;
  [v27 frame];
  v6 = v5;
  v8 = v7;
  if (a3)
  {
    v9 = [*(*(a1 + 32) + 504) objectForKey:v27];
    v10 = *(*(*(a1 + 40) + 8) + 24);
    [v9 floatValue];
    v12 = v10 + v11;
  }

  else
  {
    v12 = *(*(*(a1 + 40) + 8) + 24);
  }

  if (*(a1 + 56) - 1 == a3 && [*(*(a1 + 32) + 480) containsObject:v27])
  {
    v13 = (*(a1 + 80) - v6) * 0.5;
    v14 = floorf(v13);
    v15 = *(*(a1 + 40) + 8);
    if (*(v15 + 24) >= v14)
    {
      v12 = *(v15 + 24);
    }

    else
    {
      v12 = v14;
    }
  }

  v16 = *(a1 + 32);
  if (*(v16 + 488))
  {
    v17 = (*(a1 + 88) - v8) * 0.5;
    v18 = ceilf(v17);
  }

  else
  {
    v19 = (*(*(*(a1 + 48) + 8) + 24) - v8) * 0.5;
    v18 = *(v16 + 432) + ceilf(v19);
  }

  v20 = v12;
  v21 = v6;
  v22 = v8;
  v29 = CGRectIntegral(*(&v18 - 1));
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  [v27 setFrame:?];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetMaxX(v30);
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
    v10 = SUUIFontPreferredFontForTextStyle(5);
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
  v9 = [v7 elementType];
  if (v9 == 109)
  {
    v13 = *MEMORY[0x277CBF3A8];
    v10 = objc_alloc_init(MEMORY[0x277D75A08]);
    [v10 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
    v11 = v16;
    goto LABEL_7;
  }

  if (v9 == 62)
  {
    [SUUIHorizontalListScrollView sizeThatFitsWidth:v7 viewElement:v8 context:a4];
LABEL_9:
    v13 = v14;
    v11 = v15;
    goto LABEL_10;
  }

  if (v9 != 32)
  {
    [v8 sizeForViewElement:v7 width:a4];
    goto LABEL_9;
  }

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  v11 = 16.0;
  v13 = 1.0 / v12;
LABEL_7:

LABEL_10:
  v17 = v13;
  v18 = v11;
  result.height = v18;
  result.width = v17;
  return result;
}

@end