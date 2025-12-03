@interface CKInboxModel
- (CKInboxModel)initWithSections:(id)sections footerAction:(id)action;
- (CKInboxModelDelegate)delegate;
- (id)buildItemsMap:(id)map;
@end

@implementation CKInboxModel

- (CKInboxModel)initWithSections:(id)sections footerAction:(id)action
{
  sectionsCopy = sections;
  actionCopy = action;
  v16.receiver = self;
  v16.super_class = CKInboxModel;
  v9 = [(CKInboxModel *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sections, sections);
    v11 = _Block_copy(actionCopy);
    footerAction = v10->_footerAction;
    v10->_footerAction = v11;

    v13 = [(CKInboxModel *)v10 buildItemsMap:sectionsCopy];
    itemsMap = v10->_itemsMap;
    v10->_itemsMap = v13;
  }

  return v10;
}

- (id)buildItemsMap:(id)map
{
  v32 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = mapCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        items = [v9 items];
        v11 = [items countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(items);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              filterMode = [v15 filterMode];

              if (filterMode)
              {
                filterMode2 = [v15 filterMode];
                [v4 setObject:v15 forKeyedSubscript:filterMode2];
              }
            }

            v12 = [items countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v18 = [v4 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (CKInboxModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end