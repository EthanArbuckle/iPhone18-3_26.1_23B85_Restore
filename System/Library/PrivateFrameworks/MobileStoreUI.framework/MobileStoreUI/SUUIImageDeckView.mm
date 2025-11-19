@interface SUUIImageDeckView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIImageDeckView)init;
- (UIEdgeInsets)contentInset;
- (id)viewForElementIdentifier:(id)a3;
- (void)_layoutImages;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setImageViews:(id)a3;
@end

@implementation SUUIImageDeckView

- (SUUIImageDeckView)init
{
  v8.receiver = self;
  v8.super_class = SUUIImageDeckView;
  v2 = [(SUUIImageDeckView *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v2->_viewElementViews;
    v2->_viewElementViews = v3;

    v5 = [objc_alloc(MEMORY[0x277D754B0]) initWithReferenceView:v2];
    animator = v2->_animator;
    v2->_animator = v5;
  }

  return v2;
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
  v11[2] = __68__SUUIImageDeckView_prefetchResourcesForViewElement_reason_context___block_invoke;
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

void __68__SUUIImageDeckView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 elementType] == 49)
  {
    v3 = MEMORY[0x277D75348];
    v4 = v6;
    v5 = [v3 colorWithWhite:0.0 alpha:0.15];
    [v4 setShadowColor:v5];

    [v4 setShadowOffset:{5.0, 0.0}];
    [v4 setShadowRadius:7.0];
  }

  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | [*(a1 + 32) prefetchResourcesForViewElement:v6 reason:*(a1 + 48)]) & 1;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v18 = "";
  v19 = *MEMORY[0x277CBF3A8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__SUUIImageDeckView_preferredSizeForViewElement_context___block_invoke;
  v12[3] = &unk_2798F91F8;
  v7 = v6;
  v13 = v7;
  v14 = &v15;
  [v5 enumerateChildrenUsingBlock:v12];
  v8 = v16[4];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

uint64_t __57__SUUIImageDeckView_preferredSizeForViewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType];
  if (v3 == 49)
  {
    v3 = [*(a1 + 32) sizeForImageElement:v11];
    v6 = *(*(a1 + 40) + 8);
    if (*(v6 + 40) >= v5)
    {
      v5 = *(v6 + 40);
    }

    *(v6 + 40) = v5;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 32);
    if (v8 >= 0.00000011920929)
    {
      v9 = v4 / 3.0;
      v4 = v8 + floorf(v9);
    }

    *(v7 + 32) = v4;
  }

  return MEMORY[0x2821F9730](v3);
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SUUIImageDeckView_requestLayoutForViewElement_width_context___block_invoke;
  v9[3] = &unk_2798FA8F8;
  v11 = a4;
  v10 = v7;
  v8 = v7;
  [a3 enumerateChildrenUsingBlock:v9];
}

void __63__SUUIImageDeckView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 49)
  {
    [SUUIAdornedImageView requestLayoutForViewElement:v3 width:*(a1 + 32) context:*(a1 + 40)];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = "";
  v22 = *(MEMORY[0x277CBF3A8] + 8);
  v21 = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__SUUIImageDeckView_sizeThatFitsWidth_viewElement_context___block_invoke;
  v14[3] = &unk_2798F91F8;
  v9 = v8;
  v15 = v9;
  v16 = &v17;
  [v7 enumerateChildrenUsingBlock:v14];
  v10 = v18[4];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

void __59__SUUIImageDeckView_sizeThatFitsWidth_viewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 elementType] == 49)
  {
    [*(a1 + 32) sizeForImageElement:v6];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    if (v5 < v3)
    {
      v5 = v3;
    }

    *(v4 + 40) = v5;
  }
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v9 = a3;
  v10 = a5;
  objc_storeStrong(&self->_imageDeckViewElement, a3);
  self->_fitWidth = a4;
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __57__SUUIImageDeckView_reloadWithViewElement_width_context___block_invoke;
  v18 = &unk_2798FB240;
  v19 = v9;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  [(SUUIViewReuseView *)self modifyUsingBlock:&v15];
  [(SUUIImageDeckView *)self setImageViews:v12, v15, v16, v17, v18];
}

void __57__SUUIImageDeckView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SUUIImageDeckView_reloadWithViewElement_width_context___block_invoke_2;
  v9[3] = &unk_2798FAB60;
  v10 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v3;
  [v4 enumerateChildrenUsingBlock:v9];
}

uint64_t __57__SUUIImageDeckView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  isKindOfClass = [v11 elementType];
  if (isKindOfClass == 49)
  {
    v4 = [*(a1 + 32) addImageViewWithElement:v11 context:*(a1 + 40)];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      isKindOfClass = [v4 setUserInteractionEnabled:0];
    }

    if (v4)
    {
      [*(*(a1 + 48) + 448) setObject:v11 forKey:v4];
      [*(*(a1 + 48) + 448) setObject:v4 forKey:v11];
      [*(a1 + 56) addObject:v4];
      v5 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v11];
      if (v5)
      {
        v6 = *(*(a1 + 48) + 464);
        if (!v6)
        {
          v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
          v8 = *(a1 + 48);
          v9 = *(v8 + 464);
          *(v8 + 464) = v7;

          v6 = *(*(a1 + 48) + 464);
        }

        [v6 setObject:v5 forKey:v4];
      }
    }
  }

  return MEMORY[0x2821F9730](isKindOfClass);
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUIImageDeckView *)self _layoutImages];

    [(SUUIImageDeckView *)self setNeedsLayout];
  }
}

- (void)setImageViews:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_imageViews isEqualToArray:?])
  {
    objc_storeStrong(&self->_imageViews, a3);
    [(SUUIImageDeckView *)self _layoutImages];
    [(SUUIImageDeckView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v8 = a5;
  v9 = [a4 requestIdentifier];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_imageViewToImageResourceCacheKey;
  v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = 0;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [(NSMapTable *)self->_imageViewToImageResourceCacheKey objectForKey:v14];
        v16 = [v8 requestIdentifierForResourceCacheKey:v15];
        v17 = v16;
        if (v16 && [v16 unsignedIntegerValue] == v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v14 imageView];
            [v18 setImage:v21];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v14 setImage:v21 cacheKey:v15 context:v8];
            }

            else
            {
              [v14 setImage:v21];
            }
          }

          v20 = 1;
        }
      }

      v11 = [(NSMapTable *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__101;
  v19 = __Block_byref_object_dispose__101;
  v20 = 0;
  v5 = [(SUUIViewReuseView *)self allExistingViews];
  v6 = [(SUUIViewElement *)self->_imageDeckViewElement flattenedChildren];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__SUUIImageDeckView_viewForElementIdentifier___block_invoke;
  v11[3] = &unk_2798F6E20;
  v7 = v4;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __46__SUUIImageDeckView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = [a2 itmlID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    if ([*(a1 + 40) count] > a3)
    {
      v9 = [*(a1 + 40) objectAtIndex:a3];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *a4 = 1;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBF3A8];
  fitWidth = self->_fitWidth;
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(SUUIImageDeckView *)self imageViews];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *v3;
    v11 = v5;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v16 + 1) + 8 * i) sizeThatFits:{v10, v5}];
        if (v11 < v13)
        {
          v11 = v13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v11 = v5;
  }

  v14 = fitWidth;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SUUIImageDeckView;
  [(SUUIImageDeckView *)&v12 layoutSubviews];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(SUUIImageDeckView *)self imageViews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SUUIImageDeckView *)self sendSubviewToBack:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_layoutImages
{
  v68 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v3 = [(SUUIImageDeckView *)self imageViews];
  v4 = [v3 countByEnumeratingWithState:&v61 objects:v67 count:16];
  v52 = 0.0;
  v5 = MEMORY[0x277CBF3A8];
  v6 = 0.0;
  if (v4)
  {
    v7 = v4;
    v8 = *v62;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v62 != v8)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v61 + 1) + 8 * i) sizeThatFits:{v9, v10}];
        v6 = v6 + v12;
      }

      v7 = [v3 countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v7);
  }

  fitWidth = self->_fitWidth;
  [(SUUIImageDeckView *)self contentInset];
  v15 = v14;
  [(SUUIImageDeckView *)self contentInset];
  v17 = v16;
  v18 = [(SUUIImageDeckView *)self imageViews];
  v19 = [v18 count];

  if (v19 >= 2)
  {
    v20 = [(SUUIImageDeckView *)self imageViews];
    v52 = (v6 - (fitWidth - (v15 + v17))) / ([v20 count] - 1);
  }

  [(SUUIImageDeckView *)self contentInset];
  v22 = v21;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v23 = [(SUUIImageDeckView *)self imageViews];
  v24 = [v23 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v58;
    v28 = *v5;
    v27 = v5[1];
    v29 = 0.0;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v57 + 1) + 8 * j) sizeThatFits:{v28, v27}];
        if (v29 < v31)
        {
          v29 = v31;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v25);
  }

  else
  {
    v29 = 0.0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v32 = [(SUUIImageDeckView *)self imageViews];
  v33 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v54;
    v36 = v5[1];
    v51 = *v5;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v54 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v53 + 1) + 8 * k);
        [v38 frame];
        v40 = v39;
        v42 = v41;
        [v38 sizeThatFits:{v51, v36}];
        v44 = v43;
        v46 = v45;
        [(SUUIImageDeckView *)self contentInset];
        v48 = v47;
        v69.origin.x = v40;
        v69.origin.y = v42;
        v69.size.width = v44;
        v69.size.height = v46;
        v49 = v48 + v29 - CGRectGetHeight(v69);
        [v38 setFrame:{v22, v49, v44, v46}];
        [(SUUIImageDeckView *)self sendSubviewToBack:v38];
        v70.origin.x = v22;
        v70.origin.y = v49;
        v70.size.width = v44;
        v70.size.height = v46;
        v50 = v22 + CGRectGetWidth(v70) - v52;
        v22 = floorf(v50);
      }

      v34 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v34);
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end