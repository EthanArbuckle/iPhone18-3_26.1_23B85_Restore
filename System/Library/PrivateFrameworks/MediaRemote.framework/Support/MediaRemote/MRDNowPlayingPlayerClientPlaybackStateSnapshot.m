@interface MRDNowPlayingPlayerClientPlaybackStateSnapshot
- (NSDate)date;
- (NSString)playbackStateDescription;
- (id)description;
- (int64_t)compare:(id)a3;
- (unsigned)playbackState;
@end

@implementation MRDNowPlayingPlayerClientPlaybackStateSnapshot

- (unsigned)playbackState
{
  v2 = [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)self playerPlaybackState];
  v3 = [v2 playbackState];

  return v3;
}

- (NSDate)date
{
  v2 = [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)self playerPlaybackState];
  v3 = [v2 date];

  return v3;
}

- (NSString)playbackStateDescription
{
  [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)self playbackState];
  v2 = MRMediaRemoteCopyPlaybackStateDescription();

  return v2;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"%@", self->_playerPlaybackState];

  return v2;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)self date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

@end