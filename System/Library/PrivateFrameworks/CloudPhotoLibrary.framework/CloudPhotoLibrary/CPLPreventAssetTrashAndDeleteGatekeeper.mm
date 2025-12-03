@interface CPLPreventAssetTrashAndDeleteGatekeeper
- (int64_t)checkPushedChange:(id)change;
@end

@implementation CPLPreventAssetTrashAndDeleteGatekeeper

- (int64_t)checkPushedChange:(id)change
{
  changeCopy = change;
  if (![changeCopy isAssetChange])
  {
    goto LABEL_6;
  }

  if (([changeCopy isDelete] & 1) == 0)
  {
    if ([changeCopy inTrash])
    {
      [changeCopy setInTrash:0];
      [changeCopy setDateDeleted:0];
      v5 = 2;
      goto LABEL_7;
    }

LABEL_6:
    v7.receiver = self;
    v7.super_class = CPLPreventAssetTrashAndDeleteGatekeeper;
    v5 = [(CPLPushPullGatekeeper *)&v7 checkPushedChange:changeCopy];
    goto LABEL_7;
  }

  v5 = 1;
LABEL_7:

  return v5;
}

@end