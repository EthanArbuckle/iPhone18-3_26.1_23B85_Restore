@interface MRDNowPlayingPlayerClientPlaybackState
- (MRDNowPlayingPlayerClientPlaybackState)initWithPlaybackState:(unsigned int)a3 date:(id)a4;
- (id)description;
@end

@implementation MRDNowPlayingPlayerClientPlaybackState

- (MRDNowPlayingPlayerClientPlaybackState)initWithPlaybackState:(unsigned int)a3 date:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MRDNowPlayingPlayerClientPlaybackState;
  v7 = [(MRDNowPlayingPlayerClientPlaybackState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_playbackState = a3;
    if (v6)
    {
      v9 = v6;
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