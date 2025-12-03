@interface DOCModifyFavoritesOperation
- (DOCModifyFavoritesOperation)initWithItemsToFavorite:(id)favorite favoriteRanks:(id)ranks undoManager:(id)manager;
- (DOCModifyFavoritesOperation)initWithItemsToUnfavorite:(id)unfavorite undoManager:(id)manager;
- (NSString)actionNameForUndoing;
- (id)currentFavoriteRanks;
- (id)currentFavorites;
- (id)favoriteRanksFromItems:(id)items;
- (id)oldRanksForOperationItems;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)registerUndo;
@end

@implementation DOCModifyFavoritesOperation

- (DOCModifyFavoritesOperation)initWithItemsToFavorite:(id)favorite favoriteRanks:(id)ranks undoManager:(id)manager
{
  ranksCopy = ranks;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = DOCModifyFavoritesOperation;
  v11 = [(FPModifyFavoritesOperation *)&v18 initWithItemsToFavorite:favorite favoriteRanks:ranksCopy];
  v12 = v11;
  if (v11)
  {
    currentFavorites = [(DOCModifyFavoritesOperation *)v11 currentFavorites];
    oldFavorites = v12->_oldFavorites;
    v12->_oldFavorites = currentFavorites;

    currentFavoriteRanks = [(DOCModifyFavoritesOperation *)v12 currentFavoriteRanks];
    oldRanks = v12->_oldRanks;
    v12->_oldRanks = currentFavoriteRanks;

    objc_storeStrong(&v12->_updatedRanks, ranks);
    objc_storeStrong(&v12->_undoManager, manager);
    v12->_isUnfavorite = 0;
    [(DOCModifyFavoritesOperation *)v12 registerUndo];
  }

  return v12;
}

- (DOCModifyFavoritesOperation)initWithItemsToUnfavorite:(id)unfavorite undoManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = DOCModifyFavoritesOperation;
  v8 = [(FPModifyFavoritesOperation *)&v17 initWithItemsToUnfavorite:unfavorite];
  v9 = v8;
  if (v8)
  {
    currentFavorites = [(DOCModifyFavoritesOperation *)v8 currentFavorites];
    oldFavorites = v9->_oldFavorites;
    v9->_oldFavorites = currentFavorites;

    currentFavoriteRanks = [(DOCModifyFavoritesOperation *)v9 currentFavoriteRanks];
    oldRanks = v9->_oldRanks;
    v9->_oldRanks = currentFavoriteRanks;

    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
    updatedRanks = v9->_updatedRanks;
    v9->_updatedRanks = v14;

    objc_storeStrong(&v9->_undoManager, manager);
    v9->_isUnfavorite = 1;
    [(DOCModifyFavoritesOperation *)v9 registerUndo];
  }

  return v9;
}

- (NSString)actionNameForUndoing
{
  v3 = _DocumentManagerBundle();
  v4 = [v3 localizedStringForKey:@"Modify Favorite of “%@” [undo / redo command]" value:@"Modify Favorite of “%@”" table:@"Localizable"];

  v5 = _DocumentManagerBundle();
  v6 = [v5 localizedStringForKey:@"Modify Favorites of %lu Items [undo / redo command]" value:@"Modify Favorites of %lu Items [undo / redo command]" table:@"Localizable"];

  items = [(FPTransformOperation *)self items];
  v8 = [items count];

  items2 = [(FPTransformOperation *)self items];
  firstObject = [items2 firstObject];
  displayName = [firstObject displayName];

  if (v8 == 1)
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, displayName];
  }

  else
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v8];
  }
  v12 = ;

  return v12;
}

- (id)operationForRedoing
{
  items = [(FPTransformOperation *)self items];
  v4 = [items count];

  if (v4)
  {
    isUnfavorite = [(DOCModifyFavoritesOperation *)self isUnfavorite];
    v6 = [DOCModifyFavoritesOperation alloc];
    items2 = [(FPTransformOperation *)self items];
    if (isUnfavorite)
    {
      undoManager = [(DOCModifyFavoritesOperation *)self undoManager];
      v9 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToUnfavorite:items2 undoManager:undoManager];
    }

    else
    {
      undoManager = [(DOCModifyFavoritesOperation *)self updatedRanks];
      undoManager2 = [(DOCModifyFavoritesOperation *)self undoManager];
      v9 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToFavorite:items2 favoriteRanks:undoManager undoManager:undoManager2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)operationForUndoing
{
  items = [(FPTransformOperation *)self items];
  v4 = [items count];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_8;
  }

  oldRanksForOperationItems = [(DOCModifyFavoritesOperation *)self oldRanksForOperationItems];
  if ([(DOCModifyFavoritesOperation *)self isUnfavorite])
  {
    v6 = [DOCModifyFavoritesOperation alloc];
    items2 = [(FPTransformOperation *)self items];
    undoManager = [(DOCModifyFavoritesOperation *)self undoManager];
  }

  else
  {
    v10 = [oldRanksForOperationItems count];
    v6 = [DOCModifyFavoritesOperation alloc];
    items2 = [(FPTransformOperation *)self items];
    undoManager = [(DOCModifyFavoritesOperation *)self undoManager];
    if (!v10)
    {
      v11 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToUnfavorite:items2 undoManager:undoManager];
      goto LABEL_7;
    }
  }

  v11 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToFavorite:items2 favoriteRanks:oldRanksForOperationItems undoManager:undoManager];
LABEL_7:
  v9 = v11;

LABEL_8:

  return v9;
}

- (void)registerUndo
{
  undoManager = [(DOCModifyFavoritesOperation *)self undoManager];
  [undoManager registerUndoOperationForSender:self];
}

- (id)currentFavorites
{
  v2 = +[DOCFavoritesManager sharedManager];
  favoritedLocations = [v2 favoritedLocations];

  return favoritedLocations;
}

- (id)currentFavoriteRanks
{
  currentFavorites = [(DOCModifyFavoritesOperation *)self currentFavorites];
  v4 = [(DOCModifyFavoritesOperation *)self favoriteRanksFromItems:currentFavorites];

  return v4;
}

- (id)favoriteRanksFromItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        favoriteRank = [*(*(&v13 + 1) + 8 * i) favoriteRank];
        [v4 addObject:favoriteRank];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)oldRanksForOperationItems
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = [(FPTransformOperation *)self items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__DOCModifyFavoritesOperation_oldRanksForOperationItems__block_invoke;
  v9[3] = &unk_278F9BBF8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [items enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __56__DOCModifyFavoritesOperation_oldRanksForOperationItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [*(a1 + 32) oldFavorites];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __56__DOCModifyFavoritesOperation_oldRanksForOperationItems__block_invoke_2;
  v11 = &unk_278F9BBD0;
  v5 = v3;
  v12 = v5;
  v15 = &v16;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  [v4 enumerateObjectsUsingBlock:&v8];

  if ((v17[3] & 1) == 0)
  {
    [*(a1 + 40) addObject:{&unk_285C77EE0, v8, v9, v10, v11, v12}];
  }

  _Block_object_dispose(&v16, 8);
}

void __56__DOCModifyFavoritesOperation_oldRanksForOperationItems__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 itemID];
  v8 = [v6 itemID];

  LODWORD(v6) = [v7 isEqualToItemID:v8];
  if (v6)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v9 = *(a1 + 40);
    v11 = [*(a1 + 48) oldRanks];
    v10 = [v11 objectAtIndexedSubscript:a3];
    [v9 addObject:v10];
  }
}

@end