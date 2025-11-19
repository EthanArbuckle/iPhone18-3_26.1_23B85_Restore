@interface HFCameraPlaybackEngineEventCacheUpdateResult
- (HFCameraPlaybackEngineEventCacheUpdateResult)initWithUpdatedIdentifiers:(id)a3 replacedIdentifiers:(id)a4 removedIdentifiers:(id)a5;
@end

@implementation HFCameraPlaybackEngineEventCacheUpdateResult

- (HFCameraPlaybackEngineEventCacheUpdateResult)initWithUpdatedIdentifiers:(id)a3 replacedIdentifiers:(id)a4 removedIdentifiers:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFCameraPlaybackEngineEventCacheUpdateResult;
  v12 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_updatedIdentifiers, a3);
    objc_storeStrong(&v13->_replacedIdentifiers, a4);
    objc_storeStrong(&v13->_removedIdentifiers, a5);
  }

  return v13;
}

@end