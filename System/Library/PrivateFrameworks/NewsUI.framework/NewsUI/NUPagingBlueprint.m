@interface NUPagingBlueprint
- (NSArray)allPages;
- (NUPage)firstPage;
- (NUPage)lastPage;
- (NUPagingBlueprint)initWithPages:(id)a3;
- (id)pageAfterIdentifier:(id)a3;
- (id)pageBeforeForIdentifier:(id)a3;
- (id)pageForIdentifier:(id)a3;
- (void)forEachPage:(id)a3;
@end

@implementation NUPagingBlueprint

- (NUPagingBlueprint)initWithPages:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NUPagingBlueprint;
  v5 = [(NUPagingBlueprint *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB70];
    v7 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_17];
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

- (id)pageBeforeForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[NUPagingBlueprintItem alloc] initWithPageID:v4];

  v6 = [(NUPagingBlueprint *)self blueprintItems];
  v7 = [v6 indexOfObject:v5];

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
    v11 = 0;
  }

  else
  {
    v9 = [(NUPagingBlueprint *)self blueprintItems];
    v10 = [v9 objectAtIndex:v7 - 1];

    v11 = [v10 page];
  }

  return v11;
}

- (id)pageForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[NUPagingBlueprintItem alloc] initWithPageID:v4];

  v6 = [(NUPagingBlueprint *)self blueprintItems];
  v7 = [v6 indexOfObject:v5];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(NUPagingBlueprint *)self blueprintItems];
    v10 = [v9 objectAtIndex:v7];

    v8 = [v10 page];
  }

  return v8;
}

- (id)pageAfterIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[NUPagingBlueprintItem alloc] initWithPageID:v4];

  v6 = [(NUPagingBlueprint *)self blueprintItems];
  v7 = [v6 indexOfObject:v5];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7 + 1, -[NUPagingBlueprint blueprintItems](self, "blueprintItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8 >= v10))
  {
    v13 = 0;
  }

  else
  {
    v11 = [(NUPagingBlueprint *)self blueprintItems];
    v12 = [v11 objectAtIndex:v8];

    v13 = [v12 page];
  }

  return v13;
}

- (void)forEachPage:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NUPagingBlueprint *)self blueprintItems];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) page];
          if (v10)
          {
            v4[2](v4, v10);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NUPage)firstPage
{
  v2 = [(NUPagingBlueprint *)self blueprintItems];
  v3 = [v2 firstObject];
  v4 = [v3 page];

  return v4;
}

- (NUPage)lastPage
{
  v2 = [(NUPagingBlueprint *)self blueprintItems];
  v3 = [v2 lastObject];
  v4 = [v3 page];

  return v4;
}

- (NSArray)allPages
{
  v2 = [(NUPagingBlueprint *)self blueprintItems];
  v3 = [v2 valueForKeyPath:@"page"];

  return v3;
}

@end