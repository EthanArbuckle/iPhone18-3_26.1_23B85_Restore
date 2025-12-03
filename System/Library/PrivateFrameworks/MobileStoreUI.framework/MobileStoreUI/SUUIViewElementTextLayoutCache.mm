@interface SUUIViewElementTextLayoutCache
- (CGSize)_bestGuessSizeForButton:(id)button width:(double)width;
- (CGSize)_bestGuessSizeForLabel:(id)label width:(double)width;
- (CGSize)_bestGuessSizeForOrdinal:(id)ordinal width:(double)width;
- (CGSize)estimatedSizeForButton:(id)button width:(double)width;
- (CGSize)estimatedSizeForLabel:(id)label width:(double)width;
- (CGSize)estimatedSizeForOrdinal:(id)ordinal width:(double)width;
- (CGSize)sizeForButton:(id)button width:(double)width;
- (CGSize)sizeForLabel:(id)label width:(double)width;
- (CGSize)sizeForViewElement:(id)element width:(double)width;
- (SUUIViewElementTextLayoutCache)initWithLayoutCache:(id)cache;
- (id)_bestGuessCache;
- (id)_createLayoutRequestForBadge:(id)badge width:(int64_t)width;
- (id)_createLayoutRequestForButton:(id)button attributedString:(id)string width:(int64_t)width;
- (id)_createLayoutRequestForLabel:(id)label attributedString:(id)string width:(int64_t)width;
- (id)_createLayoutRequestForViewElement:(id)element attributedString:(id)string width:(int64_t)width;
- (id)_existingLayoutForViewElement:(id)element width:(int64_t)width;
- (id)_layoutIndexForViewElement:(id)element width:(int64_t)width;
- (void)_addRequest:(id)request forViewElement:(id)element;
- (void)invalidateLayoutsForUpdatedElements;
- (void)requestLayoutForBadge:(id)badge width:(int64_t)width;
- (void)requestLayoutForButton:(id)button attributedString:(id)string width:(int64_t)width;
- (void)requestLayoutForLabel:(id)label attributedString:(id)string width:(int64_t)width;
- (void)requestLayoutForOrdinal:(id)ordinal attributedString:(id)string width:(int64_t)width;
- (void)requestLayoutForViewElement:(id)element attributedString:(id)string width:(int64_t)width;
@end

@implementation SUUIViewElementTextLayoutCache

- (SUUIViewElementTextLayoutCache)initWithLayoutCache:(id)cache
{
  cacheCopy = cache;
  v11.receiver = self;
  v11.super_class = SUUIViewElementTextLayoutCache;
  v6 = [(SUUIViewElementTextLayoutCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutCache, cache);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    layoutMapTables = v7->_layoutMapTables;
    v7->_layoutMapTables = v8;
  }

  return v7;
}

- (CGSize)estimatedSizeForButton:(id)button width:(double)width
{
  buttonCopy = button;
  v7 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:buttonCopy width:width];
  v8 = v7;
  if (v7)
  {
    [v7 boundingSize];
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForButton:buttonCopy width:width];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)estimatedSizeForLabel:(id)label width:(double)width
{
  labelCopy = label;
  v7 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:labelCopy width:width];
  if (v7)
  {
    trailingBadges = [labelCopy trailingBadges];
    if ([trailingBadges count])
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
      trailingBadges2 = [labelCopy trailingBadges];
      [v12 setRequiredBadges:trailingBadges2];

      v14 = [labelCopy badgePlacement] == 1;
      [estimatedSizeForLabel_width__sSizingView setBadgePlacement:v14];
      [estimatedSizeForLabel_width__sSizingView sizeThatFits:{width, 1.79769313e308}];
      v17 = v16;
      if (v15 < width)
      {
        width = v15;
      }
    }

    else
    {
      [v7 boundingSize];
      width = v20;
      v17 = v21;
    }
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForLabel:labelCopy width:width];
    width = v18;
    v17 = v19;
  }

  widthCopy = width;
  v23 = v17;
  result.height = v23;
  result.width = widthCopy;
  return result;
}

- (CGSize)estimatedSizeForOrdinal:(id)ordinal width:(double)width
{
  ordinalCopy = ordinal;
  v7 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:ordinalCopy width:width];
  v8 = v7;
  if (v7)
  {
    [v7 boundingSize];
  }

  else
  {
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForOrdinal:ordinalCopy width:width];
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

- (void)requestLayoutForBadge:(id)badge width:(int64_t)width
{
  badgeCopy = badge;
  v5 = [SUUIViewElementTextLayoutCache _createLayoutRequestForBadge:"_createLayoutRequestForBadge:width:" width:?];
  if (v5)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v5 forViewElement:badgeCopy];
  }
}

- (void)requestLayoutForButton:(id)button attributedString:(id)string width:(int64_t)width
{
  buttonCopy = button;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForButton:"_createLayoutRequestForButton:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:buttonCopy];
  }
}

- (void)requestLayoutForLabel:(id)label attributedString:(id)string width:(int64_t)width
{
  labelCopy = label;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForLabel:"_createLayoutRequestForLabel:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:labelCopy];
  }
}

- (void)requestLayoutForOrdinal:(id)ordinal attributedString:(id)string width:(int64_t)width
{
  ordinalCopy = ordinal;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForOrdinal:"_createLayoutRequestForOrdinal:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:ordinalCopy];
  }
}

- (void)requestLayoutForViewElement:(id)element attributedString:(id)string width:(int64_t)width
{
  elementCopy = element;
  v6 = [SUUIViewElementTextLayoutCache _createLayoutRequestForViewElement:"_createLayoutRequestForViewElement:attributedString:width:" attributedString:? width:?];
  if (v6)
  {
    [(SUUIViewElementTextLayoutCache *)self _addRequest:v6 forViewElement:elementCopy];
  }
}

- (CGSize)sizeForButton:(id)button width:(double)width
{
  buttonCopy = button;
  v7 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:buttonCopy width:width];
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
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForButton:buttonCopy width:width];
    v12 = v15;
    v14 = v16;
  }

  v17 = v12;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeForLabel:(id)label width:(double)width
{
  labelCopy = label;
  v7 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:labelCopy width:width];
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
    [(SUUIViewElementTextLayoutCache *)self _bestGuessSizeForLabel:labelCopy width:width];
    v12 = v15;
    v14 = v16;
  }

  v17 = v12;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)sizeForViewElement:(id)element width:(double)width
{
  v5 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:element width:width];
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

- (void)_addRequest:(id)request forViewElement:(id)element
{
  requestCopy = request;
  elementCopy = element;
  [requestCopy width];
  v8 = v7;
  v9 = [(SUUIViewElementTextLayoutCache *)self _existingLayoutForViewElement:elementCopy width:v7];

  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{requestCopy, 0}];
    v11 = [(SUUILayoutCache *)self->_layoutCache addLayoutRequests:v10];
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v11];
    v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v8];
    v14 = [(NSMutableDictionary *)self->_layoutMapTables objectForKey:v13];
    if (!v14)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      [(NSMutableDictionary *)self->_layoutMapTables setObject:v14 forKey:v13];
    }

    uniquingMapKey = [elementCopy uniquingMapKey];
    v16 = [v14 objectForKey:elementCopy];
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
      v19 = uniquingMapKey == 0;
    }

    if (v19)
    {
      v21 = v18;
      if (!uniquingMapKey)
      {
        if (v18)
        {
          null = [MEMORY[0x277CBEB68] null];
          [v21 setObject:v12 forKey:null];
        }

        else
        {
          [v14 setObject:v12 forKey:elementCopy];
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
        null2 = [MEMORY[0x277CBEB68] null];
        [v21 setObject:v23 forKey:null2];
      }

      [v14 setObject:v21 forKey:elementCopy];
    }

    [v21 setObject:v12 forKey:uniquingMapKey];

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

- (CGSize)_bestGuessSizeForButton:(id)button width:(double)width
{
  buttonCopy = button;
  elementType = [buttonCopy elementType];
  if (elementType == 141 || elementType == 12)
  {
    buttonTitleStyle = [buttonCopy buttonTitleStyle];
    v10 = buttonTitleStyle;
    if (buttonTitleStyle)
    {
      style = buttonTitleStyle;
    }

    else
    {
      style = [buttonCopy style];
    }

    v14 = style;

    v15 = SUUIViewElementFontWithStyle(v14);
    if (!v15)
    {
      v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    }

    v16 = objc_alloc_init(_SUUIViewElementTextLayoutCacheBestGuessCacheKey);
    buttonText = [buttonCopy buttonText];
    string = [buttonText string];
    [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v16 setText:string];

    [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v16 setFont:v15];
    [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v16 setWidth:width];
    _bestGuessCache = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
    v20 = [_bestGuessCache objectForKey:v16];

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

      buttonText2 = [buttonCopy buttonText];
      v26 = [buttonText2 attributedStringWithDefaultFont:v15 foregroundColor:0 textAlignment:v24 style:v14];

      v27 = [(SUUIViewElementTextLayoutCache *)self _createLayoutRequestForButton:buttonCopy attributedString:v26 width:width];
      v28 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v27];
      [(SUUIAttributedStringLayout *)v28 boundingSize];
      v12 = v29;
      v13 = v30;
      v20 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
      _bestGuessCache2 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
      [_bestGuessCache2 setObject:v20 forKey:v16];
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

- (CGSize)_bestGuessSizeForLabel:(id)label width:(double)width
{
  labelCopy = label;
  style = [labelCopy style];
  v8 = SUUIViewElementFontWithStyle(style);

  v9 = objc_alloc_init(_SUUIViewElementTextLayoutCacheBestGuessCacheKey);
  text = [labelCopy text];
  string = [text string];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v9 setText:string];

  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v9 setFont:v8];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v9 setWidth:width];
  _bestGuessCache = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
  v13 = [_bestGuessCache objectForKey:v9];

  if (v13)
  {
    [v13 CGSizeValue];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    text2 = [labelCopy text];
    style2 = [labelCopy style];
    v20 = [text2 attributedStringWithDefaultFont:v8 foregroundColor:0 style:style2];

    v21 = [(SUUIViewElementTextLayoutCache *)self _createLayoutRequestForLabel:labelCopy attributedString:v20 width:width];
    v22 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v21];
    [(SUUIAttributedStringLayout *)v22 boundingSize];
    v15 = v23;
    v17 = v24;
    v13 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
    _bestGuessCache2 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
    [_bestGuessCache2 setObject:v13 forKey:v9];
  }

  v26 = v15;
  v27 = v17;
  result.height = v27;
  result.width = v26;
  return result;
}

- (CGSize)_bestGuessSizeForOrdinal:(id)ordinal width:(double)width
{
  ordinalCopy = ordinal;
  style = [ordinalCopy style];
  v8 = SUUIViewElementFontWithStyle(style);

  if (!v8)
  {
    v9 = SUUIFontForTextStyle(25);
    v10 = MEMORY[0x277D74300];
    [v9 pointSize];
    v8 = [v10 _lightSystemFontOfSize:?];
  }

  v11 = objc_alloc_init(_SUUIViewElementTextLayoutCacheBestGuessCacheKey);
  text = [ordinalCopy text];
  string = [text string];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v11 setText:string];

  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v11 setFont:v8];
  [(_SUUIViewElementTextLayoutCacheBestGuessCacheKey *)v11 setWidth:width];
  _bestGuessCache = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
  v15 = [_bestGuessCache objectForKey:v11];

  if (v15)
  {
    [v15 CGSizeValue];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    text2 = [ordinalCopy text];
    v21 = [text2 attributedStringWithDefaultFont:v8 foregroundColor:0];

    v22 = [(SUUIViewElementTextLayoutCache *)self _createLayoutRequestForOrdinal:ordinalCopy attributedString:v21 width:width];
    v23 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v22];
    [(SUUIAttributedStringLayout *)v23 boundingSize];
    v17 = v24;
    v19 = v25;
    v15 = [MEMORY[0x277CCAE60] valueWithCGSize:?];
    _bestGuessCache2 = [(SUUIViewElementTextLayoutCache *)self _bestGuessCache];
    [_bestGuessCache2 setObject:v15 forKey:v11];
  }

  v27 = v17;
  v28 = v19;
  result.height = v28;
  result.width = v27;
  return result;
}

- (id)_createLayoutRequestForBadge:(id)badge width:(int64_t)width
{
  badgeCopy = badge;
  if ([badgeCopy badgeType] == 1 && (objc_msgSend(badgeCopy, "attributedString"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v6];
    [(SUUIAttributedStringLayoutRequest *)v8 setNumberOfLines:1];
    [(SUUIAttributedStringLayoutRequest *)v8 setWantsBaselineOffset:1];
    [(SUUIAttributedStringLayoutRequest *)v8 setWidth:width];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_createLayoutRequestForButton:(id)button attributedString:(id)string width:(int64_t)width
{
  buttonCopy = button;
  stringCopy = string;
  v9 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:stringCopy];

  [(SUUIAttributedStringLayoutRequest *)v9 setWidth:width];
  if ([buttonCopy buttonViewType] == 9)
  {
    [(SUUIAttributedStringLayoutRequest *)v9 setNumberOfLines:2];
  }

  else
  {
    style = [buttonCopy style];
    v11 = [style valueForStyle:*MEMORY[0x277D1B000]];
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    [(SUUIAttributedStringLayoutRequest *)v9 setNumberOfLines:integerValue];
    [(SUUIAttributedStringLayoutRequest *)v9 setWantsBaselineOffset:1];
  }

  return v9;
}

- (id)_createLayoutRequestForLabel:(id)label attributedString:(id)string width:(int64_t)width
{
  labelCopy = label;
  stringCopy = string;
  v9 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:stringCopy];

  style = [labelCopy style];
  maxTextLines = [style maxTextLines];
  if (!style || (numberOfLines = maxTextLines, maxTextLines == -1))
  {
    numberOfLines = [labelCopy numberOfLines];
  }

  [(SUUIAttributedStringLayoutRequest *)v9 setNumberOfLines:numberOfLines];
  [(SUUIAttributedStringLayoutRequest *)v9 setWantsBaselineOffset:1];
  [(SUUIAttributedStringLayoutRequest *)v9 setWidth:width];

  return v9;
}

- (id)_createLayoutRequestForViewElement:(id)element attributedString:(id)string width:(int64_t)width
{
  stringCopy = string;
  v7 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:stringCopy];

  [(SUUIAttributedStringLayoutRequest *)v7 setNumberOfLines:1];
  [(SUUIAttributedStringLayoutRequest *)v7 setWantsBaselineOffset:1];
  [(SUUIAttributedStringLayoutRequest *)v7 setWidth:width];

  return v7;
}

- (id)_existingLayoutForViewElement:(id)element width:(int64_t)width
{
  v5 = [(SUUIViewElementTextLayoutCache *)self _layoutIndexForViewElement:element width:width];
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

- (id)_layoutIndexForViewElement:(id)element width:(int64_t)width
{
  v6 = MEMORY[0x277CCABB0];
  elementCopy = element;
  v8 = [v6 numberWithInteger:width];
  v9 = [(NSMutableDictionary *)self->_layoutMapTables objectForKey:v8];
  uniquingMapKey = [elementCopy uniquingMapKey];
  v11 = [v9 objectForKey:elementCopy];

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
  if (uniquingMapKey)
  {
    v15 = [v13 objectForKey:uniquingMapKey];
  }

  else
  {
    if (v13)
    {
      null = [MEMORY[0x277CBEB68] null];
      v16 = [v14 objectForKey:null];

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