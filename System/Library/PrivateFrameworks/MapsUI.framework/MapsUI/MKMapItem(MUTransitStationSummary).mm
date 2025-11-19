@interface MKMapItem(MUTransitStationSummary)
- (id)artworkImage;
@end

@implementation MKMapItem(MUTransitStationSummary)

- (id)artworkImage
{
  v1 = [a1 _transitInfo];
  v2 = [v1 systems];
  v3 = [v2 firstObject];
  v4 = [v3 artwork];

  v5 = MEMORY[0x1E69DCAB8];
  v6 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v6 screenScale];
  v7 = [v5 _mapkit_transitArtworkImageWithDataSource:v4 size:9 scale:?];

  return v7;
}

@end