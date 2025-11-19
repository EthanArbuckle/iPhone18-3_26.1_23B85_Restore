@interface NMSSyncProgressInfo
+ (id)_stringFromSyncState:(unint64_t)a3;
+ (id)_stringFromWaitingSubstate:(unint64_t)a3;
- (id)description;
@end

@implementation NMSSyncProgressInfo

+ (id)_stringFromSyncState:(unint64_t)a3
{
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0uLL:
        v4 = @"Unknown";

        return v4;
      case 1uLL:
        v4 = @"Idle";

        return v4;
      case 2uLL:
        v4 = @"Pending";

        return v4;
    }

LABEL_22:
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown [%tu]", a3];

    return v4;
  }

  if (a3 > 97)
  {
    if (a3 == 98)
    {
      v4 = @"Metadata Syncing";

      return v4;
    }

    if (a3 == 99)
    {
      v4 = @"Asset Syncing";

      return v4;
    }

    goto LABEL_22;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v4 = @"Asset Updating";

      return v4;
    }

    goto LABEL_22;
  }

  v4 = @"Waiting";

  return v4;
}

+ (id)_stringFromWaitingSubstate:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = v4;
  if (v3)
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