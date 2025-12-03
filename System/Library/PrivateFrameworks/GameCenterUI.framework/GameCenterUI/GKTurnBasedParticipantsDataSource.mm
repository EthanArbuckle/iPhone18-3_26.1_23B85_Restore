@interface GKTurnBasedParticipantsDataSource
- (NSString)sectionTitle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)configureCollectionView:(id)view;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier;
- (void)setMatch:(id)match;
@end

@implementation GKTurnBasedParticipantsDataSource

- (void)setMatch:(id)match
{
  matchCopy = match;
  if (self->_match != matchCopy)
  {
    v7 = matchCopy;
    [(GKTurnBasedParticipantsDataSource *)self willChangeValueForKey:@"match"];
    objc_storeStrong(&self->_match, match);
    participants = [(GKTurnBasedMatch *)v7 participants];
    [(GKBasicCollectionViewDataSource *)self setItems:participants];

    [(GKTurnBasedParticipantsDataSource *)self didChangeValueForKey:@"match"];
    matchCopy = v7;
  }
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier
{
  notifierCopy = notifier;
  matchID = [(GKTurnBasedMatch *)self->_match matchID];

  if (matchID)
  {
    v8 = MEMORY[0x277D0C238];
    matchID2 = [(GKTurnBasedMatch *)self->_match matchID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__GKTurnBasedParticipantsDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
    v10[3] = &unk_27966CB98;
    v11 = notifierCopy;
    selfCopy = self;
    [v8 loadMatchWithID:matchID2 withCompletionHandler:v10];
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

- (void)configureCollectionView:(id)view
{
  v4.receiver = self;
  v4.super_class = GKTurnBasedParticipantsDataSource;
  viewCopy = view;
  [(GKBasicCollectionViewDataSource *)&v4 configureCollectionView:viewCopy];
  [GKTurnParticipantCell registerCellClassesForCollectionView:viewCopy, v4.receiver, v4.super_class];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy _gkDequeueCellForClass:objc_opt_class() forIndexPath:pathCopy];

  [v8 setIsDetail:1];
  [v8 setMatch:self->_match];
  items = [(GKBasicCollectionViewDataSource *)self items];
  v10 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  [v8 setParticipant:v10];

  item = [pathCopy item];
  items2 = [(GKBasicCollectionViewDataSource *)self items];
  v13 = [items2 count] - 1;

  if (item == v13)
  {
    layer = [v8 layer];
    [layer setCornerRadius:10.0];

    layer2 = [v8 layer];
    [layer2 setMaskedCorners:12];

    divider = [v8 divider];
    layer3 = divider;
    v18 = 1;
  }

  else
  {
    if ([pathCopy item])
    {
      divider2 = [v8 divider];
      [divider2 setHidden:0];

      layer3 = [v8 layer];
      [layer3 setCornerRadius:0.0];
      goto LABEL_7;
    }

    layer4 = [v8 layer];
    [layer4 setCornerRadius:10.0];

    layer5 = [v8 layer];
    [layer5 setMaskedCorners:3];

    divider = [v8 divider];
    layer3 = divider;
    v18 = 0;
  }

  [divider setHidden:v18];
LABEL_7:

  return v8;
}

- (NSString)sectionTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  participants = [(GKTurnBasedMatch *)self->_match participants];
  v7 = [v3 stringWithFormat:v5, objc_msgSend(participants, "count")];

  return v7;
}

@end