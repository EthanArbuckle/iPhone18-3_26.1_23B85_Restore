@interface CPLReactChange
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLReactChange

- (void)fillWithCKRecord:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [v5 objectForKey:@"commentTimestamp"];
  [(CPLReactChange *)v4 setCommentDate:v6];

  v9 = [v5 objectForKey:@"associatedAssetRef"];

  v7 = [v9 recordID];
  v8 = [v7 recordName];

  [(CPLReactChange *)v4 setAssetIdentifier:v8];
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v13 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v7 fingerprintContext];
  if ([(CPLReactChange *)v8 hasChangeType:2])
  {
    if ([(CPLReactChange *)v8 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"commentDate")])
    {
      v10 = [(CPLReactChange *)v8 commentDate];
      [v13 setObject:v10 forKey:@"commentTimestamp"];
    }

    if ([(CPLReactChange *)v8 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetIdentifier")])
    {
      v11 = [(CPLReactChange *)v8 assetScopedIdentifier];
      if (!v11)
      {
        sub_1001AC528(a2, v8);
      }

      v12 = v11;
      [v13 setCKReferenceWithScopedIdentifier:v11 forKey:@"associatedAssetRef" referenceAction:1];
    }
  }
}

@end