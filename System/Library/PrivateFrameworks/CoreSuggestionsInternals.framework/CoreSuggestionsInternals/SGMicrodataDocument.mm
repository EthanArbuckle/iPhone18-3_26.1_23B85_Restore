@interface SGMicrodataDocument
- (SGMicrodataDocument)init;
- (id)asJsonLd;
- (id)jsonLdForItem:(id)item;
@end

@implementation SGMicrodataDocument

- (SGMicrodataDocument)init
{
  v8.receiver = self;
  v8.super_class = SGMicrodataDocument;
  v2 = [(SGMicrodataDocument *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    htmlIds = v2->_htmlIds;
    v2->_htmlIds = v3;

    v5 = objc_opt_new();
    items = v2->_items;
    v2->_items = v5;
  }

  return v2;
}

- (id)asJsonLd
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_items;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(SGMicrodataDocument *)self jsonLdForItem:*(*(&v12 + 1) + 8 * i), v12];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)jsonLdForItem:(id)item
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  selfCopy = self;
  [itemCopy resolveItemRefsWithDocument:self];
  v5 = objc_opt_new();
  itemType = [itemCopy itemType];

  if (itemType)
  {
    itemType2 = [itemCopy itemType];
    v8 = [itemType2 count];

    itemType3 = [itemCopy itemType];
    v10 = itemType3;
    if (v8 == 1)
    {
      [itemType3 anyObject];
    }

    else
    {
      [itemType3 allObjects];
    }
    v11 = ;
    [v5 setObject:v11 forKeyedSubscript:@"@type"];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  itemProps = [itemCopy itemProps];
  v13 = [itemProps countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(itemProps);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        stringValue = [v17 stringValue];

        if (stringValue)
        {
          stringValue2 = [v17 stringValue];
          if (!stringValue2)
          {
            goto LABEL_21;
          }
        }

        else
        {
          itemValue = [v17 itemValue];
          stringValue2 = [(SGMicrodataDocument *)selfCopy jsonLdForItem:itemValue];

          if (!stringValue2)
          {
            goto LABEL_21;
          }
        }

        propertyName = [v17 propertyName];
        v22 = [v5 objectForKeyedSubscript:propertyName];

        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v22 addObject:stringValue2];
          }

          else
          {
            v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v22, stringValue2, 0}];
            propertyName2 = [v17 propertyName];
            [v5 setObject:v24 forKeyedSubscript:propertyName2];
          }
        }

        else
        {
          propertyName3 = [v17 propertyName];
          [v5 setObject:stringValue2 forKeyedSubscript:propertyName3];
        }

LABEL_21:
      }

      v14 = [itemProps countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

@end