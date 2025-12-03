@interface SUUIVerticalInfoListPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIVerticalInfoListPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)_contentInsetForIndexPath:(id)path;
- (UIEdgeInsets)sectionContentInset;
- (id)_reloadColumnDataIfNecessary;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (int64_t)_numberOfColumnsForWidth:(double)width;
- (int64_t)numberOfCells;
- (void)_enumerateVisibleIndexPathsUsingBlock:(id)block;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIVerticalInfoListPageSection

- (SUUIVerticalInfoListPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  v11.receiver = self;
  v11.super_class = SUUIVerticalInfoListPageSection;
  v5 = [(SUUIStorePageSection *)&v11 initWithPageComponent:componentCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    columns = v5->_columns;
    v5->_columns = v6;

    viewElement = [componentCopy viewElement];
    infoList = v5->_infoList;
    v5->_infoList = viewElement;
  }

  return v5;
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  style = [(SUUIInfoListViewElement *)self->_infoList style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v8 = color;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUUIVerticalInfoListPageSection;
    v8 = [(SUUIStorePageSection *)&v11 backgroundColorForIndexPath:pathCopy];
  }

  v9 = v8;

  return v9;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AF9800 forIndexPath:pathCopy];
  [(SUUIVerticalInfoListPageSection *)self _contentInsetForIndexPath:pathCopy];
  [v7 setContentInset:?];
  _reloadColumnDataIfNecessary = [(SUUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  item = [pathCopy item];

  v10 = [_reloadColumnDataIfNecessary objectAtIndex:item];
  [v7 reloadWithViewElements:v10 width:self->_cellLayoutContext context:self->_columnWidth];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  pathCopy = path;
  _reloadColumnDataIfNecessary = [(SUUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  columnWidth = self->_columnWidth;
  columnHeight = self->_columnHeight;
  [(SUUIVerticalInfoListPageSection *)self _contentInsetForIndexPath:pathCopy];
  v9 = v8;
  v11 = v10;

  v12 = columnWidth + v9 + v11;
  v13 = columnHeight;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUIVerticalInfoListPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUIVerticalInfoListPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  contextCopy = context;
  providerCopy = provider;
  [(SUUIVerticalInfoListPageSection *)self _requestCellLayout];
  v8.receiver = self;
  v8.super_class = SUUIVerticalInfoListPageSection;
  [(SUUIStorePageSection *)&v8 entityProvider:providerCopy didInvalidateWithContext:contextCopy];
}

- (int64_t)numberOfCells
{
  _reloadColumnDataIfNecessary = [(SUUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  v3 = [_reloadColumnDataIfNecessary count];

  return v3;
}

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  if (v7)
  {
    _reloadColumnDataIfNecessary = [(SUUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
    v9 = [_reloadColumnDataIfNecessary objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    [v7 reloadWithViewElements:v9 width:self->_cellLayoutContext context:self->_columnWidth];
  }
}

- (UIEdgeInsets)sectionContentInset
{
  v16.receiver = self;
  v16.super_class = SUUIVerticalInfoListPageSection;
  [(SUUIStorePageSection *)&v16 sectionContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  isTopSection = [(SUUIStorePageSection *)self isTopSection];
  v12 = 12.0;
  if (!isTopSection)
  {
    v12 = v4;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF9800];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SUUIInfoListViewElement *)self->_infoList elementType]];
  [(SUUIVerticalInfoListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIVerticalInfoListPageSection;
  [(SUUIStorePageSection *)&v9 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  cellLayoutContext = self->_cellLayoutContext;
  coordinatorCopy = coordinator;
  [(SUUIViewElementLayoutContext *)cellLayoutContext setActivePageWidth:width];
  [(SUUIVerticalInfoListPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIVerticalInfoListPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SUUIVerticalInfoListPageSection_artworkRequest_didLoadImage___block_invoke;
  v13[3] = &unk_2798FC070;
  v14 = collectionView;
  v15 = imageCopy;
  v16 = requestCopy;
  selfCopy = self;
  v10 = requestCopy;
  v11 = imageCopy;
  v12 = collectionView;
  [(SUUIVerticalInfoListPageSection *)self _enumerateVisibleIndexPathsUsingBlock:v13];
}

void __63__SUUIVerticalInfoListPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) cellForItemAtIndexPath:a2];
  [v3 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 56) + 88)];
}

- (UIEdgeInsets)_contentInsetForIndexPath:(id)path
{
  pathCopy = path;
  _reloadColumnDataIfNecessary = [(SUUIVerticalInfoListPageSection *)self _reloadColumnDataIfNecessary];
  item = [pathCopy item];

  v7 = [_reloadColumnDataIfNecessary count];
  v8 = 11.0;
  if (item == v7 - 1)
  {
    v9 = 15.0;
  }

  else
  {
    v9 = 11.0;
  }

  if (item)
  {
    v10 = 11.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (item)
  {
    v8 = v9;
  }

  if (v7 == 1)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = v10;
  }

  if (v7 == 1)
  {
    v12 = 15.0;
  }

  else
  {
    v12 = v8;
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = v11;
  v16 = v12;
  result.right = v16;
  result.bottom = v14;
  result.left = v15;
  result.top = v13;
  return result;
}

- (void)_enumerateVisibleIndexPathsUsingBlock:(id)block
{
  blockCopy = block;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SUUIVerticalInfoListPageSection__enumerateVisibleIndexPathsUsingBlock___block_invoke;
  v10[3] = &unk_2798FC098;
  v11 = blockCopy;
  v12 = sectionIndex;
  v9 = blockCopy;
  [indexPathsForVisibleItems enumerateObjectsUsingBlock:v10];
}

void __73__SUUIVerticalInfoListPageSection__enumerateVisibleIndexPathsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 section] == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (int64_t)_numberOfColumnsForWidth:(double)width
{
  v3 = fmax(width / 160.0, 1.0);
  if (v3 > 3.0)
  {
    v3 = 3.0;
  }

  v4 = v3;
  flattenedChildren = [(SUUIViewElement *)self->_infoList flattenedChildren];
  v6 = [flattenedChildren count];

  if (v6 >= v4)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (id)_reloadColumnDataIfNecessary
{
  if (![(NSMutableArray *)self->_columns count]&& self->_numberOfColumns >= 1)
  {
    flattenedChildren = [(SUUIViewElement *)self->_infoList flattenedChildren];
    v25 = [flattenedChildren count];
    v3 = malloc_type_malloc(8 * self->_numberOfColumns, 0x100004000313F17uLL);
    bzero(v3, 8 * self->_numberOfColumns);
    numberOfColumns = self->_numberOfColumns;
    if (numberOfColumns >= 1)
    {
      for (i = 0; i < numberOfColumns; ++i)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [(NSMutableArray *)self->_columns addObject:v6];

        numberOfColumns = self->_numberOfColumns;
      }
    }

    v7 = v25 - 1;
    if (v25 >= 1)
    {
      v8 = 0;
      while (1)
      {
        v9 = self->_numberOfColumns;
        if (v9 >= 2)
        {
          break;
        }

LABEL_18:
        if (v7 >= v8)
        {
          v16 = [flattenedChildren objectAtIndex:v8];
          v17 = [(NSMutableArray *)self->_columns objectAtIndex:0];
          [v17 addObject:v16];

          [SUUIVerticalInfoListCollectionViewCell sizeThatFitsWidth:v16 viewElement:self->_cellLayoutContext context:self->_columnWidth];
          *v3 = *v3 + v18;
        }

        v15 = v8++ < v7;
        if (!v15)
        {
          numberOfColumns = self->_numberOfColumns;
          goto LABEL_22;
        }
      }

      v10 = v7;
      while (1)
      {
        v11 = v9--;
        if (v10 < v8)
        {
          goto LABEL_16;
        }

        v7 = v10;
        if (v25 >= v11)
        {
          break;
        }

LABEL_17:
        v10 = v7;
        if (v11 <= 2)
        {
          goto LABEL_18;
        }
      }

      while (v3[v9] < v3[v11 - 2])
      {
        v12 = [flattenedChildren objectAtIndex:v10];
        v13 = [(NSMutableArray *)self->_columns objectAtIndex:v9];
        [v13 insertObject:v12 atIndex:0];

        [SUUIVerticalInfoListCollectionViewCell sizeThatFitsWidth:v12 viewElement:self->_cellLayoutContext context:self->_columnWidth];
        v3[v9] = v3[v9] + v14;
        v7 = v10 - 1;

        v15 = v10-- <= v8;
        if (v15)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      v7 = v10;
      goto LABEL_17;
    }

LABEL_22:
    if (numberOfColumns >= 1)
    {
      v19 = 0;
      do
      {
        v20 = [(NSMutableArray *)self->_columns objectAtIndex:v19];
        v21 = [v20 count];

        if (v21 <= 1)
        {
          columnHeight = v3[v19];
        }

        else
        {
          columnHeight = v3[v19] + ((v21 - 1) * 13.0);
          v3[v19] = columnHeight;
        }

        if (self->_columnHeight >= columnHeight)
        {
          columnHeight = self->_columnHeight;
        }

        self->_columnHeight = columnHeight;
        ++v19;
      }

      while (v19 < self->_numberOfColumns);
    }

    free(v3);
  }

  columns = self->_columns;

  return columns;
}

- (void)_requestCellLayout
{
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v5 = v4;

  self->_columnWidth = v5 + -30.0;
  v6 = [(SUUIVerticalInfoListPageSection *)self _numberOfColumnsForWidth:v5];
  self->_numberOfColumns = v6;
  if (v6 >= 2)
  {
    v7 = (self->_columnWidth + ((v6 - 1) * -22.0)) / v6;
    self->_columnWidth = floorf(v7);
  }

  infoList = self->_infoList;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SUUIVerticalInfoListPageSection__requestCellLayout__block_invoke;
  v9[3] = &unk_2798F5B20;
  v9[4] = self;
  [(SUUIInfoListViewElement *)infoList enumerateChildrenUsingBlock:v9];
  self->_columnHeight = -1.0;
  [(NSMutableArray *)self->_columns removeAllObjects];
}

@end