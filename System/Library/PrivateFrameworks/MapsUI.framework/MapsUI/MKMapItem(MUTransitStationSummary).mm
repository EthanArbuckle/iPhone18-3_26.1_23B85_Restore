@interface MKMapItem(MUTransitStationSummary)
- (id)artworkImage;
@end

@implementation MKMapItem(MUTransitStationSummary)

- (id)artworkImage
{
  _transitInfo = [self _transitInfo];
  systems = [_transitInfo systems];
  firstObject = [systems firstObject];
  artwork = [firstObject artwork];

  v5 = MEMORY[0x1E69DCAB8];
  mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
  [mEMORY[0x1E696F3B8] screenScale];
  v7 = [v5 _mapkit_transitArtworkImageWithDataSource:artwork size:9 scale:?];

  return v7;
}

@end