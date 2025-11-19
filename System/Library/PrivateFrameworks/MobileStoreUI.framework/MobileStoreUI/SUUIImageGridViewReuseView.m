@interface SUUIImageGridViewReuseView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (SUUIImageGridViewReuseView)init;
- (id)viewForElementIdentifier:(id)a3;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUIImageGridViewReuseView

- (SUUIImageGridViewReuseView)init
{
  v6.receiver = self;
  v6.super_class = SUUIImageGridViewReuseView;
  v2 = [(SUUIImageGridViewReuseView *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewElementViews = v2->_viewElementViews;
    v2->_viewElementViews = v3;
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
  v11[2] = __77__SUUIImageGridViewReuseView_prefetchResourcesForViewElement_reason_context___block_invoke;
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

uint64_t __77__SUUIImageGridViewReuseView_prefetchResourcesForViewElement_reason_context___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) prefetchResourcesForViewElement:a2 reason:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) | result) & 1;
  return result;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__51;
  v53 = __Block_byref_object_dispose__51;
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __66__SUUIImageGridViewReuseView_preferredSizeForViewElement_context___block_invoke;
  v48[3] = &unk_2798F5FB8;
  v48[4] = &v49;
  [v5 enumerateChildrenUsingBlock:v48];
  v7 = [v5 columnCount];
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v50[5] count];
  if ([v50[5] count] % v8)
  {
    v10 = v9 / v8 + 1;
  }

  else
  {
    v10 = v9 / v8;
  }

  v11 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
  v12 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
  v43 = v5;
  bzero(v11, 8 * v8);
  if (v10 >= 1)
  {
    bzero(v12, 8 * v10);
  }

  v42 = v10;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = v50[5];
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v13);
        }

        [v6 sizeForImageElement:{*(*(&v44 + 1) + 8 * i), v42}];
        if (*(v11 + v15) < v19)
        {
          *(v11 + v15) = v19;
        }

        if (*(v12 + v16) < v20)
        {
          *(v12 + v16) = v20;
        }

        v21 = v15 + 1 < v8;
        if (v15 + 1 < v8)
        {
          ++v15;
        }

        else
        {
          v15 = 0;
        }

        if (!v21)
        {
          ++v16;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v14);
  }

  v22 = 0;
  v23 = *MEMORY[0x277CBF3A8];
  v24 = *(MEMORY[0x277CBF3A8] + 8);
  v25 = v42;
  do
  {
    v23 = v23 + *(v11 + v22++);
  }

  while (v8 != v22);
  if (v42 >= 1)
  {
    v26 = v12;
    do
    {
      v27 = *v26++;
      v24 = v24 + v27;
      --v25;
    }

    while (v25);
  }

  free(v11);
  free(v12);
  [v43 contentInset];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v43 size];
  if (v35 + v23 + v31 >= v36)
  {
    v38 = v35 + v23 + v31;
  }

  else
  {
    v38 = v36;
  }

  if (v33 + v24 + v29 >= v37)
  {
    v39 = v33 + v24 + v29;
  }

  else
  {
    v39 = v37;
  }

  _Block_object_dispose(&v49, 8);

  v40 = v38;
  v41 = v39;
  result.height = v41;
  result.width = v40;
  return result;
}

void __66__SUUIImageGridViewReuseView_preferredSizeForViewElement_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 49)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SUUIImageGridViewReuseView_requestLayoutForViewElement_width_context___block_invoke;
  v9[3] = &unk_2798FA8F8;
  v11 = a4;
  v10 = v7;
  v8 = v7;
  [a3 enumerateChildrenUsingBlock:v9];
}

void __72__SUUIImageGridViewReuseView_requestLayoutForViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 49)
  {
    [SUUIAdornedImageView requestLayoutForViewElement:v3 width:*(a1 + 32) context:*(a1 + 40)];
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [SUUIImageGridViewReuseView preferredSizeForViewElement:a4 context:a5, a3];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_storeStrong(&self->_imageGridViewElement, a3);
  [(NSMapTable *)self->_viewElementViews removeAllObjects];
  [(NSMapTable *)self->_imageViewToImageResourceCacheKey removeAllObjects];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __66__SUUIImageGridViewReuseView_reloadWithViewElement_width_context___block_invoke;
  v17 = &unk_2798FB240;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(SUUIViewReuseView *)self modifyUsingBlock:&v14];
  [(SUUIImageGridViewReuseView *)self setImageViews:v11, v14, v15, v16, v17];
}

void __66__SUUIImageGridViewReuseView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SUUIImageGridViewReuseView_reloadWithViewElement_width_context___block_invoke_2;
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

uint64_t __66__SUUIImageGridViewReuseView_reloadWithViewElement_width_context___block_invoke_2(uint64_t a1, void *a2)
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
      [*(*(a1 + 48) + 432) setObject:v11 forKey:v4];
      [*(*(a1 + 48) + 432) setObject:v4 forKey:v11];
      [*(a1 + 56) addObject:v4];
      v5 = [*(a1 + 40) imageResourceCacheKeyForViewElement:v11];
      if (v5)
      {
        v6 = *(*(a1 + 48) + 424);
        if (!v6)
        {
          v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:1];
          v8 = *(a1 + 48);
          v9 = *(v8 + 424);
          *(v8 + 424) = v7;

          v6 = *(*(a1 + 48) + 424);
        }

        [v6 setObject:v5 forKey:v4];
      }
    }
  }

  return MEMORY[0x2821F9730](isKindOfClass);
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
            objc_opt_class();
            v8 = v22;
            if (objc_opt_isKindOfClass())
            {
              [v15 setImage:v22 cacheKey:v16 context:v9];
            }

            else
            {
              [v15 setImage:v22];
            }
          }

          v19 = 1;
          goto LABEL_18;
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

LABEL_18:

  return v19;
}

- (id)viewForElementIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__51;
  v19 = __Block_byref_object_dispose__51;
  v20 = 0;
  v5 = [(SUUIViewReuseView *)self allExistingViews];
  v6 = [(SUUIViewElement *)self->_imageGridViewElement flattenedChildren];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SUUIImageGridViewReuseView_viewForElementIdentifier___block_invoke;
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

void __55__SUUIImageGridViewReuseView_viewForElementIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
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

@end