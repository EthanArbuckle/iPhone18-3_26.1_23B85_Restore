@interface MTAPAFKit
- (id)trackerWithPlaylist:(id)a3;
@end

@implementation MTAPAFKit

- (id)trackerWithPlaylist:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MTPAFTracker);
  [(MTPAFTracker *)v5 trackPlaylist:v4 using:self];

  return v5;
}

@end