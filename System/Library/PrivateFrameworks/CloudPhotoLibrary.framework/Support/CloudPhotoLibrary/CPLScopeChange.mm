@interface CPLScopeChange
- (BOOL)canAcceptShareWithCloudKit;
- (void)updateCKShare:(id)share;
- (void)updateWithCKShare:(id)share currentUserID:(id)d;
- (void)updateWithLibraryInfoCKRecord:(id)record zone:(id)zone userRecordID:(id)d;
@end

@implementation CPLScopeChange

- (BOOL)canAcceptShareWithCloudKit
{
  scopeType = [(CPLScopeChange *)self scopeType];
  if (scopeType <= 3)
  {
    return scopeType == 2 || scopeType == 3;
  }

  switch(scopeType)
  {
    case 8:

      return CPLIsCollectionShareFeatureEnabled();
    case 5:
      return 1;
    case 4:
      v3 = +[NSUserDefaults standardUserDefaults];
      v4 = [v3 BOOLForKey:@"CPLAcceptOwnedShareURL"];

      return v4;
    default:
      return 0;
  }
}

- (void)updateWithCKShare:(id)share currentUserID:(id)d
{
  dCopy = d;
  shareCopy = share;
  v9 = [[CPLShare alloc] initWithCKShare:shareCopy currentUserID:dCopy];

  v8 = [shareCopy objectForKey:CKShareTitleKey];

  if (v8)
  {
    [(CPLScopeChange *)self setTitle:v8];
  }

  [(CPLScopeChange *)self setShare:v9];
}

- (void)updateWithLibraryInfoCKRecord:(id)record zone:(id)zone userRecordID:(id)d
{
  zoneCopy = zone;
  recordCopy = record;
  v9 = [[CPLLibraryInfo alloc] initWithCKRecord:recordCopy zone:zoneCopy];

  [(CPLScopeChange *)self setLibraryInfo:v9];
}

- (void)updateCKShare:(id)share
{
  shareCopy = share;
  share = [(CPLScopeChange *)self share];
  v5 = share;
  if (share)
  {
    publicPermission = [share publicPermission];
    if ((publicPermission - 1) >= 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = publicPermission;
    }

    [shareCopy setPublicPermission:v7];
  }

  title = [(CPLScopeChange *)self title];
  [shareCopy setObject:title forKey:CKShareTitleKey];
}

@end