@interface PHAssetCollection(PNMomentProtocol)
- (double)approximateCoordinate;
@end

@implementation PHAssetCollection(PNMomentProtocol)

- (double)approximateCoordinate
{
  approximateLocation = [self approximateLocation];
  [approximateLocation coordinate];
  v3 = v2;

  return v3;
}

@end