@interface SUUIRowViewElementPageSection
- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated;
- (CGSize)cellSizeForIndexPath:(id)path;
- (Class)_cellClassForCardViewElement:(id)element;
- (Class)_cellClassForLockupViewElement:(id)element;
- (Class)_cellClassForViewElement:(id)element;
- (SUUIRowViewElementPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)_contentInsetForIndexPath:(id)path;
- (UIEdgeInsets)sectionContentInset;
- (double)_interiorColumnSpacing;
- (double)_singleColumnWidth;
- (id)_firstChildForColumn:(id)column;
- (id)_reuseIdentifierForCardViewElement:(id)element;
- (id)_reuseIdentifierForLockupViewElement:(id)element;
- (id)_reuseIdentifierForViewElement:(id)element;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (int64_t)numberOfCells;
- (void)_enumerateViewElementsUsingBlock:(id)block;
- (void)_requestLayoutForCells;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIRowViewElementPageSection

- (SUUIRowViewElementPageSection)initWithPageComponent:(id)component
{
  v4.receiver = self;
  v4.super_class = SUUIRowViewElementPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:component];
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
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  type = [viewElement type];
  v6 = [type isEqualToString:@"modern"];

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

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
  viewElement2 = [pageComponent2 viewElement];
  columns = [viewElement2 columns];
  item = [pathCopy item];

  v14 = [columns objectAtIndex:item];

  [sessionCopy addItemViewElement:v14];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];
  v8 = [columns objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  v9 = [(SUUIRowViewElementPageSection *)self _firstChildForColumn:v8];
  style = [v9 style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v13 = color;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SUUIRowViewElementPageSection;
    v13 = [(SUUIStorePageSection *)&v16 backgroundColorForIndexPath:pathCopy];
  }

  v14 = v13;

  return v14;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];
  v8 = [columns objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  v9 = [(SUUIRowViewElementPageSection *)self _firstChildForColumn:v8];
  v10 = [(SUUIRowViewElementPageSection *)self _reuseIdentifierForViewElement:v9];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v13 = [collectionView dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

  [(SUUIRowViewElementPageSection *)self _contentInsetForIndexPath:pathCopy];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v13 setContentInset:{v15, v17, v19, v21}];
  [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
  v23 = v22;
  [(SUUIRowViewElementPageSection *)self _singleColumnWidth];
  v25 = v24;
  columnSpan = [v8 columnSpan];
  v27 = v23 * (columnSpan - 1) + columnSpan * v25;
  v28 = floorf(v27);
  style = [v9 style];
  visibility = [style visibility];
  LODWORD(collectionView) = [visibility isEqualToString:@"hidden"];

  if (collectionView)
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

- (CGSize)cellSizeForIndexPath:(id)path
{
  pathCopy = path;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = "";
  v17 = *MEMORY[0x277CBF3A8];
  item = [pathCopy item];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__SUUIRowViewElementPageSection_cellSizeForIndexPath___block_invoke;
  v12[3] = &unk_2798F8328;
  v12[5] = &v13;
  v12[6] = item;
  v12[4] = self;
  [(SUUIRowViewElementPageSection *)self _enumerateViewElementsUsingBlock:v12];
  [(SUUIRowViewElementPageSection *)self _contentInsetForIndexPath:pathCopy];
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

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];
  v8 = [columns objectAtIndex:{objc_msgSend(pathCopy, "item")}];

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

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];
  pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
  viewElement2 = [pageComponent2 viewElement];
  columns = [viewElement2 columns];
  v12 = [columns objectAtIndex:{objc_msgSend(pathCopy, "item")}];

  [activeMetricsImpressionSession beginActiveImpressionForViewElement:v12];
  v13.receiver = self;
  v13.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v13 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];
  columns = [viewElement columns];
  item = [pathCopy item];
  if (item < [columns count])
  {
    v11 = [columns objectAtIndex:item];

    [activeMetricsImpressionSession endActiveImpressionForViewElement:v11];
    viewElement = v11;
  }

  v12.receiver = self;
  v12.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v12 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  contextCopy = context;
  providerCopy = provider;
  [(SUUIRowViewElementPageSection *)self _requestLayoutForCells];
  v8.receiver = self;
  v8.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v8 entityProvider:providerCopy didInvalidateWithContext:contextCopy];
}

- (int64_t)numberOfCells
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];
  v5 = [columns count];

  return v5;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SUUIRowViewElementPageSection_prefetchResourcesWithReason___block_invoke;
  v6[3] = &unk_2798F83A0;
  v6[4] = self;
  v6[5] = reason;
  [(SUUIRowViewElementPageSection *)self _enumerateViewElementsUsingBlock:v6];
  v5.receiver = self;
  v5.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v5 prefetchResourcesWithReason:reason];
}

void __61__SUUIRowViewElementPageSection_prefetchResourcesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [objc_msgSend(v3 _cellClassForViewElement:{v4), "prefetchResourcesForViewElement:reason:context:", v4, *(a1 + 40), *(*(a1 + 32) + 88)}];
}

- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  stateCopy = state;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v12 = [collectionView cellForItemAtIndexPath:pathCopy];

  v13 = [v12 updateWithItemState:stateCopy context:self->_cellLayoutContext animated:animatedCopy];
  if (v13)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    columns = [viewElement columns];
    v17 = [columns objectAtIndex:{objc_msgSend(pathCopy, "item")}];

    [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
    v19 = v18;
    [(SUUIRowViewElementPageSection *)self _singleColumnWidth];
    v21 = v20;
    columnSpan = [v17 columnSpan];
    v23 = v19 * (columnSpan - 1) + columnSpan * v21;
    [objc_opt_class() requestLayoutForViewElement:v17 width:self->_cellLayoutContext context:floorf(v23)];
  }

  return v13;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF8420];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF8440];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD60];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7760];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFDBE0];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFA7A0];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFE180];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF3680];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFCE0];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFBC20];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF3500];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7FC0];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x286AFC9E0];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  -[SUUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [viewElement elementType]);
  [(SUUIRowViewElementPageSection *)self _requestLayoutForCells];
  v11.receiver = self;
  v11.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v11 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  cellLayoutContext = self->_cellLayoutContext;
  coordinatorCopy = coordinator;
  [(SUUIViewElementLayoutContext *)cellLayoutContext setActivePageWidth:width];
  [(SUUIRowViewElementPageSection *)self _requestLayoutForCells];
  v9.receiver = self;
  v9.super_class = SUUIRowViewElementPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SUUIRowViewElementPageSection_artworkRequest_didLoadImage___block_invoke;
  v14[3] = &unk_2798F83C8;
  selfCopy = self;
  v19 = sectionIndex;
  v15 = collectionView;
  v16 = imageCopy;
  v17 = requestCopy;
  v11 = requestCopy;
  v12 = imageCopy;
  v13 = collectionView;
  [(SUUIRowViewElementPageSection *)self _enumerateViewElementsUsingBlock:v14];
}

void __61__SUUIRowViewElementPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 64)];
  v4 = [*(a1 + 32) cellForItemAtIndexPath:v5];
  [v4 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 88)];
}

- (Class)_cellClassForCardViewElement:(id)element
{
  [element cardType];
  v3 = objc_opt_class();

  return v3;
}

- (Class)_cellClassForLockupViewElement:(id)element
{
  if ([element lockupViewType] <= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (Class)_cellClassForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType <= 49)
  {
    if (elementType > 13 && elementType == 14)
    {
      v6 = [(SUUIRowViewElementPageSection *)self _cellClassForCardViewElement:elementCopy];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (elementType != 66)
  {
LABEL_7:
    v6 = objc_opt_class();
    goto LABEL_8;
  }

  v6 = [(SUUIRowViewElementPageSection *)self _cellClassForLockupViewElement:elementCopy];
LABEL_8:
  v7 = v6;
  v8 = v6;

  return v7;
}

- (UIEdgeInsets)_contentInsetForIndexPath:(id)path
{
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 16);
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];
  v10 = [columns count];

  [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
  v12 = v11;
  item = [pathCopy item];

  v14 = v12 * 0.5;
  v15 = floorf(v14);
  if (item)
  {
    v16 = v15;
  }

  else
  {
    v16 = 15.0;
  }

  if (item == v10 - 1)
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

- (void)_enumerateViewElementsUsingBlock:(id)block
{
  blockCopy = block;
  [(SUUIRowViewElementPageSection *)self _interiorColumnSpacing];
  v6 = v5;
  [(SUUIRowViewElementPageSection *)self _singleColumnWidth];
  v8 = v7;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SUUIRowViewElementPageSection__enumerateViewElementsUsingBlock___block_invoke;
  v13[3] = &unk_2798F83F0;
  v15 = v6;
  v16 = v8;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [columns enumerateObjectsUsingBlock:v13];
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

- (id)_firstChildForColumn:(id)column
{
  columnCopy = column;
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
  [columnCopy enumerateChildrenUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (double)_interiorColumnSpacing
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];
  v6 = [columns count];

  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
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
      clientContext = [context clientContext];
      v11 = SUUIUserInterfaceIdiom(clientContext);

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

- (id)_reuseIdentifierForCardViewElement:(id)element
{
  cardType = [element cardType];
  v4 = &SUUIEditorialCardCellReuseIdentifier;
  if (cardType != 3)
  {
    v4 = &SUUICardViewElementCollectionViewCellReuseIdentifier;
  }

  v5 = *v4;

  return v5;
}

- (id)_reuseIdentifierForLockupViewElement:(id)element
{
  lockupViewType = [element lockupViewType];
  if (lockupViewType <= 8)
  {
    v4 = *off_2798F8480[lockupViewType];
  }

  return v4;
}

- (id)_reuseIdentifierForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType > 49)
  {
    if (elementType <= 133)
    {
      if (elementType != 50)
      {
        if (elementType == 62)
        {
          v6 = @"SUUIHorizontalListReuseIdentifier";
          goto LABEL_20;
        }

        if (elementType == 66)
        {
          v7 = [(SUUIRowViewElementPageSection *)self _reuseIdentifierForLockupViewElement:elementCopy];
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      goto LABEL_19;
    }

    if (elementType == 134)
    {
      v6 = @"SUUIStarHistogramCellReuseIdentifier";
      goto LABEL_20;
    }

    if (elementType == 141)
    {
      goto LABEL_19;
    }

    if (elementType != 152)
    {
      goto LABEL_14;
    }

LABEL_18:
    v6 = @"SUUIImageReuseIdentifier";
    goto LABEL_20;
  }

  if (elementType <= 13)
  {
    if ((elementType - 12) >= 2)
    {
      if (elementType == 4)
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

  if (elementType != 14)
  {
    if (elementType == 28)
    {
      v6 = @"SUUICounterReuseIdentifier";
      goto LABEL_20;
    }

    if (elementType != 49)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v7 = [(SUUIRowViewElementPageSection *)self _reuseIdentifierForCardViewElement:elementCopy];
LABEL_21:
  v8 = v7;

  return v8;
}

- (double)_singleColumnWidth
{
  v24 = *MEMORY[0x277D85DE8];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  columns = [viewElement columns];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = columns;
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
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v16 = v15;

  v17 = (v16 + -30.0 - v13 * (v9 - 1)) / v9;
  return floorf(v17);
}

@end