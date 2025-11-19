@interface GKTurnBasedParticipantsDataSource
- (NSString)sectionTitle;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)configureCollectionView:(id)a3;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5;
- (void)setMatch:(id)a3;
@end

@implementation GKTurnBasedParticipantsDataSource

- (void)setMatch:(id)a3
{
  v5 = a3;
  if (self->_match != v5)
  {
    v7 = v5;
    [(GKTurnBasedParticipantsDataSource *)self willChangeValueForKey:@"match"];
    objc_storeStrong(&self->_match, a3);
    v6 = [(GKTurnBasedMatch *)v7 participants];
    [(GKBasicCollectionViewDataSource *)self setItems:v6];

    [(GKTurnBasedParticipantsDataSource *)self didChangeValueForKey:@"match"];
    v5 = v7;
  }
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5
{
  v6 = a5;
  v7 = [(GKTurnBasedMatch *)self->_match matchID];

  if (v7)
  {
    v8 = MEMORY[0x277D0C238];
    v9 = [(GKTurnBasedMatch *)self->_match matchID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__GKTurnBasedParticipantsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
    v10[3] = &unk_27966CB98;
    v11 = v6;
    v12 = self;
    [v8 loadMatchWithID:v9 withCompletionHandler:v10];
  }
}

void __88__GKTurnBasedParticipantsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__GKTurnBasedParticipantsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_2;
  v9[3] = &unk_279669E48;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [v7 addUpdate:v9 error:a3];
}

uint64_t __88__GKTurnBasedParticipantsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    return [*(result + 40) setMatch:?];
  }

  return result;
}

- (void)configureCollectionView:(id)a3
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedParticipantsDataSource;
  v3 = a3;
  [(GKBasicCollectionViewDataSource *)&v4 configureCollectionView:v3];
  [GKTurnParticipantCell registerCellClassesForCollectionView:v3, v4.receiver, v4.super_class];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 _gkDequeueCellForClass:objc_opt_class() forIndexPath:v6];

  [v8 setIsDetail:1];
  [v8 setMatch:self->_match];
  v9 = [(GKBasicCollectionViewDataSource *)self items];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];
  [v8 setParticipant:v10];

  v11 = [v6 item];
  v12 = [(GKBasicCollectionViewDataSource *)self items];
  v13 = [v12 count] - 1;

  if (v11 == v13)
  {
    v14 = [v8 layer];
    [v14 setCornerRadius:10.0];

    v15 = [v8 layer];
    [v15 setMaskedCorners:12];

    v16 = [v8 divider];
    v17 = v16;
    v18 = 1;
  }

  else
  {
    if ([v6 item])
    {
      v19 = [v8 divider];
      [v19 setHidden:0];

      v17 = [v8 layer];
      [v17 setCornerRadius:0.0];
      goto LABEL_7;
    }

    v20 = [v8 layer];
    [v20 setCornerRadius:10.0];

    v21 = [v8 layer];
    [v21 setMaskedCorners:3];

    v16 = [v8 divider];
    v17 = v16;
    v18 = 0;
  }

  [v16 setHidden:v18];
LABEL_7:

  return v8;
}

- (NSString)sectionTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [(GKTurnBasedMatch *)self->_match participants];
  v7 = [v3 stringWithFormat:v5, objc_msgSend(v6, "count")];

  return v7;
}

@end