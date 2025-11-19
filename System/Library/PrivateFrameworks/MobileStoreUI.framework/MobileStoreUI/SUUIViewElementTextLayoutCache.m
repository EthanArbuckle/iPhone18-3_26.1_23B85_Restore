@interface SUUIViewElementTextLayoutCache
- (CGSize)_bestGuessSizeForButton:(id)a3 width:(double)a4;
- (CGSize)_bestGuessSizeForLabel:(id)a3 width:(double)a4;
- (CGSize)_bestGuessSizeForOrdinal:(id)a3 width:(double)a4;
- (CGSize)estimatedSizeForButton:(id)a3 width:(double)a4;
- (CGSize)estimatedSizeForLabel:(id)a3 width:(double)a4;
- (CGSize)estimatedSizeForOrdinal:(id)a3 width:(double)a4;
- (CGSize)sizeForButton:(id)a3 width:(double)a4;
- (CGSize)sizeForLabel:(id)a3 width:(double)a4;
- (CGSize)sizeForViewElement:(id)a3 width:(double)a4;
- (SUUIViewElementTextLayoutCache)initWithLayoutCache:(id)a3;
- (id)_bestGuessCache;
- (id)_createLayoutRequestForBadge:(id)a3 width:(int64_t)a4;
- (id)_createLayoutRequestForButton:(id)a3 attributedString:(id)a4 width:(int64_t)a5;
- (id)_createLayoutRequestForLabel:(id)a3 attributedString:(id)a4 width:(int64_t)a5;
- (id)_createLayoutRequestForViewElement:(id)a3 attributedString:(id)a4 width:(int64_t)a5;
- (id)_existingLayoutForViewElement:(id)a3 width:(int64_t)a4;
- (id)_layoutIndexForViewElement:(id)a3 width:(int64_t)a4;
- (void)_addRequest:(id)a3 forViewElement:(id)a4;
- (void)invalidateLayoutsForUpdatedElements;
- (void)requestLayoutForBadge:(id)a3 width:(int64_t)a4;
- (void)requestLayoutForButton:(id)a3 attributedString:(id)a4 width:(int64_t)a5;
- (void)requestLayoutForLabel:(id)a3 attributedString:(id)a4 width:(int64_t)a5;
- (void)requestLayoutForOrdinal:(id)a3 attributedString:(id)a4 width:(int64_t)a5;
- (void)requestLayoutForViewElement:(id)a3 attributedString:(id)a4 width:(int64_t)a5;
@end

@implementation SUUIViewElementTextLayoutCache

- (SUUIViewElementTextLayoutCache)initWithLayoutCache:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SUUIViewElementTextLayoutCache;
  v6 = [(SUUIViewElementTextLayoutCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutCache, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    layoutMapTables = v7->_layoutMapTables;
    v7->_layoutMapTables = v8;
  }

  return v7;
}

- (CGSize)estimatedSizeForButton:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:v6 width:a4];
  v8 = v7;
  if (v7)
  {
    [v7 boundingSize];
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForButton:v6 width:a4];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)estimatedSizeForLabel:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:v6 width:a4];
  if (v7)
  {
    v8 = [v6 trailingBadges];
    if ([v8 count])
    {
      v9 = estimatedSizeForLabel_width__sSizingView;
      if (!estimatedSizeForLabel_width__sSizingView)
      {
        v10 = objc_alloc_init(SUUIAttributedStringView);
        v11 = estimatedSizeForLabel_width__sSizingView;
        estimatedSizeForLabel_width__sSizingView = v10;

        v9 = estimatedSizeForLabel_width__sSizingView;
      }

      [v9 setLayout:v7];
      v12 = estimatedSizeForLabel_width__sSizingView;
      v13 = [v6 trailingBadges];
      [v12 setRequiredBadges:v13];

      v14 = [v6 badgePlacement] == 1;
      [estimatedSizeForLabel_width__sSizingView setBadgePlacement:v14];
      [estimatedSizeForLabel_width__sSizingView sizeThatFits:{a4, 1.79769313e308}];
      v17 = v16;
      if (v15 < a4)
      {
        a4 = v15;
      }
    }

    else
    {
      [v7 boundingSize];
      a4 = v20;
      v17 = v21;
    }
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForLabel:v6 width:a4];
    a4 = v18;
    v17 = v19;
  }

  v22 = a4;
  v23 = v17;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)estimatedSizeForOrdinal:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:v6 width:a4];
  v8 = v7;
  if (v7)
  {
    [v7 boundingSize];
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForOrdinal:v6 width:a4];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)invalidateLayoutsForUpdatedElements
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  layoutMapTables = self->_layoutMapTables;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SUUIViewElementTextLayoutCache_invalidateLayoutsForUpdatedElements__block_invoke;
  v8[3] = &unk_2798FD550;
  v5 = v3;
  v9 = v5;
  [(NSMutableDictionary *)layoutMapTables enumerateKeysAndObjectsUsingBlock:v8];
  v6 = self->_layoutMapTables;
  self->_layoutMapTables = v5;
  v7 = v5;
}

void __69__SUUIViewElementTextLayoutCache_invalidateLayoutsForUpdatedElements__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
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

        v13 = *(*(&v15 + 1) + 8 * i);
        if (![v13 updateType])
        {
          v14 = [v8 objectForKey:v13];
          [v7 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKey:v5];
}

- (void)requestLayoutForBadge:(id)a3 width:(int64_t)a4
{
  v6 = a3;
  v5 = [SUUIViewElementTextLayoutCache _createLayoutRequestForBadge:"_createLayoutRequestForBadge:width:" width:?];
  if (v5)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v5 forViewElement:v6];
  }
}

- (void)requestLayoutForButton:(id)a3 attributedString:(id)a4 width:(int64_t)a5
{
  v7 = a3;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForButton:"_createLayoutRequestForButton:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:v7];
  }
}

- (void)requestLayoutForLabel:(id)a3 attributedString:(id)a4 width:(int64_t)a5
{
  v7 = a3;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForLabel:"_createLayoutRequestForLabel:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:v7];
  }
}

- (void)requestLayoutForOrdinal:(id)a3 attributedString:(id)a4 width:(int64_t)a5
{
  v7 = a3;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForOrdinal:"_createLayoutRequestForOrdinal:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:v7];
  }
}

- (void)requestLayoutForViewElement:(id)a3 attributedString:(id)a4 width:(int64_t)a5
{
  v7 = a3;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForViewElement:"_createLayoutRequestForViewElement:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:v7];
  }
}

- (CGSize)sizeForButton:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:v6 width:a4];
  v8 = v7;
  if (v7 && (-[SUUILayoutCache layoutForIndex:forced:](self->_layoutCache, "layoutForIndex:forced:", [v7 integerValue], 1), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    [v9 boundingSize];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForButton:v6 width:a4];
    v12 = v15;
    v14 = v16;
  }

  v17 = v12;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeForLabel:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:v6 width:a4];
  v8 = v7;
  if (v7 && (-[SUUILayoutCache layoutForIndex:forced:](self->_layoutCache, "layoutForIndex:forced:", [v7 integerValue], 1), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    [v9 boundingSize];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForLabel:v6 width:a4];
    v12 = v15;
    v14 = v16;
  }

  v17 = v12;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeForViewElement:(id)a3 width:(double)a4
{
  v5 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:a3 width:a4];
  v6 = v5;
  if (v5 && (-[SUUILayoutCache layoutForIndex:forced:](self->_layoutCache, "layoutForIndex:forced:", [v5 integerValue], 1), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    [v7 boundingSize];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v12 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_addRequest:(id)a3 forViewElement:(id)a4
{
  v25 = a3;
  v6 = a4;
  [v25 width];
  v8 = v7;
  v9 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:v6 width:v7];

  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v25, 0}];
    v11 = [(SUUILayoutCache *)self->_layoutCache addLayoutRequests:v10];
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v11];
    v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v8];
    v14 = [(NSMutableDictionary *)self->_layoutMapTables objectForKey:v13];
    if (!v14)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      [(NSMutableDictionary *)self->_layoutMapTables setObject:v14 forKey:v13];
    }

    v15 = [v6 uniquingMapKey];
    v16 = [v14 objectForKey:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v15 == 0;
    }

    if (v19)
    {
      v21 = v18;
      if (!v15)
      {
        if (v18)
        {
          v20 = [MEMORY[0x277CBEB68] null];
          [v21 setObject:v12 forKey:v20];
        }

        else
        {
          [v14 setObject:v12 forKey:v6];
        }

        goto LABEL_19;
      }
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22 = v16;
      v23 = v22;
      if (v22)
      {
        v24 = [MEMORY[0x277CBEB68] null];
        [v21 setObject:v23 forKey:v24];
      }

      [v14 setObject:v21 forKey:v6];
    }

    [v21 setObject:v12 forKey:v15];

LABEL_19:
  }
}

- (id)_bestGuessCache
{
  v2 = _bestGuessCache_bestGuessCache;
  if (!_bestGuessCache_bestGuessCache)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v4 = _bestGuessCache_bestGuessCache;
    _bestGuessCache_bestGuessCache = v3;

    [_bestGuessCache_bestGuessCache setCountLimit:1000];
    v2 = _bestGuessCache_bestGuessCache;
  }

  return v2;
}

- (CGSize)_bestGuessSizeForButton:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [v6 elementType];
  if (v7 == 141 || v7 == 12)
  {
    v9 = [v6 buttonTitleStyle];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v6 style];
    }

    v14 = v11;

    v15 = SUUIViewElementFontWithStyle(v14);
    if (!v15)
    {
      v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    }

    v16 = objc_alloc_init(_SUUIViewElementTextLayoutCacheBestGuessCacheKey);
    v17 = [v6 buttonText];
    v18 = [v17 string];
    [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v16 setText:v18];

    [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v16 setFont:v15];
    [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v16 setWidth:a4];
    v19 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
    v20 = [v19 objectForKey:v16];

    if (v20)
    {
      [v20 CGSizeValue];
      v12 = v21;
      v13 = v22;
    }

    else
    {
      v23 = SUUIViewElementAlignmentForStyle(v14);
      if (v23)
      {
        v24 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v23);
      }

      else
      {
        v24 = 0;
      }

      v25 = [v6 buttonText];
      v26 = [v25 attributedStringWithDefaultFont:v15 foregroundColor:0 textAlignment:v24 style:v14];

      v27 = [(SUUIViewElementTextLayoutCache *)self _createLayoutRequestForButton:v6 attributedString:v26 width:a4];
      v28 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v27];
      [(SUUIAttributedStringLayout *)v28 boundingSize];
      v12 = v29;
      v13 = v30;
      v20 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
      v31 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
      [v31 setObject:v20 forKey:v16];
    }
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v32 = v12;
  v33 = v13;
  result.height = v33;
  result.width = v32;
  return result;
}

- (CGSize)_bestGuessSizeForLabel:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [v6 style];
  v8 = SUUIViewElementFontWithStyle(v7);

  v9 = objc_alloc_init(_SUUIViewElementTextLayoutCacheBestGuessCacheKey);
  v10 = [v6 text];
  v11 = [v10 string];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v9 setText:v11];

  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v9 setFont:v8];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v9 setWidth:a4];
  v12 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
  v13 = [v12 objectForKey:v9];

  if (v13)
  {
    [v13 CGSizeValue];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v18 = [v6 text];
    v19 = [v6 style];
    v20 = [v18 attributedStringWithDefaultFont:v8 foregroundColor:0 style:v19];

    v21 = [(SUUIViewElementTextLayoutCache *)self _createLayoutRequestForLabel:v6 attributedString:v20 width:a4];
    v22 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v21];
    [(SUUIAttributedStringLayout *)v22 boundingSize];
    v15 = v23;
    v17 = v24;
    v13 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
    v25 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
    [v25 setObject:v13 forKey:v9];
  }

  v26 = v15;
  v27 = v17;
  result.height = v27;
  result.width = v26;
  return result;
}

- (CGSize)_bestGuessSizeForOrdinal:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [v6 style];
  v8 = SUUIViewElementFontWithStyle(v7);

  if (!v8)
  {
    v9 = SUUIFontForTextStyle(25);
    v10 = MEMORY[0x277D74300];
    [v9 pointSize];
    v8 = [v10 _lightSystemFontOfSize:?];
  }

  v11 = objc_alloc_init(_SUUIViewElementTextLayoutCacheBestGuessCacheKey);
  v12 = [v6 text];
  v13 = [v12 string];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v11 setText:v13];

  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v11 setFont:v8];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v11 setWidth:a4];
  v14 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
  v15 = [v14 objectForKey:v11];

  if (v15)
  {
    [v15 CGSizeValue];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v20 = [v6 text];
    v21 = [v20 attributedStringWithDefaultFont:v8 foregroundColor:0];

    v22 = [(SUUIViewElementTextLayoutCache *)self _createLayoutRequestForOrdinal:v6 attributedString:v21 width:a4];
    v23 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v22];
    [(SUUIAttributedStringLayout *)v23 boundingSize];
    v17 = v24;
    v19 = v25;
    v15 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
    v26 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
    [v26 setObject:v15 forKey:v11];
  }

  v27 = v17;
  v28 = v19;
  result.height = v28;
  result.width = v27;
  return result;
}

- (id)_createLayoutRequestForBadge:(id)a3 width:(int64_t)a4
{
  v5 = a3;
  if ([v5 badgeType] == 1 && (objc_msgSend(v5, "attributedString"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v6];
    [(SUUIAttributedStringLayoutRequest *)v8 setNumberOfLines:1];
    [(SUUIAttributedStringLayoutRequest *)v8 setWantsBaselineOffset:1];
    [(SUUIAttributedStringLayoutRequest *)v8 setWidth:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createLayoutRequestForButton:(id)a3 attributedString:(id)a4 width:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v8];

  [(SUUIAttributedStringLayoutRequest *)v9 setWidth:a5];
  if ([v7 buttonViewType] == 9)
  {
    [(SUUIAttributedStringLayoutRequest *)v9 setNumberOfLines:2];
  }

  else
  {
    v10 = [v7 style];
    v11 = [v10 valueForStyle:*MEMORY[0x277D1B000]];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 integerValue];
    }

    else
    {
      v12 = 1;
    }

    [(SUUIAttributedStringLayoutRequest *)v9 setNumberOfLines:v12];
    [(SUUIAttributedStringLayoutRequest *)v9 setWantsBaselineOffset:1];
  }

  return v9;
}

- (id)_createLayoutRequestForLabel:(id)a3 attributedString:(id)a4 width:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v8];

  v10 = [v7 style];
  v11 = [v10 maxTextLines];
  if (!v10 || (v12 = v11, v11 == -1))
  {
    v12 = [v7 numberOfLines];
  }

  [(SUUIAttributedStringLayoutRequest *)v9 setNumberOfLines:v12];
  [(SUUIAttributedStringLayoutRequest *)v9 setWantsBaselineOffset:1];
  [(SUUIAttributedStringLayoutRequest *)v9 setWidth:a5];

  return v9;
}

- (id)_createLayoutRequestForViewElement:(id)a3 attributedString:(id)a4 width:(int64_t)a5
{
  v6 = a4;
  v7 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v6];

  [(SUUIAttributedStringLayoutRequest *)v7 setNumberOfLines:1];
  [(SUUIAttributedStringLayoutRequest *)v7 setWantsBaselineOffset:1];
  [(SUUIAttributedStringLayoutRequest *)v7 setWidth:a5];

  return v7;
}

- (id)_existingLayoutForViewElement:(id)a3 width:(int64_t)a4
{
  v5 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:a3 width:a4];
  v6 = v5;
  if (v5)
  {
    v7 = -[SUUILayoutCache layoutForIndex:](self->_layoutCache, "layoutForIndex:", [v5 integerValue]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_layoutIndexForViewElement:(id)a3 width:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [(NSMutableDictionary *)self->_layoutMapTables objectForKey:v8];
  v10 = [v7 uniquingMapKey];
  v11 = [v9 objectForKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = v13;
  if (v10)
  {
    v15 = [v13 objectForKey:v10];
  }

  else
  {
    if (v13)
    {
      v17 = [MEMORY[0x277CBEB68] null];
      v16 = [v14 objectForKey:v17];

      goto LABEL_9;
    }

    v15 = v11;
  }

  v16 = v15;
LABEL_9:
  v18 = v16;

  return v16;
}

@end