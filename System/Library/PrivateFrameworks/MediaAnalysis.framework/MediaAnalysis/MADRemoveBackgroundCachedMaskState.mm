@interface MADRemoveBackgroundCachedMaskState
- (BOOL)matchesImageAsset:(id)asset;
- (CGRect)regionOfInterest;
- (MADRemoveBackgroundCachedMaskState)initWithImageAsset:(id)asset instanceMaskObservation:(id)observation regionOfInterest:(CGRect)interest;
@end

@implementation MADRemoveBackgroundCachedMaskState

- (MADRemoveBackgroundCachedMaskState)initWithImageAsset:(id)asset instanceMaskObservation:(id)observation regionOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  assetCopy = asset;
  observationCopy = observation;
  v17.receiver = self;
  v17.super_class = MADRemoveBackgroundCachedMaskState;
  v13 = [(MADRemoveBackgroundCachedMaskState *)&v17 init];
  if (v13)
  {
    identifier = [assetCopy identifier];
    identifier = v13->_identifier;
    v13->_identifier = identifier;

    objc_storeStrong(&v13->_instanceMaskObservation, observation);
    v13->_regionOfInterest.origin.x = x;
    v13->_regionOfInterest.origin.y = y;
    v13->_regionOfInterest.size.width = width;
    v13->_regionOfInterest.size.height = height;
  }

  return v13;
}

- (BOOL)matchesImageAsset:(id)asset
{
  identifier = self->_identifier;
  identifier = [asset identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:identifier];

  return identifier;
}

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end