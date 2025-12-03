@interface CPLReactChange
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLReactChange

- (void)fillWithCKRecord:(id)record
{
  selfCopy = self;
  recordCopy = record;
  v6 = [recordCopy objectForKey:@"commentTimestamp"];
  [(CPLReactChange *)selfCopy setCommentDate:v6];

  v9 = [recordCopy objectForKey:@"associatedAssetRef"];

  recordID = [v9 recordID];
  recordName = [recordID recordName];

  [(CPLReactChange *)selfCopy setAssetIdentifier:recordName];
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  providerCopy = provider;
  selfCopy = self;
  fingerprintContext = [providerCopy fingerprintContext];
  if ([(CPLReactChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLReactChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"commentDate")])
    {
      commentDate = [(CPLReactChange *)selfCopy commentDate];
      [builderCopy setObject:commentDate forKey:@"commentTimestamp"];
    }

    if ([(CPLReactChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetIdentifier")])
    {
      assetScopedIdentifier = [(CPLReactChange *)selfCopy assetScopedIdentifier];
      if (!assetScopedIdentifier)
      {
        sub_1001AC528(a2, selfCopy);
      }

      v12 = assetScopedIdentifier;
      [builderCopy setCKReferenceWithScopedIdentifier:assetScopedIdentifier forKey:@"associatedAssetRef" referenceAction:1];
    }
  }
}

@end