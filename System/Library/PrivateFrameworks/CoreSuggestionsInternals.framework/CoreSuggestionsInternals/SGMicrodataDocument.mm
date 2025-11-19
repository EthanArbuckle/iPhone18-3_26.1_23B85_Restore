@interface SGMicrodataDocument
- (SGMicrodataDocument)init;
- (id)asJsonLd;
- (id)jsonLdForItem:(id)a3;
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

- (id)jsonLdForItem:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = self;
  [v4 resolveItemRefsWithDocument:self];
  v5 = objc_opt_new();
  v6 = [v4 itemType];

  if (v6)
  {
    v7 = [v4 itemType];
    v8 = [v7 count];

    v9 = [v4 itemType];
    v10 = v9;
    if (v8 == 1)
    {
      [v9 anyObject];
    }

    else
    {
      [v9 allObjects];
    }
    v11 = ;
    [v5 setObject:v11 forKeyedSubscript:@"@type"];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [v4 itemProps];
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 stringValue];

        if (v18)
        {
          v19 = [v17 stringValue];
          if (!v19)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v20 = [v17 itemValue];
          v19 = [(SGMicrodataDocument *)v28 jsonLdForItem:v20];

          if (!v19)
          {
            goto LABEL_21;
          }
        }

        v21 = [v17 propertyName];
        v22 = [v5 objectForKeyedSubscript:v21];

        if (v22)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v22 addObject:v19];
          }

          else
          {
            v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v22, v19, 0}];
            v25 = [v17 propertyName];
            [v5 setObject:v24 forKeyedSubscript:v25];
          }
        }

        else
        {
          v23 = [v17 propertyName];
          [v5 setObject:v19 forKeyedSubscript:v23];
        }

LABEL_21:
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

@end