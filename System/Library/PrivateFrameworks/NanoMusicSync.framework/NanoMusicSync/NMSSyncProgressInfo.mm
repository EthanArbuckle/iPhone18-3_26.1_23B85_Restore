@interface NMSSyncProgressInfo
+ (id)_stringFromSyncState:(unint64_t)state;
+ (id)_stringFromWaitingSubstate:(unint64_t)substate;
- (id)description;
@end

@implementation NMSSyncProgressInfo

+ (id)_stringFromSyncState:(unint64_t)state
{
  if (state <= 2)
  {
    switch(state)
    {
      case 0uLL:
        state = @"Unknown";

        return state;
      case 1uLL:
        state = @"Idle";

        return state;
      case 2uLL:
        state = @"Pending";

        return state;
    }

LABEL_22:
    state = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown [%tu]", state];

    return state;
  }

  if (state > 97)
  {
    if (state == 98)
    {
      state = @"Metadata Syncing";

      return state;
    }

    if (state == 99)
    {
      state = @"Asset Syncing";

      return state;
    }

    goto LABEL_22;
  }

  if (state != 3)
  {
    if (state == 4)
    {
      state = @"Asset Updating";

      return state;
    }

    goto LABEL_22;
  }

  state = @"Waiting";

  return state;
}

+ (id)_stringFromWaitingSubstate:(unint64_t)substate
{
  substateCopy = substate;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (substateCopy)
  {
    [v4 addObject:@"Power"];
  }

  v6 = [v5 description];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  assetType = self->_assetType;
  v5 = [objc_opt_class() _stringFromSyncState:self->_syncState];
  v6 = [objc_opt_class() _stringFromWaitingSubstate:self->_syncWaitingSubstate];
  numberOfAssetItems = self->_numberOfAssetItems;
  v8 = [v3 stringWithFormat:@"NMSSyncProgressInfo [%@]: state %@, waitingSubstate:%@, progress %0.4f, assets %ld/%ld (need %ld)", assetType, v5, v6, self->_estimatedSyncProgress, self->_numberOfAssetItemsSynced, numberOfAssetItems, self->_numberOfAssetItemsNeedingDownload];

  return v8;
}

@end