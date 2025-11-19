@interface SUUIReviewListPageSection
- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)a3;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIReviewListPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)_contentInsetForReviewIndex:(int64_t)a3;
- (id)_contextActionRegistrationKeyWithCell:(id)a3 indexPath:(id)a4;
- (id)cellForIndexPath:(id)a3;
- (int64_t)numberOfCells;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)registerContextActionsForCell:(id)a3 indexPath:(id)a4 viewController:(id)a5;
- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4;
- (void)unregisterContextActionsForCell:(id)a3 indexPath:(id)a4 viewController:(id)a5;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIReviewListPageSection

- (SUUIReviewListPageSection)initWithPageComponent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIReviewListPageSection;
  v3 = [(SUUIStorePageSection *)&v7 initWithPageComponent:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    contextActionsRegistration = v3->_contextActionsRegistration;
    v3->_contextActionsRegistration = v4;
  }

  return v3;
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
  v12 = [v11 items];
  v13 = [v7 item];

  v14 = [v12 objectAtIndex:v13];

  [v6 addItemViewElement:v14];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [(SUUIStorePageSection *)self context];
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];
  v9 = [v8 items];
  v10 = [v9 objectAtIndex:v5];

  v11 = [v6 collectionView];
  v12 = [v11 dequeueReusableCellWithReuseIdentifier:0x286AF6160 forIndexPath:v4];

  [v12 setSeparatorStyle:5];
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [v12 setSeparatorColor:v13];

  [v6 activePageWidth];
  v15 = v14 + -30.0;
  [(SUUIReviewListPageSection *)self _contentInsetForReviewIndex:v5];
  [v12 setContentInset:?];
  [v12 reloadWithViewElement:v10 width:self->_cellLayoutContext context:v15];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__SUUIReviewListPageSection_cellForIndexPath___block_invoke;
  v29[3] = &unk_2798F76A0;
  v16 = v10;
  v34 = v15;
  v30 = v16;
  v31 = self;
  v17 = v6;
  v32 = v17;
  v18 = v4;
  v33 = v18;
  [v12 setDescriptionTapAction:v29];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __46__SUUIReviewListPageSection_cellForIndexPath___block_invoke_2;
  v23[3] = &unk_2798F76A0;
  v28 = v15;
  v24 = v16;
  v25 = self;
  v26 = v17;
  v27 = v18;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  [v12 setResponseDescriptionTapAction:v23];

  return v12;
}

void __46__SUUIReviewListPageSection_cellForIndexPath___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) expandableLabelElementForWidth:*(*(a1 + 40) + 88) context:*(a1 + 64)];
  if (v2)
  {
    [*(*(a1 + 40) + 88) expandEditorialForLabelElement:v2];
    v3 = [*(a1 + 48) collectionView];
    v5[0] = *(a1 + 56);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    [v3 reloadItemsAtIndexPaths:v4];
  }
}

void __46__SUUIReviewListPageSection_cellForIndexPath___block_invoke_2(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SUUIReviewListPageSection_cellForIndexPath___block_invoke_3;
  v5[3] = &unk_2798F76C8;
  v5[6] = *(a1 + 64);
  v5[4] = *(a1 + 40);
  v5[5] = &v6;
  [v2 enumerateChildrenUsingBlock:v5];
  if (v7[5])
  {
    [*(*(a1 + 40) + 88) expandEditorialForLabelElement:?];
    v3 = [*(a1 + 48) collectionView];
    v12[0] = *(a1 + 56);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v3 reloadItemsAtIndexPaths:v4];
  }

  _Block_object_dispose(&v6, 8);
}

void __46__SUUIReviewListPageSection_cellForIndexPath___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if ([v8 elementType] == 102)
  {
    v5 = [v8 expandableLabelElementForWidth:*(*(a1 + 32) + 88) context:*(a1 + 48)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  [v5 activePageWidth];
  v7 = v6;

  v8 = [v4 item];
  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 viewElement];
  v11 = [v10 items];
  v12 = [v11 objectAtIndex:v8];

  [SUUIReviewCollectionViewCell sizeThatFitsWidth:v12 viewElement:self->_cellLayoutContext context:v7 + -30.0];
  v14 = v13 + 15.0;

  v15 = v7;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 items];
  v8 = [v4 item];

  v9 = [v7 objectAtIndex:v8];

  [v9 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)a3
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  v5 = [v4 attributes];
  v6 = [v5 valueForKey:@"highlight"];

  if ([v6 length])
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 items];
  v8 = [v7 count];

  v9 = [v4 indexPath];
  v10 = [v9 item];

  v11 = v8 - 1;
  if (v10 < 1 || v10 >= v11)
  {
    v13 = 5;
    if (!v10)
    {
      v13 = 13;
    }

    if (v10 == v11)
    {
      v12 = v13 | 0x20;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = 21;
  }

  [v4 setPosition:v12];
  v14.receiver = self;
  v14.super_class = SUUIReviewListPageSection;
  [(SUUIStorePageSection *)&v14 collectionViewWillApplyLayoutAttributes:v4];
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
  v11 = [v10 items];
  v12 = [v11 objectAtIndex:{objc_msgSend(v4, "item")}];

  [v6 beginActiveImpressionForViewElement:v12];
  v13.receiver = self;
  v13.super_class = SUUIReviewListPageSection;
  [(SUUIStorePageSection *)&v13 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)registerContextActionsForCell:(id)a3 indexPath:(id)a4 viewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUUIStorePageSection *)self pageComponent];
  v12 = [v11 viewElement];
  v13 = [v12 items];
  v14 = [v13 objectAtIndex:{objc_msgSend(v9, "item")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 dialogTemplate];

    if (v15)
    {
      v16 = [(SUUIReviewListPageSection *)self _contextActionRegistrationKeyWithCell:v8 indexPath:v9];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __84__SUUIReviewListPageSection_registerContextActionsForCell_indexPath_viewController___block_invoke;
      v19[3] = &unk_2798F76F0;
      v20 = v14;
      v17 = [v10 registerForPreviewingFromSourceView:v8 handler:v19];
      v18 = [(SUUIReviewListPageSection *)self contextActionsRegistration];
      [v18 setObject:v17 forKeyedSubscript:v16];
    }
  }
}

SUUIContextActionsConfiguration *__84__SUUIReviewListPageSection_registerContextActionsForCell_indexPath_viewController___block_invoke(uint64_t a1)
{
  v2 = [SUUIContextActionsConfiguration alloc];
  v3 = [*(a1 + 32) dialogTemplate];
  v4 = [(SUUIContextActionsConfiguration *)v2 initWithDialogTemplate:v3];

  return v4;
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 activeMetricsImpressionSession];

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [v6 endActiveImpressionForViewElement:v8];
  v9 = [v4 item];
  v10 = [v8 items];
  if (v9 < [v10 count])
  {
    v11 = [v10 objectAtIndex:v9];

    [v6 endActiveImpressionForViewElement:v11];
    v8 = v11;
  }

  v12.receiver = self;
  v12.super_class = SUUIReviewListPageSection;
  [(SUUIStorePageSection *)&v12 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)unregisterContextActionsForCell:(id)a3 indexPath:(id)a4 viewController:(id)a5
{
  v12 = a5;
  v8 = [(SUUIReviewListPageSection *)self _contextActionRegistrationKeyWithCell:a3 indexPath:a4];
  v9 = [(SUUIReviewListPageSection *)self contextActionsRegistration];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    [v12 unregisterForPreviewing:v10];
    v11 = [(SUUIReviewListPageSection *)self contextActionsRegistration];
    [v11 removeObjectForKey:v8];
  }
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SUUIReviewListPageSection *)self _requestCellLayout];
  v8.receiver = self;
  v8.super_class = SUUIReviewListPageSection;
  [(SUUIStorePageSection *)&v8 entityProvider:v7 didInvalidateWithContext:v6];
}

- (int64_t)numberOfCells
{
  v2 = [(SUUIStorePageSection *)self pageComponent];
  v3 = [v2 viewElement];
  v4 = [v3 items];
  v5 = [v4 count];

  return v5;
}

- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4
{
  v15 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 cellForItemAtIndexPath:v15];

  if (v7)
  {
    v8 = [v15 item];
    v9 = [(SUUIStorePageSection *)self pageComponent];
    v10 = [v9 viewElement];
    v11 = [v10 items];

    [v5 activePageWidth];
    v13 = v12 + -30.0;
    [(SUUIReviewListPageSection *)self _contentInsetForReviewIndex:v8];
    [v7 setContentInset:?];
    v14 = [v11 objectAtIndex:v8];
    [v7 reloadWithViewElement:v14 width:self->_cellLayoutContext context:v13];
  }
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF6160];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 viewElement];

  -[SUUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [v10 elementType]);
  [(SUUIReviewListPageSection *)self _requestCellLayout];
  v11.receiver = self;
  v11.super_class = SUUIReviewListPageSection;
  [(SUUIStorePageSection *)&v11 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  cellLayoutContext = self->_cellLayoutContext;
  v8 = a4;
  [(SUUIViewElementLayoutContext *)cellLayoutContext invalidateAllEditorialLayouts];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setActivePageWidth:width];
  [(SUUIReviewListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIReviewListPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (id)_contextActionRegistrationKeyWithCell:(id)a3 indexPath:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = [a3 hash];
  v8 = [v6 hash];

  v9 = [v5 numberWithUnsignedInteger:v8 + v7];
  v10 = [v9 stringValue];

  return v10;
}

- (UIEdgeInsets)_contentInsetForReviewIndex:(int64_t)a3
{
  v3 = 15.0;
  if (!a3)
  {
    v3 = 0.0;
  }

  v4 = 15.0;
  v5 = 15.0;
  v6 = 15.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_requestCellLayout
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];

  v5 = [v4 items];
  v6 = [(SUUIStorePageSection *)self context];
  [v6 activePageWidth];
  v8 = v7;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = v8 + -30.0;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v9);
        }

        [SUUIReviewCollectionViewCell requestLayoutForViewElement:*(*(&v15 + 1) + 8 * v14++) width:self->_cellLayoutContext context:v12, v15];
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

@end