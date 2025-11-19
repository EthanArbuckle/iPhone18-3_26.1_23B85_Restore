@interface NSCollectionLayoutGroup
+ (NSCollectionLayoutGroup)customGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize itemProvider:(NSCollectionLayoutGroupCustomItemProvider)itemProvider;
+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize repeatingSubitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems;
+ (NSCollectionLayoutGroup)layoutGroupWithSize:(id)a3 visualFormats:(id)a4 itemProvider:(id)a5;
+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize repeatingSubitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count;
+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems;
+ (id)_effectiveCopiedSubitemsForSubitems:(id)a3 count:(int64_t)a4 layoutDirection:(int64_t)a5;
+ (id)_effectiveSizeForSize:(id)a3 count:(int64_t)a4 layoutDirection:(int64_t)a5;
+ (id)horizontalGroupWithSize:(id)a3 subitemsProvider:(id)a4;
+ (id)verticalGroupWithSize:(id)a3 subitemsProvider:(id)a4;
- (BOOL)_hasDecorationItemRequiringRegistration;
- (BOOL)_isListSolverCompatibleForLayoutAxis:(unint64_t)a3;
- (BOOL)hasItemProvider;
- (BOOL)hasVisualFormat;
- (BOOL)isCustomGroup;
- (BOOL)isEqual:(id)a3;
- (NSCollectionLayoutGroup)initWithSize:(id)a3 subitems:(id)a4 count:(int64_t)a5 interItemSpacing:(id)a6 contentInsets:(CVCDirectionalEdgeInsets)a7 edgeSpacing:(id)a8 layoutDirection:(int64_t)a9 supplementaryItems:(id)a10 customGroupItemProvider:(id)a11 name:(id)a12 identifier:(id)a13;
- (NSCollectionLayoutGroup)initWithSize:(id)a3 subitems:(id)a4 count:(int64_t)a5 interItemSpacing:(id)a6 contentInsets:(CVCDirectionalEdgeInsets)a7 edgeSpacing:(id)a8 layoutDirection:(int64_t)a9 supplementaryItems:(id)a10 visualFormats:(id)a11 itemsProvider:(id)a12 visualFormatItemProvider:(id)a13 customGroupItemProvider:(id)a14 options:(int64_t)a15 name:(id)a16 identifier:(id)a17;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)layoutAxis;
@end

@implementation NSCollectionLayoutGroup

- (BOOL)isCustomGroup
{
  v2 = [(NSCollectionLayoutGroup *)self customGroupItemProvider];
  v3 = v2 != 0;

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
  v18 = [(NSCollectionLayoutItem *)&v23 _externalDescription];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = self;
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

        v9 = [*(*(&v19 + 1) + 8 * i) _externalDescription];
        v10 = [v9 stringByReplacingOccurrencesOfString:@"\n\t" withString:@"\n\t\t"];

        [v3 appendFormat:@"\n\t\t %@", v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  if (v17->_customGroupItemProvider)
  {
    v11 = MEMORY[0x245D4B4A0]();
    [v3 appendFormat:@"\n\t customGroupItemProvider: %@", v11];
  }

  layoutDirection = v17->_layoutDirection;
  if (layoutDirection > 2)
  {
    v13 = &stru_2856CCCD0;
  }

  else
  {
    v13 = off_278DE57B8[layoutDirection];
  }

  v14 = [(NSCollectionLayoutSpacing *)v17->_interItemSpacing _externalDescription];
  v15 = [v18 stringByAppendingFormat:@"\n\t layoutDirection: %@\n\t interItemSpacing=%@\n\t subitems=%@", v13, v14, v3];

  return v15;
}

- (NSCollectionLayoutGroup)initWithSize:(id)a3 subitems:(id)a4 count:(int64_t)a5 interItemSpacing:(id)a6 contentInsets:(CVCDirectionalEdgeInsets)a7 edgeSpacing:(id)a8 layoutDirection:(int64_t)a9 supplementaryItems:(id)a10 customGroupItemProvider:(id)a11 name:(id)a12 identifier:(id)a13
{
  trailing = a7.trailing;
  bottom = a7.bottom;
  leading = a7.leading;
  top = a7.top;
  v22 = a3;
  v23 = a4;
  v24 = a6;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  if (v22)
  {
    if (v27)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:483 description:@"A size is required."];

    if (v27)
    {
      goto LABEL_8;
    }
  }

  if (![v23 count])
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:486 description:@"At least 1 subitem is required for a group"];
  }

  if (a5 >= 1 && [v23 count] != 1)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "count")}];
    [v41 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:489 description:{@"A single item is required for a repeating item group, %@ were supplied", v38}];
  }

LABEL_8:
  v44.receiver = self;
  v44.super_class = NSCollectionLayoutGroup;
  v30 = [(NSCollectionLayoutItem *)&v44 initWithSize:v22 contentInsets:v25 edgeSpacing:v26 supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:v28 name:v29 identifier:top, leading, bottom, trailing];
  if (v30)
  {
    v31 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v23 copyItems:1];
    subitems = v30->_subitems;
    v30->_subitems = v31;

    v30->_count = a5;
    v33 = [v24 copy];
    interItemSpacing = v30->_interItemSpacing;
    v30->_interItemSpacing = v33;

    v30->_layoutDirection = a9;
    v35 = [v27 copy];
    customGroupItemProvider = v30->_customGroupItemProvider;
    v30->_customGroupItemProvider = v35;
  }

  return v30;
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
  v15 = self;
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

  layoutDirection = v15->_layoutDirection;
  if (layoutDirection > 2)
  {
    v12 = &stru_2856CCCD0;
  }

  else
  {
    v12 = off_278DE57B8[layoutDirection];
  }

  v13 = [v16 stringByAppendingFormat:@"\n\t group: subitems=%@\n\t interItemSpacing=%@\n\t layoutDirection=%@>", v3, v15->_interItemSpacing, v12];;

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
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:531 description:{@"Invalid parameter not satisfying: %@", @"layoutSize != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:532 description:{@"Invalid parameter not satisfying: %@", @"subitem != nil"}];

LABEL_3:
  if (count <= 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:533 description:@"A repeating horizontal group should specify a count >= 1"];
  }

  v12 = [a1 alloc];
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v12 initWithSize:v9 subitems:v13 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:2 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, v16}];

  return v17;
}

+ (NSCollectionLayoutGroup)horizontalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems
{
  v6 = subitems;
  v7 = layoutSize;
  v8 = [a1 alloc];
  v9 = +[NSCollectionLayoutSpacing defaultSpacing];
  v10 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v8 initWithSize:v7 subitems:v6 count:0 interItemSpacing:v9 contentInsets:v10 edgeSpacing:2 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, v11}];

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
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:563 description:{@"Invalid parameter not satisfying: %@", @"layoutSize != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"subitem != nil"}];

LABEL_3:
  if (count <= 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:565 description:@"A repeating vertical group should specify a count >= 1"];
  }

  v12 = [a1 alloc];
  v22[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v12 initWithSize:v9 subitems:v13 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:1 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, v16}];

  return v17;
}

+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitems:(NSArray *)subitems
{
  v6 = subitems;
  v7 = layoutSize;
  v8 = [a1 alloc];
  v9 = +[NSCollectionLayoutSpacing defaultSpacing];
  v10 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v8 initWithSize:v7 subitems:v6 count:0 interItemSpacing:v9 contentInsets:v10 edgeSpacing:1 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, v11}];

  return v12;
}

+ (NSCollectionLayoutGroup)customGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize itemProvider:(NSCollectionLayoutGroupCustomItemProvider)itemProvider
{
  v6 = itemProvider;
  v7 = layoutSize;
  v8 = [a1 alloc];
  v9 = +[NSCollectionLayoutSpacing defaultSpacing];
  v10 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v11 = [MEMORY[0x277CCAD78] UUID];
  v12 = [v8 initWithSize:v7 subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:v6 supplementaryItems:0 customGroupItemProvider:v11 name:? identifier:?];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v31 = [(NSCollectionLayoutItem *)self size];
  v5 = [(NSCollectionLayoutGroup *)self subitems];
  v33 = [(NSCollectionLayoutGroup *)self count];
  v32 = [(NSCollectionLayoutGroup *)self interItemSpacing];
  [(NSCollectionLayoutItem *)self contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(NSCollectionLayoutItem *)self edgeSpacing];
  v15 = [(NSCollectionLayoutGroup *)self layoutDirection];
  v16 = [(NSCollectionLayoutItem *)self supplementaryItems];
  v17 = [(NSCollectionLayoutGroup *)self customGroupItemProvider];
  v18 = [(NSCollectionLayoutItem *)self name];
  v19 = [(NSCollectionLayoutItem *)self identifier];
  v20 = [v4 initWithSize:v31 subitems:v5 count:v33 interItemSpacing:v32 contentInsets:v14 edgeSpacing:v15 layoutDirection:v7 supplementaryItems:v9 customGroupItemProvider:v11 name:v13 identifier:{v16, v17, v18, v19}];

  v20[21] = [(NSCollectionLayoutGroup *)self groupOptions];
  v21 = [(NSCollectionLayoutGroup *)self visualFormats];
  v22 = [v21 copy];
  v23 = v20[18];
  v20[18] = v22;

  v24 = [(NSCollectionLayoutGroup *)self itemsProvider];
  v25 = [v24 copy];
  v26 = v20[19];
  v20[19] = v25;

  v27 = [(NSCollectionLayoutGroup *)self visualFormatItemProvider];
  v28 = [v27 copy];
  v29 = v20[20];
  v20[20] = v28;

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(NSCollectionLayoutGroup *)self count], v5 == [(NSCollectionLayoutGroup *)v4 count]) && (v6 = [(NSCollectionLayoutGroup *)self layoutDirection], v6 == [(NSCollectionLayoutGroup *)v4 layoutDirection]) && ([(NSCollectionLayoutGroup *)self customGroupItemProvider], v7 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)v4 customGroupItemProvider], v8 = objc_claimAutoreleasedReturnValue(), v9 = (v7 == 0) ^ (v8 == 0), v8, v7, (v9 & 1) == 0) && ([(NSCollectionLayoutGroup *)self interItemSpacing], v10 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)v4 interItemSpacing], v11 = objc_claimAutoreleasedReturnValue(), v12 = __objectEqual(v10, v11), v11, v10, v12) && ([(NSCollectionLayoutGroup *)self subitems], v13 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)v4 subitems], v14 = objc_claimAutoreleasedReturnValue(), v15 = __objectEqual(v13, v14), v14, v13, v15) && (v16 = [(NSCollectionLayoutGroup *)self groupOptions], v16 == [(NSCollectionLayoutGroup *)v4 groupOptions]) && ([(NSCollectionLayoutGroup *)self itemsProvider], v17 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)v4 itemsProvider], v18 = objc_claimAutoreleasedReturnValue(), v19 = (v17 == 0) ^ (v18 == 0), v18, v17, (v19 & 1) == 0) && ([(NSCollectionLayoutGroup *)self visualFormatItemProvider], v20 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)v4 visualFormatItemProvider], v21 = objc_claimAutoreleasedReturnValue(), v22 = (v20 == 0) ^ (v21 == 0), v21, v20, (v22 & 1) == 0) && ([(NSCollectionLayoutGroup *)self visualFormats], v23 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutGroup *)v4 visualFormats], v24 = objc_claimAutoreleasedReturnValue(), v25 = __objectEqual(v23, v24), v24, v23, v25))
    {
      v28.receiver = self;
      v28.super_class = NSCollectionLayoutGroup;
      v26 = [(NSCollectionLayoutItem *)&v28 isEqual:v4];
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
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:707 description:@"A repeating horizontal group should specify a count >= 1"];
  }

  v20[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v12 = [a1 _effectiveCopiedSubitemsForSubitems:v11 count:count layoutDirection:2];

  v13 = [a1 alloc];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v13 initWithSize:v9 subitems:v12 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:2 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, v16}];

  return v17;
}

+ (NSCollectionLayoutGroup)verticalGroupWithLayoutSize:(NSCollectionLayoutSize *)layoutSize subitem:(NSCollectionLayoutItem *)subitem count:(NSInteger)count
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = layoutSize;
  v10 = subitem;
  if (count <= 0)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:725 description:@"A repeating vertical group should specify a count >= 1"];
  }

  v20[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v12 = [a1 _effectiveCopiedSubitemsForSubitems:v11 count:count layoutDirection:1];

  v13 = [a1 alloc];
  v14 = +[NSCollectionLayoutSpacing defaultSpacing];
  v15 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v13 initWithSize:v9 subitems:v12 count:count interItemSpacing:v14 contentInsets:v15 edgeSpacing:1 layoutDirection:0.0 supplementaryItems:0.0 customGroupItemProvider:0.0 name:0.0 identifier:{MEMORY[0x277CBEBF8], 0, 0, v16}];

  return v17;
}

- (NSCollectionLayoutGroup)initWithSize:(id)a3 subitems:(id)a4 count:(int64_t)a5 interItemSpacing:(id)a6 contentInsets:(CVCDirectionalEdgeInsets)a7 edgeSpacing:(id)a8 layoutDirection:(int64_t)a9 supplementaryItems:(id)a10 visualFormats:(id)a11 itemsProvider:(id)a12 visualFormatItemProvider:(id)a13 customGroupItemProvider:(id)a14 options:(int64_t)a15 name:(id)a16 identifier:(id)a17
{
  trailing = a7.trailing;
  bottom = a7.bottom;
  leading = a7.leading;
  top = a7.top;
  v51 = a3;
  v24 = a4;
  v50 = a6;
  v49 = a8;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a16;
  v31 = a17;
  if (!(v27 | v29))
  {
    v32 = [v26 lastObject];

    if (!v32)
    {
      if (![v24 count])
      {
        v42 = [MEMORY[0x277CCA890] currentHandler];
        [v42 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:761 description:@"At least 1 subitem is required for a group"];
      }

      if (a5 >= 1 && [v24 count] != 1)
      {
        v44 = [MEMORY[0x277CCA890] currentHandler];
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
        [v44 handleFailureInMethod:a2 object:self file:@"NSCollectionLayoutItem.m" lineNumber:764 description:{@"A single item is required for a repeating item group, %@ were supplied", v43}];
      }
    }
  }

  v33 = [(NSCollectionLayoutGroup *)self initWithSize:v51 subitems:v24 count:a5 interItemSpacing:v50 contentInsets:v49 edgeSpacing:a9 layoutDirection:top supplementaryItems:leading customGroupItemProvider:bottom name:trailing identifier:v25, v29, v30, v31];
  v34 = v33;
  if (v33)
  {
    v33->_groupOptions = a15;
    v35 = [v26 copy];
    visualFormats = v34->_visualFormats;
    v34->_visualFormats = v35;

    v37 = [v27 copy];
    itemsProvider = v34->_itemsProvider;
    v34->_itemsProvider = v37;

    v39 = [v28 copy];
    visualFormatItemProvider = v34->_visualFormatItemProvider;
    v34->_visualFormatItemProvider = v39;
  }

  return v34;
}

+ (id)horizontalGroupWithSize:(id)a3 subitemsProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:780 description:{@"Invalid parameter not satisfying: %@", @"subitemsProvider"}];
  }

  v9 = [a1 alloc];
  v10 = +[NSCollectionLayoutSpacing defaultSpacing];
  v11 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v9 initWithSize:v7 subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:0 supplementaryItems:v8 visualFormats:0 itemsProvider:0 visualFormatItemProvider:0 customGroupItemProvider:0 options:v12 name:? identifier:?];

  return v13;
}

+ (id)verticalGroupWithSize:(id)a3 subitemsProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:800 description:{@"Invalid parameter not satisfying: %@", @"subitemsProvider"}];
  }

  v9 = [a1 alloc];
  v10 = +[NSCollectionLayoutSpacing defaultSpacing];
  v11 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v9 initWithSize:v7 subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:0 supplementaryItems:v8 visualFormats:0 itemsProvider:0 visualFormatItemProvider:0 customGroupItemProvider:0 options:v12 name:? identifier:?];

  return v13;
}

+ (NSCollectionLayoutGroup)layoutGroupWithSize:(id)a3 visualFormats:(id)a4 itemProvider:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  if (![v9 count])
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:821 description:{@"Invalid parameter not satisfying: %@", @"visualFormats.count"}];
  }

  v12 = [v9 firstObject];
  v13 = [v12 uppercaseString];

  if (([v13 containsString:@"H:"] & 1) == 0 && (objc_msgSend(v13, "containsString:", @"V:") & 1) == 0)
  {

    v13 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [v13 handleFailureInMethod:a2 object:a1 file:@"NSCollectionLayoutItem.m" lineNumber:833 description:{@"Unknown layout axis: %@ for formats %@", v21, v9}];
  }

  v14 = [a1 alloc];
  v15 = +[NSCollectionLayoutSpacing defaultSpacing];
  v16 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [v14 initWithSize:v11 subitems:0.0 count:0.0 interItemSpacing:0.0 contentInsets:0.0 edgeSpacing:MEMORY[0x277CBEBF8] layoutDirection:v9 supplementaryItems:0 visualFormats:v10 itemsProvider:0 visualFormatItemProvider:0 customGroupItemProvider:0 options:v17 name:? identifier:?];

  return v18;
}

- (BOOL)hasItemProvider
{
  v2 = [(NSCollectionLayoutGroup *)self itemsProvider];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasVisualFormat
{
  v2 = [(NSCollectionLayoutGroup *)self visualFormats];
  v3 = [v2 count] != 0;

  return v3;
}

+ (id)_effectiveCopiedSubitemsForSubitems:(id)a3 count:(int64_t)a4 layoutDirection:(int64_t)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = [[v8 alloc] initWithArray:v9 copyItems:1];

  if ([v10 count] == 1 && a4 > 0)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 size];
    v13 = [a1 _effectiveSizeForSize:v12 count:a4 layoutDirection:a5];

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

+ (id)_effectiveSizeForSize:(id)a3 count:(int64_t)a4 layoutDirection:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (!a4 || !a5)
  {
    v14 = v7;
    goto LABEL_10;
  }

  v9 = 1.0 / a4;
  v10 = [v7 widthDimension];
  v11 = [v8 heightDimension];
  if (a5 == 1)
  {
    v15 = [NSCollectionLayoutDimension fractionalHeightDimension:v9];
    v13 = v11;
    v11 = v15;
    goto LABEL_8;
  }

  if (a5 == 2)
  {
    v12 = [NSCollectionLayoutDimension fractionalWidthDimension:v9];
    v13 = v10;
    v10 = v12;
LABEL_8:
  }

  v14 = [NSCollectionLayoutSize sizeWithWidthDimension:v10 heightDimension:v11];

LABEL_10:

  return v14;
}

- (BOOL)_isListSolverCompatibleForLayoutAxis:(unint64_t)a3
{
  if (a3 - 1 <= 1)
  {
    v5 = [(NSCollectionLayoutGroup *)self subitems];
    v6 = [v5 count];

    if (v6 == 1 && ![(NSCollectionLayoutGroup *)self isCustomGroup])
    {
      if (a3 == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = a3 == 2;
      }

      v10 = [(NSCollectionLayoutGroup *)self subitems];
      v11 = [v10 firstObject];

      v12 = [v11 isGroup];
      v13 = [v11 size];
      v14 = [v13 _isEstimatedForAxis:v9];

      v15 = [v11 size];
      v16 = v15;
      if (a3 == 2)
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
        if (v12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0;
        if (v12)
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