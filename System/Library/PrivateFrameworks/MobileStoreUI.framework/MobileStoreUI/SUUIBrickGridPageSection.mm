@interface SUUIBrickGridPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIBrickGridPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)_contentInsetsForColumnIndex:(int64_t)index rowWidth:(double)width;
- (id)_editorialLayoutForBrick:(id)brick;
- (id)_missingItemLoader;
- (id)cellForIndexPath:(id)path;
- (id)clickEventWithLink:(id)link elementName:(id)name index:(int64_t)index;
- (int64_t)numberOfCells;
- (void)_enumerateVisibleBricksUsingBlock:(id)block;
- (void)_loadArtworkForBrick:(id)brick artworkLoader:(id)loader reason:(int64_t)reason;
- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIBrickGridPageSection

- (SUUIBrickGridPageSection)initWithPageComponent:(id)component
{
  v15.receiver = self;
  v15.super_class = SUUIBrickGridPageSection;
  v3 = [(SUUIStorePageSection *)&v15 initWithPageComponent:component];
  if (v3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = 145.0;
    if (userInterfaceIdiom == 1)
    {
      v6 = 208.0;
    }

    v7 = 2;
    if (userInterfaceIdiom == 1)
    {
      v7 = 3;
    }

    v8 = 10.0;
    v9 = 20.0;
    if (userInterfaceIdiom == 1)
    {
      v8 = 20.0;
    }

    else
    {
      v9 = 15.0;
    }

    *&v3->_baseHeight = qword_259FCABE0[userInterfaceIdiom == 1];
    v3->_columnWidth = v6;
    v3->_numberOfColumns = v7;
    v3->_paddingHorizontal = v8;
    v3->_paddingTop = v9;
    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    artworkRequests = v3->_artworkRequests;
    v3->_artworkRequests = v10;

    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
    editorialLayouts = v3->_editorialLayouts;
    v3->_editorialLayouts = v12;
  }

  return v3;
}

- (void)dealloc
{
  [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIBrickGridPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  item = [pathCopy item];
  pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent2 children];

  if (item < [children count])
  {
    v12 = [children objectAtIndex:item];
    [sessionCopy addItemIdentifier:{objc_msgSend(v12, "brickIdentifier")}];
  }
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AF9AE0 forIndexPath:pathCopy];
  v8 = [(SUUIStorePageSection *)self backgroundColorForIndexPath:pathCopy];
  [v7 setBackgroundColor:v8];

  v9 = [pathCopy row];
  v10 = v9 % self->_numberOfColumns;
  [collectionView bounds];
  [(SUUIBrickGridPageSection *)self _contentInsetsForColumnIndex:v10 rowWidth:v11];
  [v7 setContentInsets:?];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  if (v9 < [children count])
  {
    v14 = [children objectAtIndex:v9];
    accessibilityLabel = [v14 accessibilityLabel];
    [v7 setAccessibilityLabel:accessibilityLabel];

    v16 = [(SUUIBrickGridPageSection *)self _editorialLayoutForBrick:v14];
    [v7 applyEditorialLayout:v16 orientation:0];
    resourceLoader = [context resourceLoader];
    v18 = [(NSMapTable *)self->_artworkRequests objectForKey:v14];
    unsignedIntegerValue = [v18 unsignedIntegerValue];

    if (!unsignedIntegerValue)
    {
      goto LABEL_5;
    }

    v20 = [resourceLoader cachedResourceForRequestIdentifier:unsignedIntegerValue];
    if (v20)
    {
LABEL_9:
      [v7 setBrickImage:v20];
      colorScheme = [context colorScheme];
      [v7 setColoringWithColorScheme:colorScheme];

      goto LABEL_11;
    }

    if (([resourceLoader trySetReason:1 forRequestWithIdentifier:unsignedIntegerValue] & 1) == 0)
    {
LABEL_5:
      [(SUUIBrickGridPageSection *)self _loadArtworkForBrick:v14 artworkLoader:resourceLoader reason:1];
    }

    placeholderImage = self->_placeholderImage;
    if (!placeholderImage)
    {
      +[SUUIStyledImageDataConsumer brickConsumer];
      v22 = v28 = v16;
      v23 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
      v24 = [v22 imageForColor:v23];
      v25 = self->_placeholderImage;
      self->_placeholderImage = v24;

      v16 = v28;
      placeholderImage = self->_placeholderImage;
    }

    v20 = placeholderImage;
    goto LABEL_9;
  }

  [v7 applyEditorialLayout:0 orientation:0];
  [v7 setBrickImage:0];
LABEL_11:

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  item = [path item];
  numberOfColumns = self->_numberOfColumns;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v9 = item % self->_numberOfColumns;
  [collectionView bounds];
  [(SUUIBrickGridPageSection *)self _contentInsetsForColumnIndex:v9 rowWidth:v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  columnWidth = self->_columnWidth;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  v22 = [children count];
  v23 = self->_numberOfColumns;
  if (v23 >= 1)
  {
    v24 = v22;
    v25 = v23 * (item / numberOfColumns);
    if (v25 < v22)
    {
      v26 = v23 * (item / numberOfColumns);
      do
      {
        baseHeight = self->_baseHeight;
        v28 = [children objectAtIndex:v26];
        v29 = [(SUUIBrickGridPageSection *)self _editorialLayoutForBrick:v28];

        if (v29)
        {
          [v29 layoutHeightForOrientation:0 expanded:1];
          baseHeight = v30 + self->_baseHeight + 27.0;
        }

        if (v4 < baseHeight)
        {
          v4 = baseHeight;
        }
      }

      while (++v26 < self->_numberOfColumns + v25 && v26 < v24);
    }
  }

  v32 = v14 + v18 + columnWidth;
  v33 = v12 + v16 + v4;
  result.height = v33;
  result.width = v32;
  return result;
}

- (id)clickEventWithLink:(id)link elementName:(id)name index:(int64_t)index
{
  v13.receiver = self;
  v13.super_class = SUUIBrickGridPageSection;
  v7 = [(SUUIStorePageSection *)&v13 clickEventWithLink:link elementName:name index:?];
  if (v7)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];

    v10 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v11 = [collectionView cellForItemAtIndexPath:v10];

    SUUIMetricsSetClickEventPositionWithView(v7, v11);
  }

  return v7;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  item = [pathCopy item];
  v7 = item >= [children count];
  v8 = children;
  if (!v7)
  {
    v9 = [children objectAtIndex:item];
    link = [v9 link];
    v11 = [(SUUIBrickGridPageSection *)self clickEventWithLink:link elementName:*MEMORY[0x277D6A4C8] index:item];
    if (v11)
    {
      context = [(SUUIStorePageSection *)self context];
      metricsController = [context metricsController];
      [metricsController recordEvent:v11];
    }

    [(SUUIStorePageSection *)self showPageWithLink:link];

    v8 = children;
  }
}

- (int64_t)numberOfCells
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];
  v5 = [children count];

  v6 = v5 % self->_numberOfColumns;
  return v6 + v5;
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  context = [(SUUIStorePageSection *)self context];
  resourceLoader = [context resourceLoader];

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SUUIBrickGridPageSection_prefetchResourcesWithReason___block_invoke;
  v10[3] = &unk_2798F66B8;
  v10[4] = self;
  v9 = resourceLoader;
  v11 = v9;
  v12 = v14;
  reasonCopy = reason;
  [children enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v14, 8);
}

void __56__SUUIBrickGridPageSection_prefetchResourcesWithReason___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  v6 = [*(*(a1 + 32) + 88) objectForKey:?];
  if (!v6)
  {
    [*(a1 + 32) _loadArtworkForBrick:v7 artworkLoader:*(a1 + 40) reason:*(a1 + 56)];
    *a4 = ++*(*(*(a1 + 48) + 8) + 24) > 8;
  }
}

- (void)willAppearInContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF9AE0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [collectionView bounds];
    v9 = 3;
    if (v10 > v11)
    {
      v9 = 4;
    }

    self->_numberOfColumns = v9;
  }

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = children;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [(SUUIBrickGridPageSection *)self _editorialLayoutForBrick:*(*(&v21 + 1) + 8 * i)];
        [v19 enqueueLayoutRequests];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v20.receiver = self;
  v20.super_class = SUUIBrickGridPageSection;
  [(SUUIStorePageSection *)&v20 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v34 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  context = [(SUUIStorePageSection *)self context];
  [context portraitPageWidth];
  v10 = v9;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v25 = context;
  v27 = coordinatorCopy;
  if (userInterfaceIdiom == 1)
  {
    if (width <= height)
    {
      v14 = 3;
    }

    else
    {
      [context landscapePageWidth];
      v10 = v13;
      v14 = 4;
    }

    self->_numberOfColumns = v14;
  }

  context2 = [(SUUIStorePageSection *)self context];
  collectionView = [context2 collectionView];

  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [indexPathsForVisibleItems countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v23 = *(*(&v29 + 1) + 8 * i);
        if ([v23 section] == sectionIndex)
        {
          v24 = [collectionView cellForItemAtIndexPath:v23];
          -[SUUIBrickGridPageSection _contentInsetsForColumnIndex:rowWidth:](self, "_contentInsetsForColumnIndex:rowWidth:", [v23 item] % self->_numberOfColumns, v10);
          [v24 setContentInsets:?];
        }
      }

      v20 = [indexPathsForVisibleItems countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v20);
  }

  v28.receiver = self;
  v28.super_class = SUUIBrickGridPageSection;
  [(SUUIStorePageSection *)&v28 willTransitionToSize:v27 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  requestIdentifier = [request requestIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SUUIBrickGridPageSection_artworkRequest_didLoadImage___block_invoke;
  v9[3] = &unk_2798F66E0;
  v10 = imageCopy;
  v11 = requestIdentifier;
  v9[4] = self;
  v8 = imageCopy;
  [(SUUIBrickGridPageSection *)self _enumerateVisibleBricksUsingBlock:v9];
}

void __56__SUUIBrickGridPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = [*(*(a1 + 32) + 88) objectForKey:a2];
  if ([v11 unsignedIntegerValue] == *(a1 + 48))
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:{objc_msgSend(*(a1 + 32), "sectionIndex")}];
    v8 = [*(a1 + 32) context];
    v9 = [v8 collectionView];
    v10 = [v9 cellForItemAtIndexPath:v7];

    [v10 setBrickImage:*(a1 + 40)];
    *a4 = 1;
  }
}

- (void)missingItemLoader:(id)loader didLoadItems:(id)items invalidItemIdentifiers:(id)identifiers
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  if ([itemsCopy count])
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    v10 = [pageComponent _updateWithMissingItems:itemsCopy];
  }

  if ([identifiersCopy count])
  {
    pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
    v12 = [pageComponent2 _updateWithInvalidItemIdentifiers:identifiersCopy];
    if ([v12 count])
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __82__SUUIBrickGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke;
      v21 = &unk_2798F6708;
      v22 = v13;
      v23 = sectionIndex;
      v15 = v13;
      [v12 enumerateIndexesUsingBlock:&v18];
      v16 = [(SUUIStorePageSection *)self context:v18];
      collectionView = [v16 collectionView];

      [collectionView deleteItemsAtIndexPaths:v15];
    }
  }
}

void __82__SUUIBrickGridPageSection_missingItemLoader_didLoadItems_invalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

- (UIEdgeInsets)_contentInsetsForColumnIndex:(int64_t)index rowWidth:(double)width
{
  numberOfColumns = self->_numberOfColumns;
  v5 = numberOfColumns - 1;
  if (numberOfColumns == 1)
  {
    v6 = (width - self->_columnWidth) * 0.5;
    paddingHorizontal = floorf(v6);
    p_paddingTop = &self->_paddingTop;
    v9 = paddingHorizontal;
  }

  else
  {
    paddingHorizontal = self->_paddingHorizontal;
    v10 = (width + paddingHorizontal * -2.0 - self->_columnWidth * numberOfColumns) / v5;
    v11 = floorf(v10);
    if (index)
    {
      p_paddingTop = &self->_paddingTop;
      v12 = floorf(v11 * 0.5);
      if (v5 == index)
      {
        v9 = self->_paddingHorizontal;
      }

      else
      {
        v9 = v12;
      }

      paddingHorizontal = v12;
    }

    else
    {
      p_paddingTop = &self->_paddingTop;
      v9 = floorf(v11 * 0.5);
    }
  }

  v13 = *p_paddingTop;
  v14 = 0.0;
  result.right = v9;
  result.bottom = v14;
  result.left = paddingHorizontal;
  result.top = v13;
  return result;
}

- (id)_editorialLayoutForBrick:(id)brick
{
  brickCopy = brick;
  v5 = [(NSMapTable *)self->_editorialLayouts objectForKey:brickCopy];
  if (!v5)
  {
    editorial = [brickCopy editorial];
    if (editorial)
    {
      v7 = [SUUIEditorialLayout alloc];
      context = [(SUUIStorePageSection *)self context];
      textLayoutCache = [context textLayoutCache];
      v5 = [(SUUIEditorialLayout *)v7 initWithEditorial:editorial layoutCache:textLayoutCache];

      [(SUUIEditorialLayout *)v5 setLayoutWidth:0 forOrientation:self->_columnWidth];
      [(NSMapTable *)self->_editorialLayouts setObject:v5 forKey:brickCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_enumerateVisibleBricksUsingBlock:(id)block
{
  blockCopy = block;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  children = [pageComponent children];

  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SUUIBrickGridPageSection__enumerateVisibleBricksUsingBlock___block_invoke;
  v13[3] = &unk_2798F6730;
  v15 = blockCopy;
  v16 = sectionIndex;
  v14 = children;
  v11 = blockCopy;
  v12 = children;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v13];
}

void __62__SUUIBrickGridPageSection__enumerateVisibleBricksUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 section] == *(a1 + 48))
  {
    v3 = [v5 item];
    if (v3 < [*(a1 + 32) count])
    {
      v4 = [*(a1 + 32) objectAtIndex:v3];
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_loadArtworkForBrick:(id)brick artworkLoader:(id)loader reason:(int64_t)reason
{
  brickCopy = brick;
  loaderCopy = loader;
  artwork = [brickCopy artwork];
  v10 = [artwork URL];

  if (v10)
  {
    v11 = objc_alloc_init(SUUIArtworkRequest);
    v12 = [SUUIStyledImageDataConsumer brickConsumerWithBrickSize:self->_columnWidth, self->_baseHeight];
    [(SUUIArtworkRequest *)v11 setDataConsumer:v12];

    [(SUUIArtworkRequest *)v11 setDelegate:self];
    [(SUUIArtworkRequest *)v11 setURL:v10];
    artworkRequests = self->_artworkRequests;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v11, "requestIdentifier")}];
    [(NSMapTable *)artworkRequests setObject:v14 forKey:brickCopy];

    [loaderCopy loadResourceWithRequest:v11 reason:reason];
  }
}

- (void)_loadMissingItemsFromIndex:(int64_t)index withReason:(int64_t)reason
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  if ([pageComponent isMissingItemData])
  {
    _missingItemLoader = [(SUUIBrickGridPageSection *)self _missingItemLoader];
    [_missingItemLoader loadItemsForPageComponent:pageComponent startIndex:index reason:reason];
  }
}

- (id)_missingItemLoader
{
  missingItemLoader = self->_missingItemLoader;
  if (!missingItemLoader)
  {
    v4 = [SUUIMissingItemLoader alloc];
    context = [(SUUIStorePageSection *)self context];
    resourceLoader = [context resourceLoader];
    v7 = [(SUUIMissingItemLoader *)v4 initWithResourceLoader:resourceLoader];
    v8 = self->_missingItemLoader;
    self->_missingItemLoader = v7;

    [(SUUIMissingItemLoader *)self->_missingItemLoader setDelegate:self];
    missingItemLoader = self->_missingItemLoader;
  }

  return missingItemLoader;
}

@end