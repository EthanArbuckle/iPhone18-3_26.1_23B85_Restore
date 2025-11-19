@interface SUUIGridComponent
- (SUUIEditorialStyle)editorialStyle;
- (SUUIGridComponent)initWithBrickItems:(id)a3;
- (SUUIGridComponent)initWithCustomPageContext:(id)a3;
- (SUUIGridComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4;
- (SUUIGridComponent)initWithGridItems:(id)a3;
- (SUUIGridComponent)initWithLockups:(id)a3;
- (SUUIGridComponent)initWithRoomContext:(id)a3 gridType:(int64_t)a4;
- (SUUIGridComponent)initWithViewElement:(id)a3;
- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SUUILockupStyle *)a4;
- (id)_updateWithInvalidItemIdentifiers:(id)a3;
- (id)_updateWithMissingItems:(id)a3;
- (void)_reloadMissingItemCount;
- (void)_setChildrenWithFeaturedContextContext:(id)a3;
- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4;
@end

@implementation SUUIGridComponent

- (SUUIGridComponent)initWithBrickItems:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUUIGridComponent;
  v5 = [(SUUIGridComponent *)&v15 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    children = v5->_children;
    v5->_children = v6;

    SUUIEditorialStyleDefault(&v12);
    v8 = v12;
    v9 = v13;
    *&v5->_editorialStyle.titleFontSize = v14;
    *&v5->_editorialStyle.alignment = v8;
    *&v5->_editorialStyle.bodyFontSize = v9;
    v5->_gridType = 2;
    SUUILockupStyleDefault(&v12);
    v10 = v12;
    v5->_lockupStyle.visibleFields = v13;
    *&v5->_lockupStyle.artworkSize = v10;
    [(SUUIGridComponent *)v5 _reloadMissingItemCount];
  }

  return v5;
}

- (SUUIGridComponent)initWithCustomPageContext:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = SUUIGridComponent;
  v5 = [(SUUIPageComponent *)&v43 initWithCustomPageContext:v4];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = [v4 componentDictionary];
  v7 = [v6 objectForKey:@"childType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v7 isEqualToString:@"lockup"])
    {
      v8 = 0;
LABEL_11:
      v5->_gridType = v8;
      goto LABEL_12;
    }

    if ([v7 isEqualToString:@"brick"])
    {
      v8 = 2;
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"editorial"])
    {
      v8 = 3;
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"media"])
    {
      v8 = 4;
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = [v6 objectForKey:@"ranked"];

  if (objc_opt_respondsToSelector())
  {
    v5->_showsIndexNumbers = [v9 BOOLValue];
  }

  v10 = [v6 objectForKey:@"editorialStyle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    SUUIEditorialStyleForDictionary(v10, &v40);
  }

  else
  {
    SUUIEditorialStyleDefault(&v40);
  }

  v11 = v40;
  v12 = v41;
  *&v5->_editorialStyle.titleFontSize = v42;
  *&v5->_editorialStyle.alignment = v11;
  *&v5->_editorialStyle.bodyFontSize = v12;
  v13 = [v6 objectForKey:@"lockupStyle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    SUUILockupStyleForDictionary(v13, v4, &v40);
  }

  else
  {
    SUUILockupStyleDefault(&v40);
  }

  v14 = v40;
  v5->_lockupStyle.visibleFields = v41;
  *&v5->_lockupStyle.artworkSize = v14;
  v15 = [v6 objectForKey:@"children"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v13;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    children = v5->_children;
    v5->_children = v16;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = v15;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (!v19)
    {
      goto LABEL_53;
    }

    v20 = v19;
    v21 = *v37;
    while (1)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v36 + 1) + 8 * i);
        gridType = v5->_gridType;
        if (gridType > 2)
        {
          switch(gridType)
          {
            case 3:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v25 = [v4 copy];
              [v25 setComponentDictionary:v23];
              v32 = SUUIEditorialComponent;
              break;
            case 4:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }

              v25 = [v4 copy];
              [v25 setComponentDictionary:v23];
              v32 = SUUIMediaComponent;
              break;
            case 5:
LABEL_34:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v25 = [v4 copy];
                [v25 setComponentDictionary:v23];
                v29 = [[SUUILockupComponent alloc] initWithCustomPageContext:v25];
                if (v29)
                {
                  v30 = v4;
                  [(NSMutableArray *)v5->_children addObject:v29];
                  v31 = [(SUUILockupComponent *)v29 editorial];

                  if (v31)
                  {
                    v5->_gridType = 1;
                  }

                  v4 = v30;
                }

                goto LABEL_49;
              }

              v25 = [v4 itemForItemIdentifier:v23];
              if (v25)
              {
                v27 = [SUUILockupComponent alloc];
                v28 = *&v5->_lockupStyle.artworkSize;
                *&v41 = v5->_lockupStyle.visibleFields;
                v40 = v28;
                v26 = [(SUUILockupComponent *)v27 initWithItem:v25 style:&v40];
LABEL_37:
                v29 = v26;
LABEL_48:
                [(NSMutableArray *)v5->_children addObject:v29];
LABEL_49:
              }

              continue;
            default:
              continue;
          }

          v29 = [[v32 alloc] initWithCustomPageContext:v25];
          if (v29)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        if (gridType < 2)
        {
          goto LABEL_34;
        }

        if (gridType == 2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [v4 copy];
            [v25 setComponentDictionary:v23];
            v26 = [[SUUIBrickItem alloc] initWithCustomPageContext:v25];
            goto LABEL_37;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v20)
      {
LABEL_53:

        [(SUUIGridComponent *)v5 _reloadMissingItemCount];
        v13 = v35;
        v15 = v34;
        break;
      }
    }
  }

LABEL_55:
  return v5;
}

- (SUUIGridComponent)initWithFeaturedContentContext:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = SUUIGridComponent;
  v7 = [(SUUIPageComponent *)&v17 initWithFeaturedContentContext:v6 kind:a4];
  v8 = v7;
  if (v7)
  {
    p_editorialStyle = &v7->_editorialStyle;
    SUUIEditorialStyleDefault(&v14);
    v10 = v14;
    v11 = v15;
    *&v8->_editorialStyle.titleFontSize = v16;
    *&p_editorialStyle->alignment = v10;
    *&v8->_editorialStyle.bodyFontSize = v11;
    SUUILockupStyleDefault(&v14);
    v12 = v14;
    v8->_lockupStyle.visibleFields = v15;
    *&v8->_lockupStyle.artworkSize = v12;
    [(SUUIGridComponent *)v8 _setChildrenWithFeaturedContextContext:v6];
  }

  return v8;
}

- (SUUIGridComponent)initWithGridItems:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SUUIGridComponent;
  v5 = [(SUUIGridComponent *)&v30 init];
  v6 = v5;
  if (v5)
  {
    p_editorialStyle = &v5->_editorialStyle;
    SUUIEditorialStyleDefault(&v27);
    v8 = v27;
    v9 = v28;
    *&v6->_editorialStyle.titleFontSize = v29;
    *&p_editorialStyle->alignment = v8;
    *&v6->_editorialStyle.bodyFontSize = v9;
    v6->_gridType = 0;
    SUUILockupStyleDefault(&v27);
    v10 = v27;
    v6->_lockupStyle.visibleFields = v28;
    *&v6->_lockupStyle.artworkSize = v10;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = *&v6->_lockupStyle.artworkSize;
          *&v28 = v6->_lockupStyle.visibleFields;
          v27 = v18;
          v19 = [(SUUIGridComponent *)v6 _newLockupComponentWithItem:v17 defaultStyle:&v27, v23];
          [v11 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    v20 = [v11 mutableCopy];
    children = v6->_children;
    v6->_children = v20;

    [(SUUIGridComponent *)v6 _reloadMissingItemCount];
  }

  return v6;
}

- (SUUIGridComponent)initWithLockups:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SUUIGridComponent;
  v5 = [(SUUIGridComponent *)&v27 init];
  v6 = v5;
  if (v5)
  {
    p_editorialStyle = &v5->_editorialStyle;
    SUUIEditorialStyleDefault(&v24);
    v8 = v24;
    v9 = v25;
    *&v6->_editorialStyle.titleFontSize = v26;
    *&p_editorialStyle->alignment = v8;
    *&v6->_editorialStyle.bodyFontSize = v9;
    v6->_gridType = 0;
    SUUILockupStyleDefault(&v24);
    v10 = v24;
    v6->_lockupStyle.visibleFields = v25;
    *&v6->_lockupStyle.artworkSize = v10;
    v11 = [v4 mutableCopy];
    children = v6->_children;
    v6->_children = v11;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v6->_children;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v20 + 1) + 8 * i) editorial];

          if (v18)
          {
            v6->_gridType = 1;
            goto LABEL_12;
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [(SUUIGridComponent *)v6 _reloadMissingItemCount];
  }

  return v6;
}

- (SUUIGridComponent)initWithRoomContext:(id)a3 gridType:(int64_t)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = SUUIGridComponent;
  v7 = [(SUUIGridComponent *)&v17 init];
  v8 = v7;
  if (v7)
  {
    p_editorialStyle = &v7->_editorialStyle;
    SUUIEditorialStyleDefault(&v14);
    v10 = v14;
    v11 = v15;
    *&v8->_editorialStyle.titleFontSize = v16;
    *&p_editorialStyle->alignment = v10;
    *&v8->_editorialStyle.bodyFontSize = v11;
    v8->_gridType = a4;
    SUUILockupStyleDefault(&v14);
    v12 = v14;
    v8->_lockupStyle.visibleFields = v15;
    *&v8->_lockupStyle.artworkSize = v12;
    if (v8->_gridType == 5)
    {
      v8->_lockupStyle.artworkSize = 1;
      v8->_lockupStyle.visibleFields = 1054;
    }

    [(SUUIGridComponent *)v8 _setChildrenWithFeaturedContextContext:v6];
  }

  return v8;
}

- (SUUIGridComponent)initWithViewElement:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIGridComponent;
  result = [(SUUIPageComponent *)&v4 initWithViewElement:a3];
  if (result)
  {
    result->_gridType = 6;
  }

  return result;
}

- (void)enumerateMissingItemIdentifiersFromIndex:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  gridType = self->_gridType;
  if (gridType >= 2)
  {
    if (gridType != 2)
    {
      goto LABEL_6;
    }

    v9 = v6;
    v6 = [(SUUIPageComponent *)self _enumerateMissingItemIdentifiersFromBricks:self->_children startIndex:a3 usingBlock:v6];
  }

  else
  {
    v9 = v6;
    v6 = [(SUUIPageComponent *)self _enumerateMissingItemIdentifiersFromLockups:self->_children startIndex:a3 usingBlock:v6];
  }

  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (id)_updateWithInvalidItemIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__SUUIGridComponent__updateWithInvalidItemIdentifiers___block_invoke;
  v14 = &unk_2798FBF80;
  v6 = v4;
  v15 = v6;
  v7 = v5;
  v16 = v7;
  [(SUUIGridComponent *)self enumerateMissingItemIdentifiersFromIndex:0 usingBlock:&v11];
  if ([v7 count])
  {
    [(NSMutableArray *)self->_children removeObjectsAtIndexes:v7];
    self->_missingItemCount -= [v7 count];
  }

  v8 = v16;
  v9 = v7;

  return v7;
}

uint64_t __55__SUUIGridComponent__updateWithInvalidItemIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addIndex:a3];
  }

  return result;
}

- (id)_updateWithMissingItems:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v17 = 0uLL;
  v18 = 0;
  SUUILockupStyleDefault(&v17);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SUUIGridComponent__updateWithMissingItems___block_invoke;
  v11[3] = &unk_2798FE668;
  v12 = v4;
  v13 = self;
  v6 = v5;
  v14 = v6;
  v15 = v17;
  v16 = v18;
  v7 = v4;
  [(SUUIGridComponent *)self enumerateMissingItemIdentifiersFromIndex:0 usingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v9;
}

void __45__SUUIGridComponent__updateWithMissingItems___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKey:a2];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(v6 + 72);
    if (v7 < 2)
    {
      v8 = [*(v6 + 24) objectAtIndex:a3];
      [v8 _setItem:v5];
      v13 = 0uLL;
      v14 = 0;
      if (v8)
      {
        [v8 lockupStyle];
      }

      if ([v5 itemKind] == 17)
      {
        v11 = *(a1 + 56);
        v12 = *(a1 + 72);
        v9 = v13;
        v10 = v14;
        if (SUUILockupStyleEqualToLockupStyle(&v11, &v9))
        {
          v14 = 214;
          v11 = v13;
          v12 = 214;
          [v8 _setLockupStyle:&v11];
        }
      }

      goto LABEL_10;
    }

    if (v7 == 2)
    {
      v8 = [*(v6 + 24) objectAtIndex:a3];
      [v8 _setLinkItem:v5];
LABEL_10:
      [*(a1 + 48) addIndex:a3];
      --*(*(a1 + 40) + 104);
    }
  }
}

- (id)_newLockupComponentWithItem:(id)a3 defaultStyle:(SUUILockupStyle *)a4
{
  v5 = a3;
  if ([v5 itemKind] == 17)
  {
    a4->visibleFields = 214;
  }

  v6 = [SUUILockupComponent alloc];
  v9 = *&a4->artworkSize;
  visibleFields = a4->visibleFields;
  v7 = [(SUUILockupComponent *)v6 initWithItem:v5 style:&v9];

  return v7;
}

- (void)_reloadMissingItemCount
{
  v27 = *MEMORY[0x277D85DE8];
  self->_missingItemCount = 0;
  gridType = self->_gridType;
  if (gridType >= 2)
  {
    if (gridType != 2)
    {
      return;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = self->_children;
    v11 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v4);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) link];
          if (([v15 isActionable] & 1) == 0)
          {
            v16 = [v15 itemIdentifier];

            if (v16)
            {
              ++self->_missingItemCount;
            }
          }
        }

        v12 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_children;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * j);
          v10 = [v9 item];
          if (v10)
          {
          }

          else if ([v9 itemIdentifier])
          {
            ++self->_missingItemCount;
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v6);
    }
  }
}

- (void)_setChildrenWithFeaturedContextContext:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentDictionary];
  v6 = [v5 objectForKey:@"adamIds"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = 24;
    children = self->_children;
    self->_children = v7;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = v11;
    v13 = *v30;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v4 itemForItemIdentifier:v15];
          if (v16)
          {
            v27 = *&self->_lockupStyle.artworkSize;
            visibleFields = self->_lockupStyle.visibleFields;
            v17 = [(SUUIGridComponent *)self _newLockupComponentWithItem:v16 defaultStyle:&v27];
            goto LABEL_12;
          }

          if (([v4 isUnavailableItemIdentifier:v15] & 1) == 0)
          {
            v18 = v10;
            v19 = v4;
            v20 = v8;
            v21 = [SUUILockupComponent alloc];
            v22 = [v15 longLongValue];
            v27 = *&self->_lockupStyle.artworkSize;
            visibleFields = self->_lockupStyle.visibleFields;
            v23 = v21;
            v8 = v20;
            v4 = v19;
            v10 = v18;
            v17 = [(SUUILockupComponent *)v23 initWithItemIdentifier:v22 style:&v27];
LABEL_12:
            v24 = v17;
            [*(&self->super.super.isa + v8) addObject:{v17, v25}];
          }

          continue;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v12)
      {
LABEL_16:

        [(SUUIGridComponent *)self _reloadMissingItemCount];
        v6 = v25;
        v5 = v26;
        break;
      }
    }
  }
}

- (SUUIEditorialStyle)editorialStyle
{
  v3 = *&self[1].bodyFontWeight;
  *&retstr->alignment = *&self->titleFontSize;
  *&retstr->bodyFontSize = v3;
  *&retstr->titleFontSize = self[1].titleFontWeight;
  return self;
}

@end