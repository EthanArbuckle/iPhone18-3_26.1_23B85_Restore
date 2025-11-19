@interface MRPlaybackQueueRequest
- (MRDPlaybackQueueArtworkCacheSize)artworkCacheSize;
@end

@implementation MRPlaybackQueueRequest

- (MRDPlaybackQueueArtworkCacheSize)artworkCacheSize
{
  v3 = [MRDPlaybackQueueArtworkCacheSize alloc];
  [(MRPlaybackQueueRequest *)self artworkWidth];
  v5 = v4;
  [(MRPlaybackQueueRequest *)self artworkHeight];
  v7 = [(MRDPlaybackQueueArtworkCacheSize *)v3 initWithW:v5 h:v6];

  return v7;
}

@end