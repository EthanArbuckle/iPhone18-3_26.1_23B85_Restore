@interface WDAddDataManualEntrySectionData
- (WDAddDataManualEntrySectionData)initWithItems:(id)a3;
- (id)_cells;
- (id)cellAtIndex:(int64_t)a3;
- (id)itemForCell:(id)a3;
- (int64_t)numberOfCells;
@end

@implementation WDAddDataManualEntrySectionData

- (WDAddDataManualEntrySectionData)initWithItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDAddDataManualEntrySectionData;
  v5 = [(WDAddDataManualEntrySectionData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (id)_cells
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) tableViewCells];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (int64_t)numberOfCells
{
  v2 = [(WDAddDataManualEntrySectionData *)self _cells];
  v3 = [v2 count];

  return v3;
}

- (id)cellAtIndex:(int64_t)a3
{
  v4 = [(WDAddDataManualEntrySectionData *)self _cells];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (id)itemForCell:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 tableViewCells];
        v11 = [v10 containsObject:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end