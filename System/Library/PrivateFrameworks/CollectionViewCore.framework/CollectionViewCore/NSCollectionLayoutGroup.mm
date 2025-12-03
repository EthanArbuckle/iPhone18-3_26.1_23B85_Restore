@interface NSCollectionLayoutGroup
+ (NSCollectionLayoutGroup)customGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize itemProvider:(NSCollectionLayoutGroupCustomItemProvider)itemProvider;
+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize repeatingSubitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems;
+ (NSCollectionLayoutGroup)layoutGroupWithSize:(id)size visualFormats:(id)formats itemProvider:(id)provider;
+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize repeatingSubitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems;
+ (id)_effectiveCopiedSubitemsForSubitems:(id)subitems count:(int64_t)count layoutDirection:(int64_t)direction;
+ (id)_effectiveSizeForSize:(id)size count:(int64_t)count layoutDirection:(int64_t)direction;
+ (id)horizontalGroupWithSize:(id)size subitemsProvider:(id)provider;
+ (id)verticalGroupWithSize:(id)size subitemsProvider:(id)provider;
- (BOOL)_hasDecorationItemRequiringRegistration;
- (BOOL)_isListSolverCompatibleForLayoutAxis:(unint64_t)axis;
- (BOOL)hasItemProvider;
- (BOOL)hasVisualFormat;
- (BOOL)isCustomGroup;
- (BOOL)isEqual:(id)equal;
- (NSCollectionLayoutGroup)initWithSize:(id)size subitems:(id)subitems count:(int64_t)count interItemSpacing:(id)spacing contentInsets:(CVCDirectionalEdgeInsets)insets edgeSpacing:(id)edgeSpacing layoutDirection:(int64_t)direction supplementaryItems:(id)self0 customGroupItemProvider:(id)self1 name:(id)self2 identifier:(id)self3;
- (NSCollectionLayoutGroup)initWithSize:(id)size subitems:(id)subitems count:(int64_t)count interItemSpacing:(id)spacing contentInsets:(CVCDirectionalEdgeInsets)insets edgeSpacing:(id)edgeSpacing layoutDirection:(int64_t)direction supplementaryItems:(id)self0 visualFormats:(id)self1 itemsProvider:(id)self2 visualFormatItemProvider:(id)self3 customGroupItemProvider:(id)self4 options:(int64_t)self5 name:(id)self6 identifier:(id)self7;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)layoutAxis;
@end

@implementation NSCollectionLayoutGroup

- (BOOL)isCustomGroup
{
  customGroupItemProvider = [(NSCollectionLayoutGroup *)self customGroupItemProvider];
  v3 = customGroupItemProvider != 0;

  return v3;
}

- (BOOL)_hasDecorationItemRequiringRegistration
{
  if (!self->_hasCheckedIfDecorationItemRequiresRegistration)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __66__NSCollectionLayoutGroup__hasDecorationItemRequiringRegistration__block_invoke;
    v4[3] = &unk_278DE5640;
    v4[4] = self;
    [(NSCollectionLayoutItem *)self _enumerateItemsWithHandler:v4];
    self->_hasCheckedIfDecorationItemRequiresRegistration = 1;
  }

  return self->__hasDecorationItemRequiringRegistration;
}

void __66__NSCollectionLayoutGroup__hasDecorationItemRequiringRegistration__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a2 decorationItems];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * v9) _registrationViewClass])
        {
          *(*(a1 + 32) + 97) = 1;
          *a3 = 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_externalDescription
{
  v25 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = NSCollectionLayoutGroup;
  _externalDescription = [(NSCollectionLayoutItem *)&v23 _externalDescription];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  v4 = self->_subitems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        _externalDescription2 = [*(*(&v19 + 1) + 8 * i) _externalDescription];
        v10 = [_externalDescription2 stringByReplacingOccurrencesOfString:@"\n\t" withString:@"\n\t\t"];

        [v3 appendFormat:@"\n\t\t %@", v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  if (selfCopy->_customGroupItemProvider)
  {
    v11 = MEMORY[0x245D4B4A0]();
    [v3 appendFormat:@"\n\t customGroupItemProvider: %@", v11];
  }

  layoutDirection = selfCopy->_layoutDirection;
  if (layoutDirection > 2)
  {
    v13 = &stru_2856CCCD0;
  }

  else
  {
    v13 = off_278DE57B8[layoutDirection];
  }

  _externalDescription3 = [(NSCollectionLayoutSpacing *)selfCopy->_interItemSpacing _externalDescription];
  v15 = [_externalDescription stringByAppendingFormat:@"\n\t layoutDirection: %@\n\t interItemSpacing=%@\n\t subitems=%@", v13, _externalDescription3, v3];

  return v15;
}

- (NSCollectionLayoutGroup)initWithSize:(id)size subitems:(id)subitems count:(int64_t)count interItemSpacing:(id)spacing contentInsets:(CVCDirectionalEdgeInsets)insets edgeSpacing:(id)edgeSpacing layoutDirection:(int64_t)direction supplementaryItems:(id)self0 customGroupItemProvider:(id)self1 name:(id)self2 identifier:(id)self3
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  sizeCopy = size;
  subitemsCopy = subitems;
  spacingCopy = spacing;
  edgeSpacingCopy = edgeSpacing;
  itemsCopy = items;
  providerCopy = provider;
  nameCopy = name;
  identifierCopy = identifier;
  if (sizeCopy)
  {
    if (providerCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:483 description:@"A size is required."];

    if (providerCopy)
    {
      goto LABEL_8;
    }
  }

  if (![subitemsCopy count])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:486 description:@"At least 1 subitem is required for a group"];
  }

  if (count >= 1 && [subitemsCopy count] != 1)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(subitemsCopy, "count")}];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:489 description:{@"A single item is required for a repeating item group, %@ were supplied", v38}];
  }

LABEL_8:
  v44.receiver = self;
  v44.super_class = NSCollectionLayoutGroup;
  trailing = [(NSCollectionLayoutItem *)&v44 initWithSize:sizeCopy contentInsets:edgeSpacingCopy edgeSpacing:itemsCopy supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:nameCopy name:identifierCopy identifier:top, leading, bottom, trailing];
  if (trailing)
  {
    v31 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:subitemsCopy copyItems:1];
    subitems = trailing->_subitems;
    trailing->_subitems = v31;

    trailing->_count = count;
    v33 = [spacingCopy copy];
    interItemSpacing = trailing->_interItemSpacing;
    trailing->_interItemSpacing = v33;

    trailing->_layoutDirection = direction;
    v35 = [providerCopy copy];
    customGroupItemProvider = trailing->_customGroupItemProvider;
    trailing->_customGroupItemProvider = v35;
  }

  return trailing;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = NSCollectionLayoutGroup;
  v16 = [(NSCollectionLayoutItem *)&v21 description];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v4 = self->_subitems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) description];
        v10 = [v9 stringByReplacingOccurrencesOfString:@"\n\t" withString:@"\n\t\t"];

        [v3 appendFormat:@"\n\t\t %@", v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  layoutDirection = selfCopy->_layoutDirection;
  if (layoutDirection > 2)
  {
    v12 = &stru_2856CCCD0;
  }

  else
  {
    v12 = off_278DE57B8[layoutDirection];
  }

  v13 = [v16 stringByAppendingFormat:@"\n\t group: subitems=%@\n\t interItemSpacing=%@\n\t layoutDirection=%@>", v3, selfCopy->_interItemSpacing, v12];;

  return v13;
}

+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize repeatingSubitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = layoutSize;
  v10 = subitem;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:531 description:{@"Invalid parameter not satisfying: %@", @"layoutSize != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"subitem != nil"}];

LABEL_3:
  if (count <= 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:533 description:@"A repeating horizontal group should specify a count >= 1"];
  }

  v12 = [self alloc];
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = [v12 initWithSize:v9 subitems:v13 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:2 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, uUID}];

  return v17;
}

+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems
{
  v6 = subitems;
  v7 = layoutSize;
  v8 = [self alloc];
  v9 = +[NSCollectionLayoutSpacing defaultSpacing];
  v10 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = [v8 initWithSize:v7 subitems:v6 count:0 interItemSpacing:v9 contentInsets:v10 edgeSpacing:2 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, uUID}];

  return v12;
}

+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize repeatingSubitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = layoutSize;
  v10 = subitem;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:563 description:{@"Invalid parameter not satisfying: %@", @"layoutSize != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"subitem != nil"}];

LABEL_3:
  if (count <= 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:565 description:@"A repeating vertical group should specify a count >= 1"];
  }

  v12 = [self alloc];
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = [v12 initWithSize:v9 subitems:v13 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:1 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, uUID}];

  return v17;
}

+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems
{
  v6 = subitems;
  v7 = layoutSize;
  v8 = [self alloc];
  v9 = +[NSCollectionLayoutSpacing defaultSpacing];
  v10 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = [v8 initWithSize:v7 subitems:v6 count:0 interItemSpacing:v9 contentInsets:v10 edgeSpacing:1 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, uUID}];

  return v12;
}

+ (NSCollectionLayoutGroup)customGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize itemProvider:(NSCollectionLayoutGroupCustomItemProvider)itemProvider
{
  v6 = itemProvider;
  v7 = layoutSize;
  v8 = [self alloc];
  v9 = +[NSCollectionLayoutSpacing defaultSpacing];
  v10 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = [v8 initWithSize:v7 subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:v6 supplementaryItems:0 customGroupItemProvider:uUID name:? identifier:?];

  return v12;
}

- (unint64_t)layoutAxis
{
  if ([(NSCollectionLayoutGroup *)self isVerticalGroup])
  {
    return 2;
  }

  else
  {
    return [(NSCollectionLayoutGroup *)self isHorizontalGroup];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v31 = [(NSCollectionLayoutItem *)self size];
  subitems = [(NSCollectionLayoutGroup *)self subitems];
  v33 = [(NSCollectionLayoutGroup *)self count];
  interItemSpacing = [(NSCollectionLayoutGroup *)self interItemSpacing];
  [(NSCollectionLayoutItem *)self contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  edgeSpacing = [(NSCollectionLayoutItem *)self edgeSpacing];
  layoutDirection = [(NSCollectionLayoutGroup *)self layoutDirection];
  supplementaryItems = [(NSCollectionLayoutItem *)self supplementaryItems];
  customGroupItemProvider = [(NSCollectionLayoutGroup *)self customGroupItemProvider];
  name = [(NSCollectionLayoutItem *)self name];
  identifier = [(NSCollectionLayoutItem *)self identifier];
  v20 = [v4 initWithSize:v31 subitems:subitems count:v33 interItemSpacing:interItemSpacing contentInsets:edgeSpacing edgeSpacing:layoutDirection layoutDirection:v7 supplementaryItems:v9 customGroupItemProvider:v11 name:v13 identifier:{supplementaryItems, customGroupItemProvider, name, identifier}];

  v20[21] = [(NSCollectionLayoutGroup *)self groupOptions];
  visualFormats = [(NSCollectionLayoutGroup *)self visualFormats];
  v22 = [visualFormats copy];
  v23 = v20[18];
  v20[18] = v22;

  itemsProvider = [(NSCollectionLayoutGroup *)self itemsProvider];
  v25 = [itemsProvider copy];
  v26 = v20[19];
  v20[19] = v25;

  visualFormatItemProvider = [(NSCollectionLayoutGroup *)self visualFormatItemProvider];
  v28 = [visualFormatItemProvider copy];
  v29 = v20[20];
  v20[20] = v28;

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(NSCollectionLayoutGroup *)self count], v5 == [(NSCollectionLayoutGroup *)equalCopy count]) && (v6 = [(NSCollectionLayoutGroup *)self layoutDirection], v6 == [(NSCollectionLayoutGroup *)equalCopy layoutDirection]) && ([(NSCollectionLayoutGroup *)self customGroupItemProvider], v7 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)equalCopy customGroupItemProvider], v8 = objc_claimAutoreleasedReturnValue(), v9 = (v7 == 0) ^ (v8 == 0), v8, v7, (v9 & 1) == 0) && ([(NSCollectionLayoutGroup *)self interItemSpacing], v10 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)equalCopy interItemSpacing], v11 = objc_claimAutoreleasedReturnValue(), v12 = __objectEqual(v10, v11), v11, v10, v12) && ([(NSCollectionLayoutGroup *)self subitems], v13 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)equalCopy subitems], v14 = objc_claimAutoreleasedReturnValue(), v15 = __objectEqual(v13, v14), v14, v13, v15) && (v16 = [(NSCollectionLayoutGroup *)self groupOptions], v16 == [(NSCollectionLayoutGroup *)equalCopy groupOptions]) && ([(NSCollectionLayoutGroup *)self itemsProvider], v17 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)equalCopy itemsProvider], v18 = objc_claimAutoreleasedReturnValue(), v19 = (v17 == 0) ^ (v18 == 0), v18, v17, (v19 & 1) == 0) && ([(NSCollectionLayoutGroup *)self visualFormatItemProvider], v20 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)equalCopy visualFormatItemProvider], v21 = objc_claimAutoreleasedReturnValue(), v22 = (v20 == 0) ^ (v21 == 0), v21, v20, (v22 & 1) == 0) && ([(NSCollectionLayoutGroup *)self visualFormats], v23 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)equalCopy visualFormats], v24 = objc_claimAutoreleasedReturnValue(), v25 = __objectEqual(v23, v24), v24, v23, v25))
    {
      v28.receiver = self;
      v28.super_class = NSCollectionLayoutGroup;
      v26 = [(NSCollectionLayoutItem *)&v28 isEqual:equalCopy];
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = layoutSize;
  v10 = subitem;
  if (count <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:707 description:@"A repeating horizontal group should specify a count >= 1"];
  }

  v20[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v12 = [self _effectiveCopiedSubitemsForSubitems:v11 count:count layoutDirection:2];

  v13 = [self alloc];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = [v13 initWithSize:v9 subitems:v12 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:2 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, uUID}];

  return v17;
}

+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = layoutSize;
  v10 = subitem;
  if (count <= 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:725 description:@"A repeating vertical group should specify a count >= 1"];
  }

  v20[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v12 = [self _effectiveCopiedSubitemsForSubitems:v11 count:count layoutDirection:1];

  v13 = [self alloc];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = [v13 initWithSize:v9 subitems:v12 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:1 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, uUID}];

  return v17;
}

- (NSCollectionLayoutGroup)initWithSize:(id)size subitems:(id)subitems count:(int64_t)count interItemSpacing:(id)spacing contentInsets:(CVCDirectionalEdgeInsets)insets edgeSpacing:(id)edgeSpacing layoutDirection:(int64_t)direction supplementaryItems:(id)self0 visualFormats:(id)self1 itemsProvider:(id)self2 visualFormatItemProvider:(id)self3 customGroupItemProvider:(id)self4 options:(int64_t)self5 name:(id)self6 identifier:(id)self7
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  sizeCopy = size;
  subitemsCopy = subitems;
  spacingCopy = spacing;
  edgeSpacingCopy = edgeSpacing;
  itemsCopy = items;
  formatsCopy = formats;
  providerCopy = provider;
  itemProviderCopy = itemProvider;
  groupItemProviderCopy = groupItemProvider;
  nameCopy = name;
  identifierCopy = identifier;
  if (!(providerCopy | groupItemProviderCopy))
  {
    lastObject = [formatsCopy lastObject];

    if (!lastObject)
    {
      if (![subitemsCopy count])
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:761 description:@"At least 1 subitem is required for a group"];
      }

      if (count >= 1 && [subitemsCopy count] != 1)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(subitemsCopy, "count")}];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:764 description:{@"A single item is required for a repeating item group, %@ were supplied", v43}];
      }
    }
  }

  identifierCopy = [(NSCollectionLayoutGroup *)self initWithSize:sizeCopy subitems:subitemsCopy count:count interItemSpacing:spacingCopy contentInsets:edgeSpacingCopy edgeSpacing:direction layoutDirection:top supplementaryItems:leading customGroupItemProvider:bottom name:trailing identifier:itemsCopy, groupItemProviderCopy, nameCopy, identifierCopy];
  v34 = identifierCopy;
  if (identifierCopy)
  {
    identifierCopy->_groupOptions = options;
    v35 = [formatsCopy copy];
    visualFormats = v34->_visualFormats;
    v34->_visualFormats = v35;

    v37 = [providerCopy copy];
    itemsProvider = v34->_itemsProvider;
    v34->_itemsProvider = v37;

    v39 = [itemProviderCopy copy];
    visualFormatItemProvider = v34->_visualFormatItemProvider;
    v34->_visualFormatItemProvider = v39;
  }

  return v34;
}

+ (id)horizontalGroupWithSize:(id)size subitemsProvider:(id)provider
{
  sizeCopy = size;
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:780 description:{@"Invalid parameter not satisfying: %@", @"subitemsProvider"}];
  }

  v9 = [self alloc];
  v10 = +[NSCollectionLayoutSpacing defaultSpacing];
  v11 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = [v9 initWithSize:sizeCopy subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:0 supplementaryItems:providerCopy visualFormats:0 itemsProvider:0 visualFormatItemProvider:0 customGroupItemProvider:0 options:uUID name:? identifier:?];

  return v13;
}

+ (id)verticalGroupWithSize:(id)size subitemsProvider:(id)provider
{
  sizeCopy = size;
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:800 description:{@"Invalid parameter not satisfying: %@", @"subitemsProvider"}];
  }

  v9 = [self alloc];
  v10 = +[NSCollectionLayoutSpacing defaultSpacing];
  v11 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = [v9 initWithSize:sizeCopy subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:0 supplementaryItems:providerCopy visualFormats:0 itemsProvider:0 visualFormatItemProvider:0 customGroupItemProvider:0 options:uUID name:? identifier:?];

  return v13;
}

+ (NSCollectionLayoutGroup)layoutGroupWithSize:(id)size visualFormats:(id)formats itemProvider:(id)provider
{
  formatsCopy = formats;
  providerCopy = provider;
  sizeCopy = size;
  if (![formatsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:821 description:{@"Invalid parameter not satisfying: %@", @"visualFormats.count"}];
  }

  firstObject = [formatsCopy firstObject];
  uppercaseString = [firstObject uppercaseString];

  if (([uppercaseString containsString:@"H:"] & 1) == 0 && (objc_msgSend(uppercaseString, "containsString:", @"V:") & 1) == 0)
  {

    uppercaseString = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [uppercaseString handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:833 description:{@"Unknown layout axis: %@ for formats %@", v21, formatsCopy}];
  }

  v14 = [self alloc];
  v15 = +[NSCollectionLayoutSpacing defaultSpacing];
  v16 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v18 = [v14 initWithSize:sizeCopy subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:formatsCopy supplementaryItems:0 visualFormats:providerCopy itemsProvider:0 visualFormatItemProvider:0 customGroupItemProvider:0 options:uUID name:? identifier:?];

  return v18;
}

- (BOOL)hasItemProvider
{
  itemsProvider = [(NSCollectionLayoutGroup *)self itemsProvider];
  v3 = itemsProvider != 0;

  return v3;
}

- (BOOL)hasVisualFormat
{
  visualFormats = [(NSCollectionLayoutGroup *)self visualFormats];
  v3 = [visualFormats count] != 0;

  return v3;
}

+ (id)_effectiveCopiedSubitemsForSubitems:(id)subitems count:(int64_t)count layoutDirection:(int64_t)direction
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEA60];
  subitemsCopy = subitems;
  v10 = [[v8 alloc] initWithArray:subitemsCopy copyItems:1];

  if ([v10 count] == 1 && count > 0)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 size];
    v13 = [self _effectiveSizeForSize:v12 count:count layoutDirection:direction];

    [v11 setSize:v13];
    v16[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

+ (id)_effectiveSizeForSize:(id)size count:(int64_t)count layoutDirection:(int64_t)direction
{
  sizeCopy = size;
  v8 = sizeCopy;
  if (!count || !direction)
  {
    v14 = sizeCopy;
    goto LABEL_10;
  }

  v9 = 1.0 / count;
  widthDimension = [sizeCopy widthDimension];
  heightDimension = [v8 heightDimension];
  if (direction == 1)
  {
    v15 = [NSCollectionLayoutDimension fractionalHeightDimension:v9];
    v13 = heightDimension;
    heightDimension = v15;
    goto LABEL_8;
  }

  if (direction == 2)
  {
    v12 = [NSCollectionLayoutDimension fractionalWidthDimension:v9];
    v13 = widthDimension;
    widthDimension = v12;
LABEL_8:
  }

  v14 = [NSCollectionLayoutSize sizeWithWidthDimension:widthDimension heightDimension:heightDimension];

LABEL_10:

  return v14;
}

- (BOOL)_isListSolverCompatibleForLayoutAxis:(unint64_t)axis
{
  if (axis - 1 <= 1)
  {
    subitems = [(NSCollectionLayoutGroup *)self subitems];
    v6 = [subitems count];

    if (v6 == 1 && ![(NSCollectionLayoutGroup *)self isCustomGroup])
    {
      if (axis == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = axis == 2;
      }

      subitems2 = [(NSCollectionLayoutGroup *)self subitems];
      firstObject = [subitems2 firstObject];

      isGroup = [firstObject isGroup];
      v13 = [firstObject size];
      v14 = [v13 _isEstimatedForAxis:v9];

      v15 = [firstObject size];
      v16 = v15;
      if (axis == 2)
      {
        [v15 widthDimension];
      }

      else
      {
        [v15 heightDimension];
      }
      v17 = ;

      [v17 dimension];
      if (v18 > 0.5 && ([v17 dimension], v19 <= 1.0))
      {
        v20 = 1;
        if (isGroup)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0;
        if (isGroup)
        {
LABEL_15:
          v7 = 0;
LABEL_18:

          return v7;
        }
      }

      v7 = v20 & (v14 ^ 1);
      goto LABEL_18;
    }
  }

  return 0;
}

@end