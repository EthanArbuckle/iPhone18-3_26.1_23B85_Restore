@interface CPLScopeChange
- (BOOL)canAcceptShareWithCloudKit;
- (void)updateCKShare:(id)a3;
- (void)updateWithCKShare:(id)a3 currentUserID:(id)a4;
- (void)updateWithLibraryInfoCKRecord:(id)a3 zone:(id)a4 userRecordID:(id)a5;
@end

@implementation CPLScopeChange

- (BOOL)canAcceptShareWithCloudKit
{
  v2 = [(CPLScopeChange *)self scopeType];
  if (v2 <= 3)
  {
    return v2 == 2 || v2 == 3;
  }

  switch(v2)
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

- (void)updateWithCKShare:(id)a3 currentUserID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[CPLShare alloc] initWithCKShare:v7 currentUserID:v6];

  v8 = [v7 objectForKey:CKShareTitleKey];

  if (v8)
  {
    [(CPLScopeChange *)self setTitle:v8];
  }

  [(CPLScopeChange *)self setShare:v9];
}

- (void)updateWithLibraryInfoCKRecord:(id)a3 zone:(id)a4 userRecordID:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[CPLLibraryInfo alloc] initWithCKRecord:v8 zone:v7];

  [(CPLScopeChange *)self setLibraryInfo:v9];
}

- (void)updateCKShare:(id)a3
{
  v9 = a3;
  v4 = [(CPLScopeChange *)self share];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 publicPermission];
    if ((v6 - 1) >= 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    [v9 setPublicPermission:v7];
  }

  v8 = [(CPLScopeChange *)self title];
  [v9 setObject:v8 forKey:CKShareTitleKey];
}

@end