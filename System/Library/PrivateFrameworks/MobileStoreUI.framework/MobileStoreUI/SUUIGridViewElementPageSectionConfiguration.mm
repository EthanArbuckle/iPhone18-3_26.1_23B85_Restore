@interface SUUIGridViewElementPageSectionConfiguration
- (BOOL)_isContainedWithinExploreTemplateWithGridViewElement:(id)element;
- (BOOL)_useOrdinalPadding;
- (BOOL)viewElementIsStandardCard:(id)card;
- (CGSize)cellSizeForViewElement:(id)element indexPath:(id)path;
- (Class)_cardCellClassForCard:(id)card;
- (Class)cellClassForViewElement:(id)element;
- (Class)lockupCellClassWithLockup:(id)lockup;
- (SUUIGridViewElementPageSectionConfigurationDataSource)dataSource;
- (UIEdgeInsets)_cellInsetsForViewElement:(id)element indexPath:(id)path;
- (UIEdgeInsets)_normalizedContentInsetForViewElement:(id)element indexPath:(id)path;
- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)value forGridViewElement:(id)element;
- (double)_cellContentWidth;
- (double)_cellHeightForViewElement:(id)element width:(double)width;
- (double)_columnContentWidthPaddingForWidth:(double)width;
- (double)columnContentWidth;
- (double)columnWidth;
- (id)_cardArtworkBoundingSizeForIndexPath:(id)path;
- (id)_lockupCellReuseIdentifierWithLockup:(id)lockup;
- (id)backgroundColorForViewElement:(id)element;
- (id)cellForViewElement:(id)element indexPath:(id)path;
- (int64_t)_lockupTypeForLockup:(id)lockup;
- (int64_t)_numberOfColumnsForWidth:(double)width style:(id)style;
- (int64_t)positionForIndexPath:(id)path;
- (void)_enumerateViewElementsForRowOfIndexPath:(id)path usingBlock:(id)block;
- (void)_reloadCellPaddingIfNeeded;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)configureCell:(id)cell forViewElement:(id)element indexPath:(id)path;
- (void)registerReusableClassesForCollectionView:(id)view;
- (void)reloadCellWithIndexPath:(id)path forViewElement:(id)element reason:(int64_t)reason;
- (void)requestCellLayoutForViewElement:(id)element;
- (void)setDataSource:(id)source;
- (void)setNumberOfColumns:(int64_t)columns;
- (void)updateLayoutPropertiesForGridViewElement:(id)element;
- (void)updateStylePropertiesForGridViewElement:(id)element gridItemViewElements:(id)elements numberOfGridItems:(unint64_t)items;
@end

@implementation SUUIGridViewElementPageSectionConfiguration

- (double)columnContentWidth
{
  [(SUUIGridViewElementPageSectionConfiguration *)self columnWidth];

  [(SUUIGridViewElementPageSectionConfiguration *)self _columnContentWidthPaddingForWidth:?];
  return result;
}

- (double)columnWidth
{
  if (self->_numberOfColumns < 1)
  {
    return 0.0;
  }

  [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
  v4 = v3;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = v4 * v6;

  v8 = floor(v7 / self->_numberOfColumns);
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v11 = v8 / v10;

  return v11;
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_dataSource, obj);
    *&self->_dataSourceRespondsToSelectorFlags = *&self->_dataSourceRespondsToSelectorFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)setNumberOfColumns:(int64_t)columns
{
  self->_numberOfColumns = columns;
  self->_cellContentWidth = 0.0;
  self->_cellPaddingLeftEdgeHorizontal = 0.0;
  self->_cellPaddingRightEdgeHorizontal = 0.0;
  self->_cellPaddingInteriorHorizontal = 0.0;
  self->_cellPaddingNeedsReloading = 1;
}

- (id)backgroundColorForViewElement:(id)element
{
  elementCopy = element;
  style = [elementCopy style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (!color)
  {
    if ([elementCopy elementType] == 48)
    {
      color = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    }

    else
    {
      color = 0;
    }
  }

  return color;
}

- (Class)cellClassForViewElement:(id)element
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  v6 = 0;
  if (elementType > 48)
  {
    if (elementType <= 65)
    {
      if (elementType == 49 || elementType == 50)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (elementType == 66)
      {
        v7 = [(SUUIGridViewElementPageSectionConfiguration *)self lockupCellClassWithLockup:elementCopy];
        goto LABEL_17;
      }

      if (elementType == 141 || elementType == 152)
      {
        goto LABEL_16;
      }
    }
  }

  else if (elementType > 13)
  {
    if (elementType == 14)
    {
      v7 = [(SUUIGridViewElementPageSectionConfiguration *)self _cardCellClassForCard:elementCopy];
      goto LABEL_17;
    }

    if (elementType == 48)
    {
LABEL_16:
      v7 = objc_opt_class();
LABEL_17:
      v6 = v7;
    }
  }

  else if ((elementType - 12) < 2 || elementType == 4)
  {
    goto LABEL_16;
  }

  v8 = v6;

  return v6;
}

- (id)cellForViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  v8 = self->_pageSectionContext;
  elementType = [elementCopy elementType];
  v10 = 0;
  if (elementType <= 48)
  {
    if (elementType > 13)
    {
      if (elementType == 14)
      {
        cardType = [elementCopy cardType];
        collectionView = [(SUUIStorePageSectionContext *)v8 collectionView];
        v12 = collectionView;
        if (cardType == 3)
        {
          v13 = 0x286AFDBE0;
        }

        else
        {
          v13 = 0x286AFFD60;
        }
      }

      else
      {
        if (elementType != 48)
        {
          goto LABEL_20;
        }

        collectionView = [(SUUIStorePageSectionContext *)v8 collectionView];
        v12 = collectionView;
        v13 = 0x286AFEA40;
      }

      goto LABEL_17;
    }

    if ((elementType - 12) >= 2)
    {
      if (elementType != 4)
      {
        goto LABEL_20;
      }

      collectionView = [(SUUIStorePageSectionContext *)v8 collectionView];
      v12 = collectionView;
      v13 = 0x286AF8420;
      goto LABEL_17;
    }

LABEL_16:
    collectionView = [(SUUIStorePageSectionContext *)v8 collectionView];
    v12 = collectionView;
    v13 = 0x286AF8440;
LABEL_17:
    v10 = [collectionView dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];
    goto LABEL_18;
  }

  if (elementType <= 65)
  {
    if (elementType != 49)
    {
      if (elementType != 50)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    goto LABEL_23;
  }

  switch(elementType)
  {
    case 66:
      v12 = [(SUUIGridViewElementPageSectionConfiguration *)self _lockupCellReuseIdentifierWithLockup:elementCopy];
      collectionView2 = [(SUUIStorePageSectionContext *)v8 collectionView];
      v10 = [collectionView2 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

LABEL_18:
      if (!v10)
      {
        break;
      }

      goto LABEL_19;
    case 141:
      goto LABEL_16;
    case 152:
LABEL_23:
      collectionView3 = [(SUUIStorePageSectionContext *)v8 collectionView];
      v10 = [collectionView3 dequeueReusableCellWithReuseIdentifier:0x286AF3680 forIndexPath:pathCopy];

      [v10 setShowsReflectionImage:0];
      if (v10)
      {
LABEL_19:
        [(SUUIGridViewElementPageSectionConfiguration *)self configureCell:v10 forViewElement:elementCopy indexPath:pathCopy];
      }

      break;
  }

LABEL_20:

  return v10;
}

- (CGSize)cellSizeForViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3010000000;
  v43 = 0;
  v44 = 0;
  v42 = "";
  [(SUUIGridViewElementPageSectionConfiguration *)self columnWidth];
  *(v40 + 4) = v8;
  [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
  v10 = v9;
  if ([elementCopy elementType] == 48)
  {
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellInsetsForViewElement:elementCopy indexPath:pathCopy];
    v12 = v11;
    v14 = v13;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellHeightForViewElement:elementCopy width:v10 - v15 - v16];
    v17 = v40;
    v19 = v14 + v12 + v18;
    v40[4] = v10;
    v17[5] = v19;
  }

  else
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v38 = 0;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
    v31 = 0;
    v32 = &v31;
    v33 = 0x4010000000;
    v34 = "";
    v20 = *(MEMORY[0x277D768C8] + 16);
    v35 = *MEMORY[0x277D768C8];
    v36 = v20;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__SUUIGridViewElementPageSectionConfiguration_cellSizeForViewElement_indexPath___block_invoke;
    v25[3] = &unk_2798FB138;
    v30 = v21;
    v25[4] = self;
    v27 = &v31;
    v28 = &v39;
    v29 = v37;
    v26 = pathCopy;
    [(SUUIGridViewElementPageSectionConfiguration *)self _enumerateViewElementsForRowOfIndexPath:v26 usingBlock:v25];
    v40[5] = v32[6] + v32[4] + v40[5];

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(v37, 8);
    v17 = v40;
    v10 = v40[4];
    v19 = v40[5];
  }

  if (v19 >= self->_minimumCellHeight)
  {
    minimumCellHeight = v19;
  }

  else
  {
    minimumCellHeight = self->_minimumCellHeight;
  }

  v17[5] = minimumCellHeight;
  _Block_object_dispose(&v39, 8);

  v23 = v10;
  v24 = minimumCellHeight;
  result.height = v24;
  result.width = v23;
  return result;
}

void __80__SUUIGridViewElementPageSectionConfiguration_cellSizeForViewElement_indexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  [*(a1 + 32) _cellInsetsForViewElement:v27 indexPath:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 32);
  v15 = *(a1 + 72) - v8 - v12;
  if (v14[96])
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a1 + 72);
  }

  [v14 _cellHeightForViewElement:v27 width:v16];
  v18 = v17;
  if (*(*(a1 + 32) + 236) == 1)
  {
    if ([v27 rendersWithPerspective])
    {
      v19 = [*(a1 + 32) cellClassForViewElement:v27];
      if (class_conformsToProtocol(v19, &unk_286C2FC68))
      {
        [v19 maximumPerspectiveHeightForSize:{v16, v18}];
        v7 = v20;
      }
    }
  }

  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 48);
  if (v22 < v11)
  {
    v22 = v11;
  }

  *(v21 + 48) = v22;
  v23 = *(*(a1 + 48) + 8);
  v24 = *(v23 + 32);
  if (v24 < v7)
  {
    v24 = v7;
  }

  *(v23 + 32) = v24;
  v25 = *(*(a1 + 56) + 8);
  v26 = *(v25 + 40);
  if (v26 < v18)
  {
    v26 = v18;
  }

  *(v25 + 40) = v26;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 && [*(a1 + 40) isEqual:v5])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 32) = v13 + v9 + v16;
  }
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  indexPath = [attributesCopy indexPath];
  [attributesCopy setPosition:{-[SUUIGridViewElementPageSectionConfiguration positionForIndexPath:](self, "positionForIndexPath:", indexPath)}];
}

- (void)configureCell:(id)cell forViewElement:(id)element indexPath:(id)path
{
  cellCopy = cell;
  elementCopy = element;
  pathCopy = path;
  v10 = self->_pageSectionContext;
  elementType = [elementCopy elementType];
  v12 = 0;
  v13 = 0;
  if (elementType <= 48)
  {
    if (elementType == 14)
    {
      if ([elementCopy cardType] != 3)
      {
        v12 = cellCopy;
        v13 = 0;
        goto LABEL_7;
      }

LABEL_6:
      v13 = 0;
      v12 = 0;
LABEL_7:
      v14 = 0;
      goto LABEL_12;
    }

    v14 = 0;
    if (elementType == 48)
    {
      v12 = 0;
      v14 = 0;
      v13 = 1;
    }
  }

  else
  {
    if (elementType == 49)
    {
LABEL_5:
      [cellCopy setShowsReflectionImage:0];
      goto LABEL_6;
    }

    if (elementType != 66)
    {
      v14 = 0;
      if (elementType != 152)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }

    v15 = [(SUUIGridViewElementPageSectionConfiguration *)self _lockupCellReuseIdentifierWithLockup:elementCopy];
    v14 = v15 == @"SUUIHorizontalLockupReuseID";

    v13 = 0;
    v12 = 0;
  }

LABEL_12:
  v16 = self->_separatorColor;
  top = self->_separatorWidths.top;
  left = self->_separatorWidths.left;
  bottom = self->_separatorWidths.bottom;
  right = self->_separatorWidths.right;
  v21 = self->_separatorMargins.top;
  v22 = self->_separatorMargins.left;
  v23 = self->_separatorMargins.bottom;
  v24 = self->_separatorMargins.right;
  if (v13)
  {
    style = [elementCopy style];
    separatorStyle = [style valueForStyle:*MEMORY[0x277D1AFB8]];

    v68 = pathCopy;
    v67 = v14;
    if (separatorStyle)
    {
      [style borderWidths];
      top = v27;
      left = v28;
      bottom = v29;
      right = v30;
      separatorStyle = 2;
    }

    v31 = v10;
    v32 = [style valueForStyle:*MEMORY[0x277D1AFA8]];

    if (v32)
    {
      ikBorderColor = [style ikBorderColor];
      color = [ikBorderColor color];

      v16 = color;
    }

    v35 = [style valueForStyle:*MEMORY[0x277D1AFB0]];

    if (v35)
    {
      [style borderMargins];
      v21 = v36;
      v22 = v37;
      v23 = v38;
      v24 = v39;
    }

    v69 = right;
    parent = [elementCopy parent];
    style2 = [parent style];
    ikBackgroundColor = [style2 ikBackgroundColor];

    if (ikBackgroundColor && [ikBackgroundColor colorType] == 3)
    {
      self->_hasHeader = 1;
    }

    v43 = v22;

    pathCopy = v68;
    v10 = v31;
    v14 = v67;
  }

  else
  {
    v69 = self->_separatorWidths.right;
    separatorStyle = self->_separatorStyle;
    v43 = self->_separatorMargins.left;
    if (self->_hasHeader && [pathCopy item] == 1)
    {
      separatorStyle = 0;
    }
  }

  v44 = v21;
  if ([elementCopy elementType] == 48)
  {
    [(SUUIStorePageSectionContext *)v10 activePageWidth];
    v46 = v45;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
    v48 = v46 - v47;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
    v50 = v48 - v49;
  }

  else
  {
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
    v50 = v51;
  }

  [cellCopy reloadWithViewElement:elementCopy width:self->_cellLayoutContext context:v50];
  [cellCopy setSeparatorColor:v16];
  [cellCopy setSeparatorStyle:separatorStyle];
  [cellCopy setSeparatorWidths:{top, left, bottom, v69}];
  [cellCopy setSeparatorInsets:{v44, v43, v23, v24}];
  if (v14)
  {
    [cellCopy setEditing:self->_showsEditMode animated:0];
  }

  [(SUUIGridViewElementPageSectionConfiguration *)self _normalizedContentInsetForViewElement:elementCopy indexPath:pathCopy];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  if (-[SUUIGridViewElementPageSectionConfiguration rendersWithPerspective](self, "rendersWithPerspective") && [cellCopy conformsToProtocol:&unk_286C2FC68])
  {
    v60 = cellCopy;
    parentViewController = [(SUUIStorePageSectionContext *)self->_pageSectionContext parentViewController];
    view = [parentViewController view];

    [v60 setPerspectiveTargetView:view];
    [view bounds];
    [v60 setVanishingPoint:{CGRectGetMidX(v72), -800.0}];
    if ([elementCopy rendersWithPerspective])
    {
      [objc_opt_class() sizeThatFitsWidth:elementCopy viewElement:self->_cellLayoutContext context:v50];
      [objc_opt_class() maximumPerspectiveHeightForSize:{v63, v64}];
      if (v53 < v65)
      {
        v53 = v65;
      }
    }
  }

  [cellCopy setContentInset:{v53, v55, v57, v59}];
  if (v12)
  {
    v66 = [(SUUIGridViewElementPageSectionConfiguration *)self _cardArtworkBoundingSizeForIndexPath:pathCopy];
    [v12 setArtworkBoundingSize:v66];
  }
}

- (Class)lockupCellClassWithLockup:(id)lockup
{
  if ([(SUUIGridViewElementPageSectionConfiguration *)self _lockupTypeForLockup:lockup]<= 8)
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (int64_t)positionForIndexPath:(id)path
{
  item = [path item];
  integerValue = 1;
  v11 = 1;
  if ((item & 0x8000000000000000) == 0)
  {
    v7 = item;
    if (item >= [(NSArray *)self->_positions count])
    {
      integerValue = 1;
    }

    else
    {
      v8 = [(NSArray *)self->_positions objectAtIndex:v7];
      integerValue = [v8 integerValue];
      v11 = integerValue;
    }
  }

  if (*&self->_dataSourceRespondsToSelectorFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained gridViewElementPageSectionConfiguration:self configurePosition:&v11 forItemAtIndexPath:path];

    return v11;
  }

  return integerValue;
}

- (void)registerReusableClassesForCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF8420];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF8440];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD60];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFDBE0];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFE180];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF3680];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFCE0];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFEA40];
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF7FC0];
}

- (void)reloadCellWithIndexPath:(id)path forViewElement:(id)element reason:(int64_t)reason
{
  pathCopy = path;
  elementCopy = element;
  collectionView = [(SUUIStorePageSectionContext *)self->_pageSectionContext collectionView];
  v10 = [collectionView cellForItemAtIndexPath:pathCopy];

  [(SUUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
  [v10 reloadWithViewElement:elementCopy width:self->_cellLayoutContext context:?];
  if (reason == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setEditing:self->_showsEditMode animated:1];
    }
  }

  if ([(SUUIGridViewElementPageSectionConfiguration *)self viewElementIsStandardCard:elementCopy])
  {
    v11 = [(SUUIGridViewElementPageSectionConfiguration *)self _cardArtworkBoundingSizeForIndexPath:pathCopy];
    [v10 setArtworkBoundingSize:v11];
  }

  [(SUUIGridViewElementPageSectionConfiguration *)self _normalizedContentInsetForViewElement:elementCopy indexPath:pathCopy];
  [v10 setContentInset:?];
}

- (void)requestCellLayoutForViewElement:(id)element
{
  elementCopy = element;
  v4 = [(SUUIGridViewElementPageSectionConfiguration *)self cellClassForViewElement:elementCopy];
  if ([elementCopy elementType] == 48)
  {
    [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
    v6 = v5;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
    v8 = v6 - v7;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
    v10 = v8 - v9;
  }

  else
  {
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
  }

  [(objc_class *)v4 requestLayoutForViewElement:elementCopy width:self->_cellLayoutContext context:v10];
}

- (UIEdgeInsets)sectionContentInsetAdjustedFromValue:(UIEdgeInsets)value forGridViewElement:(id)element
{
  right = value.right;
  bottom = value.bottom;
  left = value.left;
  top = value.top;
  v16 = 0;
  style = [element style];
  v9 = SUUIViewElementPaddingForStyle(style, &v16);
  v11 = v10;

  if (v16)
  {
    v12 = v11;
  }

  else
  {
    v12 = bottom;
  }

  if (v16)
  {
    v13 = v9;
  }

  else
  {
    v13 = top;
  }

  v14 = left;
  v15 = right;
  result.right = v15;
  result.bottom = v12;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)updateLayoutPropertiesForGridViewElement:(id)element
{
  v40 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  pageSectionContext = [(SUUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
  [pageSectionContext activePageWidth];
  v7 = v6;
  self->_cellContentWidth = 0.0;
  style = [elementCopy style];
  [(SUUIGridViewElementPageSectionConfiguration *)self setNumberOfColumns:[(SUUIGridViewElementPageSectionConfiguration *)self _numberOfColumnsForWidth:style style:v7]];

  clientContext = [pageSectionContext clientContext];
  v10 = SUUIUserInterfaceIdiom(clientContext);

  v31 = pageSectionContext;
  if (v10 == 1)
  {
    if ([(SUUIGridViewElementPageSectionConfiguration *)self _isContainedWithinExploreTemplateWithGridViewElement:elementCopy, pageSectionContext])
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }

LABEL_10:
    self->_cardVerticalSpacingStyle = v11;
    goto LABEL_11;
  }

  if (v7 >= 414.0)
  {
    if (self->_numberOfColumns > 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_10;
  }

  self->_cardVerticalSpacingStyle = 0;
LABEL_11:
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = elementCopy;
  obj = [elementCopy flattenedChildren];
  v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_37;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *v36;
  do
  {
    v20 = 0;
    v33 = v18;
    do
    {
      if (*v36 != v19)
      {
        objc_enumerationMutation(obj);
      }

      numberOfColumns = self->_numberOfColumns;
      if (numberOfColumns == 1)
      {
        goto LABEL_19;
      }

      if ([*(*(&v35 + 1) + 8 * v20) elementType] == 48)
      {
        numberOfColumns = self->_numberOfColumns;
        v16 = numberOfColumns - 1;
LABEL_19:
        v22 = 5;
        v15 = v18;
        goto LABEL_25;
      }

      numberOfColumns = self->_numberOfColumns;
      if (v16 == numberOfColumns - 1)
      {
        v22 = 4;
      }

      else
      {
        v22 = 2;
      }

      if (!v16)
      {
        v15 = v18;
        v16 = 0;
        v22 = 1;
      }

LABEL_25:
      if (v17)
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 | 8;
      }

      v24 = numberOfColumns - 1;
      v25 = v16 < v24;
      if (v16 < v24)
      {
        ++v16;
      }

      else
      {
        v16 = 0;
      }

      if (!v25)
      {
        ++v17;
      }

      v26 = [MEMORY[0x277CCABB0] numberWithInt:{v23, v31}];
      [(NSArray *)v12 addObject:v26];

      ++v18;
      ++v20;
    }

    while (v14 != v20);
    v18 = v33 + v14;
    v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v14);
LABEL_37:

  for (; v15 < [(NSArray *)v12 count]; ++v15)
  {
    v27 = [(NSArray *)v12 objectAtIndex:v15, v31];
    integerValue = [v27 integerValue];

    0x20u = [MEMORY[0x277CCABB0] numberWithInt:integerValue | 0x20u];
    [(NSArray *)v12 replaceObjectAtIndex:v15 withObject:0x20u];
  }

  positions = self->_positions;
  self->_positions = v12;
}

- (void)updateStylePropertiesForGridViewElement:(id)element gridItemViewElements:(id)elements numberOfGridItems:(unint64_t)items
{
  v73 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  elementsCopy = elements;
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v12 = v11;

  if ([elementCopy elementType] == 45)
  {
    showsEditMode = [elementCopy showsEditMode];
  }

  else
  {
    showsEditMode = 0;
  }

  self->_showsEditMode = showsEditMode;
  style = [elementCopy style];
  itemWidth = [style itemWidth];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v17 = [itemWidth stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  [v17 floatValue];
  self->_gridViewElementStyleItemWidth = v18;
  v66 = v17;
  v19 = [v17 hasSuffix:@"%"];
  self->_gridViewElementStyleItemWidthIsPercentage = v19;
  if (v19)
  {
    gridViewElementStyleItemWidth = self->_gridViewElementStyleItemWidth;
    self->_gridIsEdgeToEdge = gridViewElementStyleItemWidth == 100.0;
    p_gridIsEdgeToEdge = &self->_gridIsEdgeToEdge;
    if (gridViewElementStyleItemWidth == 100.0)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];

      v24 = *MEMORY[0x277D768C8];
      v23 = *(MEMORY[0x277D768C8] + 8);
      v25 = *(MEMORY[0x277D768C8] + 16);
      v26 = *(MEMORY[0x277D768C8] + 24);
      separatorColor = whiteColor;
      goto LABEL_9;
    }
  }

  else
  {
    self->_gridIsEdgeToEdge = 0;
    p_gridIsEdgeToEdge = &self->_gridIsEdgeToEdge;
  }

  v25 = 0.0;
  v26 = 15.0;
  v23 = 15.0;
  v24 = 0.0;
LABEL_9:
  v27 = 1.0 / v12;
  ikBorderColor = [style ikBorderColor];
  color = [ikBorderColor color];

  if (color)
  {
    if (CGColorGetAlpha([color CGColor]) <= 0.00000011920929)
    {

      separatorColor = 0;
      v32 = 0;
      v33 = v27;
      v34 = v27;
      v35 = v27;
      goto LABEL_39;
    }

    v30 = color;

    separatorColor = v30;
  }

  dividerType = [style dividerType];
  if ([dividerType isEqualToString:@"grid-full"])
  {
    v32 = 2;
  }

  else if ([dividerType isEqualToString:@"grid-top"])
  {
    v32 = 3;
  }

  else if ([dividerType isEqualToString:@"full"])
  {
    v32 = 4;
  }

  else if ([dividerType isEqualToString:@"grid-vertical"])
  {
    v32 = 6;
  }

  else if ([dividerType isEqualToString:@"none"])
  {
    v32 = 0;
  }

  else if (*p_gridIsEdgeToEdge || ([dividerType isEqualToString:@"edge-to-edge"] & 1) != 0)
  {
    v32 = 7;
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = elementsCopy;
    v36 = [(NSArray *)obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v36)
    {
      v37 = v36;
      v65 = *v69;
      v32 = 1;
LABEL_28:
      v38 = 0;
      while (1)
      {
        if (*v69 != v65)
        {
          objc_enumerationMutation(obj);
        }

        if (!SUUIIKViewElementTypeIsButton([*(*(&v68 + 1) + 8 * v38) elementType]))
        {
          break;
        }

        if (v37 == ++v38)
        {
          v37 = [(NSArray *)obj countByEnumeratingWithState:&v68 objects:v72 count:16];
          if (v37)
          {
            goto LABEL_28;
          }

          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      v32 = 4;
    }
  }

  v39 = [style valueForStyle:*MEMORY[0x277D1AFB8]];

  v33 = v27;
  v34 = v27;
  v35 = v27;
  if (v39)
  {
    [style borderWidths];
    v35 = v40;
    v34 = v41;
    v33 = v42;
    v27 = v43;
  }

LABEL_39:
  v44 = elementsCopy;
  v45 = [style valueForStyle:*MEMORY[0x277D1AFB0]];

  if (v45)
  {
    [style borderMargins];
    v24 = v46;
    v23 = v47;
    v25 = v48;
    v26 = v49;
  }

  v50 = [style valueForStyle:*MEMORY[0x277D1AFF0]];
  v51 = 1;
  if (!v50)
  {
    v52 = [style valueForStyle:@"itml-padding"];
    v51 = v52 != 0;
  }

  self->_hasGridViewElementStyle = style != 0 && v51;
  [style elementPadding];
  self->_gridViewElementStyleElementPadding.top = v53;
  self->_gridViewElementStyleElementPadding.left = v54;
  self->_gridViewElementStyleElementPadding.bottom = v55;
  self->_gridViewElementStyleElementPadding.right = v56;
  self->_numberOfGridItems = items;
  self->_separatorStyle = v32;
  objc_storeStrong(&self->_separatorColor, separatorColor);
  self->_separatorMargins.top = v24;
  self->_separatorMargins.left = v23;
  self->_separatorMargins.bottom = v25;
  self->_separatorMargins.right = v26;
  self->_separatorWidths.top = v35;
  self->_separatorWidths.left = v34;
  self->_separatorWidths.bottom = v33;
  self->_separatorWidths.right = v27;
  viewElements = self->_viewElements;
  self->_viewElements = v44;

  self->_cellContentWidth = 0.0;
  self->_cellPaddingNeedsReloading = 1;
  self->_cellPaddingLeftEdgeHorizontal = 0.0;
  self->_cellPaddingRightEdgeHorizontal = 0.0;
  self->_cellPaddingInteriorHorizontal = 0.0;
  style2 = [elementCopy style];
  lockupType = [style2 lockupType];

  if (lockupType)
  {
    v60 = SUUILockupViewTypeForString(lockupType);
  }

  else
  {
    v60 = -1;
  }

  self->_lockupType = v60;
  itemHeight = [style itemHeight];
  if (itemHeight || ([style rowHeight], (itemHeight = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v62 = itemHeight;
    [itemHeight floatValue];
    self->_minimumCellHeight = v63;
  }

  else
  {
    self->_minimumCellHeight = 44.0;
  }
}

- (BOOL)viewElementIsStandardCard:(id)card
{
  cardCopy = card;
  v4 = [cardCopy elementType] == 14 && objc_msgSend(cardCopy, "cardType") != 3;

  return v4;
}

- (id)_cardArtworkBoundingSizeForIndexPath:(id)path
{
  pathCopy = path;
  v5 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__50;
  v14 = __Block_byref_object_dispose__50;
  v15 = 0;
  if (self->_numberOfColumns >= 2)
  {
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__SUUIGridViewElementPageSectionConfiguration__cardArtworkBoundingSizeForIndexPath___block_invoke;
    v9[3] = &unk_2798FB160;
    v9[6] = v6;
    v9[4] = self;
    v9[5] = &v10;
    [(SUUIGridViewElementPageSectionConfiguration *)self _enumerateViewElementsForRowOfIndexPath:pathCopy usingBlock:v9];
    v5 = v11[5];
  }

  v7 = v5;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __84__SUUIGridViewElementPageSectionConfiguration__cardArtworkBoundingSizeForIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) viewElementIsStandardCard:?])
  {
    [SUUICardViewElementCollectionViewCell artworkBoundingSizeWithViewElement:v9 width:*(*(a1 + 32) + 240) context:*(a1 + 48)];
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      [v5 unionWithSize:{v3, v4}];
    }

    else
    {
      v6 = [[SUUISizeValue alloc] initWithSize:v3, v4];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

- (Class)_cardCellClassForCard:(id)card
{
  [card cardType];
  v3 = objc_opt_class();

  return v3;
}

- (double)_cellContentWidth
{
  v23 = *MEMORY[0x277D85DE8];
  result = self->_cellContentWidth;
  if (result >= 0.00000011920929)
  {
    return result;
  }

  result = self->_gridViewElementStyleItemWidth;
  if (result <= 0.00000011920929)
  {
    [(SUUIGridViewElementPageSectionConfiguration *)self columnContentWidth];
    v8 = v7;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_viewElements;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = v10;
    v12 = *v19;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        elementType = [v14 elementType];
        if (elementType == 66)
        {
          if ([v14 lockupViewType] == 7)
          {
            [(SUUIGridViewElementPageSectionConfiguration *)self columnWidth];
LABEL_33:
            self->_cellContentWidth = v16;
            continue;
          }

          if ([v14 lockupViewType] == 2 && v8 <= 0.0)
          {
            [SUUIHorizontalLockupCollectionViewCell preferredSizeForViewElement:v14 context:self->_cellLayoutContext];
            [(SUUIGridViewElementPageSectionConfiguration *)self _columnContentWidthPaddingForWidth:?];
            cellContentWidth = self->_cellContentWidth;
LABEL_31:
            if (cellContentWidth >= v16)
            {
              v16 = cellContentWidth;
            }

            goto LABEL_33;
          }

LABEL_28:
          v16 = self->_cellContentWidth;
          if (v16 < v8)
          {
            v16 = v8;
          }

          goto LABEL_33;
        }

        if (elementType != 48)
        {
          if (elementType == 14 && [(SUUIGridViewElementPageSectionConfiguration *)self viewElementIsStandardCard:v14])
          {
            [SUUICardViewElementCollectionViewCell preferredSizeForViewElement:v14 context:self->_cellLayoutContext];
            cellContentWidth = self->_cellContentWidth;
            if (v16 >= v8)
            {
              v16 = v8;
            }

            goto LABEL_31;
          }

          goto LABEL_28;
        }

        v16 = v8;
        if (self->_cellContentWidth < 0.00000011920929)
        {
          goto LABEL_33;
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16, v16];
      if (!v11)
      {
LABEL_36:

        return self->_cellContentWidth;
      }
    }
  }

  if (self->_gridViewElementStyleItemWidthIsPercentage)
  {
    v4 = result / 100.0;
    v5 = 1.0;
    if (v4 <= 1.0)
    {
      v5 = v4;
      if (v4 < 0.00000011920929)
      {
        v5 = 0.0;
      }
    }

    [(SUUIGridViewElementPageSectionConfiguration *)self columnWidth];
    result = v5 * v6;
  }

  self->_cellContentWidth = result;
  return result;
}

- (double)_cellHeightForViewElement:(id)element width:(double)width
{
  elementCopy = element;
  v7 = [(SUUIGridViewElementPageSectionConfiguration *)self cellClassForViewElement:elementCopy];
  if (v7)
  {
    [(objc_class *)v7 sizeThatFitsWidth:elementCopy viewElement:self->_cellLayoutContext context:width];
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  style = [elementCopy style];
  itemHeight = [style itemHeight];
  v12 = itemHeight;
  if (itemHeight)
  {
    [itemHeight floatValue];
    v14 = v13;
  }

  else
  {
    rowHeight = [style rowHeight];
    v16 = rowHeight;
    if (rowHeight)
    {
      [rowHeight floatValue];
      v14 = v17;
    }

    else
    {
      v14 = 0.0;
    }
  }

  if (v9 < v14)
  {
    v9 = v14;
  }

  return v9;
}

- (UIEdgeInsets)_cellInsetsForViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  v9 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v11 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  style = [elementCopy style];
  v58 = 0;
  v13 = SUUIViewElementPaddingForStyle(style, &v58);
  if (v58 == 1)
  {
    v17 = v9 + v13;
    v18 = v11 + v15;
    v19 = v8 + v14;
    v20 = v10 + v16;
    goto LABEL_24;
  }

  v20 = v10;
  v18 = v11;
  v19 = v8;
  v17 = v9;
  if (!self->_hasGridViewElementStyle)
  {
    elementType = [elementCopy elementType];
    if (elementType <= 47)
    {
      if ((elementType - 12) >= 2)
      {
        if (elementType == 14 && [(SUUIGridViewElementPageSectionConfiguration *)self viewElementIsStandardCard:elementCopy])
        {
          cardVerticalSpacingStyle = self->_cardVerticalSpacingStyle;
          if (cardVerticalSpacingStyle <= 1)
          {
            v50 = v11 + 25.0;
            v51 = v9 + 25.0;
            if (cardVerticalSpacingStyle != 1)
            {
              v50 = v11;
              v51 = v9;
            }

            if (cardVerticalSpacingStyle)
            {
              v18 = v50;
            }

            else
            {
              v18 = v11 + 30.0;
            }

            if (cardVerticalSpacingStyle)
            {
              v17 = v51;
            }

            else
            {
              v17 = v9 + 20.0;
            }

            goto LABEL_23;
          }

          if (cardVerticalSpacingStyle != 2)
          {
            if (cardVerticalSpacingStyle == 3)
            {
              v52 = [elementCopy firstChildForElementType:66];

              if (v52)
              {
                v18 = v11 + 20.0;
              }

              else
              {
                v18 = v11;
              }

              if (v52)
              {
                v17 = v9 + 30.0;
              }

              else
              {
                v17 = v9 + 25.0;
              }
            }

            else
            {
              if (cardVerticalSpacingStyle == 4)
              {
                v18 = v11 + 30.0;
              }

              else
              {
                v18 = v11;
              }

              if (cardVerticalSpacingStyle == 4)
              {
                v17 = v9 + 20.0;
              }

              else
              {
                v17 = v9;
              }
            }

            goto LABEL_23;
          }

          v18 = v11 + 24.0;
          v23 = 33.0;
LABEL_22:
          v17 = v9 + v23;
LABEL_23:
          v20 = v10;
          v19 = v8;
          goto LABEL_24;
        }

LABEL_21:
        v23 = 10.0;
        v18 = v11 + 10.0;
        goto LABEL_22;
      }

LABEL_20:
      v18 = v11 + 12.0;
      v23 = 11.0;
      goto LABEL_22;
    }

    if (elementType != 48)
    {
      if (elementType != 141 && elementType != 50)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v18 = v11 + 10.0;
    v17 = v9 + 4.0;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
    v19 = v8 + v48;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
    v20 = v10 + v49;
  }

LABEL_24:
  if ([elementCopy elementType] != 48)
  {
    v57 = v8;
    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingInteriorHorizontal];
    v25 = v20 + v19 + v24 * 2.0;
    [(SUUIGridViewElementPageSectionConfiguration *)self columnContentWidth];
    v27 = v25 + v26;
    [(SUUIGridViewElementPageSectionConfiguration *)self columnWidth];
    if (v27 > v28)
    {
      v20 = 0.0;
      v19 = 0.0;
    }

    [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingInteriorHorizontal];
    v30 = v29;
    v31 = [(SUUIGridViewElementPageSectionConfiguration *)self positionForIndexPath:pathCopy];
    if (v31)
    {
      [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingLeftEdgeHorizontal];
      v34 = v33;
      v32 = v30;
    }

    else
    {
      if ((v31 & 4) != 0)
      {
        [(SUUIGridViewElementPageSectionConfiguration *)self _cellPaddingRightEdgeHorizontal];
      }

      else
      {
        v32 = v30;
      }

      v34 = v30;
    }

    v19 = v19 + v34;
    v20 = v20 + v32;
    if ([elementCopy elementType] == 66)
    {
      v55 = v9;
      v56 = v18;
      v53 = v11;
      v54 = v10;
      cellLayoutContext = [(SUUIGridViewElementPageSectionConfiguration *)self cellLayoutContext];
      [cellLayoutContext largeScreenElementPadding];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      if (v57 != v39 || v55 != v37 || v54 != v43 || v53 != v41)
      {
        v20 = v43;
        v56 = v41;
        v19 = v39;
        v17 = v37;
      }

      v18 = v56;
      if (self->_gridViewElementStyleItemWidthIsPercentage)
      {
        v18 = v30 + v56;
        v17 = v30 + v17;
      }
    }
  }

  v44 = v17;
  v45 = v19;
  v46 = v18;
  v47 = v20;
  result.right = v47;
  result.bottom = v46;
  result.left = v45;
  result.top = v44;
  return result;
}

- (double)_columnContentWidthPaddingForWidth:(double)width
{
  _useOrdinalPadding = [(SUUIGridViewElementPageSectionConfiguration *)self _useOrdinalPadding];
  pageSectionContext = [(SUUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
  [pageSectionContext horizontalPadding];
  v8 = width - v7;
  v9 = width + v7 * -2.0;
  if (_useOrdinalPadding)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (void)_enumerateViewElementsForRowOfIndexPath:(id)path usingBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v8 = [pathCopy item] / self->_numberOfColumns * self->_numberOfColumns;
  v18 = pathCopy;
  section = [pathCopy section];
  v19 = 0;
  numberOfGridItems = self->_numberOfGridItems;
  dataSource = [(SUUIGridViewElementPageSectionConfiguration *)self dataSource];
  v12 = v8;
  do
  {
    if (v12 >= self->_numberOfColumns + v8 || v12 >= numberOfGridItems)
    {
      break;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:v12 inSection:section];
    v16 = [dataSource gridViewElementPageSectionConfiguration:self viewElementForIndexPath:v15];
    v17 = v16;
    if (v16 && [v16 elementType] != 48)
    {
      blockCopy[2](blockCopy, v17, v15, &v19);
    }

    objc_autoreleasePoolPop(v14);
    ++v12;
  }

  while ((v19 & 1) == 0);
}

- (BOOL)_isContainedWithinExploreTemplateWithGridViewElement:(id)element
{
  elementCopy = element;
  v4 = elementCopy;
  if (elementCopy)
  {
    v5 = elementCopy;
    do
    {
      elementType = [v5 elementType];
      parent = [v5 parent];

      v5 = parent;
      v8 = elementType == 37;
    }

    while (!v8 && parent);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_lockupCellReuseIdentifierWithLockup:(id)lockup
{
  v3 = [(SUUIGridViewElementPageSectionConfiguration *)self _lockupTypeForLockup:lockup];
  if (v3 <= 8)
  {
    v4 = *off_2798FB1F0[v3];
  }

  return v4;
}

- (int64_t)_lockupTypeForLockup:(id)lockup
{
  result = self->_lockupType;
  if (result == -1)
  {
    return [lockup lockupViewType];
  }

  return result;
}

- (UIEdgeInsets)_normalizedContentInsetForViewElement:(id)element indexPath:(id)path
{
  elementCopy = element;
  pathCopy = path;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4010000000;
  v27 = "";
  v28 = 0u;
  v29 = 0u;
  [(SUUIGridViewElementPageSectionConfiguration *)self _cellInsetsForViewElement:elementCopy indexPath:pathCopy];
  *&v28 = v8;
  *(&v28 + 1) = v9;
  *&v29 = v10;
  *(&v29 + 1) = v11;
  if ([elementCopy elementType] != 48)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __95__SUUIGridViewElementPageSectionConfiguration__normalizedContentInsetForViewElement_indexPath___block_invoke;
    v20[3] = &unk_2798FB188;
    v21 = elementCopy;
    selfCopy = self;
    v23 = &v24;
    [(SUUIGridViewElementPageSectionConfiguration *)self _enumerateViewElementsForRowOfIndexPath:pathCopy usingBlock:v20];
  }

  v12 = v25[4];
  v13 = v25[5];
  v14 = v25[6];
  v15 = v25[7];
  _Block_object_dispose(&v24, 8);

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

uint64_t __95__SUUIGridViewElementPageSectionConfiguration__normalizedContentInsetForViewElement_indexPath___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) != a2)
  {
    v3 = result;
    result = [*(result + 40) _cellInsetsForViewElement:a2 indexPath:a3];
    v6 = *(*(v3 + 48) + 8);
    v7 = *(v6 + 48);
    if (v7 < v5)
    {
      v7 = v5;
    }

    *(v6 + 48) = v7;
    v8 = *(*(v3 + 48) + 8);
    if (*(v8 + 32) >= v4)
    {
      v4 = *(v8 + 32);
    }

    *(v8 + 32) = v4;
  }

  return result;
}

- (int64_t)_numberOfColumnsForWidth:(double)width style:(id)style
{
  styleCopy = style;
  v7 = styleCopy;
  if (styleCopy)
  {
    columnCount = [styleCopy columnCount];
    layoutStyle = [(SUUIStorePageSectionContext *)self->_pageSectionContext layoutStyle];
    if (columnCount != -1)
    {
      if ((columnCount * 320.0) + 320.0 <= width)
      {
        ++columnCount;
      }

      goto LABEL_18;
    }
  }

  else
  {
    layoutStyle = [(SUUIStorePageSectionContext *)self->_pageSectionContext layoutStyle];
  }

  v10 = (width / 320.0);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  if (v10 >= 3)
  {
    v10 = 3;
  }

  v11 = 1;
  if (width >= 640.0)
  {
    v11 = 2;
  }

  if (layoutStyle == 2)
  {
    v10 = v11;
  }

  if (layoutStyle == 1)
  {
    columnCount = 1;
  }

  else
  {
    columnCount = v10;
  }

LABEL_18:

  return columnCount;
}

- (void)_reloadCellPaddingIfNeeded
{
  if (self->_cellPaddingNeedsReloading)
  {
    [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
    if (v3 <= 0.0)
    {
      pageSectionContext = [(SUUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
      [pageSectionContext horizontalPadding];
      v7 = v9 + v9;
    }

    else
    {
      [(SUUIStorePageSectionContext *)self->_pageSectionContext activePageWidth];
      v5 = v4;
      [(SUUIGridViewElementPageSectionConfiguration *)self _cellContentWidth];
      *&v6 = v5 - v6 * self->_numberOfColumns;
      v7 = floorf(*&v6);
    }

    _useOrdinalPadding = [(SUUIGridViewElementPageSectionConfiguration *)self _useOrdinalPadding];
    v11 = _useOrdinalPadding;
    if (self->_numberOfColumns > 1)
    {
      if (self->_hasGridViewElementStyle)
      {
        left = self->_gridViewElementStyleElementPadding.left;
        right = self->_gridViewElementStyleElementPadding.right;
      }

      else
      {
        pageSectionContext2 = [(SUUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
        [pageSectionContext2 horizontalPadding];
        left = v17;

        if (v11)
        {
          right = left;
          left = 0.0;
        }

        else
        {
          pageSectionContext3 = [(SUUIGridViewElementPageSectionConfiguration *)self pageSectionContext];
          [pageSectionContext3 horizontalPadding];
          right = v19;
        }
      }

      if (!self->_gridViewElementStyleItemWidthIsPercentage)
      {
        self->_cellPaddingLeftEdgeHorizontal = left;
        self->_cellPaddingRightEdgeHorizontal = right;
        numberOfColumns = self->_numberOfColumns;
        v22 = (v7 - left - right) / (numberOfColumns - 1) * 0.5;
        v23 = floorf(v22);
        self->_cellPaddingInteriorHorizontal = v23;
        if (right < v23)
        {
          v24 = v7 / ((numberOfColumns + 1) + (numberOfColumns + 1));
          v25 = floorf(v24);
          v26 = v25 + v25;
          self->_cellPaddingRightEdgeHorizontal = v25 + v25;
          v27 = fmax(left - right, 0.0);
          if (v11)
          {
            v26 = v27;
          }

          self->_cellPaddingInteriorHorizontal = v25;
          self->_cellPaddingLeftEdgeHorizontal = v26;
        }

        goto LABEL_25;
      }

      self->_cellPaddingLeftEdgeHorizontal = 0.0;
      self->_cellPaddingRightEdgeHorizontal = 0.0;
      if (!self->_hasGridViewElementStyle)
      {
        self->_cellPaddingInteriorHorizontal = 0.0;
        goto LABEL_25;
      }

      v20 = self->_gridViewElementStyleElementPadding.left;
      if (v20 < self->_gridViewElementStyleElementPadding.right)
      {
        v20 = self->_gridViewElementStyleElementPadding.right;
      }

      v15 = v20 * 0.5;
    }

    else
    {
      if (_useOrdinalPadding)
      {
        self->_cellPaddingLeftEdgeHorizontal = 0.0;
        self->_cellPaddingRightEdgeHorizontal = v7;
        self->_cellPaddingInteriorHorizontal = v7;
LABEL_25:
        self->_cellPaddingNeedsReloading = 0;
        return;
      }

      v14 = v7 * 0.5;
      v15 = floorf(v14);
      self->_cellPaddingLeftEdgeHorizontal = v15;
      self->_cellPaddingRightEdgeHorizontal = v15;
    }

    self->_cellPaddingInteriorHorizontal = v15;
    goto LABEL_25;
  }
}

- (BOOL)_useOrdinalPadding
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  firstObject = [(NSArray *)self->_viewElements firstObject];
  if ([firstObject elementType] == 48 && -[NSArray count](self->_viewElements, "count") >= 2)
  {
    v4 = [(NSArray *)self->_viewElements objectAtIndex:1];

    firstObject = v4;
  }

  if ([firstObject elementType] == 66)
  {
    [(SUUIViewElementLayoutContext *)self->_cellLayoutContext largeScreenElementPadding];
    v6.f64[1] = v5;
    v8.f64[1] = v7;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x277D768C8], v8), vceqq_f64(*(MEMORY[0x277D768C8] + 16), v6)))))
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __65__SUUIGridViewElementPageSectionConfiguration__useOrdinalPadding__block_invoke;
      v11[3] = &unk_2798F5FB8;
      v11[4] = &v12;
      [firstObject enumerateChildrenUsingBlock:v11];
    }
  }

  v9 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __65__SUUIGridViewElementPageSectionConfiguration__useOrdinalPadding__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 elementType];
  *(*(*(a1 + 32) + 8) + 24) = result == 80;
  *a3 = 1;
  return result;
}

- (SUUIGridViewElementPageSectionConfigurationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end