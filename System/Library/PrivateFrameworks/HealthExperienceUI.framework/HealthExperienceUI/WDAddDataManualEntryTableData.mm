@interface WDAddDataManualEntryTableData
- (WDAddDataManualEntryTableData)initWithSections:(id)a3;
- (id)cellForRowAtIndexPath:(id)a3;
- (id)itemForCell:(id)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
@end

@implementation WDAddDataManualEntryTableData

- (WDAddDataManualEntryTableData)initWithSections:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WDAddDataManualEntryTableData;
  v6 = [(WDAddDataManualEntryTableData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sections, a3);
  }

  return v7;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_sections objectAtIndexedSubscript:a3];
  v4 = [v3 numberOfCells];

  return v4;
}

- (id)cellForRowAtIndexPath:(id)a3
{
  sections = self->_sections;
  v4 = a3;
  v5 = -[NSArray objectAtIndexedSubscript:](sections, "objectAtIndexedSubscript:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 cellAtIndex:v6];

  return v7;
}

- (id)itemForCell:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) itemForCell:{v4, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

@end