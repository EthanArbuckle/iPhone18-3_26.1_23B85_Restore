@interface DOCModifyFavoritesOperation
- (DOCModifyFavoritesOperation)initWithItemsToFavorite:(id)a3 favoriteRanks:(id)a4 undoManager:(id)a5;
- (DOCModifyFavoritesOperation)initWithItemsToUnfavorite:(id)a3 undoManager:(id)a4;
- (NSString)actionNameForUndoing;
- (id)currentFavoriteRanks;
- (id)currentFavorites;
- (id)favoriteRanksFromItems:(id)a3;
- (id)oldRanksForOperationItems;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (void)registerUndo;
@end

@implementation DOCModifyFavoritesOperation

- (DOCModifyFavoritesOperation)initWithItemsToFavorite:(id)a3 favoriteRanks:(id)a4 undoManager:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = DOCModifyFavoritesOperation;
  v11 = [(FPModifyFavoritesOperation *)&v18 initWithItemsToFavorite:a3 favoriteRanks:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [(DOCModifyFavoritesOperation *)v11 currentFavorites];
    oldFavorites = v12->_oldFavorites;
    v12->_oldFavorites = v13;

    v15 = [(DOCModifyFavoritesOperation *)v12 currentFavoriteRanks];
    oldRanks = v12->_oldRanks;
    v12->_oldRanks = v15;

    objc_storeStrong(&v12->_updatedRanks, a4);
    objc_storeStrong(&v12->_undoManager, a5);
    v12->_isUnfavorite = 0;
    [(DOCModifyFavoritesOperation *)v12 registerUndo];
  }

  return v12;
}

- (DOCModifyFavoritesOperation)initWithItemsToUnfavorite:(id)a3 undoManager:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = DOCModifyFavoritesOperation;
  v8 = [(FPModifyFavoritesOperation *)&v17 initWithItemsToUnfavorite:a3];
  v9 = v8;
  if (v8)
  {
    v10 = [(DOCModifyFavoritesOperation *)v8 currentFavorites];
    oldFavorites = v9->_oldFavorites;
    v9->_oldFavorites = v10;

    v12 = [(DOCModifyFavoritesOperation *)v9 currentFavoriteRanks];
    oldRanks = v9->_oldRanks;
    v9->_oldRanks = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
    updatedRanks = v9->_updatedRanks;
    v9->_updatedRanks = v14;

    objc_storeStrong(&v9->_undoManager, a4);
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

  v7 = [(FPTransformOperation *)self items];
  v8 = [v7 count];

  v9 = [(FPTransformOperation *)self items];
  v10 = [v9 firstObject];
  v11 = [v10 displayName];

  if (v8 == 1)
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, v11];
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
  v3 = [(FPTransformOperation *)self items];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(DOCModifyFavoritesOperation *)self isUnfavorite];
    v6 = [DOCModifyFavoritesOperation alloc];
    v7 = [(FPTransformOperation *)self items];
    if (v5)
    {
      v8 = [(DOCModifyFavoritesOperation *)self undoManager];
      v9 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToUnfavorite:v7 undoManager:v8];
    }

    else
    {
      v8 = [(DOCModifyFavoritesOperation *)self updatedRanks];
      v10 = [(DOCModifyFavoritesOperation *)self undoManager];
      v9 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToFavorite:v7 favoriteRanks:v8 undoManager:v10];
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
  v3 = [(FPTransformOperation *)self items];
  v4 = [v3 count];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v5 = [(DOCModifyFavoritesOperation *)self oldRanksForOperationItems];
  if ([(DOCModifyFavoritesOperation *)self isUnfavorite])
  {
    v6 = [DOCModifyFavoritesOperation alloc];
    v7 = [(FPTransformOperation *)self items];
    v8 = [(DOCModifyFavoritesOperation *)self undoManager];
  }

  else
  {
    v10 = [v5 count];
    v6 = [DOCModifyFavoritesOperation alloc];
    v7 = [(FPTransformOperation *)self items];
    v8 = [(DOCModifyFavoritesOperation *)self undoManager];
    if (!v10)
    {
      v11 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToUnfavorite:v7 undoManager:v8];
      goto LABEL_7;
    }
  }

  v11 = [(DOCModifyFavoritesOperation *)v6 initWithItemsToFavorite:v7 favoriteRanks:v5 undoManager:v8];
LABEL_7:
  v9 = v11;

LABEL_8:

  return v9;
}

- (void)registerUndo
{
  v3 = [(DOCModifyFavoritesOperation *)self undoManager];
  [v3 registerUndoOperationForSender:self];
}

- (id)currentFavorites
{
  v2 = +[DOCFavoritesManager sharedManager];
  v3 = [v2 favoritedLocations];

  return v3;
}

- (id)currentFavoriteRanks
{
  v3 = [(DOCModifyFavoritesOperation *)self currentFavorites];
  v4 = [(DOCModifyFavoritesOperation *)self favoriteRanksFromItems:v3];

  return v4;
}

- (id)favoriteRanksFromItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) favoriteRank];
        [v4 addObject:v10];
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
  v4 = [(FPTransformOperation *)self items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__DOCModifyFavoritesOperation_oldRanksForOperationItems__block_invoke;
  v9[3] = &unk_278F9BBF8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

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