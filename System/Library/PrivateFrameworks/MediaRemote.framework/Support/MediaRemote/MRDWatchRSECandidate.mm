@interface MRDWatchRSECandidate
- (BOOL)hasActiveNowPlayingClient;
- (BOOL)hasActivePlayerClient;
- (BOOL)isPlaying;
- (MRDWatchRSECandidate)initWithOriginClient:(id)client namePrefix:(id)prefix isLocal:(BOOL)local;
- (NSString)outputDeviceUID;
@end

@implementation MRDWatchRSECandidate

- (MRDWatchRSECandidate)initWithOriginClient:(id)client namePrefix:(id)prefix isLocal:(BOOL)local
{
  clientCopy = client;
  prefixCopy = prefix;
  v18.receiver = self;
  v18.super_class = MRDWatchRSECandidate;
  v11 = [(MRDWatchRSECandidate *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_originClient, client);
    deviceInfo = [(MRDNowPlayingOriginClient *)v12->_originClient deviceInfo];
    name = [deviceInfo name];
    v15 = [NSString stringWithFormat:@"%@.%@", prefixCopy, name];
    name = v12->_name;
    v12->_name = v15;

    v12->_isLocal = local;
  }

  return v12;
}

- (NSString)outputDeviceUID
{
  if (self->_isLocal)
  {
    deviceUID = 0;
  }

  else
  {
    deviceInfo = [(MRDNowPlayingOriginClient *)self->_originClient deviceInfo];
    deviceUID = [deviceInfo deviceUID];
  }

  return deviceUID;
}

- (BOOL)hasActiveNowPlayingClient
{
  activeNowPlayingClient = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
  v3 = activeNowPlayingClient != 0;

  return v3;
}

- (BOOL)hasActivePlayerClient
{
  activeNowPlayingClient = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  v4 = activePlayerClient != 0;

  return v4;
}

- (BOOL)isPlaying
{
  activeNowPlayingClient = [(MRDNowPlayingOriginClient *)self->_originClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  isPlaying = [activePlayerClient isPlaying];

  return isPlaying;
}

@end