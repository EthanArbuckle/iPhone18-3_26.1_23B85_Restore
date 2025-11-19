@interface NUPagingEngine
- (NUPagingEngine)initWithArticlePageFactory:(id)a3;
- (id)createPagingForArticleIDs:(id)a3;
- (id)paging:(id)a3 byAddingPage:(id)a4 afterPage:(id)a5;
- (id)paging:(id)a3 byRemovingPage:(id)a4;
@end

@implementation NUPagingEngine

- (NUPagingEngine)initWithArticlePageFactory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUPagingEngine;
  v6 = [(NUPagingEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_articlePageFactory, a3);
  }

  return v7;
}

- (id)createPagingForArticleIDs:(id)a3
{
  v4 = a3;
  v5 = [(NUPagingEngine *)self articlePageFactory];
  v6 = [v5 createPagesForArticleIDs:v4];

  v7 = [[NUPagingBlueprint alloc] initWithPages:v6];

  return v7;
}

- (id)paging:(id)a3 byAddingPage:(id)a4 afterPage:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v7 allPages];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        [v10 addObject:v16];
        if (v16 == v9)
        {
          [v10 addObject:v8];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [NUPagingBlueprint alloc];
  v18 = [v10 copy];
  v19 = [(NUPagingBlueprint *)v17 initWithPages:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)paging:(id)a3 byRemovingPage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v5 allPages];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v18 + 1) + 8 * i) != v6)
        {
          [v7 addObject:?];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = [NUPagingBlueprint alloc];
  v14 = [v7 copy];
  v15 = [(NUPagingBlueprint *)v13 initWithPages:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end