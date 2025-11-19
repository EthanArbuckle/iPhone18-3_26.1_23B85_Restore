@interface GKTurnBasedMatchesDataSource
- (GKTurnBasedMatchesDataSourceDelegate)delegate;
- (SEL)detailPressedAction;
- (UIEdgeInsets)cellMarginInsets;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (unint64_t)numberOfMatches;
- (void)collectionViewWillBecomeActive:(id)a3;
- (void)configureCollectionView:(id)a3;
- (void)configureDataSource;
- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4;
- (void)setDetailPressedAction:(SEL)a3;
@end

@implementation GKTurnBasedMatchesDataSource

- (void)configureDataSource
{
  v25[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = GKTurnBasedMatchesDataSource;
  [(GKSplittingDataSource *)&v21 configureDataSource];
  v3 = objc_alloc_init(GKRawTurnsDataSource);
  v20.receiver = self;
  v20.super_class = GKTurnBasedMatchesDataSource;
  [(GKSplittingDataSource *)&v20 setUnderlyingDataSource:v3];

  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateSortKey" ascending:0];
  v25[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [(GKSplittingDataSource *)self addSectionWithTitle:v5 sortDescriptors:v7];

  v8 = GKGameCenterUIFrameworkBundle();
  v9 = GKGetLocalizedStringFromTableInBundle();
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateSortKey" ascending:0];
  v24 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [(GKSplittingDataSource *)self addSectionWithTitle:v9 sortDescriptors:v11];

  v12 = GKGameCenterUIFrameworkBundle();
  v13 = GKGetLocalizedStringFromTableInBundle();
  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateSortKey" ascending:0];
  v23 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [(GKSplittingDataSource *)self addSectionWithTitle:v13 sortDescriptors:v15];

  v16 = GKGameCenterUIFrameworkBundle();
  v17 = GKGetLocalizedStringFromTableInBundle();
  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateSortKey" ascending:0];
  v22 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [(GKSplittingDataSource *)self addSectionWithTitle:v17 sortDescriptors:v19];
}

- (void)collectionViewWillBecomeActive:(id)a3
{
  v12.receiver = self;
  v12.super_class = GKTurnBasedMatchesDataSource;
  [(GKCollectionViewDataSource *)&v12 collectionViewWillBecomeActive:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke;
  v11[3] = &unk_279669D10;
  v11[4] = self;
  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:v11];
  [(GKSplittingDataSource *)self setFilterPredicate:v4 forSection:0];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke_2;
  v10[3] = &unk_279669D10;
  v10[4] = self;
  v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v10];
  [(GKSplittingDataSource *)self setFilterPredicate:v5 forSection:1];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke_3;
  v9[3] = &unk_279669D10;
  v9[4] = self;
  v6 = [MEMORY[0x277CCAC30] predicateWithBlock:v9];
  [(GKSplittingDataSource *)self setFilterPredicate:v6 forSection:2];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke_4;
  v8[3] = &unk_279669D10;
  v8[4] = self;
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v8];
  [(GKSplittingDataSource *)self setFilterPredicate:v7 forSection:3];
}

BOOL __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];
  v5 = [*(a1 + 32) game];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [v3 state] == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];
  v5 = [*(a1 + 32) game];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = ([v3 state] & 0xFFFFFFFE) == 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];
  v5 = [*(a1 + 32) game];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [v3 state] == 4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __63__GKTurnBasedMatchesDataSource_collectionViewWillBecomeActive___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];
  v5 = [*(a1 + 32) game];
  v6 = [v5 bundleIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [v3 state] == 5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)configureCollectionView:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedMatchesDataSource;
  v3 = a3;
  [(GKCollectionViewDataSource *)&v4 configureCollectionView:v3];
  [GKTurnParticipantCell registerCellClassesForCollectionView:v3, v4.receiver, v4.super_class];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = -[GKSplittingDataSource sectionInfoForSection:](self, "sectionInfoForSection:", [v6 section]);
  v9 = [v8 items];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v11 = [v7 _gkDequeueCellForClass:objc_opt_class() forIndexPath:v6];
  v12 = v11;
  if (self->_detailPressedAction)
  {
    detailPressedAction = self->_detailPressedAction;
  }

  else
  {
    detailPressedAction = 0;
  }

  [v11 setDetailPressedAction:detailPressedAction];

  [v12 setMatch:v10];
  v14 = [v10 playingWithParticipantOrFirstKnownPlayer];
  [v12 setParticipant:v14];

  v15 = GKGameCenterUIFrameworkBundle();
  v16 = GKGetLocalizedStringFromTableInBundle();
  v17 = [GKEditAction deleteActionWithName:v16];
  v27[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [v12 setEditActions:v18];

  [v12 setInsets:{self->_cellMarginInsets.top, self->_cellMarginInsets.left, self->_cellMarginInsets.bottom, self->_cellMarginInsets.right}];
  v19 = [v6 item];
  v20 = [v8 items];
  v21 = [v20 count] - 1;

  if (v19 == v21)
  {
    v22 = [v12 layer];
    [v22 setCornerRadius:10.0];

    v23 = [v12 layer];
    [v23 setMaskedCorners:12];

    v24 = [v12 divider];
    [v24 setHidden:1];
  }

  else
  {
    v25 = [v12 divider];
    [v25 setHidden:0];

    v24 = [v12 layer];
    [v24 setCornerRadius:0.0];
  }

  return v12;
}

- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[GKSplittingDataSource sectionInfoForSection:](self, "sectionInfoForSection:", [v6 section]);
  v9 = [v8 items];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  if ([v10 state] == 1)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke;
    v38[3] = &unk_279669D38;
    v39 = v10;
    [v39 declineInviteWithCompletionHandler:v38];
  }

  else if ([v10 state] == 5)
  {
    [v10 removeWithCompletionHandler:0];
  }

  else
  {
    v11 = [(GKTurnBasedMatchesDataSource *)self delegate];
    [v11 turnBasedMatchesDataSource:self didQuitMatch:v10];
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = &__block_literal_global_0;
  v12 = [&__block_literal_global_0 copy];
  v26 = v10;
  v13 = v33[5];
  v33[5] = v12;

  v14 = [v8 items];
  v15 = [v14 count];

  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = _Block_copy(v33[5]);
      if (i == [v6 item])
      {
        v18 = v31;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke_2;
        v31[3] = &unk_279669D60;
        v31[6] = v17;
        v31[4] = self;
      }

      else
      {
        v18 = v30;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke_3;
        v30[3] = &unk_279669D88;
        v30[6] = v17;
        v30[7] = i;
        v30[4] = self;
      }

      v18[5] = v6;
      v19 = _Block_copy(v18);
      v20 = v33[5];
      v33[5] = v19;

      v21 = [v33[5] copy];
      v22 = v33[5];
      v33[5] = v21;
    }
  }

  v23 = [v6 item];
  v24 = [v8 items];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke_4;
  v29[3] = &__block_descriptor_40_e11__24__0_8Q16l;
  v29[4] = v23;
  v25 = [v24 _gkFilterWithBlock:v29];
  [v8 setItems:v25];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke_5;
  v28[3] = &unk_279669DD0;
  v28[4] = &v32;
  [(GKCollectionViewDataSource *)self notifyBatchUpdate:v28];
  if (v7)
  {
    v7[2](v7, 0);
  }

  _Block_object_dispose(&v32, 8);
}

void __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke_2(void *a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  (*(a1[6] + 16))();
  v2 = a1[4];
  v4[0] = a1[5];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 notifyItemsRemovedAtIndexPaths:v3];
}

void __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) inSection:{objc_msgSend(*(a1 + 40), "section")}];
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) - (*(a1 + 56) >= objc_msgSend(*(a1 + 40) inSection:{"item")), objc_msgSend(*(a1 + 40), "section")}];
  [v2 notifyItemMovedFromIndexPath:v4 toIndexPaths:v3];
}

id __72__GKTurnBasedMatchesDataSource_removeItemAtIndexPath_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) == a3)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

- (unint64_t)numberOfMatches
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(GKSplittingDataSource *)self itemsForSection:v3];
    v4 += [v5 count];

    ++v3;
  }

  while (v3 != 4);
  return v4;
}

- (GKTurnBasedMatchesDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateWeak);

  return WeakRetained;
}

- (SEL)detailPressedAction
{
  if (self->_detailPressedAction)
  {
    return self->_detailPressedAction;
  }

  else
  {
    return 0;
  }
}

- (void)setDetailPressedAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_detailPressedAction = v3;
}

- (UIEdgeInsets)cellMarginInsets
{
  top = self->_cellMarginInsets.top;
  left = self->_cellMarginInsets.left;
  bottom = self->_cellMarginInsets.bottom;
  right = self->_cellMarginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end