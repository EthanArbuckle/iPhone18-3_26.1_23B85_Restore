@interface MTAPAFKit
- (id)trackerWithPlaylist:(id)playlist;
@end

@implementation MTAPAFKit

- (id)trackerWithPlaylist:(id)playlist
{
  playlistCopy = playlist;
  v5 = objc_alloc_init(MTPAFTracker);
  [(MTPAFTracker *)v5 trackPlaylist:playlistCopy using:self];

  return v5;
}

@end