@interface TabGroupLibrarySectionController
- (TabGroupLibrarySectionController)initWithConfiguration:(id)a3 forNamedGroups:(BOOL)a4;
- (id)_allItemControllers;
- (id)headerItemController;
- (id)itemControllerToHandleDropItemsFromSession:(id)a3 withProposedDestinationItemController:(id)a4 atIndex:(int64_t)a5;
- (id)itemControllers;
@end

@implementation TabGroupLibrarySectionController

- (id)headerItemController
{
  if (self->_showNamedGroups)
  {
    v4 = [(LibrarySectionController *)self configuration];
    v5 = [v4 tabGroupProvider];
    v6 = [v5 namedTabGroups];
    v7 = [v6 count];

    if (v7)
    {
      headerItemController = self->_headerItemController;
      if (!headerItemController)
      {
        v9 = [HeaderLibraryItemController alloc];
        v10 = [(LibrarySectionController *)self configuration];
        v11 = [(HeaderLibraryItemController *)v9 initWithConfiguration:v10 headerType:0];
        v12 = self->_headerItemController;
        self->_headerItemController = v11;

        headerItemController = self->_headerItemController;
      }

      v13 = headerItemController;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)itemControllers
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(LibrarySectionController *)self configuration];
  v4 = [v3 tabGroupProvider];
  v5 = [v4 tabGroups];

  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB40] orderedSet];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          showNamedGroups = self->_showNamedGroups;
          if (showNamedGroups == [v12 isNamed])
          {
            v14 = [TabGroupLibraryItemController alloc];
            v15 = [(LibrarySectionController *)self configuration];
            v16 = [(TabGroupLibraryItemController *)v14 initWithConfiguration:v15 tabGroup:v12];

            [v6 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v17 = [v6 array];

    v5 = v19;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

- (TabGroupLibrarySectionController)initWithConfiguration:(id)a3 forNamedGroups:(BOOL)a4
{
  v5 = [(LibrarySectionController *)self initWithConfiguration:a3];
  v6 = v5;
  if (v5)
  {
    v5->_showNamedGroups = a4;
    v7 = v5;
  }

  return v6;
}

- (id)itemControllerToHandleDropItemsFromSession:(id)a3 withProposedDestinationItemController:(id)a4 atIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 items];
  v11 = [v10 count];

  if (!a5 || v11 >= 2)
  {
    v23 = v9;
    goto LABEL_20;
  }

  v12 = [v8 items];
  v13 = [v12 firstObject];

  v14 = [v13 safari_localWBTab];
  if (v14)
  {
    v15 = [(TabGroupLibrarySectionController *)self _allItemControllers];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __125__TabGroupLibrarySectionController_itemControllerToHandleDropItemsFromSession_withProposedDestinationItemController_atIndex___block_invoke;
    v25[3] = &unk_2781D82B8;
    v26 = v14;
    v16 = [v15 indexOfObjectPassingTest:v25];
    v18 = v16 != 0x7FFFFFFFFFFFFFFFLL && v16 <= a5;
    v19 = [v15 objectAtIndexedSubscript:a5 - 1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v18 || (isKindOfClass & 1) != 0)
    {
      v22 = v19;
      if (!v18)
      {
LABEL_18:
        v23 = v22;

        goto LABEL_19;
      }
    }

    else
    {
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();
      v22 = v19;
      if (v21)
      {
        goto LABEL_18;
      }
    }

    v22 = v9;
    goto LABEL_18;
  }

  v23 = v9;
LABEL_19:

LABEL_20:

  return v23;
}

uint64_t __125__TabGroupLibrarySectionController_itemControllerToHandleDropItemsFromSession_withProposedDestinationItemController_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 tab];
    v4 = WBSIsEqual();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_allItemControllers
{
  v2 = [(TabGroupLibrarySectionController *)self itemControllers];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_23];
  v4 = [v3 safari_flattenedArray];

  return v4;
}

id __55__TabGroupLibrarySectionController__allItemControllers__block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 isExpanded])
  {
    v8[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v4 = [v2 subitems];

    v5 = [v3 safari_arrayByAddingObjectsFromArrayIfNotDuplicates:v4];

    v2 = v3;
  }

  else
  {
    v7 = v2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  }

  return v5;
}

@end