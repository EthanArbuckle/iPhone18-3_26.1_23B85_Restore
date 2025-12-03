@interface SUUIMenuBarTemplateShelfPageSectionConfiguration
- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items;
- (SUUIMenuBarTemplateShelfPageSectionConfiguration)initWithNumberOfIterations:(unint64_t)iterations;
- (id)_focusedViewElement;
- (id)cellForShelfViewElement:(id)element indexPath:(id)path;
- (id)effectiveViewElementForShelfItemViewElement:(id)element;
- (int64_t)numberOfSectionCells;
- (void)_focusedViewElement;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)registerReusableClassesForCollectionView:(id)view;
- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation SUUIMenuBarTemplateShelfPageSectionConfiguration

- (SUUIMenuBarTemplateShelfPageSectionConfiguration)initWithNumberOfIterations:(unint64_t)iterations
{
  v6.receiver = self;
  v6.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  result = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)&v6 init];
  if (result)
  {
    if (iterations <= 1)
    {
      iterationsCopy = 1;
    }

    else
    {
      iterationsCopy = iterations;
    }

    result->_numberOfIterations = iterationsCopy;
  }

  return result;
}

- (id)effectiveViewElementForShelfItemViewElement:(id)element
{
  elementCopy = element;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  SUUIZoomingShelfMenuBarGetValidationInfoForViewElement(elementCopy, v9);
  if ((v9[0] & 1) == 0)
  {
    [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)a2 effectiveViewElementForShelfItemViewElement:?];
  }

  children = [elementCopy children];
  v7 = [children objectAtIndex:v10];

  return v7;
}

- (int64_t)numberOfSectionCells
{
  v3.receiver = self;
  v3.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  return [(SUUIShelfPageSectionConfiguration *)&v3 numberOfSectionCells]+ 1;
}

- (id)cellForShelfViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  v8 = [pathCopy item] + 1;
  if (v8 == [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells])
  {
    pageSectionContext = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    collectionView = [pageSectionContext collectionView];
    v11 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AFA820 forIndexPath:pathCopy];

    _focusedViewElement = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    pageSectionContext2 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext2 activePageWidth];
    v15 = v14;
    cellLayoutContext = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [v11 reloadWithViewElement:_focusedViewElement width:cellLayoutContext context:v15];

    fixedElementsCollectionViewCell = self->_fixedElementsCollectionViewCell;
    self->_fixedElementsCollectionViewCell = v11;

    v18 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
    v18 = [(SUUIShelfPageSectionConfiguration *)&v20 cellForShelfViewElement:elementCopy indexPath:pathCopy];
  }

  return v18;
}

- (CGSize)cellSizeForShelfViewElement:(id)element indexPath:(id)path numberOfShelfItems:(int64_t)items
{
  elementCopy = element;
  pathCopy = path;
  v10 = [pathCopy item] + 1;
  if (v10 == [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells])
  {
    pageSectionContext = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext activePageWidth];
    v13 = v12;

    _focusedViewElement = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    cellLayoutContext = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [SUUIMenuBarTemplateShelfFixedElementsCollectionViewCell sizeThatFitsWidth:_focusedViewElement viewElement:cellLayoutContext context:v13];
    v17 = v16;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
    [(SUUIShelfPageSectionConfiguration *)&v25 cellSizeForShelfViewElement:elementCopy indexPath:pathCopy numberOfShelfItems:items];
    v13 = v18;
    v17 = v19;
    if ([(SUUIShelfPageSectionConfiguration *)self wantsZoomingShelfLayout])
    {
      [(SUUIShelfPageSectionConfiguration *)self zoomingShelfLayoutScaledItemWidth];
      v21 = v20;
      [(SUUIShelfPageSectionConfiguration *)self zoomingShelfLayoutItemWidth];
      v17 = v17 - (v21 - v22);
    }
  }

  v23 = v13;
  v24 = v17;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8.receiver = self;
  v8.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SUUIShelfPageSectionConfiguration *)&v8 collectionViewWillApplyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];
  v6 = [indexPath item] + 1;
  numberOfSectionCells = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells];

  if (v6 == numberOfSectionCells)
  {
    [attributesCopy setZIndex:1];
  }
}

- (void)registerReusableClassesForCollectionView:(id)view
{
  v4.receiver = self;
  v4.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  viewCopy = view;
  [(SUUIShelfPageSectionConfiguration *)&v4 registerReusableClassesForCollectionView:viewCopy];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:{0x286AFA820, v4.receiver, v4.super_class}];
}

- (void)reloadShelfLayoutDataForShelfViewElement:(id)element withShelfItemViewElements:(id)elements requestCellLayouts:(BOOL)layouts numberOfShelfItems:(int64_t)items
{
  layoutsCopy = layouts;
  v16.receiver = self;
  v16.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SUUIShelfPageSectionConfiguration *)&v16 reloadShelfLayoutDataForShelfViewElement:element withShelfItemViewElements:elements requestCellLayouts:layouts numberOfShelfItems:items];
  if (layoutsCopy)
  {
    _focusedViewElement = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    pageSectionContext = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [pageSectionContext activePageWidth];
    v11 = v10;
    cellLayoutContext = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [SUUIMenuBarTemplateShelfFixedElementsCollectionViewCell requestLayoutForViewElement:_focusedViewElement width:cellLayoutContext context:v11];

    cellLayoutContext2 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    labelLayoutCache = [cellLayoutContext2 labelLayoutCache];
    layoutCache = [labelLayoutCache layoutCache];
    [layoutCache commitLayoutRequests];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v22.receiver = self;
  v22.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SUUIShelfPageSectionConfiguration *)&v22 scrollViewDidScroll:scrollCopy];
  if ([(SUUIShelfPageSectionConfiguration *)self wantsZoomingShelfLayout])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      collectionViewLayout = [scrollCopy collectionViewLayout];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [collectionViewLayout menuBarFocusedItemIndexPathWithTransitionProgress:0];
        focusedIndex = self->_focusedIndex;
        if (focusedIndex != [v6 item])
        {
          self->_focusedIndex = [v6 item];
          _focusedViewElement = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
          pageSectionContext = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
          [pageSectionContext activePageWidth];
          v11 = v10;
          cellLayoutContext = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
          [SUUIMenuBarTemplateShelfFixedElementsCollectionViewCell requestLayoutForViewElement:_focusedViewElement width:cellLayoutContext context:v11];

          cellLayoutContext2 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
          labelLayoutCache = [cellLayoutContext2 labelLayoutCache];
          layoutCache = [labelLayoutCache layoutCache];
          [layoutCache commitLayoutRequests];

          fixedElementsCollectionViewCell = self->_fixedElementsCollectionViewCell;
          _focusedViewElement2 = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
          pageSectionContext2 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
          [pageSectionContext2 activePageWidth];
          v20 = v19;
          cellLayoutContext3 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
          [fixedElementsCollectionViewCell reloadWithViewElement:_focusedViewElement2 width:cellLayoutContext3 context:v20];
        }
      }
    }
  }
}

- (id)_focusedViewElement
{
  dataSource = [(SUUIShelfPageSectionConfiguration *)self dataSource];
  v5 = [dataSource shelfPageSectionConfiguration:self viewElementAtIndex:self->_focusedIndex];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  SUUIZoomingShelfMenuBarGetValidationInfoForViewElement(v5, &v9);
  if ((v9 & 1) == 0)
  {
    [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)a2 _focusedViewElement];
  }

  children = [v5 children];
  v7 = [children objectAtIndex:v10];

  return v7;
}

- (void)effectiveViewElementForShelfItemViewElement:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIMenuBarTemplateShelfPageSectionConfiguration.m" lineNumber:44 description:@"All shelf items vended by the shelf page section need to be valid."];
}

- (void)_focusedViewElement
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SUUIMenuBarTemplateShelfPageSectionConfiguration.m" lineNumber:133 description:@"All shelf items vended by the shelf page section need to be valid."];
}

@end