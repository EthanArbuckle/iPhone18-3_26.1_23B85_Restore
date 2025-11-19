@interface MRDWatchRSECandidate
- (BOOL)hasActiveNowPlayingClient;
- (BOOL)hasActivePlayerClient;
- (BOOL)isPlaying;
- (MRDWatchRSECandidate)initWithOriginClient:(id)a3 namePrefix:(id)a4 isLocal:(BOOL)a5;
- (NSString)outputDeviceUID;
@end

@implementation MRDWatchRSECandidate

- (MRDWatchRSECandidate)initWithOriginClient:(id)a3 namePrefix:(id)a4 isLocal:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = MRDWatchRSECandidate;
  v11 = [(MRDWatchRSECandidate *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originClient, a3);
    v13 = [(MRDNowPlayingOriginClient *)v12->_originClient deviceInfo];
    v14 = [v13 name];
    v15 = [NSString stringWithFormat:@"%@.%@", v10, v14];
    name = v12->_name;
    v12->_name = v15;

    v12->_isLocal = a5;
  }

  return v12;
}

- (NSString)outputDeviceUID
{
  if (self->_isLocal)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(MRDNowPlayingOriginClient *)self->_originClient deviceInfo];
    v2 = [v3 deviceUID];
  }

  return v2;
}

- (BOOL)hasActiveNowPlayingClient
{
  v2 = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasActivePlayerClient
{
  v2 = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
  v3 = [v2 activePlayerClient];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isPlaying
{
  v2 = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
  v3 = [v2 activePlayerClient];
  v4 = [v3 isPlaying];

  return v4;
}

@end