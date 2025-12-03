@interface HFCameraPlaybackEngineEventCacheUpdateResult
- (HFCameraPlaybackEngineEventCacheUpdateResult)initWithUpdatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers removedIdentifiers:(id)removedIdentifiers;
@end

@implementation HFCameraPlaybackEngineEventCacheUpdateResult

- (HFCameraPlaybackEngineEventCacheUpdateResult)initWithUpdatedIdentifiers:(id)identifiers replacedIdentifiers:(id)replacedIdentifiers removedIdentifiers:(id)removedIdentifiers
{
  identifiersCopy = identifiers;
  replacedIdentifiersCopy = replacedIdentifiers;
  removedIdentifiersCopy = removedIdentifiers;
  v15.receiver = self;
  v15.super_class = HFCameraPlaybackEngineEventCacheUpdateResult;
  v12 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updatedIdentifiers, identifiers);
    objc_storeStrong(&v13->_replacedIdentifiers, replacedIdentifiers);
    objc_storeStrong(&v13->_removedIdentifiers, removedIdentifiers);
  }

  return v13;
}

@end