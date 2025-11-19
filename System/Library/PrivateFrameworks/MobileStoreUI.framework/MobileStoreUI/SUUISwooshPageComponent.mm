@interface SUUISwooshPageComponent
- (BOOL)_isBrickAvailable:(id)a3 withPageContext:(id)a4;
- (SUUILockupStyle)_lockupStyleWithLockups:(SEL)a3;
- (SUUISwooshPageComponent)initWithCustomPageContext:(id)a3;
- (SUUISwooshPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SUUISwooshPageComponent)initWithItemList:(id)a3;
- (SUUISwooshPageComponent)initWithLockups:(id)a3 swooshType:(int64_t)a4 title:(id)a5;
- (SUUISwooshPageComponent)initWithRelatedContentContext:(id)a3;
- (SUUISwooshPageComponent)initWithRoomContext:(id)a3;
- (id)_brickItemsWithChildren:(id)a3 customPageContext:(id)a4;
- (id)_brickItemsWithChildren:(id)a3 featuredPageContext:(id)a4;
- (id)_lockupWithItemIdentifier:(id)a3 context:(id)a4;
- (id)_lockupsWithChildren:(id)a3 context:(id)a4;
- (id)_lockupsWithChildren:(id)a3 featuredPageContext:(id)a4;
- (id)_mediaComponentsWithChildren:(id)a3 context:(id)a4;
- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SUUILockupStyle *)a4;
- (id)_updateLockupItemsWithItems:(id)a3;
- (id)valueForMetricsField:(id)a3;
- (unint64_t)_defaultVisibleFieldsForItemKind:(int64_t)a3;
- (void)_reloadMissingDataCount;
- (void)_setSeeAllValuesWithLinkInfo:(id)a3;
- (void)_updateBricksWithItems:(id)a3;
- (void)_updateLockup:(id)a3 withItem:(id)a4;
- (void)_updateLockupItemsWithLookupResponse:(id)a3;
- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4;
@end

@implementation SUUISwooshPageComponent

- (SUUISwooshPageComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SUUISwooshPageComponent;
  v5 = [(SUUIPageComponent *)&v27 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"childType"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    if ([v7 isEqualToString:@"brick"])
    {
      v8 = 1;
    }

    else
    {
      if (![v7 isEqualToString:@"media"])
      {
        goto LABEL_8;
      }

      v8 = 2;
    }

    v5->_swooshType = v8;
LABEL_8:
    v9 = [v6 objectForKey:@"showBrickTitles"];

    if (objc_opt_respondsToSelector())
    {
      v10 = v9;
    }

    else
    {
      v10 = [v6 objectForKey:@"showItemTitles"];

      v9 = v10;
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v5->_showsItemTitles = [v9 BOOLValue];
LABEL_12:
    v11 = [v6 objectForKey:@"lockupStyle"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SUUILockupStyleForDictionary(v11, v4, &v25);
    }

    else
    {
      SUUILockupStyleDefault(&v25);
    }

    v12 = v25;
    v5->_lockupStyle.visibleFields = v26;
    *&v5->_lockupStyle.artworkSize = v12;
    v13 = [v6 objectForKey:@"title"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      title = v5->_title;
      v5->_title = v14;
    }

    v16 = [v6 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 BOOLValue])
    {
      v5->_seeAllStyle = 1;
    }

    v17 = [v6 objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUISwooshPageComponent *)v5 _setSeeAllValuesWithLinkInfo:v17];
    }

    v18 = [v6 objectForKey:@"children"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    swooshType = v5->_swooshType;
    if (swooshType)
    {
      if (swooshType == 2)
      {
        v20 = [(SUUISwooshPageComponent *)v5 _mediaComponentsWithChildren:v18 context:v4];
        v21 = &OBJC_IVAR___SUUISwooshPageComponent__mediaComponents;
      }

      else
      {
        if (swooshType != 1)
        {
LABEL_30:
          [(SUUISwooshPageComponent *)v5 _reloadMissingDataCount];

          goto LABEL_31;
        }

        v20 = [(SUUISwooshPageComponent *)v5 _brickItemsWithChildren:v18 customPageContext:v4];
        v21 = &OBJC_IVAR___SUUISwooshPageComponent__bricks;
      }
    }

    else
    {
      v20 = [(SUUISwooshPageComponent *)v5 _lockupsWithChildren:v18 context:v4];
      v21 = &OBJC_IVAR___SUUISwooshPageComponent__lockups;
    }

    v22 = *v21;
    v23 = *(&v5->super.super.isa + v22);
    *(&v5->super.super.isa + v22) = v20;

    goto LABEL_30;
  }

LABEL_31:

  return v5;
}

- (SUUISwooshPageComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  v33.receiver = self;
  v33.super_class = SUUISwooshPageComponent;
  v7 = [(SUUIPageComponent *)&v33 initWithFeaturedContentContext:v6 kind:a4];
  if (v7)
  {
    v8 = [v6 componentDictionary];
    if (a4 == 261)
    {
      v7->_swooshType = 1;
    }

    v7->_fcKind = a4;
    SUUILockupStyleDefault(&v31);
    v9 = v31;
    v7->_lockupStyle.visibleFields = v32;
    *&v7->_lockupStyle.artworkSize = v9;
    v10 = [v6 platformKeyProfileOverrides];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v7->_fcKind];
    v12 = [v10 objectForKey:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      platformKeyProfile = v7->_platformKeyProfile;
      v7->_platformKeyProfile = v13;
    }

    v15 = [v8 objectForKey:@"name"];
    if (!v15)
    {
      v15 = [v8 objectForKey:@"title"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      title = v7->_title;
      v7->_title = v16;
    }

    v18 = [v8 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 BOOLValue])
    {
      v7->_seeAllStyle = 1;
    }

    v19 = [v8 objectForKey:@"seeAllUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v19];
      seeAllURL = v7->_seeAllURL;
      v7->_seeAllURL = v20;
    }

    v22 = [v8 objectForKey:@"showBrickTitles"];

    if (objc_opt_respondsToSelector())
    {
      v7->_showsItemTitles = [v22 BOOLValue];
    }

    v23 = [v8 objectForKey:@"children"];
    if (!v23)
    {
      v23 = [v8 objectForKey:@"adamIds"];
      if (!v23)
      {
        v23 = [v8 objectForKey:@"content"];
      }
    }

    v24 = v23;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_26;
    }

    swooshType = v7->_swooshType;
    if (swooshType)
    {
      if (swooshType != 1)
      {
LABEL_26:
        [(SUUISwooshPageComponent *)v7 _reloadMissingDataCount];

        goto LABEL_27;
      }

      v26 = [(SUUISwooshPageComponent *)v7 _brickItemsWithChildren:v24 featuredPageContext:v6];
      v27 = &OBJC_IVAR___SUUISwooshPageComponent__bricks;
    }

    else
    {
      v26 = [(SUUISwooshPageComponent *)v7 _lockupsWithChildren:v24 featuredPageContext:v6];
      v27 = &OBJC_IVAR___SUUISwooshPageComponent__lockups;
    }

    v28 = *v27;
    v29 = *(&v7->super.super.isa + v28);
    *(&v7->super.super.isa + v28) = v26;

    goto LABEL_26;
  }

LABEL_27:

  return v7;
}

- (SUUISwooshPageComponent)initWithItemList:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = SUUISwooshPageComponent;
  v5 = [(SUUISwooshPageComponent *)&v34 init];
  v6 = v5;
  if (v5)
  {
    v5->_swooshType = 0;
    p_lockupStyle = &v5->_lockupStyle;
    SUUILockupStyleDefault(&v32);
    v8 = v32;
    v6->_lockupStyle.visibleFields = visibleFields;
    *&p_lockupStyle->artworkSize = v8;
    v9 = [v4 seeAllTitle];
    seeAllTitle = v6->_seeAllTitle;
    v6->_seeAllTitle = v9;

    v11 = [v4 title];
    title = v6->_title;
    v6->_title = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [v4 items];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * v18);
          v20 = *&p_lockupStyle->artworkSize;
          visibleFields = v6->_lockupStyle.visibleFields;
          v32 = v20;
          v21 = [(SUUISwooshPageComponent *)v6 _newLockupComponentWithItem:v19 defaultStyle:&v32];
          [v13 addObject:v21];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v16);
    }

    v22 = [v13 copy];
    lockups = v6->_lockups;
    v6->_lockups = v22;

    v24 = [v4 seeAllURLString];
    if (v24)
    {
      v25 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v24];
      seeAllURL = v6->_seeAllURL;
      v6->_seeAllURL = v25;
    }

    [(SUUISwooshPageComponent *)v6 _reloadMissingDataCount];
  }

  return v6;
}

- (SUUISwooshPageComponent)initWithLockups:(id)a3 swooshType:(int64_t)a4 title:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = SUUISwooshPageComponent;
  v10 = [(SUUISwooshPageComponent *)&v18 init];
  if (v10)
  {
    v11 = [v8 copy];
    lockups = v10->_lockups;
    v10->_lockups = v11;

    v10->_swooshType = a4;
    [(SUUISwooshPageComponent *)v10 _lockupStyleWithLockups:v10->_lockups];
    v10->_lockupStyle.visibleFields = v17;
    *&v10->_lockupStyle.artworkSize = v16;
    v13 = [v9 copy];
    title = v10->_title;
    v10->_title = v13;

    [(SUUISwooshPageComponent *)v10 _reloadMissingDataCount];
  }

  return v10;
}

- (SUUISwooshPageComponent)initWithRelatedContentContext:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUUISwooshPageComponent;
  v5 = [(SUUISwooshPageComponent *)&v19 init];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v5->_swooshType = 0;
    SUUILockupStyleDefault(&v17);
    v7 = v17;
    v5->_lockupStyle.visibleFields = v18;
    *&v5->_lockupStyle.artworkSize = v7;
    v8 = [v6 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      title = v5->_title;
      v5->_title = v9;
    }

    v11 = [v6 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 BOOLValue])
    {
      v5->_seeAllStyle = 1;
    }

    v12 = [v6 objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUISwooshPageComponent *)v5 _setSeeAllValuesWithLinkInfo:v12];
    }

    v13 = [v6 objectForKey:@"childrenIds"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count])
    {
      v14 = [(SUUISwooshPageComponent *)v5 _lockupsWithChildren:v13 context:v4];
      lockups = v5->_lockups;
      v5->_lockups = v14;
    }

    [(SUUISwooshPageComponent *)v5 _reloadMissingDataCount];
  }

  return v5;
}

- (SUUISwooshPageComponent)initWithRoomContext:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUUISwooshPageComponent;
  v5 = [(SUUIPageComponent *)&v19 initWithFeaturedContentContext:v4 kind:260];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v5->_swooshType = 0;
    SUUILockupStyleDefault(&v17);
    v7 = v17;
    v5->_lockupStyle.visibleFields = v18;
    *&v5->_lockupStyle.artworkSize = v7;
    v8 = [v6 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      title = v5->_title;
      v5->_title = v9;
    }

    v11 = [v6 objectForKey:@"titleIsLink"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v11 BOOLValue])
    {
      v5->_seeAllStyle = 1;
    }

    v12 = [v6 objectForKey:@"seeAllUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUUISwooshPageComponent *)v5 _setSeeAllValuesWithLinkInfo:v12];
    }

    v13 = [v6 objectForKey:@"adamIds"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count])
    {
      v14 = [(SUUISwooshPageComponent *)v5 _lockupsWithChildren:v13 context:v4];
      lockups = v5->_lockups;
      v5->_lockups = v14;
    }

    [(SUUISwooshPageComponent *)v5 _reloadMissingDataCount];
  }

  return v5;
}

- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  lockups = self->_lockups;
  if (lockups)
  {
    v10 = v6;
    v6 = [(SUUIPageComponent *)self _enumerateMissingItemIdentifiersFromLockups:lockups startIndex:a3 usingBlock:v6];
  }

  else
  {
    bricks = self->_bricks;
    if (!bricks)
    {
      goto LABEL_6;
    }

    v10 = v6;
    v6 = [(SUUIPageComponent *)self _enumerateMissingItemIdentifiersFromBricks:bricks startIndex:a3 usingBlock:v6];
  }

  v7 = v10;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (id)valueForMetricsField:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    v5 = [(SUUISwooshPageComponent *)self title];
    goto LABEL_4;
  }

  if ([v4 isEqualToString:*MEMORY[0x277D6A498]])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_fcKind];
LABEL_4:
    v6 = v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v8.receiver = self;
  v8.super_class = SUUISwooshPageComponent;
  v6 = [(SUUIPageComponent *)&v8 valueForMetricsField:v4];
LABEL_9:

  return v6;
}

- (void)_updateBricksWithItems:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_bricks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 link];
        if (([v11 isActionable] & 1) == 0)
        {
          v12 = [v11 itemIdentifier];
          if (v12)
          {
            v13 = [v4 objectForKey:v12];
            if (v13)
            {
              v14 = v13;
              [v10 _setLinkItem:v13];
              --self->_missingDataCount;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)_updateLockupItemsWithItems:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_lockups;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 _needsItemData])
        {
          v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v10, "itemIdentifier")}];
          v12 = [v4 objectForKey:v11];
          if (v12)
          {
            [(SUUISwooshPageComponent *)self _updateLockup:v10 withItem:v12];
            [v14 addObject:v10];
            --self->_missingDataCount;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v14;
}

- (void)_updateLockupItemsWithLookupResponse:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_lockups;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 _needsItemData])
        {
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", objc_msgSend(v9, "itemIdentifier")];
          v11 = [v15 itemForKey:v10];
          if (v11)
          {
            v12 = [SUUIItem alloc];
            v13 = [v11 lookupDictionary];
            v14 = [(SUUIItem *)v12 initWithLookupDictionary:v13];

            [(SUUISwooshPageComponent *)self _updateLockup:v9 withItem:v14];
            --self->_missingDataCount;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)_brickItemsWithChildren:(id)a3 customPageContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = [MEMORY[0x277CBEB18] array];
  v8 = [v7 copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setComponentDictionary:v14];
          v15 = [[SUUIBrickItem alloc] initWithCustomPageContext:v8];
          if (v15 && [(SUUISwooshPageComponent *)self _isBrickAvailable:v15 withPageContext:v7])
          {
            [v17 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v17;
}

- (id)_brickItemsWithChildren:(id)a3 featuredPageContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = [MEMORY[0x277CBEB18] array];
  v8 = [v7 copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setComponentDictionary:v14];
          v15 = [[SUUIBrickItem alloc] initWithComponentContext:v8];
          if (v15 && [(SUUISwooshPageComponent *)self _isBrickAvailable:v15 withPageContext:v7])
          {
            [v17 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v17;
}

- (unint64_t)_defaultVisibleFieldsForItemKind:(int64_t)a3
{
  if (a3 <= 5)
  {
    if ((a3 - 1) >= 3)
    {
      if ((a3 - 4) >= 2 && a3)
      {
        return 0;
      }

      goto LABEL_10;
    }

    return 19;
  }

  if (a3 <= 0x12)
  {
    if (((1 << a3) & 0x10B80) == 0)
    {
      if (((1 << a3) & 0x63400) == 0)
      {
        if (((1 << a3) & 0xC000) != 0)
        {
          return 530;
        }

        goto LABEL_12;
      }

LABEL_10:
      v8 = v3;
      v9 = v4;
      SUUILockupStyleDefault(v6);
      return v7;
    }

    return 19;
  }

LABEL_12:
  if (a3 == 6)
  {
    return 18;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isBrickAvailable:(id)a3 withPageContext:(id)a4
{
  v5 = a4;
  v6 = [a3 link];
  v7 = v6;
  if (v6)
  {
    if ([v6 isActionable])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v9 = [v7 itemIdentifier];
      if (v9)
      {
        v8 = [v5 isUnavailableItemIdentifier:v9] ^ 1;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (SUUILockupStyle)_lockupStyleWithLockups:(SEL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->layoutStyle = 0;
  retstr->visibleFields = 0;
  retstr->artworkSize = 0;
  SUUILockupStyleDefault(retstr);
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) item];
        v14 = v13;
        if (v13)
        {
          [v7 addIndex:{-[SUUISwooshPageComponent _defaultVisibleFieldsForItemKind:](self, "_defaultVisibleFieldsForItemKind:", objc_msgSend(v13, "itemKind"))}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ([v7 count] == 1)
  {
    retstr->visibleFields = [v7 firstIndex];
  }

  return result;
}

- (id)_lockupsWithChildren:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SUUISwooshPageComponent *)self _lockupWithItemIdentifier:v14 context:v7, v17];
          if (v15)
          {
            [v8 addObject:v15];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_lockupsWithChildren:(id)a3 featuredPageContext:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v17 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:@"adamId"];
LABEL_10:
          v14 = v13;
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          goto LABEL_10;
        }

        v14 = 0;
LABEL_12:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SUUISwooshPageComponent *)self _lockupWithItemIdentifier:v14 context:v6];
          if (v15)
          {
            [v17 addObject:v15];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v17;
}

- (id)_lockupWithItemIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 itemForItemIdentifier:v6];
  if (v8)
  {
    v14 = *&self->_lockupStyle.artworkSize;
    visibleFields = self->_lockupStyle.visibleFields;
    v9 = [(SUUISwooshPageComponent *)self _newLockupComponentWithItem:v8 defaultStyle:&v14];
  }

  else
  {
    if ([v7 isUnavailableItemIdentifier:v6])
    {
      v10 = 0;
      goto LABEL_7;
    }

    v11 = [SUUILockupComponent alloc];
    v12 = [v6 longLongValue];
    v14 = *&self->_lockupStyle.artworkSize;
    visibleFields = self->_lockupStyle.visibleFields;
    v9 = [(SUUILockupComponent *)v11 initWithItemIdentifier:v12 style:&v14];
  }

  v10 = v9;
LABEL_7:

  return v10;
}

- (id)_mediaComponentsWithChildren:(id)a3 context:(id)a4
{
  v4 = a4;
  v5 = [[SUUIGalleryPageComponent alloc] initWithCustomPageContext:v4];

  v6 = [(SUUIGalleryPageComponent *)v5 childComponents];

  return v6;
}

- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SUUILockupStyle *)a4
{
  v5 = a3;
  if ([v5 itemKind] == 17)
  {
    a4->visibleFields = 150;
  }

  v6 = [SUUILockupComponent alloc];
  v9 = *&a4->artworkSize;
  visibleFields = a4->visibleFields;
  v7 = [(SUUILockupComponent *)v6 initWithItem:v5 style:&v9];

  return v7;
}

- (void)_reloadMissingDataCount
{
  v25 = *MEMORY[0x277D85DE8];
  self->_missingDataCount = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_bricks;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v19 + 1) + 8 * v7) link];
        if (([v8 isActionable] & 1) == 0)
        {
          v9 = [v8 itemIdentifier];

          if (v9)
          {
            ++self->_missingDataCount;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_lockups;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v15 + 1) + 8 * v14) _needsItemData])
        {
          ++self->_missingDataCount;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_setSeeAllValuesWithLinkInfo:(id)a3
{
  v10 = a3;
  v4 = [v10 objectForKey:@"label"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 copy];
    seeAllTitle = self->_seeAllTitle;
    self->_seeAllTitle = v5;
  }

  v7 = [v10 objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
    seeAllURL = self->_seeAllURL;
    self->_seeAllURL = v8;
  }
}

- (void)_updateLockup:(id)a3 withItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0uLL;
  v12 = 0;
  if (v5)
  {
    [v5 lockupStyle];
  }

  if ([v6 itemKind] == 17)
  {
    SUUILockupStyleDefault(&v9);
    v7 = v11;
    v8 = v12;
    if (SUUILockupStyleEqualToLockupStyle(&v9, &v7))
    {
      v12 = 150;
      v9 = v11;
      v10 = 150;
      [v5 _setLockupStyle:&v9];
    }
  }

  [v5 _setItem:v6];
}

@end