@interface SUUITracklistPageSection
- (BOOL)requestLayoutWithReloadReason:(int64_t)a3;
- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUITracklistPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (double)_widthForButtonElements:(id)a3;
- (id)_columnData;
- (id)_representativeStringForViewElement:(id)a3;
- (id)_viewElementForIndex:(int64_t)a3;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (id)firstAppearanceIndexPath;
- (id)relevantEntityProviders;
- (int64_t)applyUpdateType:(int64_t)a3;
- (int64_t)numberOfCells;
- (void)_enumerateVisibleViewElementsUsingBlock:(id)a3;
- (void)_reloadEntityProvider;
- (void)_requestCellLayoutWithColumnData:(id)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillScrollToOffset:(CGPoint)a3 visibleRange:(SUUIIndexPathRange *)a4;
- (void)dealloc;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)getModalSourceViewForViewElement:(id)a3 completionBlock:(id)a4;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUITracklistPageSection

- (SUUITracklistPageSection)initWithPageComponent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUITracklistPageSection;
  v3 = [(SUUIStorePageSection *)&v6 initWithPageComponent:a3];
  v4 = v3;
  if (v3)
  {
    [(SUUITracklistPageSection *)v3 _reloadEntityProvider];
  }

  return v4;
}

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];
  [v6 addItemViewElement:v9];

  v10 = [v7 item];
  v11 = [(SUUITracklistPageSection *)self _viewElementForIndex:v10];
  [v6 addItemViewElement:v11];
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SUUITracklistPageSection;
  v4 = [(SUUIStorePageSection *)&v6 applyUpdateType:a3];
  if (v4 != 2)
  {
    [(SUUITracklistPageSection *)self _reloadEntityProvider];
  }

  return v4;
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[SUUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [v4 item]);
  v6 = [v5 style];

  v7 = [v6 ikBackgroundColor];
  v8 = [v7 color];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SUUITracklistPageSection;
    v9 = [(SUUIStorePageSection *)&v12 backgroundColorForIndexPath:v4];
  }

  v10 = v9;

  return v10;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = -[SUUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [v4 item]);
  v7 = v6;
  if (v6)
  {
    if ([v6 elementType] == 146)
    {
      v8 = [v5 collectionView];
      v9 = &SUUITracklistLockupCollectionViewCellReuseIdentifier;
    }

    else
    {
      v15 = [(SUUIStorePageSection *)self pageComponent];
      v16 = [v15 viewElement];
      v17 = [v16 header];

      v8 = [v5 collectionView];
      v9 = &SUUITracklistSectionHeaderReuseIdentifier;
      if (v7 == v17)
      {
        v9 = &SUUITracklistHeaderReuseIdentifier;
      }
    }

    v11 = [v8 dequeueReusableCellWithReuseIdentifier:*v9 forIndexPath:v4];

    [v5 activePageWidth];
    [v11 reloadWithViewElement:v7 width:self->_cellLayoutContext context:v18 + -30.0];
  }

  else
  {
    v10 = [v5 collectionView];
    v11 = [v10 dequeueReusableCellWithReuseIdentifier:0x286AF0BA0 forIndexPath:v4];

    v12 = [(SUUIStorePageSection *)self pageComponent];
    v13 = [v12 viewElement];
    v14 = [v13 style];
    [v11 setColoringWithStyle:v14];

    [v11 setLeftEdgeInset:0.0];
    [v11 setRightEdgeInset:0.0];
    [v11 setVerticalAlignment:1];
  }

  return v11;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  [v5 activePageWidth];
  v7 = v6;

  v8 = [v4 item];
  v9 = [(SUUITracklistPageSection *)self _viewElementForIndex:v8];
  v10 = v9;
  if (v9)
  {
    if ([v9 elementType] == 146)
    {
      v11 = SUUITracklistLockupCollectionViewCell;
      cellLayoutContext = self->_cellLayoutContext;
    }

    else
    {
      v14 = [(SUUIStorePageSection *)self pageComponent];
      v15 = [v14 viewElement];
      v16 = [v15 header];

      cellLayoutContext = self->_cellLayoutContext;
      if (v10 == v16)
      {
        v11 = SUUITracklistHeaderCollectionViewCell;
      }

      else
      {
        v11 = SUUITracklistSectionHeaderCollectionViewCell;
      }
    }

    [(__objc2_class *)v11 sizeThatFitsWidth:v10 viewElement:cellLayoutContext context:v7 + -30.0];
    v13 = v17;
  }

  else
  {
    v13 = 15.0;
  }

  v18 = v7;
  v19 = v13;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[SUUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [v4 item]);
  if ([v5 isEnabled])
  {
    v6 = [(SUUIStorePageSection *)self context];
    v7 = [v6 collectionView];
    v8 = [v7 cellForItemAtIndexPath:v4];

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __67__SUUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
    v15 = &unk_2798F8F78;
    v16 = self;
    v17 = v8;
    v18 = v4;
    v19 = v5;
    v9 = v8;
    [v19 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:&v12];
  }

  else
  {
    [v5 dispatchEvent:0x286AFEA60 eventAttribute:0x286AFEA80 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }

  v10 = [(SUUIStorePageSection *)self context:v12];
  v11 = [v10 collectionView];
  [v11 deselectItemAtIndexPath:v4 animated:0];
}

void __67__SUUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke(uint64_t a1, char a2, char a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2;
  block[3] = &unk_2798F8F50;
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 48);
  v14 = a2;
  v15 = a3;
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__SUUITracklistPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 collectionView];
  v4 = [v3 indexPathForCell:*(a1 + 40)];

  if ([v4 isEqual:*(a1 + 48)] && (*(a1 + 64) != 1 || (*(a1 + 65) & 1) == 0) && objc_msgSend(*(a1 + 56), "elementType") == 146)
  {
    [*(a1 + 40) togglePreviewPlaybackAnimated:1];
  }
}

- (void)collectionViewWillScrollToOffset:(CGPoint)a3 visibleRange:(SUUIIndexPathRange *)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(SUUITracklistPageSection *)self numberOfCells];
  if (self->_lastNeedsMoreCount < v8)
  {
    v9 = v8;
    v10 = *&a4->var2;
    v17 = *&a4->var0;
    v18 = v10;
    v11 = [(SUUIStorePageSection *)self itemRangeForIndexPathRange:&v17];
    if (v12 + v11 + 30 >= v9)
    {
      self->_lastNeedsMoreCount = v9;
      v13 = [(SUUIStorePageSection *)self pageComponent];
      v14 = [v13 viewElement];
      [v14 dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    }
  }

  v16.receiver = self;
  v16.super_class = SUUITracklistPageSection;
  v15 = *&a4->var2;
  v17 = *&a4->var0;
  v18 = v15;
  [(SUUIStorePageSection *)&v16 collectionViewWillScrollToOffset:&v17 visibleRange:x, y];
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 activeMetricsImpressionSession];

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [v6 beginActiveImpressionForViewElement:v8];
  v9 = -[SUUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [v4 item]);

  [v6 beginActiveImpressionForViewElement:v9];
  v10.receiver = self;
  v10.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v10 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 activeMetricsImpressionSession];

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [v6 endActiveImpressionForViewElement:v8];
  v9 = -[SUUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [v4 item]);

  [v6 endActiveImpressionForViewElement:v9];
  v10.receiver = self;
  v10.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v10 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  columnData = self->_columnData;
  v7 = a4;
  v8 = a3;
  [(SUUITracklistPageSection *)self _requestCellLayoutWithColumnData:columnData];
  v9.receiver = self;
  v9.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v9 entityProvider:v8 didInvalidateWithContext:v7];
}

- (id)firstAppearanceIndexPath
{
  v3 = [(SUUITracklistPageSection *)self numberOfCells];
  if (v3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v4 = v3;
    v5 = 1;
    do
    {
      v6 = [(SUUITracklistPageSection *)self _viewElementForIndex:v5 - 1];
      if ([v6 elementType] == 146 && objc_msgSend(v6, "isSelected"))
      {
        v7 = [MEMORY[0x277CCAA70] indexPathForItem:v5 - 1 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        break;
      }
    }

    while (v5++ < v4);
  }

  return v7;
}

- (void)getModalSourceViewForViewElement:(id)a3 completionBlock:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(SUUITracklistPageSection *)self numberOfCells];
  if (v7 < 1)
  {
LABEL_5:
    v12 = 0;
  }

  else
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(SUUITracklistPageSection *)self _viewElementForIndex:v9];
      v11 = [v20 isDescendentFromViewElement:v10];

      if (v11)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_5;
      }
    }

    v12 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    if (v12)
    {
      v13 = objc_alloc_init(SUUIModalSourceViewProvider);
      [(SUUIModalSourceViewProvider *)v13 setUserInfo:v20];
      v14 = [(SUUIStorePageSection *)self context];
      v15 = [v14 collectionView];
      v16 = [v15 cellForItemAtIndexPath:v12];

      v17 = [v20 itmlID];
      v18 = [v16 viewForElementIdentifier:v17];

      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v16;
      }

      [(SUUIModalSourceViewProvider *)v13 setOriginalSourceView:v19];

      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:
  v6[2](v6, v13);
}

- (int64_t)numberOfCells
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(SUUIStorePageSection *)self pageComponent];
  v3 = [v2 viewElement];

  v4 = [v3 header];

  v5 = v4 != 0;
  v6 = [v3 tracks];
  v7 = v6;
  if (v6)
  {
    v5 += [v6 count];
  }

  else
  {
    v8 = [v3 sections];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) flattenedChildren];
          v5 += [v13 count];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    if ([v8 count] >= 2)
    {
      v5 = v5 + [v8 count] - 1;
    }
  }

  return v5;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  v5 = [(SUUITracklistPageSection *)self numberOfCells];
  if (v5 <= 29 && self->_lastNeedsMoreCount < v5)
  {
    self->_lastNeedsMoreCount = v5;
    v6 = [(SUUIStorePageSection *)self pageComponent];
    v7 = [v6 viewElement];
    [v7 dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v8.receiver = self;
  v8.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v8 prefetchResourcesWithReason:a3];
}

- (id)relevantEntityProviders
{
  v7.receiver = self;
  v7.super_class = SUUITracklistPageSection;
  v3 = [(SUUIStorePageSection *)&v7 relevantEntityProviders];
  v4 = v3;
  if (self->_entityProvider)
  {
    if (v3)
    {
      v5 = [v3 setByAddingObject:?];

      v4 = v5;
    }

    else
    {
      v4 = [MEMORY[0x277CBEB98] setWithObject:?];
    }
  }

  return v4;
}

- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4
{
  v11 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 cellForItemAtIndexPath:v11];

  if (v7)
  {
    [v5 activePageWidth];
    v9 = v8;
    v10 = -[SUUITracklistPageSection _viewElementForIndex:](self, "_viewElementForIndex:", [v11 item]);
    [v7 reloadWithViewElement:v10 width:self->_cellLayoutContext context:v9 + -30.0];
  }
}

- (BOOL)requestLayoutWithReloadReason:(int64_t)a3
{
  if (a3 != 2)
  {
    return 0;
  }

  v4 = [(SUUIStorePageSection *)self pageComponent];
  v5 = [v4 viewElement];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __58__SUUITracklistPageSection_requestLayoutWithReloadReason___block_invoke;
  v19 = &unk_2798F8FC8;
  v20 = self;
  v7 = v6;
  v21 = v7;
  [v5 enumerateTracksUsingBlock:&v16];
  [(SUUITracklistPageSection *)self _widthForButtonElements:v7, v16, v17, v18, v19, v20];
  v9 = v8;
  v10 = [(SUUITracklistColumnData *)self->_columnData columnForIdentifier:1];
  [v10 preferredWidth];
  v12 = v9 != v11;
  if (v9 != v11)
  {
    [v10 setPreferredWidth:v9];
    columnData = self->_columnData;
    v14 = [(SUUIStorePageSection *)self context];
    [v14 activePageWidth];
    [(SUUITracklistColumnData *)columnData adjustColumnsToFitWidth:?];

    [(SUUITracklistPageSection *)self _requestCellLayoutWithColumnData:self->_columnData];
  }

  return v12;
}

void __58__SUUITracklistPageSection_requestLayoutWithReloadReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 96);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SUUITracklistPageSection_requestLayoutWithReloadReason___block_invoke_2;
  v4[3] = &unk_2798F8FA0;
  v5 = *(a1 + 40);
  [v3 enumerateColumnsForTrack:a2 usingBlock:v4];
}

void __58__SUUITracklistPageSection_requestLayoutWithReloadReason___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 && [v6 columnIdentifier] == 1)
  {
    [*(a1 + 32) addObjectsFromArray:v5];
  }
}

- (UIEdgeInsets)sectionContentInset
{
  v22.receiver = self;
  v22.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v22 sectionContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v21 = 0;
  v11 = [(SUUIStorePageSection *)self pageComponent];
  v12 = [v11 viewElement];
  v13 = [v12 style];
  v14 = SUUIViewElementPaddingForStyle(v13, &v21);
  v16 = v15;

  if (v21)
  {
    v17 = v14;
  }

  else
  {
    v17 = v4;
  }

  if (v21)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = v6;
  v20 = v10;
  result.right = v20;
  result.bottom = v18;
  result.left = v19;
  result.top = v17;
  return result;
}

- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(SUUIStorePageSection *)self context];
  v11 = [v10 collectionView];
  v12 = [v11 cellForItemAtIndexPath:v9];

  LOBYTE(v5) = [v12 updateWithItemState:v8 context:self->_cellLayoutContext animated:v5];
  return v5;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF0BA0];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF05E0];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUITracklistLockupCollectionViewCellReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286B002A0];
  columnData = self->_columnData;
  self->_columnData = 0;

  v7 = self->_cellLayoutContext;
  v8 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v7];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v8;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  v10 = [(SUUITracklistPageSection *)self _columnData];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:v10 forKey:0x286AF1940];
  [v4 activePageWidth];
  [v10 adjustColumnsToFitWidth:?];
  [(SUUITracklistPageSection *)self _requestCellLayoutWithColumnData:v10];
  v11.receiver = self;
  v11.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v11 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  columnData = self->_columnData;
  v8 = a4;
  v9 = [(SUUIStorePageSection *)self context];
  [v9 activePageWidth];
  [(SUUITracklistColumnData *)columnData adjustColumnsToFitWidth:?];

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setActivePageWidth:width];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:self->_columnData forKey:0x286AF1940];
  [(SUUITracklistPageSection *)self _requestCellLayoutWithColumnData:self->_columnData];
  v10.receiver = self;
  v10.super_class = SUUITracklistPageSection;
  [(SUUIStorePageSection *)&v10 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SUUITracklistPageSection_artworkRequest_didLoadImage___block_invoke;
  v13[3] = &unk_2798F8FF0;
  v14 = v9;
  v15 = v7;
  v16 = v6;
  v17 = self;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  [(SUUITracklistPageSection *)self _enumerateVisibleViewElementsUsingBlock:v13];
}

void __56__SUUITracklistPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  [v3 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 88)];
}

- (id)_columnData
{
  columnData = self->_columnData;
  if (!columnData)
  {
    v4 = [(SUUIStorePageSection *)self pageComponent];
    v5 = [v4 viewElement];

    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__SUUITracklistPageSection__columnData__block_invoke;
    v29[3] = &unk_2798F9040;
    v29[4] = self;
    v32 = v33;
    v8 = v6;
    v30 = v8;
    v9 = v7;
    v31 = v9;
    [v5 enumerateTracksUsingBlock:v29];
    v10 = SUUIFontLimitedPreferredFontForTextStyle(20, 5);
    v11 = SUUIFontPreferredFontForTextStyle(5);
    v12 = [(SUUITracklistColumnData *)self->_columnData columns];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __39__SUUITracklistPageSection__columnData__block_invoke_3;
    v22 = &unk_2798F9068;
    v13 = v9;
    v28 = v33;
    v23 = v13;
    v24 = self;
    v14 = v8;
    v25 = v14;
    v15 = v11;
    v26 = v15;
    v16 = v10;
    v27 = v16;
    [v12 enumerateObjectsUsingBlock:&v19];

    v17 = [v5 header];
    if (v17)
    {
      [(SUUITracklistColumnData *)self->_columnData enumerateColumnsForHeader:v17 usingBlock:&__block_literal_global_19];
    }

    _Block_object_dispose(v33, 8);
    columnData = self->_columnData;
  }

  return columnData;
}

void __39__SUUITracklistPageSection__columnData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (!v5)
  {
    v6 = [[SUUITracklistColumnData alloc] initWithRepresentativeTrack:v3];
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    *(v7 + 96) = v6;

    [*(*(a1 + 32) + 96) setInterColumnSpacing:15.0];
    [*(*(a1 + 32) + 96) setLeftEdgeInset:15.0];
    [*(*(a1 + 32) + 96) setRightEdgeInset:15.0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__SUUITracklistPageSection__columnData__block_invoke_2;
  v10[3] = &unk_2798F9018;
  v9 = *(a1 + 56);
  v10[4] = v4;
  v13 = v9;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  [v5 enumerateColumnsForTrack:v3 usingBlock:v10];
}

void __39__SUUITracklistPageSection__columnData__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [a2 columnIdentifier];
  if (v8 == 1)
  {
    if (v7)
    {
      [*(a1 + 40) addObjectsFromArray:v7];
    }
  }

  else
  {
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a4];
      v16 = [*(a1 + 48) objectForKey:v9];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v17 = v7;
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(a1 + 32) _representativeStringForViewElement:{*(*(&v25 + 1) + 8 * i), v25}];
            v23 = v22;
            if (v22)
            {
              if (!v16 || (v24 = [v22 length], v24 > objc_msgSend(v16, "length")))
              {
                [*(a1 + 48) setObject:v23 forKey:v9];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(a1 + 32) + 88) sizeForBadgeElement:*(*(&v29 + 1) + 8 * j)];
            v15 = *(*(a1 + 56) + 8);
            if (*(v15 + 24) >= v14)
            {
              v14 = *(v15 + 24);
            }

            *(v15 + 24) = v14;
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v11);
      }
    }
  }
}

void __39__SUUITracklistPageSection__columnData__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  v6 = [*(a1 + 32) objectForKey:v5];
  v7 = [v17 columnIdentifier];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_17;
      }

      [v17 setMaximumWidthFraction:0.3];
      [*(a1 + 40) _widthForButtonElements:*(a1 + 48)];
    }

    else
    {
      v13 = *(*(*(a1 + 72) + 8) + 24);
    }

    [v17 setPreferredWidth:v13];
  }

  else
  {
    if (v7 == 2)
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v14 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v14 initWithObjectsAndKeys:{*(a1 + 56), *MEMORY[0x277D740A8], 0}];
      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v9];
      [v10 size];
      *&v15 = v15;
      v12 = ceilf(*&v15);
      goto LABEL_12;
    }

    if (v7 == 3)
    {
      v9 = objc_alloc_init(SUUIBarRatingView);
      [(SUUIBarRatingView *)v9 sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
      *&v16 = v16;
      [v17 setPreferredWidth:ceilf(*&v16)];
      goto LABEL_14;
    }

    if (v7 == 5 && v6)
    {
      v8 = objc_alloc(MEMORY[0x277CBEAC0]);
      v9 = [v8 initWithObjectsAndKeys:{*(a1 + 64), *MEMORY[0x277D740A8], 0}];
      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6 attributes:v9];
      [v10 size];
      v12 = ceil(v11);
LABEL_12:
      [v17 setPreferredWidth:v12];

LABEL_14:
    }
  }

LABEL_17:
}

void __39__SUUITracklistPageSection__columnData__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v4 = a3;
  if (([v10 sizesToFit] & 1) == 0)
  {
    [SUUITracklistHeaderCollectionViewCell sizeForHeaderTitleLabel:v4];
    v6 = v5;
    [v10 preferredWidth];
    v8 = v6;
    v9 = ceilf(v8);
    if (v7 < v9)
    {
      v7 = v9;
    }

    [v10 setPreferredWidth:v7];
  }
}

- (void)_enumerateVisibleViewElementsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 indexPathsForVisibleItems];
  v8 = [(SUUIStorePageSection *)self sectionIndex];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SUUITracklistPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke;
  v10[3] = &unk_2798F6730;
  v11 = v4;
  v12 = v8;
  v10[4] = self;
  v9 = v4;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __68__SUUITracklistPageSection__enumerateVisibleViewElementsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 section] == *(a1 + 48))
  {
    v3 = [*(a1 + 32) _viewElementForIndex:{objc_msgSend(v4, "item")}];
    if (v3)
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_reloadEntityProvider
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v3 viewElement];

  v4 = [v6 explicitEntityProvider];
  entityProvider = self->_entityProvider;
  if (entityProvider != v4 && ([(SUUIEntityProviding *)entityProvider isEqual:v4]& 1) == 0)
  {
    objc_storeStrong(&self->_entityProvider, v4);
  }
}

- (id)_representativeStringForViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  v6 = 0;
  if (v5 > 89)
  {
    if (v5 == 90)
    {
      v8 = [v4 flattenedChildren];
      v10 = [v8 firstObject];
      v6 = [(SUUITracklistPageSection *)self _representativeStringForViewElement:v10];

      goto LABEL_10;
    }

    if (v5 == 138)
    {
      v8 = v4;
      v11 = [v8 labelViewStyle];
      v6 = 0;
      if (v11 <= 3 && v11 != 2)
      {
        v12 = [v8 text];
        v6 = [v12 string];
      }

      goto LABEL_10;
    }

    if (v5 != 141)
    {
      goto LABEL_11;
    }
  }

  else if ((v5 - 12) >= 2)
  {
    if (v5 != 80)
    {
      goto LABEL_11;
    }

    v7 = [v4 text];
    goto LABEL_9;
  }

  v7 = [v4 buttonText];
LABEL_9:
  v8 = v7;
  v6 = [v7 string];
LABEL_10:

LABEL_11:

  return v6;
}

- (void)_requestCellLayoutWithColumnData:(id)a3
{
  v23 = a3;
  v4 = [(SUUIStorePageSection *)self pageComponent];
  v5 = [v4 viewElement];

  v6 = [v5 header];
  v7 = [(SUUIStorePageSection *)self context];
  [v7 activePageWidth];
  v9 = v8;
  [v23 leftEdgeInset];
  v11 = v10;
  [v23 rightEdgeInset];
  v13 = v12;

  v14 = [(SUUITracklistPageSection *)self numberOfCells];
  if (v14 >= 1)
  {
    v15 = v14;
    v16 = 0;
    v17 = v9 - v11 - v13;
    v18 = vcvtps_s32_f32(v17);
    do
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [(SUUITracklistPageSection *)self _viewElementForIndex:v16];
      v21 = [v20 elementType];
      if (v21 == 146 || v21 == 48)
      {
        v22 = objc_opt_class();
        if (v22)
        {
          [v22 requestLayoutForViewElement:v20 width:self->_cellLayoutContext context:v18];
        }
      }

      objc_autoreleasePoolPop(v19);
      ++v16;
    }

    while (v15 != v16);
  }
}

- (id)_viewElementForIndex:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(SUUIStorePageSection *)self pageComponent];
  v5 = [v4 viewElement];

  v6 = [v5 header];
  v7 = v6;
  if (a3 >= 1 && v6)
  {

    --a3;
  }

  else if (v6)
  {
    goto LABEL_24;
  }

  v8 = [v5 tracks];
  v9 = v8;
  if (v8)
  {
    if (a3 >= [v8 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v9 objectAtIndex:a3];
    }
  }

  else
  {
    [v5 sections];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v19 = 0u;
    v7 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) flattenedChildren];
          v14 = [v13 count];
          if (a3 <= v14)
          {
            if (a3 == v14)
            {
              v7 = 0;
            }

            else
            {
              v7 = [v13 objectAtIndex:a3];
            }

            goto LABEL_22;
          }

          a3 += ~v14;
        }

        v7 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

LABEL_24:

  return v7;
}

- (double)_widthForButtonElements:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v3)
  {
    v33 = 0;
    v36 = 0;
    v32 = 0.0;
    v6 = 0.0;
    v31 = 0.0;
    goto LABEL_46;
  }

  v4 = v3;
  v5 = 0;
  v45 = 0;
  v46 = 0;
  v48 = *v50;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v50 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v49 + 1) + 8 * i);
      v9 = [v8 itemIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = +[SUUIItemStateCenter defaultCenter];
        v12 = [v11 stateForItemWithIdentifier:v10];

        v13 = [v8 buyButtonDescriptor];
        LODWORD(v11) = [v13 canPersonalizeUsingItemState:v12];

        if (v11)
        {
          v14 = [(SUUIStorePageSection *)self context];
          v15 = [v14 clientContext];
          v16 = [SUUIItemOfferButton localizedTitleForItemState:v12 clientContext:v15];

          goto LABEL_11;
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = 0;
LABEL_11:
      v17 = [v8 elementType];
      switch(v17)
      {
        case 141:
          if ([SUUIStyledButton usesItemOfferAppearanceForButtonType:1 itemState:v12])
          {
            v18 = v16;
          }

          else
          {
            v18 = 0;
          }

          if (!v45)
          {
            v21 = [v8 buttonTitleStyle];
            v22 = v21;
            if (!v21)
            {
              v21 = [v8 style];
              v43 = v21;
            }

            v45 = SUUIViewElementFontWithStyle(v21);
            v23 = v43;
            if (!v22)
            {
LABEL_28:
            }
          }

          break;
        case 50:
          v19 = [v8 buttonImage];
          [v19 size];
          v6 = v20;

LABEL_33:
          v29 = [v8 buttonText];
          v28 = [v29 string];

          v30 = [v28 length];
          if (v30 <= [v5 length])
          {
            v18 = 0;
          }

          else
          {
            v28 = v28;

            v18 = 0;
            v5 = v28;
          }

          goto LABEL_36;
        case 13:
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v24 = [v8 buttonText];
            v18 = [v24 string];
          }

          if ([v8 buttonViewType] == 3)
          {
            v22 = [MEMORY[0x277D75348] whiteColor];
            v23 = [MEMORY[0x277D75348] whiteColor];
            v25 = [SUUIItemOfferButton cloudImageWithTintColor:v22 arrowTintColor:v23];
            [v25 size];
            v6 = v26;

            goto LABEL_28;
          }

          break;
        default:
          goto LABEL_33;
      }

      if (!v18)
      {
        goto LABEL_33;
      }

      v27 = [v18 length];
      v28 = v46;
      if (v27 <= [v46 length])
      {
        goto LABEL_37;
      }

      v18 = v18;
      v46 = v18;
LABEL_36:

LABEL_37:
    }

    v4 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v4);
  v31 = 0.0;
  v32 = 0.0;
  v33 = v46;
  if (v46)
  {
    v34 = objc_alloc_init(SUUIItemOfferButton);
    [(SUUIItemOfferButton *)v34 setTitle:v46];
    [(SUUIItemOfferButton *)v34 sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    *&v35 = v35;
    v32 = ceilf(*&v35);
  }

  v36 = v45;
  if (v5)
  {
    if (!v45)
    {
      v36 = [MEMORY[0x277D74300] systemFontOfSize:9.0];
    }

    v37 = objc_alloc(MEMORY[0x277CBEAC0]);
    v38 = [v37 initWithObjectsAndKeys:{v36, *MEMORY[0x277D740A8], 0}];
    v39 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v5 attributes:v38];
    [v39 size];
    *&v40 = v40;
    v31 = ceilf(*&v40);
  }

LABEL_46:
  if (v32 >= v31)
  {
    v41 = v32;
  }

  else
  {
    v41 = v31;
  }

  if (v41 >= v6)
  {
    v6 = v41;
  }

  return v6;
}

@end