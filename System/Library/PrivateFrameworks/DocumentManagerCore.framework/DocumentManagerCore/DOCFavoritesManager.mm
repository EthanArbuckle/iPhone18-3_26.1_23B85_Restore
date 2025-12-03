@interface DOCFavoritesManager
+ (id)favoritesCollection;
+ (id)sharedManager;
- (BOOL)isGathering;
- (NSArray)favoritedLocations;
- (id)_newlyComputedRanksForItems:(id)items;
- (void)_reverseInsertAll:(id)all atIndex:(int64_t)index completion:(id)completion;
- (void)addFavorite:(id)favorite completion:(id)completion;
- (void)favoriteItems:(id)items ranks:(id)ranks completion:(id)completion;
- (void)favoritedLocations;
- (void)insertFavorite:(id)favorite atIndex:(int64_t)index completion:(id)completion;
- (void)insertFavorites:(id)favorites atIndex:(int64_t)index completion:(id)completion;
- (void)isGathering;
- (void)moveFavorite:(id)favorite toTargetIndex:(int64_t)index completion:(id)completion;
- (void)redistributeRanksCompletion:(id)completion;
- (void)removeFavorite:(id)favorite completion:(id)completion;
- (void)runInMainThread:(id)thread;
- (void)updateFavoritesRanksToMatchOrderedFavorites:(id)favorites completion:(id)completion;
@end

@implementation DOCFavoritesManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__DOCFavoritesManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

void __36__DOCFavoritesManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [objc_opt_class() favoritesCollection];
  v2 = [(DOCItemCollectionObserver *)[DOCFavoritesManager alloc] initWithItemCollection:v4];
  v3 = sharedManager_sharedManager;
  sharedManager_sharedManager = v2;
}

+ (id)favoritesCollection
{
  v9[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  newFavoritesCollection = [defaultManager newFavoritesCollection];

  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_1];
  [newFavoritesCollection setItemFilteringPredicate:v4];

  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"favoriteRank" ascending:0 comparator:&__block_literal_global_10];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [newFavoritesCollection reorderItemsWithSortDescriptors:v6];

  v7 = *MEMORY[0x277D85DE8];

  return newFavoritesCollection;
}

- (NSArray)favoritedLocations
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(DOCFavoritesManager *)a2 favoritedLocations];
  }

  itemCollection = [(DOCItemCollectionObserver *)self itemCollection];
  items = [itemCollection items];

  return items;
}

- (BOOL)isGathering
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [(DOCFavoritesManager *)a2 isGathering];
  }

  itemCollection = [(DOCItemCollectionObserver *)self itemCollection];
  isGathering = [itemCollection isGathering];

  return isGathering;
}

uint64_t __42__DOCFavoritesManager_favoritesCollection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[DOCManagedPermission defaultPermission];
    v4 = [v3 canHostAppPerformAction:2 targetNode:v2];

    v5 = [v2 favoriteRank];
    if (v5)
    {
      v6 = ([v2 isTrashed] ^ 1) & v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __42__DOCFavoritesManager_favoritesCollection__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 unsignedIntegerValue];
  if (v6 <= [v5 unsignedIntegerValue])
  {
    v8 = [v4 unsignedIntegerValue];
    if (v8 >= [v5 unsignedIntegerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)addFavorite:(id)favorite completion:(id)completion
{
  favoriteCopy = favorite;
  v7 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__DOCFavoritesManager_addFavorite_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v12 = v7;
  v8 = v7;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(v9);
  [(DOCFavoritesManager *)self insertFavorite:favoriteCopy atIndex:0 completion:v10];
}

uint64_t __46__DOCFavoritesManager_addFavorite_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)insertFavorites:(id)favorites atIndex:(int64_t)index completion:(id)completion
{
  favoritesCopy = favorites;
  v9 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__DOCFavoritesManager_insertFavorites_atIndex_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v18 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  v13 = [favoritesCopy mutableCopy];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__DOCFavoritesManager_insertFavorites_atIndex_completion___block_invoke_2;
  v15[3] = &unk_278F9B620;
  v16 = v12;
  v14 = v12;
  [(DOCFavoritesManager *)self _reverseInsertAll:v13 atIndex:index completion:v15];
}

uint64_t __58__DOCFavoritesManager_insertFavorites_atIndex_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_reverseInsertAll:(id)all atIndex:(int64_t)index completion:(id)completion
{
  allCopy = all;
  v9 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__DOCFavoritesManager__reverseInsertAll_atIndex_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v10 = v9;
  v22 = v10;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  if ([allCopy count])
  {
    lastObject = [allCopy lastObject];
    [allCopy removeLastObject];
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = index;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__DOCFavoritesManager__reverseInsertAll_atIndex_completion___block_invoke_2;
    v15[3] = &unk_278F9B698;
    v15[4] = self;
    v14 = lastObject;
    v16 = v14;
    v19 = v20;
    v17 = allCopy;
    v18 = v12;
    [(DOCFavoritesManager *)self insertFavorite:v14 atIndex:index completion:v15];

    _Block_object_dispose(v20, 8);
  }

  else
  {
    (*(v12 + 2))(v12, 1);
  }
}

uint64_t __60__DOCFavoritesManager__reverseInsertAll_atIndex_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60__DOCFavoritesManager__reverseInsertAll_atIndex_completion___block_invoke_2(uint64_t a1, char a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__DOCFavoritesManager__reverseInsertAll_atIndex_completion___block_invoke_3;
  v9[3] = &unk_278F9B670;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v12 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  v13 = a2;
  DOCRunInMainThread(v9);
}

void __60__DOCFavoritesManager__reverseInsertAll_atIndex_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) favoritedLocations];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 64) + 8) + 24) = v3;
  }

  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 64) + 8) + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__DOCFavoritesManager__reverseInsertAll_atIndex_completion___block_invoke_4;
  v7[3] = &unk_278F9B648;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  [v4 _reverseInsertAll:v6 atIndex:v5 completion:v7];
}

- (void)updateFavoritesRanksToMatchOrderedFavorites:(id)favorites completion:(id)completion
{
  favoritesCopy = favorites;
  v7 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__DOCFavoritesManager_updateFavoritesRanksToMatchOrderedFavorites_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v8 = v7;
  v52 = v8;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(v9);
  if ([favoritesCopy count])
  {
    favoritedLocations = [(DOCFavoritesManager *)self favoritedLocations];
    v12 = [favoritesCopy count];
    if (v12 != [favoritedLocations count])
    {
      v20 = docPickerLogHandle;
      if (!docPickerLogHandle)
      {
        DOCInitLogging();
        v20 = docPickerLogHandle;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(DOCFavoritesManager *)v20 updateFavoritesRanksToMatchOrderedFavorites:v21 completion:v22, v23, v24, v25, v26, v27];
      }

      v10[2](v10, 0);
      goto LABEL_20;
    }

    v40 = favoritedLocations;
    array = [MEMORY[0x277CBEB18] array];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __78__DOCFavoritesManager_updateFavoritesRanksToMatchOrderedFavorites_completion___block_invoke_22;
    v49[3] = &unk_278F9B6C0;
    v14 = array;
    v50 = v14;
    [favoritesCopy enumerateObjectsUsingBlock:v49];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v15 = [v14 count];
    selfCopy = self;
    if (v15 == [favoritesCopy count])
    {
      firstObject = [favoritesCopy firstObject];
      firstObject2 = [v40 firstObject];
      v18 = [firstObject isEqual:firstObject2];

      if ((v18 & 1) == 0)
      {
        v19 = [favoritesCopy doc_computeNewRankForIndex:0];
        if (v19)
        {
          [v14 replaceObjectAtIndex:0 withObject:v19];
        }

        else
        {
          *(v46 + 24) = 1;
        }
      }

      v28 = v46;
      if ((v46[3] & 1) == 0)
      {
        firstObject3 = [v14 firstObject];
        unsignedLongLongValue = [firstObject3 unsignedLongLongValue];

        indexSet = [MEMORY[0x277CCAB58] indexSet];
        for (i = 1; i < [v14 count]; ++i)
        {
          v35 = [v14 objectAtIndexedSubscript:i];
          unsignedLongLongValue2 = [v35 unsignedLongLongValue];

          if (unsignedLongLongValue2 >= unsignedLongLongValue)
          {
            [indexSet addIndex:i];
            unsignedLongLongValue2 = unsignedLongLongValue;
          }

          unsignedLongLongValue = unsignedLongLongValue2;
        }

        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __78__DOCFavoritesManager_updateFavoritesRanksToMatchOrderedFavorites_completion___block_invoke_2;
        v41[3] = &unk_278F9B6E8;
        v37 = favoritesCopy;
        v42 = v37;
        v38 = v14;
        v43 = v38;
        v44 = &v45;
        [indexSet enumerateRangesUsingBlock:v41];

        if ((v46[3] & 1) == 0)
        {
          [(DOCFavoritesManager *)selfCopy favoriteItems:v37 ranks:v38 completion:v10];
          goto LABEL_19;
        }

LABEL_18:
        v29 = selfCopy;
        selfCopy = [(DOCFavoritesManager *)selfCopy _newlyComputedRanksForItems:favoritesCopy, selfCopy];
        [(DOCFavoritesManager *)v29 favoriteItems:favoritesCopy ranks:selfCopy completion:v10];

LABEL_19:
        _Block_object_dispose(&v45, 8);

        favoritedLocations = v40;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v28 = v46;
    }

    *(v28 + 24) = 1;
    goto LABEL_18;
  }

  v10[2](v10, 1);
LABEL_21:
}

uint64_t __78__DOCFavoritesManager_updateFavoritesRanksToMatchOrderedFavorites_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __78__DOCFavoritesManager_updateFavoritesRanksToMatchOrderedFavorites_completion___block_invoke_22(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 favoriteRank];
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v6 = [*(a1 + 32) addObject:v6];
    v7 = v9;
  }

  else
  {
    *a4 = 1;
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

void __78__DOCFavoritesManager_updateFavoritesRanksToMatchOrderedFavorites_completion___block_invoke_2(uint64_t a1, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = a2 - 1;
  v9 = a2 + a3;
  v10 = [*(a1 + 32) count];
  v11 = [*(a1 + 40) objectAtIndexedSubscript:v8];
  v12 = v11;
  if (v9 >= v10)
  {
    v17 = [*(a1 + 40) doc_ranksForInsertingBelowRank:v11 count:v5];
    if (v17)
    {
      [*(a1 + 40) replaceObjectsInRange:v6 withObjectsFromArray:{v5, v17}];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    v13 = [v11 unsignedLongLongValue];

    v14 = [*(a1 + 40) objectAtIndexedSubscript:v9];
    v15 = [v14 unsignedLongLongValue];

    v16 = v13 + ~v15;
    if (v5 <= v16)
    {
      if (v6 < v9)
      {
        v18 = v16 / v5;
        do
        {
          v13 -= v18;
          v19 = *(a1 + 40);
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v13];
          [v19 replaceObjectAtIndex:v6 withObject:v20];

          ++v6;
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
}

- (void)moveFavorite:(id)favorite toTargetIndex:(int64_t)index completion:(id)completion
{
  v38[1] = *MEMORY[0x277D85DE8];
  favoriteCopy = favorite;
  v9 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__DOCFavoritesManager_moveFavorite_toTargetIndex_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v10 = v9;
  v36 = v10;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  favoritedLocations = [(DOCFavoritesManager *)self favoritedLocations];
  v14 = [favoritedLocations indexOfObject:favoriteCopy];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL || v14 == index)
  {
    v12[2](v12, 0);
  }

  else
  {
    favoritedLocations2 = [(DOCFavoritesManager *)self favoritedLocations];
    v16 = [favoritedLocations2 mutableCopy];

    [v16 removeObjectAtIndex:v14];
    v17 = [v16 count];
    if (v17 >= index)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = v17;
    }

    v19 = [v16 doc_computeNewRankForIndex:indexCopy];
    if (v19)
    {
      v38[0] = favoriteCopy;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      v37 = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      [(DOCFavoritesManager *)self favoriteItems:v20 ranks:v21 completion:v12];
    }

    else
    {
      v22 = docPickerLogHandle;
      if (!docPickerLogHandle)
      {
        DOCInitLogging();
        v22 = docPickerLogHandle;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(DOCFavoritesManager *)v22 moveFavorite:v23 toTargetIndex:v24 completion:v25, v26, v27, v28, v29];
      }

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __61__DOCFavoritesManager_moveFavorite_toTargetIndex_completion___block_invoke_27;
      v31[3] = &unk_278F9B710;
      v31[4] = self;
      v32 = favoriteCopy;
      indexCopy2 = index;
      v33 = v12;
      [(DOCFavoritesManager *)self redistributeRanksCompletion:v31];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __61__DOCFavoritesManager_moveFavorite_toTargetIndex_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __61__DOCFavoritesManager_moveFavorite_toTargetIndex_completion___block_invoke_27(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) moveFavorite:*(a1 + 40) toTargetIndex:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)removeFavorite:(id)favorite completion:(id)completion
{
  v30[1] = *MEMORY[0x277D85DE8];
  favoriteCopy = favorite;
  v7 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__DOCFavoritesManager_removeFavorite_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v8 = v7;
  v29 = v8;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(v9);
  favoritedLocations = [(DOCFavoritesManager *)self favoritedLocations];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__DOCFavoritesManager_removeFavorite_completion___block_invoke_2;
  v26[3] = &unk_278F9B738;
  v12 = favoriteCopy;
  v27 = v12;
  v13 = [favoritedLocations indexesOfObjectsPassingTest:v26];

  if ([v13 count])
  {
    v14 = [DOCModifyFavoritesOperation alloc];
    v30[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v16 = +[DOCUndoManager shared];
    v17 = [(DOCModifyFavoritesOperation *)v14 initWithItemsToUnfavorite:v15 undoManager:v16];

    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __49__DOCFavoritesManager_removeFavorite_completion___block_invoke_3;
    v23 = &unk_278F9B760;
    v24 = v12;
    v25 = v10;
    [(FPActionOperation *)v17 setActionCompletionBlock:&v20];
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    [defaultManager scheduleAction:v17];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __49__DOCFavoritesManager_removeFavorite_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __49__DOCFavoritesManager_removeFavorite_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

void __49__DOCFavoritesManager_removeFavorite_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = docPickerLogHandle;
    if (!docPickerLogHandle)
    {
      DOCInitLogging();
      v4 = docPickerLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__DOCFavoritesManager_removeFavorite_completion___block_invoke_3_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)insertFavorite:(id)favorite atIndex:(int64_t)index completion:(id)completion
{
  v35[1] = *MEMORY[0x277D85DE8];
  favoriteCopy = favorite;
  v9 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__DOCFavoritesManager_insertFavorite_atIndex_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v10 = v9;
  v33 = v10;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  favoritedLocations = [(DOCFavoritesManager *)self favoritedLocations];
  v14 = [favoritedLocations indexOfObject:favoriteCopy];

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    favoritedLocations2 = [(DOCFavoritesManager *)self favoritedLocations];
    v16 = [favoritedLocations2 doc_computeNewRankForIndex:index];

    if (v16)
    {
      v35[0] = favoriteCopy;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      v34 = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      [(DOCFavoritesManager *)self favoriteItems:v17 ranks:v18 completion:v12];
    }

    else
    {
      v19 = docPickerLogHandle;
      if (!docPickerLogHandle)
      {
        DOCInitLogging();
        v19 = docPickerLogHandle;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(DOCFavoritesManager *)v19 insertFavorite:v20 atIndex:v21 completion:v22, v23, v24, v25, v26];
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __57__DOCFavoritesManager_insertFavorite_atIndex_completion___block_invoke_32;
      v28[3] = &unk_278F9B710;
      v28[4] = self;
      v29 = favoriteCopy;
      indexCopy = index;
      v30 = v12;
      [(DOCFavoritesManager *)self redistributeRanksCompletion:v28];
    }
  }

  else
  {
    [(DOCFavoritesManager *)self moveFavorite:favoriteCopy toTargetIndex:index - (v14 < index) completion:v12];
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __57__DOCFavoritesManager_insertFavorite_atIndex_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __57__DOCFavoritesManager_insertFavorite_atIndex_completion___block_invoke_32(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) insertFavorite:*(a1 + 40) atIndex:*(a1 + 56) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)redistributeRanksCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__DOCFavoritesManager_redistributeRanksCompletion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v5 = v4;
  v13 = v5;
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(v6);
  favoritedLocations = [(DOCFavoritesManager *)self favoritedLocations];
  if ([favoritedLocations count] >= 2)
  {
    v9 = [(DOCFavoritesManager *)self _newlyComputedRanksForItems:favoritedLocations];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__DOCFavoritesManager_redistributeRanksCompletion___block_invoke_2;
    v10[3] = &unk_278F9B620;
    v11 = v7;
    [(DOCFavoritesManager *)self favoriteItems:favoritedLocations ranks:v9 completion:v10];
  }
}

uint64_t __51__DOCFavoritesManager_redistributeRanksCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __51__DOCFavoritesManager_redistributeRanksCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__DOCFavoritesManager_redistributeRanksCompletion___block_invoke_3;
  v3[3] = &unk_278F9B788;
  v4 = *(a1 + 32);
  v5 = a2;
  DOCRunInMainThread(v3);
}

- (id)_newlyComputedRanksForItems:(id)items
{
  itemsCopy = items;
  v4 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v7 = [v4 numberWithUnsignedLongLong:(v6 * 1000.0)];

  v8 = DOCRandomRankBetween(0, 0x3E8uLL);
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  if ([itemsCopy count])
  {
    v10 = 0;
    do
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "unsignedLongLongValue") - objc_msgSend(v8, "unsignedLongLongValue") * v10}];
      [v9 addObject:v11];

      ++v10;
    }

    while ([itemsCopy count] > v10);
  }

  return v9;
}

- (void)favoriteItems:(id)items ranks:(id)ranks completion:(id)completion
{
  itemsCopy = items;
  ranksCopy = ranks;
  v9 = _Block_copy(completion);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__DOCFavoritesManager_favoriteItems_ranks_completion___block_invoke;
  aBlock[3] = &unk_278F9B620;
  v29 = v9;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  v13 = [DOCModifyFavoritesOperation alloc];
  v14 = +[DOCUndoManager shared];
  v15 = [(DOCModifyFavoritesOperation *)v13 initWithItemsToFavorite:itemsCopy favoriteRanks:ranksCopy undoManager:v14];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__DOCFavoritesManager_favoriteItems_ranks_completion___block_invoke_2;
  v25[3] = &unk_278F9B760;
  v26 = itemsCopy;
  v16 = v12;
  v27 = v16;
  v17 = itemsCopy;
  [(FPActionOperation *)v15 setActionCompletionBlock:v25];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __54__DOCFavoritesManager_favoriteItems_ranks_completion___block_invoke_34;
  v23 = &unk_278F9B7B0;
  v24 = v16;
  v18 = v16;
  [(FPActionOperation *)v15 setErrorRecoveryHandler:&v20];
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  [defaultManager scheduleAction:v15];
}

uint64_t __54__DOCFavoritesManager_favoriteItems_ranks_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54__DOCFavoritesManager_favoriteItems_ranks_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = docPickerLogHandle;
    if (!docPickerLogHandle)
    {
      DOCInitLogging();
      v4 = docPickerLogHandle;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__DOCFavoritesManager_favoriteItems_ranks_completion___block_invoke_2_cold_1(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)runInMainThread:(id)thread
{
  v3 = MEMORY[0x277CCACC8];
  block = thread;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)favoritedLocations
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DOCFavoritesManager.m" lineNumber:78 description:@"Must call from main thread"];
}

- (void)isGathering
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DOCFavoritesManager.m" lineNumber:83 description:@"Must call from main thread"];
}

void __49__DOCFavoritesManager_removeFavorite_completion___block_invoke_3_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_249340000, v2, v3, "Failed to unfavorite item %@. Error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __54__DOCFavoritesManager_favoriteItems_ranks_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_249340000, v2, v3, "Failed to favorite items %@. Error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end