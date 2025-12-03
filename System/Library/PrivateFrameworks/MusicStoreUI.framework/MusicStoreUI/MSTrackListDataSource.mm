@interface MSTrackListDataSource
- (BOOL)canDoubleTapIndexPath:(id)path;
- (BOOL)canShowPreviewForItem:(id)item;
- (Class)cellConfigurationClassForItem:(id)item;
- (id)_stylesheetString;
- (id)cellConfigurationForIndex:(int64_t)index item:(id)item;
- (id)cellForIndexPath:(id)path;
- (id)placeholderCellForIndexPath:(id)path;
- (void)configureCell:(id)cell forIndexPath:(id)path;
- (void)configurePlaceholderCell:(id)cell forIndexPath:(id)path;
- (void)reloadCellContexts;
@end

@implementation MSTrackListDataSource

- (BOOL)canDoubleTapIndexPath:(id)path
{
  v3 = [objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FEF8]) "itemList")];
  defaultStoreOffer = [v3 defaultStoreOffer];
  if ([v3 itemType] == 1007)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [objc_msgSend(defaultStoreOffer "offerMedia")];
    if (v5)
    {
      v6 = [v3 firstItemLinkForType:0];
      itemMediaKind = [v3 itemMediaKind];
      LODWORD(v5) = [itemMediaKind isEqualToString:*MEMORY[0x277D6A298]];
      if (v5)
      {
        LOBYTE(v5) = [v6 URL] != 0;
      }
    }
  }

  return v5;
}

- (BOOL)canShowPreviewForItem:(id)item
{
  itemMediaKind = [item itemMediaKind];
  if ([itemMediaKind isEqualToString:*MEMORY[0x277D6A290]])
  {
    return 0;
  }

  v6 = [objc_msgSend(item "defaultStoreOffer")];
  return [v6 isEqualToString:*MEMORY[0x277D6A2A0]] ^ 1;
}

- (Class)cellConfigurationClassForItem:(id)item
{
  [item itemType];

  return objc_opt_class();
}

- (id)cellConfigurationForIndex:(int64_t)index item:(id)item
{
  v8.receiver = self;
  v8.super_class = MSTrackListDataSource;
  v5 = [(SUStructuredPageTableDataSource *)&v8 cellConfigurationForIndex:index item:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = index;
    v7[1] = 0x7FFFFFFFFFFFFFFFLL;
    v7[2] = index;
    v7[3] = 0x7FFFFFFFFFFFFFFFLL;
    [v5 setPosition:v7];
  }

  return v5;
}

- (id)cellForIndexPath:(id)path
{
  if ([objc_msgSend(objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FEF8]) "itemList")] == 2)
  {
    result = [-[SUTableDataSource cellReuseSource](self "cellReuseSource")];
    if (!result)
    {
      v6 = [objc_alloc(MEMORY[0x277D7FE00]) initWithStyle:0 reuseIdentifier:@"ms0"];

      return v6;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MSTrackListDataSource;
    return [(SUStructuredPageTableDataSource *)&v7 cellForIndexPath:path];
  }

  return result;
}

- (void)configureCell:(id)cell forIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = MSTrackListDataSource;
  [MSStructuredPageTableDataSource configureCell:sel_configureCell_forIndexPath_ forIndexPath:?];
  if ([path row])
  {
    v6 = MSGetTrackListOddRowColor();
  }

  else
  {
    v6 = MSGetTrackListEvenRowColor();
  }

  [cell setBackgroundColor:v6];
}

- (void)configurePlaceholderCell:(id)cell forIndexPath:(id)path
{
  [cell setConfiguration:0];
  if ([path row])
  {
    v6 = MSGetTrackListOddRowColor();
  }

  else
  {
    v6 = MSGetTrackListEvenRowColor();
  }

  [cell setBackgroundColor:v6];
}

- (void)reloadCellContexts
{
  v29 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = MSTrackListDataSource;
  [(SUStructuredPageGroupedTableDataSource *)&v27 reloadCellContexts];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [objc_msgSend(*(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FEF8]) "itemList")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v5)
  {
    LOBYTE(v8) = 0;
    v17 = 2;
    goto LABEL_24;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v24;
  v10 = 1;
  do
  {
    v11 = 0;
    do
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v23 + 1) + 8 * v11);
      itemType = [v12 itemType];
      switch(itemType)
      {
        case 11:
          goto LABEL_12;
        case 1007:
          v10 = 0;
LABEL_12:
          v8 = 1;
          goto LABEL_13;
        case 1009:
          v14 = [objc_msgSend(v12 "contentRating")];
          if (v14)
          {
            [v3 addObject:v14];
          }

          goto LABEL_12;
      }

      if (SUItemTypeIsMediaType())
      {
        artistName = [v12 artistName];
        v10 = 0;
        if (v7)
        {
          v8 |= [v7 isEqualToString:artistName] ^ 1;
        }

        else
        {
          v7 = artistName;
        }
      }

LABEL_13:
      ++v11;
    }

    while (v6 != v11);
    v16 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    v6 = v16;
  }

  while (v16);
  if (v10)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

LABEL_24:

  v18 = *MEMORY[0x277D7FF00];
  v19 = [objc_msgSend(*(&self->super.super.super.super.super.isa + v18) cacheForClass:{objc_opt_class()), "cellContext"}];
  [v19 setHiddenMediaIconTypes:v17];
  [v19 setShouldHideContentRating:{objc_msgSend(v3, "count") == 1}];
  [v19 setShowSubtitle:v8 & 1];
  v20 = [*(&self->super.super.super.super.super.isa + v18) cacheForClass:objc_opt_class()];
  [objc_msgSend(v20 "cellContext")];
  cellContext = [v20 cellContext];
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  [cellContext setWebViewWidth:v22];
}

- (id)placeholderCellForIndexPath:(id)path
{
  cellReuseSource = [-[SUTableDataSource cellReuseSource](self cellReuseSource];
  if (!cellReuseSource)
  {
    cellReuseSource = [objc_alloc(MEMORY[0x277D7FEA0]) initWithStyle:0 reuseIdentifier:@"ms1"];
    [cellReuseSource setUserInteractionEnabled:0];
  }

  return cellReuseSource;
}

- (id)_stylesheetString
{
  result = _stylesheetString_sStylesheet;
  if (!_stylesheetString_sStylesheet)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 newDataURLForResource:@"Booklet" ofType:@"png" withMIMEType:@"image/png"];
    v5 = [v3 newDataURLForResource:@"Video" ofType:@"png" withMIMEType:@"image/png"];
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    _stylesheetString_sStylesheet = [v6 initWithFormat:@"body { margin: 0; padding: 11px 16px; font-family: '%@'; font-size: 12px; color: #333; line-height: 15px; }body > strong { display: block; margin-bottom: -14px; }ul { line-height: 16px; margin: 6px 0 -5px; padding: 0; list-style: none; }li { margin-bottom: 5px; padding-left: 24px; }li.booklet { background: url(\"%@\", objc_msgSend(objc_msgSend(MEMORY[0x277D74300], "systemFontOfSize:", 0.0), "familyName"), objc_msgSend(v4, "absoluteString"), objc_msgSend(v5, "absoluteString"")];

    return _stylesheetString_sStylesheet;
  }

  return result;
}

@end