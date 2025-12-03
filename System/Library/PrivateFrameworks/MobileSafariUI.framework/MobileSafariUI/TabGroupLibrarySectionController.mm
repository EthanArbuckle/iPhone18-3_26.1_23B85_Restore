@interface TabGroupLibrarySectionController
- (TabGroupLibrarySectionController)initWithConfiguration:(id)configuration forNamedGroups:(BOOL)groups;
- (id)_allItemControllers;
- (id)headerItemController;
- (id)itemControllerToHandleDropItemsFromSession:(id)session withProposedDestinationItemController:(id)controller atIndex:(int64_t)index;
- (id)itemControllers;
@end

@implementation TabGroupLibrarySectionController

- (id)headerItemController
{
  if (self->_showNamedGroups)
  {
    configuration = [(LibrarySectionController *)self configuration];
    tabGroupProvider = [configuration tabGroupProvider];
    namedTabGroups = [tabGroupProvider namedTabGroups];
    v7 = [namedTabGroups count];

    if (v7)
    {
      headerItemController = self->_headerItemController;
      if (!headerItemController)
      {
        v9 = [HeaderLibraryItemController alloc];
        configuration2 = [(LibrarySectionController *)self configuration];
        v11 = [(HeaderLibraryItemController *)v9 initWithConfiguration:configuration2 headerType:0];
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
  configuration = [(LibrarySectionController *)self configuration];
  tabGroupProvider = [configuration tabGroupProvider];
  tabGroups = [tabGroupProvider tabGroups];

  if ([tabGroups count])
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = tabGroups;
    v7 = tabGroups;
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
            configuration2 = [(LibrarySectionController *)self configuration];
            v16 = [(TabGroupLibraryItemController *)v14 initWithConfiguration:configuration2 tabGroup:v12];

            [orderedSet addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    array = [orderedSet array];

    tabGroups = v19;
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

- (TabGroupLibrarySectionController)initWithConfiguration:(id)configuration forNamedGroups:(BOOL)groups
{
  v5 = [(LibrarySectionController *)self initWithConfiguration:configuration];
  v6 = v5;
  if (v5)
  {
    v5->_showNamedGroups = groups;
    v7 = v5;
  }

  return v6;
}

- (id)itemControllerToHandleDropItemsFromSession:(id)session withProposedDestinationItemController:(id)controller atIndex:(int64_t)index
{
  sessionCopy = session;
  controllerCopy = controller;
  items = [sessionCopy items];
  v11 = [items count];

  if (!index || v11 >= 2)
  {
    v23 = controllerCopy;
    goto LABEL_20;
  }

  items2 = [sessionCopy items];
  firstObject = [items2 firstObject];

  safari_localWBTab = [firstObject safari_localWBTab];
  if (safari_localWBTab)
  {
    _allItemControllers = [(TabGroupLibrarySectionController *)self _allItemControllers];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __125__TabGroupLibrarySectionController_itemControllerToHandleDropItemsFromSession_withProposedDestinationItemController_atIndex___block_invoke;
    v25[3] = &unk_2781D82B8;
    v26 = safari_localWBTab;
    v16 = [_allItemControllers indexOfObjectPassingTest:v25];
    v18 = v16 != 0x7FFFFFFFFFFFFFFFLL && v16 <= index;
    v19 = [_allItemControllers objectAtIndexedSubscript:index - 1];
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

    v22 = controllerCopy;
    goto LABEL_18;
  }

  v23 = controllerCopy;
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
  itemControllers = [(TabGroupLibrarySectionController *)self itemControllers];
  v3 = [itemControllers safari_mapObjectsUsingBlock:&__block_literal_global_23];
  safari_flattenedArray = [v3 safari_flattenedArray];

  return safari_flattenedArray;
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