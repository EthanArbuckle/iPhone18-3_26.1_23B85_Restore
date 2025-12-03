@interface NSCollectionLayoutSection
+ (NSCollectionLayoutSection)sectionWithGroup:(NSCollectionLayoutGroup *)group;
+ (id)_emptySection;
- (BOOL)_containsBackgroundDecorationItem:(id)item;
- (BOOL)_containsEstimatedSizeElement;
- (BOOL)_hasVisibleItemsHandler;
- (BOOL)_isListSolverCompatibleForLayoutAxis:(unint64_t)axis;
- (BOOL)isEqual:(id)equal;
- (CGSize)contentSize;
- (CVCDirectionalEdgeInsets)_clippingInsets;
- (CVCDirectionalEdgeInsets)_minimumContentInsetsReferenceInsets;
- (CVCDirectionalEdgeInsets)_minimumSupplementaryContentInsetsReferenceInsets;
- (NSCollectionLayoutSection)initWithGroup:(id)group contentInsets:(CVCDirectionalEdgeInsets)insets contentInsetsReference:(int64_t)reference supplementaryItems:(id)items boundarySupplementaryItems:(id)supplementaryItems pinnedSupplementaryItemIndexes:(id)indexes interGroupSpacing:(double)spacing visibleItemsInvalidationHandler:(id)self0 supplementariesFollowInsets:(BOOL)self1 decorationItems:(id)self2 orthogonalScrollingBehavior:(int64_t)self3 isEmptySection:(BOOL)self4 prefersListSolver:(BOOL)self5;
- (NSCollectionLayoutSection)initWithLayoutGroup:(id)group;
- (NSDictionary)supplementaryItemsDict;
- (NSDirectionalEdgeInsets)contentInsets;
- (UICollectionLayoutSectionOrthogonalScrollingProperties)orthogonalScrollingProperties;
- (id)_auxillaryItemForElementKind:(id)kind category:(unint64_t)category;
- (id)_backgroundDecorationViewsRequiringCustomViewClassRegistration;
- (id)_descriptionProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decorationItemsDict;
- (id)description;
- (id)pinnedBoundarySupplementaryItemIndexes;
- (void)_checkForDuplicateSupplementaryItemKindsAndThrowIfFound;
- (void)setBoundarySupplementaryItems:(NSArray *)boundarySupplementaryItems;
- (void)setDecorationItems:(NSArray *)decorationItems;
- (void)setSupplementariesFollowContentInsets:(BOOL)supplementariesFollowContentInsets;
@end

@implementation NSCollectionLayoutSection

- (NSDirectionalEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  leading = self->_contentInsets.leading;
  bottom = self->_contentInsets.bottom;
  trailing = self->_contentInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CVCDirectionalEdgeInsets)_minimumContentInsetsReferenceInsets
{
  top = self->__minimumContentInsetsReferenceInsets.top;
  leading = self->__minimumContentInsetsReferenceInsets.leading;
  bottom = self->__minimumContentInsetsReferenceInsets.bottom;
  trailing = self->__minimumContentInsetsReferenceInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (id)_backgroundDecorationViewsRequiringCustomViewClassRegistration
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_hasBackgroundDecorationItem)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    decorationItems = [(NSCollectionLayoutSection *)self decorationItems];
    v5 = [decorationItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(decorationItems);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isBackgroundDecoration] && objc_msgSend(v9, "_registrationViewClass"))
          {
            [v3 addObject:v9];
          }
        }

        v6 = [decorationItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)_checkForDuplicateSupplementaryItemKindsAndThrowIfFound
{
  if (!self->_isEmptySection)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy_;
    v32 = __Block_byref_object_dispose_;
    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__NSCollectionLayoutSection__checkForDuplicateSupplementaryItemKindsAndThrowIfFound__block_invoke;
    v21[3] = &unk_278DE5708;
    v21[4] = self;
    v21[5] = &v28;
    v21[6] = &v22;
    v21[7] = a2;
    v4 = MEMORY[0x245D4B4A0](v21);
    group = [(NSCollectionLayoutSection *)self group];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__NSCollectionLayoutSection__checkForDuplicateSupplementaryItemKindsAndThrowIfFound__block_invoke_2;
    v19[3] = &unk_278DE56B8;
    v6 = v4;
    v20 = v6;
    [group _enumerateItemsWithHandler:v19];

    boundarySupplementaryItems = [(NSCollectionLayoutSection *)self boundarySupplementaryItems];
    (*(v6 + 2))(v6, boundarySupplementaryItems);

    v8 = [v23[5] count];
    if (v8 != [v29[5] count])
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = v29[5];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __84__NSCollectionLayoutSection__checkForDuplicateSupplementaryItemKindsAndThrowIfFound__block_invoke_3;
      v16 = &unk_278DE5730;
      v18 = &v22;
      v11 = v9;
      v17 = v11;
      [v10 enumerateObjectsUsingBlock:&v13];
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:1408 description:{@"Error: Every supplementary must have a unique elementKind: duplicates detected: %@", v11, v13, v14, v15, v16}];
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }
}

void __84__NSCollectionLayoutSection__checkForDuplicateSupplementaryItemKindsAndThrowIfFound__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 supplementaryItems];
  (*(v2 + 16))(v2, v3);
}

void __84__NSCollectionLayoutSection__checkForDuplicateSupplementaryItemKindsAndThrowIfFound__block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) elementKind];
        if (!v8)
        {
          v9 = [MEMORY[0x277CCA890] currentHandler];
          [v9 handleFailureInMethod:a1[7] object:a1[4] file:@"NSCollectionLayoutItem.m" lineNumber:1380 description:@"Error: no elementKind for supplementary. Please file a bug on UICollectionView as this should not be possible."];
        }

        [*(*(a1[5] + 8) + 40) addObject:v8];
        [*(*(a1[6] + 8) + 40) addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (CVCDirectionalEdgeInsets)_clippingInsets
{
  top = self->__clippingInsets.top;
  leading = self->__clippingInsets.leading;
  bottom = self->__clippingInsets.bottom;
  trailing = self->__clippingInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (id)pinnedBoundarySupplementaryItemIndexes
{
  p_pinnedBoundarySupplementaryItemIndexes = &self->_pinnedBoundarySupplementaryItemIndexes;
  pinnedBoundarySupplementaryItemIndexes = self->_pinnedBoundarySupplementaryItemIndexes;
  if (!pinnedBoundarySupplementaryItemIndexes)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
    boundarySupplementaryItems = [(NSCollectionLayoutSection *)self boundarySupplementaryItems];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__NSCollectionLayoutSection_pinnedBoundarySupplementaryItemIndexes__block_invoke;
    v7[3] = &unk_278DE56E0;
    v7[4] = &v8;
    [boundarySupplementaryItems enumerateObjectsUsingBlock:v7];

    objc_storeStrong(p_pinnedBoundarySupplementaryItemIndexes, v9[5]);
    _Block_object_dispose(&v8, 8);

    pinnedBoundarySupplementaryItemIndexes = *p_pinnedBoundarySupplementaryItemIndexes;
  }

  return pinnedBoundarySupplementaryItemIndexes;
}

- (BOOL)_hasVisibleItemsHandler
{
  visibleItemsInvalidationHandler = [(NSCollectionLayoutSection *)self visibleItemsInvalidationHandler];
  v3 = visibleItemsInvalidationHandler != 0;

  return v3;
}

- (BOOL)_containsEstimatedSizeElement
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_isEmptySection)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_boundarySupplementaryItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) size];
        isEstimated = [v9 isEstimated];

        if (isEstimated)
        {

          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return [(NSCollectionLayoutItem *)self->_group containsEstimatedSizeItem];
}

- (id)decorationItemsDict
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_isEmptySection)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    decorationItemsDict = self->_decorationItemsDict;
    if (!decorationItemsDict)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      decorationItems = [(NSCollectionLayoutSection *)self decorationItems];
      v7 = [decorationItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(decorationItems);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            elementKind = [v11 elementKind];
            [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:elementKind];
          }

          v8 = [decorationItems countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      v13 = self->_decorationItemsDict;
      self->_decorationItemsDict = v5;

      decorationItemsDict = self->_decorationItemsDict;
    }

    v2 = decorationItemsDict;
  }

  return v2;
}

uint64_t __67__NSCollectionLayoutSection_pinnedBoundarySupplementaryItemIndexes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 pinToVisibleBounds];
  if (result)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

- (UICollectionLayoutSectionOrthogonalScrollingProperties)orthogonalScrollingProperties
{
  orthogonalScrollingProperties = self->_orthogonalScrollingProperties;
  if (!orthogonalScrollingProperties)
  {
    v4 = objc_alloc_init(UICollectionLayoutSectionOrthogonalScrollingProperties);
    v5 = self->_orthogonalScrollingProperties;
    self->_orthogonalScrollingProperties = v4;

    orthogonalScrollingProperties = self->_orthogonalScrollingProperties;
  }

  return orthogonalScrollingProperties;
}

- (CVCDirectionalEdgeInsets)_minimumSupplementaryContentInsetsReferenceInsets
{
  top = self->__minimumSupplementaryContentInsetsReferenceInsets.top;
  leading = self->__minimumSupplementaryContentInsetsReferenceInsets.leading;
  bottom = self->__minimumSupplementaryContentInsetsReferenceInsets.bottom;
  trailing = self->__minimumSupplementaryContentInsetsReferenceInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSCollectionLayoutSection)initWithGroup:(id)group contentInsets:(CVCDirectionalEdgeInsets)insets contentInsetsReference:(int64_t)reference supplementaryItems:(id)items boundarySupplementaryItems:(id)supplementaryItems pinnedSupplementaryItemIndexes:(id)indexes interGroupSpacing:(double)spacing visibleItemsInvalidationHandler:(id)self0 supplementariesFollowInsets:(BOOL)self1 decorationItems:(id)self2 orthogonalScrollingBehavior:(int64_t)self3 isEmptySection:(BOOL)self4 prefersListSolver:(BOOL)self5
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  groupCopy = group;
  itemsCopy = items;
  supplementaryItemsCopy = supplementaryItems;
  indexesCopy = indexes;
  handlerCopy = handler;
  decorationItemsCopy = decorationItems;
  if (!groupCopy && !section)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"group"}];
  }

  v49.receiver = self;
  v49.super_class = NSCollectionLayoutSection;
  v33 = [(NSCollectionLayoutSection *)&v49 init];
  if (v33)
  {
    v34 = [groupCopy copy];
    group = v33->_group;
    v33->_group = v34;

    v33->_contentInsets.top = top;
    v33->_contentInsets.leading = leading;
    v33->_contentInsets.bottom = bottom;
    v33->_contentInsets.trailing = trailing;
    v33->_contentInsetsReference = reference;
    v36 = [itemsCopy copy];
    supplementaryItems = v33->_supplementaryItems;
    v33->_supplementaryItems = v36;

    v38 = [supplementaryItemsCopy copy];
    boundarySupplementaryItems = v33->_boundarySupplementaryItems;
    v33->_boundarySupplementaryItems = v38;

    v40 = [indexesCopy copy];
    pinnedSupplementaryItemIndexes = v33->_pinnedSupplementaryItemIndexes;
    v33->_pinnedSupplementaryItemIndexes = v40;

    v33->_interGroupSpacing = spacing;
    v42 = [handlerCopy copy];
    visibleItemsInvalidationHandler = v33->_visibleItemsInvalidationHandler;
    v33->_visibleItemsInvalidationHandler = v42;

    v33->_supplementariesFollowContentInsets = followInsets;
    pinnedBoundarySupplementaryItemIndexes = v33->_pinnedBoundarySupplementaryItemIndexes;
    v33->_pinnedBoundarySupplementaryItemIndexes = 0;

    v45 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:decorationItemsCopy copyItems:1];
    decorationItems = v33->_decorationItems;
    v33->_decorationItems = v45;

    v33->_hasBackgroundDecorationItem = [(NSCollectionLayoutSection *)v33 _containsBackgroundDecorationItem:v33->_decorationItems];
    v33->_orthogonalScrollingBehavior = behavior;
    v33->_isEmptySection = section;
    v33->_prefersListSolver = solver;
  }

  return v33;
}

- (NSCollectionLayoutSection)initWithLayoutGroup:(id)group
{
  v4 = MEMORY[0x277CCAA78];
  groupCopy = group;
  indexSet = [v4 indexSet];
  LOWORD(v10) = 0;
  LOBYTE(v9) = 1;
  v7 = [(NSCollectionLayoutSection *)self initWithGroup:groupCopy contentInsets:0 contentInsetsReference:MEMORY[0x277CBEBF8] supplementaryItems:MEMORY[0x277CBEBF8] boundarySupplementaryItems:indexSet pinnedSupplementaryItemIndexes:0 interGroupSpacing:0.0 visibleItemsInvalidationHandler:0.0 supplementariesFollowInsets:0.0 decorationItems:0.0 orthogonalScrollingBehavior:0.0 isEmptySection:v9 prefersListSolver:0, 0, v10];

  return v7;
}

+ (NSCollectionLayoutSection)sectionWithGroup:(NSCollectionLayoutGroup *)group
{
  v4 = group;
  v5 = [[self alloc] initWithLayoutGroup:v4];

  return v5;
}

- (void)setBoundarySupplementaryItems:(NSArray *)boundarySupplementaryItems
{
  v4 = [(NSArray *)boundarySupplementaryItems copy];
  v5 = self->_boundarySupplementaryItems;
  self->_boundarySupplementaryItems = v4;

  pinnedBoundarySupplementaryItemIndexes = self->_pinnedBoundarySupplementaryItemIndexes;
  self->_pinnedBoundarySupplementaryItemIndexes = 0;
}

- (void)setDecorationItems:(NSArray *)decorationItems
{
  v4 = MEMORY[0x277CBEA60];
  v5 = decorationItems;
  v6 = [[v4 alloc] initWithArray:v5 copyItems:1];

  v7 = self->_decorationItems;
  self->_decorationItems = v6;

  self->_hasBackgroundDecorationItem = [(NSCollectionLayoutSection *)self _containsBackgroundDecorationItem:self->_decorationItems];
}

- (void)setSupplementariesFollowContentInsets:(BOOL)supplementariesFollowContentInsets
{
  if (supplementariesFollowContentInsets && [(NSCollectionLayoutSection *)self supplementaryContentInsetsReference])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:1072 description:@"Mixing supplementariesFollowContentInsets and supplementaryContentInsetsReference is not supported. Please use supplementaryContentInsetsReference and the contentInsets property on the boundary supplementary item to get the desired behavior."];
  }

  self->_supplementariesFollowContentInsets = supplementariesFollowContentInsets;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  isEmptySection = self->_isEmptySection;
  if (isEmptySection != [(NSCollectionLayoutSection *)equalCopy _isEmptySection])
  {
    goto LABEL_17;
  }

  if (self->_isEmptySection && [(NSCollectionLayoutSection *)equalCopy _isEmptySection])
  {
LABEL_6:
    v6 = 1;
    goto LABEL_18;
  }

  prefersListSolver = self->_prefersListSolver;
  if (prefersListSolver != [(NSCollectionLayoutSection *)equalCopy prefersListSolver]|| (v8 = [(NSCollectionLayoutSection *)self supplementariesFollowContentInsets], v8 != [(NSCollectionLayoutSection *)equalCopy supplementariesFollowContentInsets]) || (v9 = [(NSCollectionLayoutSection *)self supplementaryContentInsetsReference], v9 != [(NSCollectionLayoutSection *)equalCopy supplementaryContentInsetsReference]) || (v10 = [(NSCollectionLayoutSection *)self orthogonalScrollingBehavior], v10 != [(NSCollectionLayoutSection *)equalCopy orthogonalScrollingBehavior]) || (v11 = [(NSCollectionLayoutSection *)self contentInsetsReference], v11 != [(NSCollectionLayoutSection *)equalCopy contentInsetsReference]) || (v12 = [(NSCollectionLayoutSection *)self _clipsContentToBounds], v12 != [(NSCollectionLayoutSection *)equalCopy _clipsContentToBounds]) || (v13 = [(NSCollectionLayoutSection *)self _excludesBoundarySupplementariesFromClipping], v13 != [(NSCollectionLayoutSection *)equalCopy _excludesBoundarySupplementariesFromClipping]) || (v14 = [(NSCollectionLayoutSection *)self _clipsBackgroundDecorationsToContent], v14 != [(NSCollectionLayoutSection *)equalCopy _clipsBackgroundDecorationsToContent]) || ([(NSCollectionLayoutSection *)self interGroupSpacing], v16 = v15, [(NSCollectionLayoutSection *)equalCopy interGroupSpacing], vabdd_f64(v16, v17) > 0.0001) || ([(NSCollectionLayoutSection *)self visibleItemsInvalidationHandler], v18 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutSection *)equalCopy visibleItemsInvalidationHandler], v19 = objc_claimAutoreleasedReturnValue(), v20 = (v18 == 0) ^ (v19 == 0), v19, v18, (v20 & 1) != 0))
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  [(NSCollectionLayoutSection *)self contentInsets];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(NSCollectionLayoutSection *)equalCopy contentInsets];
  v6 = 0;
  if (v25 == v33 && v23 == v30 && v29 == v32 && v27 == v31)
  {
    [(NSCollectionLayoutSection *)self _cornerRadius];
    v35 = v34;
    [(NSCollectionLayoutSection *)equalCopy _cornerRadius];
    if (vabdd_f64(v35, v36) > 0.0001)
    {
      goto LABEL_17;
    }

    [(NSCollectionLayoutSection *)self _preBoundaryPadding];
    v38 = v37;
    [(NSCollectionLayoutSection *)equalCopy _preBoundaryPadding];
    if (vabdd_f64(v38, v39) > 0.0001)
    {
      goto LABEL_17;
    }

    [(NSCollectionLayoutSection *)self _postBoundaryPadding];
    v41 = v40;
    [(NSCollectionLayoutSection *)equalCopy _postBoundaryPadding];
    if (vabdd_f64(v41, v42) > 0.0001)
    {
      goto LABEL_17;
    }

    [(NSCollectionLayoutSection *)self _clippingInsets];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [(NSCollectionLayoutSection *)equalCopy _clippingInsets];
    v6 = 0;
    if (v46 == v54 && v44 == v51 && v50 == v53 && v48 == v52)
    {
      [(NSCollectionLayoutSection *)self _minimumContentInsetsReferenceInsets];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      [(NSCollectionLayoutSection *)equalCopy _minimumContentInsetsReferenceInsets];
      v6 = 0;
      if (v58 == v66 && v56 == v63 && v62 == v65 && v60 == v64)
      {
        [(NSCollectionLayoutSection *)self _minimumSupplementaryContentInsetsReferenceInsets];
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v74 = v73;
        [(NSCollectionLayoutSection *)equalCopy _minimumSupplementaryContentInsetsReferenceInsets];
        v6 = 0;
        if (v70 == v78 && v68 == v75 && v74 == v77 && v72 == v76)
        {
          decorationItems = [(NSCollectionLayoutSection *)self decorationItems];
          decorationItems2 = [(NSCollectionLayoutSection *)equalCopy decorationItems];
          v81 = __objectEqual(decorationItems, decorationItems2);

          if (!v81)
          {
            goto LABEL_17;
          }

          pinnedBoundarySupplementaryItemIndexes = [(NSCollectionLayoutSection *)self pinnedBoundarySupplementaryItemIndexes];
          pinnedBoundarySupplementaryItemIndexes2 = [(NSCollectionLayoutSection *)equalCopy pinnedBoundarySupplementaryItemIndexes];
          if ((pinnedBoundarySupplementaryItemIndexes == 0) != (pinnedBoundarySupplementaryItemIndexes2 == 0))
          {
            v6 = 0;
LABEL_41:

            goto LABEL_18;
          }

          pinnedBoundarySupplementaryItemIndexes3 = [(NSCollectionLayoutSection *)self pinnedBoundarySupplementaryItemIndexes];
          if (pinnedBoundarySupplementaryItemIndexes3)
          {
            v85 = pinnedBoundarySupplementaryItemIndexes3;
            pinnedBoundarySupplementaryItemIndexes4 = [(NSCollectionLayoutSection *)self pinnedBoundarySupplementaryItemIndexes];
            pinnedBoundarySupplementaryItemIndexes5 = [(NSCollectionLayoutSection *)equalCopy pinnedBoundarySupplementaryItemIndexes];
            v88 = [pinnedBoundarySupplementaryItemIndexes4 isEqualToIndexSet:pinnedBoundarySupplementaryItemIndexes5];

            if (!v88)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }

          supplementaryItems = [(NSCollectionLayoutSection *)self supplementaryItems];
          supplementaryItems2 = [(NSCollectionLayoutSection *)equalCopy supplementaryItems];
          v91 = __objectEqual(supplementaryItems, supplementaryItems2);

          if (!v91)
          {
            goto LABEL_17;
          }

          boundarySupplementaryItems = [(NSCollectionLayoutSection *)self boundarySupplementaryItems];
          boundarySupplementaryItems2 = [(NSCollectionLayoutSection *)equalCopy boundarySupplementaryItems];
          v94 = __objectEqual(boundarySupplementaryItems, boundarySupplementaryItems2);

          if (!v94)
          {
            goto LABEL_17;
          }

          _orthogonalScrollingProperties = [(NSCollectionLayoutSection *)self _orthogonalScrollingProperties];
          if (_orthogonalScrollingProperties)
          {
          }

          else
          {
            _orthogonalScrollingProperties2 = [(NSCollectionLayoutSection *)equalCopy _orthogonalScrollingProperties];

            if (!_orthogonalScrollingProperties2)
            {
LABEL_52:
              pinnedBoundarySupplementaryItemIndexes = [(NSCollectionLayoutSection *)self group];
              pinnedBoundarySupplementaryItemIndexes2 = [(NSCollectionLayoutSection *)equalCopy group];
              v6 = [pinnedBoundarySupplementaryItemIndexes isEqual:pinnedBoundarySupplementaryItemIndexes2];
              goto LABEL_41;
            }
          }

          orthogonalScrollingProperties = [(NSCollectionLayoutSection *)self orthogonalScrollingProperties];
          orthogonalScrollingProperties2 = [(NSCollectionLayoutSection *)equalCopy orthogonalScrollingProperties];
          v99 = [orthogonalScrollingProperties isEqual:orthogonalScrollingProperties2];

          if (!v99)
          {
            goto LABEL_17;
          }

          goto LABEL_52;
        }
      }
    }
  }

LABEL_18:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = [objc_opt_class() allocWithZone:zone];
  group = [(NSCollectionLayoutSection *)self group];
  [(NSCollectionLayoutSection *)self contentInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  contentInsetsReference = [(NSCollectionLayoutSection *)self contentInsetsReference];
  supplementaryItems = [(NSCollectionLayoutSection *)self supplementaryItems];
  boundarySupplementaryItems = [(NSCollectionLayoutSection *)self boundarySupplementaryItems];
  pinnedSupplementaryItemIndexes = [(NSCollectionLayoutSection *)self pinnedSupplementaryItemIndexes];
  [(NSCollectionLayoutSection *)self interGroupSpacing];
  v17 = v16;
  visibleItemsInvalidationHandler = [(NSCollectionLayoutSection *)self visibleItemsInvalidationHandler];
  supplementariesFollowContentInsets = [(NSCollectionLayoutSection *)self supplementariesFollowContentInsets];
  decorationItems = [(NSCollectionLayoutSection *)self decorationItems];
  orthogonalScrollingBehavior = [(NSCollectionLayoutSection *)self orthogonalScrollingBehavior];
  _isEmptySection = [(NSCollectionLayoutSection *)self _isEmptySection];
  BYTE1(v31) = [(NSCollectionLayoutSection *)self prefersListSolver];
  LOBYTE(v31) = _isEmptySection;
  LOBYTE(v30) = supplementariesFollowContentInsets;
  v23 = [v33 initWithGroup:group contentInsets:contentInsetsReference contentInsetsReference:supplementaryItems supplementaryItems:boundarySupplementaryItems boundarySupplementaryItems:pinnedSupplementaryItemIndexes pinnedSupplementaryItemIndexes:visibleItemsInvalidationHandler interGroupSpacing:v6 visibleItemsInvalidationHandler:v8 supplementariesFollowInsets:v10 decorationItems:v12 orthogonalScrollingBehavior:v17 isEmptySection:v30 prefersListSolver:{decorationItems, orthogonalScrollingBehavior, v31}];

  v24 = [(UICollectionLayoutSectionOrthogonalScrollingProperties *)self->_orthogonalScrollingProperties copy];
  v25 = *(v23 + 48);
  *(v23 + 48) = v24;

  *(v23 + 160) = self->__cornerRadius;
  *(v23 + 57) = self->__clipsContentToBounds;
  *(v23 + 58) = self->__excludesBoundarySupplementariesFromClipping;
  *(v23 + 59) = self->__clipsBackgroundDecorationsToContent;
  v26 = *&self->__clippingInsets.bottom;
  *(v23 + 296) = *&self->__clippingInsets.top;
  *(v23 + 312) = v26;
  *(v23 + 168) = self->__preBoundaryPadding;
  *(v23 + 176) = self->__postBoundaryPadding;
  *(v23 + 80) = self->_supplementaryContentInsetsReference;
  v27 = *&self->__minimumContentInsetsReferenceInsets.top;
  *(v23 + 248) = *&self->__minimumContentInsetsReferenceInsets.bottom;
  *(v23 + 232) = v27;
  v28 = *&self->__minimumSupplementaryContentInsetsReferenceInsets.bottom;
  *(v23 + 264) = *&self->__minimumSupplementaryContentInsetsReferenceInsets.top;
  *(v23 + 280) = v28;
  return v23;
}

- (id)_descriptionProperties
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"group = <%@: %p>", v6, self->_group];
  [v3 addObject:v7];

  v8 = *&self->_contentInsets.top;
  v9 = *&self->_contentInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v8), vceqzq_f64(v9))))))
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, *&v8.f64[0], 17, *&v8.f64[1], 17, *&v9.f64[0], 17, *&v9.f64[1]);
    v12 = [v10 stringWithFormat:@"contentInsets = %@", v11];
    [v3 addObject:v12];
  }

  contentInsetsReference = self->_contentInsetsReference;
  if (contentInsetsReference)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = _CVCContentInsetsReferenceDescription(contentInsetsReference);
    v16 = [v14 stringWithFormat:@"contentInsetsReference = %@", v15];
    [v3 addObject:v16];
  }

  supplementaryContentInsetsReference = self->_supplementaryContentInsetsReference;
  if (supplementaryContentInsetsReference)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = _CVCContentInsetsReferenceDescription(supplementaryContentInsetsReference);
    v20 = [v18 stringWithFormat:@"supplementaryContentInsetsReference = %@", v19];
    [v3 addObject:v20];
  }

  else if (!self->_supplementariesFollowContentInsets)
  {
    [v3 addObject:@"supplementariesFollowContentInsets = NO"];
  }

  if (self->_interGroupSpacing != 0.0)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"interGroupSpacing = %g", *&self->_interGroupSpacing];
    [v3 addObject:v21];
  }

  orthogonalScrollingBehavior = self->_orthogonalScrollingBehavior;
  if (orthogonalScrollingBehavior)
  {
    v23 = MEMORY[0x277CCACA8];
    if (orthogonalScrollingBehavior >= 6)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown value: %ld)", self->_orthogonalScrollingBehavior];
    }

    else
    {
      v24 = off_278DE57D0[orthogonalScrollingBehavior - 1];
    }

    v25 = [v23 stringWithFormat:@"orthogonalScrollingBehavior = %@", v24];
    [v3 addObject:v25];

    if (self->_orthogonalScrollingProperties)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"orthogonalScrollingProperties = %@", self->_orthogonalScrollingProperties];
      [v3 addObject:v26];
    }
  }

  if ([(NSArray *)self->_boundarySupplementaryItems count])
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"boundarySupplementaryItems = <%p>", self->_boundarySupplementaryItems];
    [v3 addObject:v27];
  }

  if ([(NSArray *)self->_decorationItems count])
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"decorationItems = <%p>", self->_decorationItems];
    [v3 addObject:v28];
  }

  return v3;
}

- (id)description
{
  _descriptionProperties = [(NSCollectionLayoutSection *)self _descriptionProperties];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [_descriptionProperties componentsJoinedByString:@" "];;
  v8 = [v4 stringWithFormat:@"<%@: %p %@>", v6, self, v7];;

  return v8;
}

+ (id)_emptySection
{
  v2 = [self alloc];
  v3 = objc_alloc_init(MEMORY[0x277CCAA78]);
  LOWORD(v7) = 1;
  LOBYTE(v6) = 0;
  v4 = [v2 initWithGroup:0 contentInsets:0 contentInsetsReference:MEMORY[0x277CBEBF8] supplementaryItems:MEMORY[0x277CBEBF8] boundarySupplementaryItems:v3 pinnedSupplementaryItemIndexes:0 interGroupSpacing:0.0 visibleItemsInvalidationHandler:0.0 supplementariesFollowInsets:0.0 decorationItems:0.0 orthogonalScrollingBehavior:0.0 isEmptySection:v6 prefersListSolver:{MEMORY[0x277CBEBF8], 0, v7}];

  return v4;
}

- (BOOL)_containsBackgroundDecorationItem:(id)item
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  itemCopy = item;
  v4 = [itemCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(itemCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) isBackgroundDecoration])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [itemCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

void __84__NSCollectionLayoutSection__checkForDuplicateSupplementaryItemKindsAndThrowIfFound__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 40) + 8) + 40) removeObjectAtIndex:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "indexOfObject:", v3)}];
  if ([*(*(*(a1 + 40) + 8) + 40) indexOfObject:v3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_auxillaryItemForElementKind:(id)kind category:(unint64_t)category
{
  kindCopy = kind;
  v7 = kindCopy;
  v8 = 0;
  if (category && !self->_isEmptySection)
  {
    if ([kindCopy length])
    {
      if (category == 1)
      {
        supplementaryItemsDict = [(NSCollectionLayoutSection *)self supplementaryItemsDict];
        goto LABEL_9;
      }

      if (category == 2)
      {
        supplementaryItemsDict = [(NSCollectionLayoutSection *)self decorationItemsDict];
LABEL_9:
        v10 = supplementaryItemsDict;
        v8 = [supplementaryItemsDict objectForKeyedSubscript:v7];

        goto LABEL_10;
      }
    }

    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (NSDictionary)supplementaryItemsDict
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_isEmptySection)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    supplementaryItemsDict = self->_supplementaryItemsDict;
    if (!supplementaryItemsDict)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      supplementaryItems = [(NSCollectionLayoutSection *)self supplementaryItems];
      v7 = [supplementaryItems countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v27;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v27 != v9)
            {
              objc_enumerationMutation(supplementaryItems);
            }

            v11 = *(*(&v26 + 1) + 8 * i);
            elementKind = [v11 elementKind];
            [(NSDictionary *)v5 setObject:v11 forKeyedSubscript:elementKind];
          }

          v8 = [supplementaryItems countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v8);
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      boundarySupplementaryItems = [(NSCollectionLayoutSection *)self boundarySupplementaryItems];
      v14 = [boundarySupplementaryItems countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(boundarySupplementaryItems);
            }

            v18 = *(*(&v22 + 1) + 8 * j);
            elementKind2 = [v18 elementKind];
            [(NSDictionary *)v5 setObject:v18 forKeyedSubscript:elementKind2];
          }

          v15 = [boundarySupplementaryItems countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v15);
      }

      v20 = self->_supplementaryItemsDict;
      self->_supplementaryItemsDict = v5;

      supplementaryItemsDict = self->_supplementaryItemsDict;
    }

    v2 = supplementaryItemsDict;
  }

  return v2;
}

- (BOOL)_isListSolverCompatibleForLayoutAxis:(unint64_t)axis
{
  if (!self->_prefersListSolver)
  {
    return 0;
  }

  scrollsOrthogonally = [(NSCollectionLayoutSection *)self scrollsOrthogonally];
  group = [(NSCollectionLayoutSection *)self group];
  LOBYTE(axis) = [group _isListSolverCompatibleForLayoutAxis:axis];

  return !scrollsOrthogonally & axis;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end