@interface MRDNowPlayingPlayerClientPlaybackStateSnapshot
- (NSDate)date;
- (NSString)playbackStateDescription;
- (id)description;
- (int64_t)compare:(id)compare;
- (unsigned)playbackState;
@end

@implementation MRDNowPlayingPlayerClientPlaybackStateSnapshot

- (unsigned)playbackState
{
  playerPlaybackState = [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)self playerPlaybackState];
  playbackState = [playerPlaybackState playbackState];

  return playbackState;
}

- (NSDate)date
{
  playerPlaybackState = [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)self playerPlaybackState];
  date = [playerPlaybackState date];

  return date;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  date = [(MRDNowPlayingPlayerClientPlaybackStateSnapshot *)self date];
  date2 = [compareCopy date];

  v7 = [date compare:date2];
  return v7;
}

@end