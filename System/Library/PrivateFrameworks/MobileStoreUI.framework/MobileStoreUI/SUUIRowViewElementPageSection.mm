@interface SUUIRowViewElementPageSection
- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (Class)_cellClassForCardViewElement:(id)a3;
- (Class)_cellClassForLockupViewElement:(id)a3;
- (Class)_cellClassForViewElement:(id)a3;
- (SUUIRowViewElementPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)_contentInsetForIndexPath:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (double)_interiorColumnSpacing;
- (double)_singleColumnWidth;
- (id)_firstChildForColumn:(id)a3;
- (id)_reuseIdentifierForCardViewElement:(id)a3;
- (id)_reuseIdentifierForLockupViewElement:(id)a3;
- (id)_reuseIdentifierForViewElement:(id)a3;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (int64_t)numberOfCells;
- (void)_enumerateViewElementsUsingBlock:(id)a3;
- (void)_requestLayoutForCells;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIRowViewElementPageSection

- (SUUIRowViewElementPageSection)initWithPageComponent:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIRowViewElementPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:a3];
}

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (UIEdgeInsets)sectionContentInset
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"modern"];

  if (v6 && (-[SUUIStorePageSection pageComponent](self, "pageComponent"), v7 = objc_claimAutoreleasedReturnValue(), [v7 viewElement], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "style"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "valueForStyle:", *MEMORY[0x277D1AFE8]), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v10))
  {
    [v10 edgeInsetsValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = v12;
    v20 = v14;
    v21 = v16;
    v22 = v18;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = SUUIRowViewElementPageSection;
    [(SUUIStorePageSection *)&v23 sectionContentInset];
  }

  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];
  [v6 addItemViewElement:v9];

  v10 = [(SUUIStorePageSection *)self pageComponent];
  v11 = [v10 viewElement];
  v12 = [v11 columns];
  v13 = [v7 item];

  v14 = [v12 objectAtIndex:v13];

  [v6 addItemViewElement:v14];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 columns];
  v8 = [v7 objectAtIndex:{objc_msgSend(v4, "item")}];

  v9 = [(SUUIRowViewElementPageSection *)self _firstChildForColumn:v8];
  v10 = [v9 style];
  v11 = [v10 ikBackgroundColor];
  v12 = [v11 color];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SUUIRowViewElementPageSection;
    v13 = [(SUUIStorePageSection *)&v16 backgroundColorForIndexPath:v4];
  }

  v14 = v13;

  return v14;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 columns];
  v8 = [v7 objectAtIndex:{objc_msgSend(v4, "item")}];

  v9 = [(SUUIRowViewElementPageSection *)self _firstChildForColumn:v8];
  v10 = [(SUUIRowViewElementPageSection *)self _reuseIdentifierForViewElement:v9];
  v11 = [(SUUIStorePageSection *)self context];
  v12 = [v11 collectionView];
  v13 = [v12 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v4];

  [(SUUIRowViewElementPageSection *)self _contentInsetForIndexPath:v4];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v13 setContentInset:{v15, v17, v19, v21}];
  [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
  v23 = v22;
  [(SUUIRowViewElementPageSection *)self _singleColumnWidth];
  v25 = v24;
  v26 = [v8 columnSpan];
  v27 = v23 * (v26 - 1) + v26 * v25;
  v28 = floorf(v27);
  v29 = [v9 style];
  v30 = [v29 visibility];
  LODWORD(v12) = [v30 isEqualToString:@"hidden"];

  if (v12)
  {
    v31 = 0;
  }

  else
  {
    v31 = v9;
  }

  [v13 reloadWithViewElement:v31 width:self->_cellLayoutContext context:v28];

  return v13;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = "";
  v17 = *MEMORY[0x277CBF3A8];
  v5 = [v4 item];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__SUUIRowViewElementPageSection_cellSizeForIndexPath___block_invoke;
  v12[3] = &unk_2798F8328;
  v12[5] = &v13;
  v12[6] = v5;
  v12[4] = self;
  [(SUUIRowViewElementPageSection *)self _enumerateViewElementsUsingBlock:v12];
  [(SUUIRowViewElementPageSection *)self _contentInsetForIndexPath:v4];
  v8 = v14[5];
  v9 = v6 + v7 + v14[4];
  v14[4] = v9;
  _Block_object_dispose(&v13, 8);

  v10 = v9;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

void __54__SUUIRowViewElementPageSection_cellSizeForIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  if (*(a1 + 48) == a3)
  {
    *(*(*(a1 + 40) + 8) + 32) = a4;
  }

  v12 = v7;
  v8 = [*(a1 + 32) _cellClassForViewElement:v7];
  if (v8)
  {
    [v8 sizeThatFitsWidth:v12 viewElement:*(*(a1 + 32) + 88) context:a4];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    if (v11 < v9)
    {
      v11 = v9;
    }

    *(v10 + 40) = v11;
  }
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 columns];
  v8 = [v7 objectAtIndex:{objc_msgSend(v4, "item")}];

  v9 = [(SUUIRowViewElementPageSection *)self _firstChildForColumn:v8];
  objc_initWeak(&location, self);
  if (v9)
  {
    if ([v9 isEnabled])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __72__SUUIRowViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
      v10[3] = &unk_2798F8378;
      objc_copyWeak(&v12, &location);
      v11 = v9;
      [v11 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v10];

      objc_destroyWeak(&v12);
    }

    else
    {
      [v9 dispatchEvent:0x286AFEA60 eventAttribute:0x286AFEA80 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
    }
  }

  objc_destroyWeak(&location);
}

void __72__SUUIRowViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke(uint64_t a1, char a2, char a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SUUIRowViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2;
  block[3] = &unk_2798F8350;
  v7 = a2;
  v8 = a3;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __72__SUUIRowViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) != 1 || (*(a1 + 49) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained performDefaultActionForViewElement:*(a1 + 32)];
  }
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 activeMetricsImpressionSession];

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [v6 beginActiveImpressionForViewElement:v8];
  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 viewElement];
  v11 = [v10 columns];
  v12 = [v11 objectAtIndex:{objc_msgSend(v4, "item")}];

  [v6 beginActiveImpressionForViewElement:v12];
  v13.receiver = self;
  v13.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v13 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 activeMetricsImpressionSession];

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [v6 endActiveImpressionForViewElement:v8];
  v9 = [v8 columns];
  v10 = [v4 item];
  if (v10 < [v9 count])
  {
    v11 = [v9 objectAtIndex:v10];

    [v6 endActiveImpressionForViewElement:v11];
    v8 = v11;
  }

  v12.receiver = self;
  v12.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v12 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SUUIRowViewElementPageSection *)self _requestLayoutForCells];
  v8.receiver = self;
  v8.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v8 entityProvider:v7 didInvalidateWithContext:v6];
}

- (int64_t)numberOfCells
{
  v2 = [(SUUIStorePageSection *)self pageComponent];
  v3 = [v2 viewElement];
  v4 = [v3 columns];
  v5 = [v4 count];

  return v5;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SUUIRowViewElementPageSection_prefetchResourcesWithReason___block_invoke;
  v6[3] = &unk_2798F83A0;
  v6[4] = self;
  v6[5] = a3;
  [(SUUIRowViewElementPageSection *)self _enumerateViewElementsUsingBlock:v6];
  v5.receiver = self;
  v5.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v5 prefetchResourcesWithReason:a3];
}

void __61__SUUIRowViewElementPageSection_prefetchResourcesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [objc_msgSend(v3 _cellClassForViewElement:{v4), "prefetchResourcesForViewElement:reason:context:", v4, *(a1 + 40), *(*(a1 + 32) + 88)}];
}

- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SUUIStorePageSection *)self context];
  v11 = [v10 collectionView];
  v12 = [v11 cellForItemAtIndexPath:v8];

  v13 = [v12 updateWithItemState:v9 context:self->_cellLayoutContext animated:v5];
  if (v13)
  {
    v14 = [(SUUIStorePageSection *)self pageComponent];
    v15 = [v14 viewElement];
    v16 = [v15 columns];
    v17 = [v16 objectAtIndex:{objc_msgSend(v8, "item")}];

    [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
    v19 = v18;
    [(SUUIRowViewElementPageSection *)self _singleColumnWidth];
    v21 = v20;
    v22 = [v17 columnSpan];
    v23 = v19 * (v22 - 1) + v22 * v21;
    [objc_opt_class() requestLayoutForViewElement:v17 width:self->_cellLayoutContext context:floorf(v23)];
  }

  return v13;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF8420];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF8440];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD60];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7760];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFDBE0];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFA7A0];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFE180];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF3680];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFCE0];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFBC20];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF3500];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7FC0];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x286AFC9E0];
  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 viewElement];

  -[SUUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [v10 elementType]);
  [(SUUIRowViewElementPageSection *)self _requestLayoutForCells];
  v11.receiver = self;
  v11.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v11 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  cellLayoutContext = self->_cellLayoutContext;
  v8 = a4;
  [(SUUIViewElementLayoutContext *)cellLayoutContext setActivePageWidth:width];
  [(SUUIRowViewElementPageSection *)self _requestLayoutForCells];
  v9.receiver = self;
  v9.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];

  v10 = [(SUUIStorePageSection *)self sectionIndex];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SUUIRowViewElementPageSection_artworkRequest_didLoadImage___block_invoke;
  v14[3] = &unk_2798F83C8;
  v18 = self;
  v19 = v10;
  v15 = v9;
  v16 = v7;
  v17 = v6;
  v11 = v6;
  v12 = v7;
  v13 = v9;
  [(SUUIRowViewElementPageSection *)self _enumerateViewElementsUsingBlock:v14];
}

void __61__SUUIRowViewElementPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 64)];
  v4 = [*(a1 + 32) cellForItemAtIndexPath:v5];
  [v4 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 88)];
}

- (Class)_cellClassForCardViewElement:(id)a3
{
  [a3 cardType];
  v3 = objc_opt_class();

  return v3;
}

- (Class)_cellClassForLockupViewElement:(id)a3
{
  if ([a3 lockupViewType] <= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (Class)_cellClassForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  if (v5 <= 49)
  {
    if (v5 > 13 && v5 == 14)
    {
      v6 = [(SUUIRowViewElementPageSection *)self _cellClassForCardViewElement:v4];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 != 66)
  {
LABEL_7:
    v6 = objc_opt_class();
    goto LABEL_8;
  }

  v6 = [(SUUIRowViewElementPageSection *)self _cellClassForLockupViewElement:v4];
LABEL_8:
  v7 = v6;
  v8 = v6;

  return v7;
}

- (UIEdgeInsets)_contentInsetForIndexPath:(id)a3
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = a3;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];
  v9 = [v8 columns];
  v10 = [v9 count];

  [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
  v12 = v11;
  v13 = [v6 item];

  v14 = v12 * 0.5;
  v15 = floorf(v14);
  if (v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = 15.0;
  }

  if (v13 == v10 - 1)
  {
    v17 = 15.0;
  }

  else
  {
    v17 = v15;
  }

  v18 = v4;
  v19 = v5;
  result.right = v17;
  result.bottom = v19;
  result.left = v16;
  result.top = v18;
  return result;
}

- (void)_enumerateViewElementsUsingBlock:(id)a3
{
  v4 = a3;
  [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
  v6 = v5;
  [(SUUIRowViewElementPageSection *)self _singleColumnWidth];
  v8 = v7;
  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 viewElement];
  v11 = [v10 columns];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SUUIRowViewElementPageSection__enumerateViewElementsUsingBlock___block_invoke;
  v13[3] = &unk_2798F83F0;
  v15 = v6;
  v16 = v8;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [v11 enumerateObjectsUsingBlock:v13];
}

void __66__SUUIRowViewElementPageSection__enumerateViewElementsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = a2;
  v10 = [v9 columnSpan];
  v11 = v7 * (v10 - 1) + v10 * v8;
  v12 = floorf(v11);
  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) _firstChildForColumn:v9];

  (*(v13 + 16))(v13, v14, a3, a4, v12);
}

- (id)_firstChildForColumn:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__25;
  v11 = __Block_byref_object_dispose__25;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SUUIRowViewElementPageSection__firstChildForColumn___block_invoke;
  v6[3] = &unk_2798F5FB8;
  v6[4] = &v7;
  [v3 enumerateChildrenUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (double)_interiorColumnSpacing
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  v5 = [v4 columns];
  v6 = [v5 count];

  v7 = [(SUUIStorePageSection *)self context];
  [v7 activePageWidth];
  v9 = 20.0;
  if (v6 != 2)
  {
    if (v6 == 3)
    {
      if (v8 <= 1000.0)
      {
        if (v8 <= 700.0)
        {
          v9 = 4.0;
        }

        else
        {
          v9 = 18.0;
        }
      }
    }

    else if (v6 == 4)
    {
      v10 = [v7 clientContext];
      v11 = SUUIUserInterfaceIdiom(v10);

      if (v11 == 1)
      {
        v9 = 18.0;
      }

      else
      {
        v9 = 4.0;
      }
    }

    else
    {
      v9 = 0.0;
    }
  }

  return v9;
}

- (void)_requestLayoutForCells
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__SUUIRowViewElementPageSection__requestLayoutForCells__block_invoke;
  v2[3] = &unk_2798F8418;
  v2[4] = self;
  [(SUUIRowViewElementPageSection *)self _enumerateViewElementsUsingBlock:v2];
}

void __55__SUUIRowViewElementPageSection__requestLayoutForCells__block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [objc_msgSend(v5 _cellClassForViewElement:{v6), "requestLayoutForViewElement:width:context:", v6, *(*(a1 + 32) + 88), a3}];
}

- (id)_reuseIdentifierForCardViewElement:(id)a3
{
  v3 = [a3 cardType];
  v4 = &SUUIEditorialCardCellReuseIdentifier;
  if (v3 != 3)
  {
    v4 = &SUUICardViewElementCollectionViewCellReuseIdentifier;
  }

  v5 = *v4;

  return v5;
}

- (id)_reuseIdentifierForLockupViewElement:(id)a3
{
  v3 = [a3 lockupViewType];
  if (v3 <= 8)
  {
    v4 = *off_2798F8480[v3];
  }

  return v4;
}

- (id)_reuseIdentifierForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  if (v5 > 49)
  {
    if (v5 <= 133)
    {
      if (v5 != 50)
      {
        if (v5 == 62)
        {
          v6 = @"SUUIHorizontalListReuseIdentifier";
          goto LABEL_20;
        }

        if (v5 == 66)
        {
          v7 = [(SUUIRowViewElementPageSection *)self _reuseIdentifierForLockupViewElement:v4];
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      goto LABEL_19;
    }

    if (v5 == 134)
    {
      v6 = @"SUUIStarHistogramCellReuseIdentifier";
      goto LABEL_20;
    }

    if (v5 == 141)
    {
      goto LABEL_19;
    }

    if (v5 != 152)
    {
      goto LABEL_14;
    }

LABEL_18:
    v6 = @"SUUIImageReuseIdentifier";
    goto LABEL_20;
  }

  if (v5 <= 13)
  {
    if ((v5 - 12) >= 2)
    {
      if (v5 == 4)
      {
        v6 = @"SUUIActivityIndicatorReuseIdentifier";
LABEL_20:
        v7 = v6;
        goto LABEL_21;
      }

LABEL_14:
      v6 = @"SUUISpacerReuseIdentifier";
      goto LABEL_20;
    }

LABEL_19:
    v6 = @"SUUIButtonReuseIdentifier";
    goto LABEL_20;
  }

  if (v5 != 14)
  {
    if (v5 == 28)
    {
      v6 = @"SUUICounterReuseIdentifier";
      goto LABEL_20;
    }

    if (v5 != 49)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v7 = [(SUUIRowViewElementPageSection *)self _reuseIdentifierForCardViewElement:v4];
LABEL_21:
  v8 = v7;

  return v8;
}

- (double)_singleColumnWidth
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  v5 = [v4 columns];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v9 += [*(*(&v19 + 1) + 8 * i) columnSpan];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
  v13 = v12;
  v14 = [(SUUIStorePageSection *)self context];
  [v14 activePageWidth];
  v16 = v15;

  v17 = (v16 + -30.0 - v13 * (v9 - 1)) / v9;
  return floorf(v17);
}

@end