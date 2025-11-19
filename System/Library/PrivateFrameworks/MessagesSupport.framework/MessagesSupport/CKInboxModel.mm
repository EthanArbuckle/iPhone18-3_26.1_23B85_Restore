@interface CKInboxModel
- (CKInboxModel)initWithSections:(id)a3 footerAction:(id)a4;
- (CKInboxModelDelegate)delegate;
- (id)buildItemsMap:(id)a3;
@end

@implementation CKInboxModel

- (CKInboxModel)initWithSections:(id)a3 footerAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CKInboxModel;
  v9 = [(CKInboxModel *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sections, a3);
    v11 = _Block_copy(v8);
    footerAction = v10->_footerAction;
    v10->_footerAction = v11;

    v13 = [(CKInboxModel *)v10 buildItemsMap:v7];
    itemsMap = v10->_itemsMap;
    v10->_itemsMap = v13;
  }

  return v10;
}

- (id)buildItemsMap:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
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
        v10 = [v9 items];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * j);
              v16 = [v15 filterMode];

              if (v16)
              {
                v17 = [v15 filterMode];
                [v4 setObject:v15 forKeyedSubscript:v17];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
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