@interface MADRemoveBackgroundCachedMaskState
- (BOOL)matchesImageAsset:(id)a3;
- (CGRect)regionOfInterest;
- (MADRemoveBackgroundCachedMaskState)initWithImageAsset:(id)a3 instanceMaskObservation:(id)a4 regionOfInterest:(CGRect)a5;
@end

@implementation MADRemoveBackgroundCachedMaskState

- (MADRemoveBackgroundCachedMaskState)initWithImageAsset:(id)a3 instanceMaskObservation:(id)a4 regionOfInterest:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = MADRemoveBackgroundCachedMaskState;
  v13 = [(MADRemoveBackgroundCachedMaskState *)&v17 init];
  if (v13)
  {
    v14 = [v11 identifier];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    objc_storeStrong(&v13->_instanceMaskObservation, a4);
    v13->_regionOfInterest.origin.x = x;
    v13->_regionOfInterest.origin.y = y;
    v13->_regionOfInterest.size.width = width;
    v13->_regionOfInterest.size.height = height;
  }

  return v13;
}

- (BOOL)matchesImageAsset:(id)a3
{
  identifier = self->_identifier;
  v4 = [a3 identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:v4];

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