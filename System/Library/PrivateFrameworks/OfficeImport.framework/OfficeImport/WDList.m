@interface WDList
- (BOOL)isAnyListLevelOverridden;
- (WDList)initWithDocument:(id)a3 listId:(int)a4 listDefinitionId:(int)a5;
- (id)addLevelOverrideWithLevel:(unsigned __int8)a3;
- (id)description;
- (id)levelOverrideForLevel:(unsigned __int8)a3;
@end

@implementation WDList

- (id)levelOverrideForLevel:(unsigned __int8)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->mLevelOverrides;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 level] == v3)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)addLevelOverrideWithLevel:(unsigned __int8)a3
{
  v3 = a3;
  v5 = [WDListLevelOverride alloc];
  WeakRetained = objc_loadWeakRetained(&self->mDocument);
  v7 = [(WDListLevelOverride *)v5 initWithDocument:WeakRetained level:v3];

  [(NSMutableArray *)self->mLevelOverrides addObject:v7];

  return v7;
}

- (BOOL)isAnyListLevelOverridden
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->mLevelOverrides;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isListLevelOverridden])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (WDList)initWithDocument:(id)a3 listId:(int)a4 listDefinitionId:(int)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = WDList;
  v9 = [(WDList *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->mDocument, v8);
    v10->mListId = a4;
    v10->mListDefinitionId = a5;
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mLevelOverrides = v10->mLevelOverrides;
    v10->mLevelOverrides = v11;
  }

  return v10;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDList;
  v2 = [(WDList *)&v4 description];

  return v2;
}

@end