@interface CPLTextCommentChange
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLTextCommentChange

- (void)fillWithCKRecord:(id)record
{
  selfCopy = self;
  recordCopy = record;
  v6 = [recordCopy cpl_decryptedObjectForKey:@"commentText" validateClass:objc_opt_class()];
  [(CPLTextCommentChange *)selfCopy setCommentText:v6];

  v7 = [recordCopy objectForKey:@"commentTimestamp"];
  [(CPLTextCommentChange *)selfCopy setCommentDate:v7];

  v10 = [recordCopy objectForKey:@"associatedAssetRef"];

  recordID = [v10 recordID];
  recordName = [recordID recordName];

  [(CPLTextCommentChange *)selfCopy setAssetIdentifier:recordName];
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  providerCopy = provider;
  selfCopy = self;
  fingerprintContext = [providerCopy fingerprintContext];
  if ([(CPLTextCommentChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLTextCommentChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"commentText")])
    {
      commentText = [(CPLTextCommentChange *)selfCopy commentText];
      [builderCopy setEncryptedObject:commentText forKey:@"commentText" validateClass:objc_opt_class()];
    }

    if ([(CPLTextCommentChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"commentDate")])
    {
      commentDate = [(CPLTextCommentChange *)selfCopy commentDate];
      [builderCopy setObject:commentDate forKey:@"commentTimestamp"];
    }

    if ([(CPLTextCommentChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetIdentifier")])
    {
      assetScopedIdentifier = [(CPLTextCommentChange *)selfCopy assetScopedIdentifier];
      if (!assetScopedIdentifier)
      {
        sub_1001AC5F4(a2, selfCopy);
      }

      v13 = assetScopedIdentifier;
      [builderCopy setCKReferenceWithScopedIdentifier:assetScopedIdentifier forKey:@"associatedAssetRef" referenceAction:1];
    }
  }
}

@end