@interface MRDNowPlayingPlayerClientPlaybackState
- (MRDNowPlayingPlayerClientPlaybackState)initWithPlaybackState:(unsigned int)state date:(id)date;
- (id)description;
@end

@implementation MRDNowPlayingPlayerClientPlaybackState

- (MRDNowPlayingPlayerClientPlaybackState)initWithPlaybackState:(unsigned int)state date:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = MRDNowPlayingPlayerClientPlaybackState;
  v7 = [(MRDNowPlayingPlayerClientPlaybackState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_playbackState = state;
    if (dateCopy)
    {
      v9 = dateCopy;
    }

    else
    {
      v9 = +[NSDate date];
    }

    date = v8->_date;
    v8->_date = v9;
  }

  return v8;
}

- (id)description
{
  v3 = [NSString alloc];
  playbackState = self->_playbackState;
  v5 = MRMediaRemoteCopyPlaybackStateDescription();
  v6 = [v3 initWithFormat:@"%@-%@", v5, self->_date];

  return v6;
}

@end