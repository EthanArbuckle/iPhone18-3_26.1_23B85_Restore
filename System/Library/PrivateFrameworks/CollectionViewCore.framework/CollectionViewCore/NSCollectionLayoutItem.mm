@interface NSCollectionLayoutItem
+ (NSCollectionLayoutItem)itemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize;
+ (NSCollectionLayoutItem)itemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize supplementaryItems:(NSArray *)supplementaryItems;
+ (NSCollectionLayoutItem)itemWithSize:(id)size decorationItems:(id)items;
- (BOOL)containsEstimatedSizeItem;
- (BOOL)containsItemWithAxesUniformAcrossSiblings;
- (BOOL)hasCustomGroupItemProvider;
- (BOOL)ignoresRTL;
- (BOOL)isAuxillary;
- (BOOL)isCustomGroup;
- (BOOL)isEqual:(id)equal;
- (CGSize)_insetSizeForContainer:(id)container displayScale:(double)scale;
- (CVCDirectionalEdgeInsets)_effectiveContentInsets;
- (NSCollectionLayoutItem)initWithSize:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets edgeSpacing:(id)spacing supplementaryItems:(id)items decorationItems:(id)decorationItems name:(id)name identifier:(id)identifier;
- (NSDirectionalEdgeInsets)contentInsets;
- (id)_externalDescription;
- (id)auxillaryItems;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateItemsWithHandler:(id)handler;
- (void)_enumerateSupplementaryItemsWithHandler:(id)handler;
- (void)setContentInsets:(NSDirectionalEdgeInsets)contentInsets;
@end

@implementation NSCollectionLayoutItem

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

- (CVCDirectionalEdgeInsets)_effectiveContentInsets
{
  v3 = [(NSCollectionLayoutItem *)self size];
  v4 = [v3 _isEstimatedForAxis:2];
  v5 = [v3 _isEstimatedForAxis:1];
  [(NSCollectionLayoutItem *)self contentInsets];
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  if ((v4 & 1) == 0)
  {
    _CVCDirectionalInsetsForInsetsAlongAxis(2);
    v7 = v11;
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if ((v5 & 1) == 0)
  {
    _CVCDirectionalInsetsForInsetsAlongAxis(1);
    v6 = v18;
  }

  v19 = v7 + v6;
  v20 = v8 + v15;
  v21 = v9 + v16;
  v22 = v10 + v17;

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  result.trailing = v26;
  result.bottom = v25;
  result.leading = v24;
  result.top = v23;
  return result;
}

- (BOOL)hasCustomGroupItemProvider
{
  if (![(NSCollectionLayoutItem *)self isGroup])
  {
    return 0;
  }

  customGroupItemProvider = [(NSCollectionLayoutItem *)self customGroupItemProvider];
  v4 = customGroupItemProvider != 0;

  return v4;
}

- (BOOL)containsEstimatedSizeItem
{
  itemFlags = self->_itemFlags;
  if ((itemFlags & 1) == 0)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__NSCollectionLayoutItem_containsEstimatedSizeItem__block_invoke;
    v8[3] = &unk_278DE5640;
    v8[4] = self;
    [(NSCollectionLayoutItem *)self _enumerateItemsWithHandler:v8];
    v4 = self->_itemFlags;
    if ((*&v4 & 2) == 0)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __51__NSCollectionLayoutItem_containsEstimatedSizeItem__block_invoke_2;
      v7[3] = &unk_278DE5668;
      v7[4] = self;
      [(NSCollectionLayoutItem *)self _enumerateSupplementaryItemsWithHandler:v7];
      v4 = self->_itemFlags;
    }

    itemFlags = *&v4 | 1;
    *&self->_itemFlags = itemFlags;
  }

  return (itemFlags >> 1) & 1;
}

void __51__NSCollectionLayoutItem_containsEstimatedSizeItem__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 size];
  v6 = [v5 isEstimated];

  if (v6)
  {
    *(*(a1 + 32) + 8) |= 2u;
    *a3 = 1;
  }
}

- (id)_externalDescription
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p size=%@>", objc_opt_class(), self, self->_size];
  v4 = *&self->_contentInsets.top;
  v5 = *&self->_contentInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v4), vceqzq_f64(v5))))))
  {
    v6 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, *&v4.f64[0], 17, *&v4.f64[1], 17, *&v5.f64[0], 17, *&v5.f64[1]);
    [v3 appendFormat:@"\n\tcontentInsets=%@", v6];
  }

  if ([(NSCollectionLayoutEdgeSpacing *)self->_edgeSpacing _hasSpacing])
  {
    _externalDescription = [(NSCollectionLayoutEdgeSpacing *)self->_edgeSpacing _externalDescription];
    [v3 appendFormat:@"\n\tedgeSpacing=%@", _externalDescription];
  }

  v26 = v3;
  if ([(NSArray *)self->_supplementaryItems count])
  {
    v8 = [MEMORY[0x277CCAB68] stringWithString:@"\n\tsupplementaryItems="];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
    v9 = self->_supplementaryItems;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          _externalDescription2 = [*(*(&v31 + 1) + 8 * i) _externalDescription];
          v15 = [_externalDescription2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
          [v8 appendFormat:@"\n\t\t%@", v15];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    v3 = v26;
    [v26 appendString:v8];

    self = selfCopy;
  }

  if ([(NSArray *)self->_decorationItems count])
  {
    v16 = [MEMORY[0x277CCAB68] stringWithString:@"\n\tdecorationItems="];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = self->_decorationItems;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          _externalDescription3 = [*(*(&v27 + 1) + 8 * j) _externalDescription];
          v23 = [_externalDescription3 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
          [v16 appendFormat:@"\n\t\t%@", v23];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }

    v3 = v26;
    [v26 appendString:v16];
  }

  return v3;
}

- (NSCollectionLayoutItem)initWithSize:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets edgeSpacing:(id)spacing supplementaryItems:(id)items decorationItems:(id)decorationItems name:(id)name identifier:(id)identifier
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  sizeCopy = size;
  spacingCopy = spacing;
  itemsCopy = items;
  decorationItemsCopy = decorationItems;
  nameCopy = name;
  identifierCopy = identifier;
  v37.receiver = self;
  v37.super_class = NSCollectionLayoutItem;
  v25 = [(NSCollectionLayoutItem *)&v37 init];
  if (v25)
  {
    v26 = [sizeCopy copy];
    size = v25->_size;
    v25->_size = v26;

    v28 = [spacingCopy copy];
    edgeSpacing = v25->_edgeSpacing;
    v25->_edgeSpacing = v28;

    v30 = [itemsCopy copy];
    supplementaryItems = v25->_supplementaryItems;
    v25->_supplementaryItems = v30;

    v32 = [decorationItemsCopy copy];
    decorationItems = v25->_decorationItems;
    v25->_decorationItems = v32;

    v34 = [nameCopy copy];
    name = v25->_name;
    v25->_name = v34;

    objc_storeStrong(&v25->_identifier, identifier);
    [(NSCollectionLayoutItem *)v25 setContentInsets:top, leading, bottom, trailing];
  }

  return v25;
}

+ (NSCollectionLayoutItem)itemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize
{
  v4 = layoutSize;
  v5 = [self alloc];
  v6 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8 = [v5 initWithSize:v4 contentInsets:v6 edgeSpacing:MEMORY[0x277CBEBF8] supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:0 name:uUID identifier:{0.0, 0.0, 0.0, 0.0}];

  return v8;
}

+ (NSCollectionLayoutItem)itemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize supplementaryItems:(NSArray *)supplementaryItems
{
  v6 = supplementaryItems;
  v7 = layoutSize;
  v8 = [self alloc];
  v9 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v11 = [v8 initWithSize:v7 contentInsets:v9 edgeSpacing:v6 supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:0 name:uUID identifier:{0.0, 0.0, 0.0, 0.0}];

  return v11;
}

+ (NSCollectionLayoutItem)itemWithSize:(id)size decorationItems:(id)items
{
  itemsCopy = items;
  sizeCopy = size;
  v8 = [self alloc];
  v9 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v11 = [v8 initWithSize:sizeCopy contentInsets:v9 edgeSpacing:MEMORY[0x277CBEBF8] supplementaryItems:itemsCopy decorationItems:0 name:uUID identifier:{0.0, 0.0, 0.0, 0.0}];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(NSCollectionLayoutItem *)self size];
  [(NSCollectionLayoutItem *)self contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  edgeSpacing = [(NSCollectionLayoutItem *)self edgeSpacing];
  supplementaryItems = [(NSCollectionLayoutItem *)self supplementaryItems];
  decorationItems = [(NSCollectionLayoutItem *)self decorationItems];
  name = [(NSCollectionLayoutItem *)self name];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v19 = [v4 initWithSize:v5 contentInsets:edgeSpacing edgeSpacing:supplementaryItems supplementaryItems:decorationItems decorationItems:name name:uUID identifier:{v7, v9, v11, v13}];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  [(NSCollectionLayoutItem *)self contentInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(NSCollectionLayoutItem *)equalCopy contentInsets];
  v16 = 0;
  if (v8 == v17 && v6 == v13 && v12 == v15 && v10 == v14)
  {
    edgeSpacing = [(NSCollectionLayoutItem *)self edgeSpacing];
    edgeSpacing2 = [(NSCollectionLayoutItem *)equalCopy edgeSpacing];
    v20 = __objectEqual(edgeSpacing, edgeSpacing2);

    if (v20)
    {
      supplementaryItems = [(NSCollectionLayoutItem *)self supplementaryItems];
      supplementaryItems2 = [(NSCollectionLayoutItem *)equalCopy supplementaryItems];
      v23 = __objectEqual(supplementaryItems, supplementaryItems2);

      if (v23)
      {
        decorationItems = [(NSCollectionLayoutItem *)self decorationItems];
        decorationItems2 = [(NSCollectionLayoutItem *)equalCopy decorationItems];
        v26 = __objectEqual(decorationItems, decorationItems2);

        if (v26)
        {
          v27 = [(NSCollectionLayoutItem *)self size];
          v28 = [(NSCollectionLayoutItem *)equalCopy size];
          v16 = __objectEqual(v27, v28);

          goto LABEL_13;
        }
      }
    }

LABEL_11:
    v16 = 0;
  }

LABEL_13:

  return v16;
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)contentInsets
{
  v13 = *MEMORY[0x277D85DE8];
  self->_contentInsets = contentInsets;
  if (contentInsets.leading != 0.0 || contentInsets.top != 0.0 || contentInsets.trailing != 0.0 || contentInsets.bottom != 0.0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__NSCollectionLayoutItem_setContentInsets___block_invoke;
    v9[3] = &unk_278DE5618;
    v9[4] = self;
    v10 = contentInsets;
    v4 = MEMORY[0x245D4B4A0](v9, a2);
    v5 = v4[2](v4, 2);
    v6 = v4[2](v4, 1);
    if ((v5 & 1) != 0 || v6)
    {
      v7 = _compLayoutLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _externalDescription = [(NSCollectionLayoutItem *)self _externalDescription];
        *buf = 138412290;
        v12 = _externalDescription;
        _os_log_error_impl(&dword_243B9B000, v7, OS_LOG_TYPE_ERROR, "Attempting to add contentInsets to an item's dimension along an estimated axis. Insets along any estimated axes will be ignored. Use the item's edgeSpacing or the containing group's interItemSpacing instead. Item: %@", buf, 0xCu);
      }
    }
  }
}

BOOL __43__NSCollectionLayoutItem_setContentInsets___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) size];
  v5 = [v4 _isEstimatedForAxis:a2];

  return v5 && fabs(_CVCTotalEdgeDimensionsForLayoutAxis(a2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64))) >= 2.22044605e-16;
}

void __51__NSCollectionLayoutItem_containsEstimatedSizeItem__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 size];
  v6 = [v5 isEstimated];

  if (v6)
  {
    *(*(a1 + 32) + 8) |= 2u;
    *a3 = 1;
  }
}

- (BOOL)containsItemWithAxesUniformAcrossSiblings
{
  itemFlags = self->_itemFlags;
  if ((itemFlags & 4) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__NSCollectionLayoutItem_containsItemWithAxesUniformAcrossSiblings__block_invoke;
    v6[3] = &unk_278DE5640;
    v6[4] = self;
    [(NSCollectionLayoutItem *)self _enumerateItemsWithHandler:v6];
    itemFlags = *&self->_itemFlags | 4;
    *&self->_itemFlags |= 4u;
  }

  return (itemFlags >> 3) & 1;
}

void __67__NSCollectionLayoutItem_containsItemWithAxesUniformAcrossSiblings__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 size];
  v6 = [v5 _axesUniformAcrossSiblings];

  if (v6)
  {
    *(*(a1 + 32) + 8) |= 8u;
    *a3 = 1;
  }
}

- (void)_enumerateSupplementaryItemsWithHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v25 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  supplementaryItems = [(NSCollectionLayoutItem *)self supplementaryItems];
  v6 = [supplementaryItems countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(supplementaryItems);
      }

      handlerCopy[2](handlerCopy, *(*(&v21 + 1) + 8 * v9), &v25);
      if (v25)
      {
        goto LABEL_17;
      }

      if (v7 == ++v9)
      {
        v7 = [supplementaryItems countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ([(NSCollectionLayoutItem *)self isGroup])
  {
    supplementaryItems = [(NSCollectionLayoutItem *)self subitems];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [supplementaryItems countByEnumeratingWithState:&v17 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(supplementaryItems);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __66__NSCollectionLayoutItem__enumerateSupplementaryItemsWithHandler___block_invoke;
          v15[3] = &unk_278DE5690;
          v16 = handlerCopy;
          [v14 _enumerateSupplementaryItemsWithHandler:v15];
        }

        v11 = [supplementaryItems countByEnumeratingWithState:&v17 objects:v26 count:16];
      }

      while (v11);
    }

LABEL_17:
  }
}

- (void)_enumerateItemsWithHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v17 = 0;
  handlerCopy[2](handlerCopy, self, &v17);
  if ((v17 & 1) == 0 && [(NSCollectionLayoutItem *)self isGroup])
  {
    subitems = [(NSCollectionLayoutItem *)self subitems];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [subitems countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(subitems);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __53__NSCollectionLayoutItem__enumerateItemsWithHandler___block_invoke;
          v11[3] = &unk_278DE56B8;
          v12 = handlerCopy;
          [v10 _enumerateItemsWithHandler:v11];
        }

        v7 = [subitems countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }
}

- (CGSize)_insetSizeForContainer:(id)container displayScale:(double)scale
{
  containerCopy = container;
  v7 = [(NSCollectionLayoutItem *)self size];
  [v7 _effectiveSizeForContainer:containerCopy displayScale:0 ignoringInsets:scale];
  v22 = v9;
  v23 = v8;

  [(NSCollectionLayoutItem *)self _effectiveContentInsets];
  v11.f64[1] = v10;
  __asm { FMOV            V0.2D, #0.5 }

  v17.f64[0] = v23;
  v17.f64[1] = v22;
  v19.f64[1] = v18;
  v20 = vsubq_f64(v17, vaddq_f64(vbslq_s8(vcgtq_f64(_Q0, v11), vmulq_f64(v17, v11), v11), vbslq_s8(vcgtq_f64(_Q0, v19), vmulq_f64(v17, v19), v19)));
  v21 = v20.f64[1];
  result.width = v20.f64[0];
  result.height = v21;
  return result;
}

- (BOOL)isCustomGroup
{
  isGroup = [(NSCollectionLayoutItem *)self isGroup];
  if (isGroup)
  {

    LOBYTE(isGroup) = [(NSCollectionLayoutItem *)self hasCustomGroupItemProvider];
  }

  return isGroup;
}

- (BOOL)isAuxillary
{
  if ([(NSCollectionLayoutItem *)self isDecoration])
  {
    return 1;
  }

  return [(NSCollectionLayoutItem *)self isSupplementary];
}

- (id)auxillaryItems
{
  supplementaryItems = self->_supplementaryItems;
  if (!supplementaryItems)
  {
    supplementaryItems = MEMORY[0x277CBEBF8];
  }

  if (self->_decorationItems)
  {
    decorationItems = self->_decorationItems;
  }

  else
  {
    decorationItems = MEMORY[0x277CBEBF8];
  }

  v4 = supplementaryItems;
  v5 = [(NSArray *)v4 arrayByAddingObjectsFromArray:decorationItems];

  return v5;
}

- (BOOL)ignoresRTL
{
  isGroup = [(NSCollectionLayoutItem *)self isGroup];
  if (isGroup)
  {
    LOBYTE(isGroup) = [(NSCollectionLayoutItem *)self groupOptions];
  }

  return isGroup & 1;
}

@end