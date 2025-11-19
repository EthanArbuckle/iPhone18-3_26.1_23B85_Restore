@interface CKMediaObject(Internal)
- (BOOL)isMonoskiAsset;
@end

@implementation CKMediaObject(Internal)

- (BOOL)isMonoskiAsset
{
  if (![(CKMediaObject *)self spatialState])
  {
    [(CKMediaObject *)self _refreshSpatialMetadata];
  }

  return [(CKMediaObject *)self spatialState]== 3;
}

@end