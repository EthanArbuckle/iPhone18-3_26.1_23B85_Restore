@interface CPLTextCommentChange
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLTextCommentChange

- (void)fillWithCKRecord:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [v5 cpl_decryptedObjectForKey:@"commentText" validateClass:objc_opt_class()];
  [(CPLTextCommentChange *)v4 setCommentText:v6];

  v7 = [v5 objectForKey:@"commentTimestamp"];
  [(CPLTextCommentChange *)v4 setCommentDate:v7];

  v10 = [v5 objectForKey:@"associatedAssetRef"];

  v8 = [v10 recordID];
  v9 = [v8 recordName];

  [(CPLTextCommentChange *)v4 setAssetIdentifier:v9];
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v14 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v7 fingerprintContext];
  if ([(CPLTextCommentChange *)v8 hasChangeType:2])
  {
    if ([(CPLTextCommentChange *)v8 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"commentText")])
    {
      v10 = [(CPLTextCommentChange *)v8 commentText];
      [v14 setEncryptedObject:v10 forKey:@"commentText" validateClass:objc_opt_class()];
    }

    if ([(CPLTextCommentChange *)v8 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"commentDate")])
    {
      v11 = [(CPLTextCommentChange *)v8 commentDate];
      [v14 setObject:v11 forKey:@"commentTimestamp"];
    }

    if ([(CPLTextCommentChange *)v8 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetIdentifier")])
    {
      v12 = [(CPLTextCommentChange *)v8 assetScopedIdentifier];
      if (!v12)
      {
        sub_1001AC5F4(a2, v8);
      }

      v13 = v12;
      [v14 setCKReferenceWithScopedIdentifier:v12 forKey:@"associatedAssetRef" referenceAction:1];
    }
  }
}

@end