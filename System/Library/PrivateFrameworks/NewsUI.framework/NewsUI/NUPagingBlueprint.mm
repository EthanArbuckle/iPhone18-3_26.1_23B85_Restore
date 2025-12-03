@interface NUPagingBlueprint
- (NSArray)allPages;
- (NUPage)firstPage;
- (NUPage)lastPage;
- (NUPagingBlueprint)initWithPages:(id)pages;
- (id)pageAfterIdentifier:(id)identifier;
- (id)pageBeforeForIdentifier:(id)identifier;
- (id)pageForIdentifier:(id)identifier;
- (void)forEachPage:(id)page;
@end

@implementation NUPagingBlueprint

- (NUPagingBlueprint)initWithPages:(id)pages
{
  pagesCopy = pages;
  v11.receiver = self;
  v11.super_class = NUPagingBlueprint;
  v5 = [(NUPagingBlueprint *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB70];
    v7 = [pagesCopy fc_arrayByTransformingWithBlock:&__block_literal_global_17];
    v8 = [v6 orderedSetWithArray:v7];
    blueprintItems = v5->_blueprintItems;
    v5->_blueprintItems = v8;
  }

  return v5;
}

NUPagingBlueprintItem *__35__NUPagingBlueprint_initWithPages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NUPagingBlueprintItem alloc] initWithPage:v2];

  return v3;
}

- (id)pageBeforeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[NUPagingBlueprintItem alloc] initWithPageID:identifierCopy];

  blueprintItems = [(NUPagingBlueprint *)self blueprintItems];
  v7 = [blueprintItems indexOfObject:v5];

  if (v7)
  {
    v8 = v7 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    page = 0;
  }

  else
  {
    blueprintItems2 = [(NUPagingBlueprint *)self blueprintItems];
    v10 = [blueprintItems2 objectAtIndex:v7 - 1];

    page = [v10 page];
  }

  return page;
}

- (id)pageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[NUPagingBlueprintItem alloc] initWithPageID:identifierCopy];

  blueprintItems = [(NUPagingBlueprint *)self blueprintItems];
  v7 = [blueprintItems indexOfObject:v5];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    page = 0;
  }

  else
  {
    blueprintItems2 = [(NUPagingBlueprint *)self blueprintItems];
    v10 = [blueprintItems2 objectAtIndex:v7];

    page = [v10 page];
  }

  return page;
}

- (id)pageAfterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[NUPagingBlueprintItem alloc] initWithPageID:identifierCopy];

  blueprintItems = [(NUPagingBlueprint *)self blueprintItems];
  v7 = [blueprintItems indexOfObject:v5];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7 + 1, -[NUPagingBlueprint blueprintItems](self, "blueprintItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8 >= v10))
  {
    page = 0;
  }

  else
  {
    blueprintItems2 = [(NUPagingBlueprint *)self blueprintItems];
    v12 = [blueprintItems2 objectAtIndex:v8];

    page = [v12 page];
  }

  return page;
}

- (void)forEachPage:(id)page
{
  v17 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  if (pageCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    blueprintItems = [(NUPagingBlueprint *)self blueprintItems];
    v6 = [blueprintItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(blueprintItems);
          }

          page = [*(*(&v12 + 1) + 8 * v9) page];
          if (page)
          {
            pageCopy[2](pageCopy, page);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [blueprintItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NUPage)firstPage
{
  blueprintItems = [(NUPagingBlueprint *)self blueprintItems];
  firstObject = [blueprintItems firstObject];
  page = [firstObject page];

  return page;
}

- (NUPage)lastPage
{
  blueprintItems = [(NUPagingBlueprint *)self blueprintItems];
  lastObject = [blueprintItems lastObject];
  page = [lastObject page];

  return page;
}

- (NSArray)allPages
{
  blueprintItems = [(NUPagingBlueprint *)self blueprintItems];
  v3 = [blueprintItems valueForKeyPath:@"page"];

  return v3;
}

@end