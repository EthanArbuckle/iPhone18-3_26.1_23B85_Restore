@interface SUUIMenuBarTemplateShelfPageSectionConfiguration
- (CGSize)cellSizeForShelfViewElement:(id)a3 indexPath:(id)a4 numberOfShelfItems:(int64_t)a5;
- (SUUIMenuBarTemplateShelfPageSectionConfiguration)initWithNumberOfIterations:(unint64_t)a3;
- (id)_focusedViewElement;
- (id)cellForShelfViewElement:(id)a3 indexPath:(id)a4;
- (id)effectiveViewElementForShelfItemViewElement:(id)a3;
- (int64_t)numberOfSectionCells;
- (void)_focusedViewElement;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)registerReusableClassesForCollectionView:(id)a3;
- (void)reloadShelfLayoutDataForShelfViewElement:(id)a3 withShelfItemViewElements:(id)a4 requestCellLayouts:(BOOL)a5 numberOfShelfItems:(int64_t)a6;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation SUUIMenuBarTemplateShelfPageSectionConfiguration

- (SUUIMenuBarTemplateShelfPageSectionConfiguration)initWithNumberOfIterations:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  result = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)&v6 init];
  if (result)
  {
    if (a3 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a3;
    }

    result->_numberOfIterations = v5;
  }

  return result;
}

- (id)effectiveViewElementForShelfItemViewElement:(id)a3
{
  v5 = a3;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  SUUIZoomingShelfMenuBarGetValidationInfoForViewElement(v5, v9);
  if ((v9[0] & 1) == 0)
  {
    [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)a2 effectiveViewElementForShelfItemViewElement:?];
  }

  v6 = [v5 children];
  v7 = [v6 objectAtIndex:v10];

  return v7;
}

- (int64_t)numberOfSectionCells
{
  v3.receiver = self;
  v3.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  return [(SUUIShelfPageSectionConfiguration *)&v3 numberOfSectionCells]+ 1;
}

- (id)cellForShelfViewElement:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 item] + 1;
  if (v8 == [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells])
  {
    v9 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    v10 = [v9 collectionView];
    v11 = [v10 dequeueReusableCellWithReuseIdentifier:0x286AFA820 forIndexPath:v7];

    v12 = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    v13 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [v13 activePageWidth];
    v15 = v14;
    v16 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [v11 reloadWithViewElement:v12 width:v16 context:v15];

    fixedElementsCollectionViewCell = self->_fixedElementsCollectionViewCell;
    self->_fixedElementsCollectionViewCell = v11;

    v18 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
    v18 = [(SUUIShelfPageSectionConfiguration *)&v20 cellForShelfViewElement:v6 indexPath:v7];
  }

  return v18;
}

- (CGSize)cellSizeForShelfViewElement:(id)a3 indexPath:(id)a4 numberOfShelfItems:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 item] + 1;
  if (v10 == [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells])
  {
    v11 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [v11 activePageWidth];
    v13 = v12;

    v14 = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    v15 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [SUUIMenuBarTemplateShelfFixedElementsCollectionViewCell sizeThatFitsWidth:v14 viewElement:v15 context:v13];
    v17 = v16;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
    [(SUUIShelfPageSectionConfiguration *)&v25 cellSizeForShelfViewElement:v8 indexPath:v9 numberOfShelfItems:a5];
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

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SUUIShelfPageSectionConfiguration *)&v8 collectionViewWillApplyLayoutAttributes:v4];
  v5 = [v4 indexPath];
  v6 = [v5 item] + 1;
  v7 = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self numberOfSectionCells];

  if (v6 == v7)
  {
    [v4 setZIndex:1];
  }
}

- (void)registerReusableClassesForCollectionView:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  v3 = a3;
  [(SUUIShelfPageSectionConfiguration *)&v4 registerReusableClassesForCollectionView:v3];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:{0x286AFA820, v4.receiver, v4.super_class}];
}

- (void)reloadShelfLayoutDataForShelfViewElement:(id)a3 withShelfItemViewElements:(id)a4 requestCellLayouts:(BOOL)a5 numberOfShelfItems:(int64_t)a6
{
  v6 = a5;
  v16.receiver = self;
  v16.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SUUIShelfPageSectionConfiguration *)&v16 reloadShelfLayoutDataForShelfViewElement:a3 withShelfItemViewElements:a4 requestCellLayouts:a5 numberOfShelfItems:a6];
  if (v6)
  {
    v8 = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
    v9 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
    [v9 activePageWidth];
    v11 = v10;
    v12 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    [SUUIMenuBarTemplateShelfFixedElementsCollectionViewCell requestLayoutForViewElement:v8 width:v12 context:v11];

    v13 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
    v14 = [v13 labelLayoutCache];
    v15 = [v14 layoutCache];
    [v15 commitLayoutRequests];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SUUIMenuBarTemplateShelfPageSectionConfiguration;
  [(SUUIShelfPageSectionConfiguration *)&v22 scrollViewDidScroll:v4];
  if ([(SUUIShelfPageSectionConfiguration *)self wantsZoomingShelfLayout])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 collectionViewLayout];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 menuBarFocusedItemIndexPathWithTransitionProgress:0];
        focusedIndex = self->_focusedIndex;
        if (focusedIndex != [v6 item])
        {
          self->_focusedIndex = [v6 item];
          v8 = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
          v9 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
          [v9 activePageWidth];
          v11 = v10;
          v12 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
          [SUUIMenuBarTemplateShelfFixedElementsCollectionViewCell requestLayoutForViewElement:v8 width:v12 context:v11];

          v13 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
          v14 = [v13 labelLayoutCache];
          v15 = [v14 layoutCache];
          [v15 commitLayoutRequests];

          fixedElementsCollectionViewCell = self->_fixedElementsCollectionViewCell;
          v17 = [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)self _focusedViewElement];
          v18 = [(SUUIShelfPageSectionConfiguration *)self pageSectionContext];
          [v18 activePageWidth];
          v20 = v19;
          v21 = [(SUUIShelfPageSectionConfiguration *)self cellLayoutContext];
          [fixedElementsCollectionViewCell reloadWithViewElement:v17 width:v21 context:v20];
        }
      }
    }
  }
}

- (id)_focusedViewElement
{
  v4 = [(SUUIShelfPageSectionConfiguration *)self dataSource];
  v5 = [v4 shelfPageSectionConfiguration:self viewElementAtIndex:self->_focusedIndex];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  SUUIZoomingShelfMenuBarGetValidationInfoForViewElement(v5, &v9);
  if ((v9 & 1) == 0)
  {
    [(SUUIMenuBarTemplateShelfPageSectionConfiguration *)a2 _focusedViewElement];
  }

  v6 = [v5 children];
  v7 = [v6 objectAtIndex:v10];

  return v7;
}

- (void)effectiveViewElementForShelfItemViewElement:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIMenuBarTemplateShelfPageSectionConfiguration.m" lineNumber:44 description:@"All shelf items vended by the shelf page section need to be valid."];
}

- (void)_focusedViewElement
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUUIMenuBarTemplateShelfPageSectionConfiguration.m" lineNumber:133 description:@"All shelf items vended by the shelf page section need to be valid."];
}

@end