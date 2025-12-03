@interface NUPagingEngine
- (NUPagingEngine)initWithArticlePageFactory:(id)factory;
- (id)createPagingForArticleIDs:(id)ds;
- (id)paging:(id)paging byAddingPage:(id)page afterPage:(id)afterPage;
- (id)paging:(id)paging byRemovingPage:(id)page;
@end

@implementation NUPagingEngine

- (NUPagingEngine)initWithArticlePageFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = NUPagingEngine;
  v6 = [(NUPagingEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_articlePageFactory, factory);
  }

  return v7;
}

- (id)createPagingForArticleIDs:(id)ds
{
  dsCopy = ds;
  articlePageFactory = [(NUPagingEngine *)self articlePageFactory];
  v6 = [articlePageFactory createPagesForArticleIDs:dsCopy];

  v7 = [[NUPagingBlueprint alloc] initWithPages:v6];

  return v7;
}

- (id)paging:(id)paging byAddingPage:(id)page afterPage:(id)afterPage
{
  v27 = *MEMORY[0x277D85DE8];
  pagingCopy = paging;
  pageCopy = page;
  afterPageCopy = afterPage;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  allPages = [pagingCopy allPages];
  v12 = [allPages countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(allPages);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        [array addObject:v16];
        if (v16 == afterPageCopy)
        {
          [array addObject:pageCopy];
        }
      }

      v13 = [allPages countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [NUPagingBlueprint alloc];
  v18 = [array copy];
  v19 = [(NUPagingBlueprint *)v17 initWithPages:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)paging:(id)paging byRemovingPage:(id)page
{
  v23 = *MEMORY[0x277D85DE8];
  pagingCopy = paging;
  pageCopy = page;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allPages = [pagingCopy allPages];
  v9 = [allPages countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allPages);
        }

        if (*(*(&v18 + 1) + 8 * i) != pageCopy)
        {
          [array addObject:?];
        }
      }

      v10 = [allPages countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = [NUPagingBlueprint alloc];
  v14 = [array copy];
  v15 = [(NUPagingBlueprint *)v13 initWithPages:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end