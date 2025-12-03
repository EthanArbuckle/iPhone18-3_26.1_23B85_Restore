@interface MPCNetworkRequestMonitoredTag
- (MPCNetworkRequestMonitoredTag)initWithContextInfo:(id)info engineInfoProvider:(id)provider;
- (MPCPlaybackEngineInfoProvider)engineInfoProvider;
- (NSString)playbackEngineID;
@end

@implementation MPCNetworkRequestMonitoredTag

- (MPCPlaybackEngineInfoProvider)engineInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_engineInfoProvider);

  return WeakRetained;
}

- (NSString)playbackEngineID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  playbackEngineID = selfCopy->_playbackEngineID;
  if (!playbackEngineID)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_engineInfoProvider);
    playbackEngineID = [WeakRetained playbackEngineID];
    v6 = selfCopy->_playbackEngineID;
    selfCopy->_playbackEngineID = playbackEngineID;

    playbackEngineID = selfCopy->_playbackEngineID;
  }

  v7 = playbackEngineID;
  objc_sync_exit(selfCopy);

  return v7;
}

- (MPCNetworkRequestMonitoredTag)initWithContextInfo:(id)info engineInfoProvider:(id)provider
{
  infoCopy = info;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = MPCNetworkRequestMonitoredTag;
  v9 = [(MPCNetworkRequestMonitoredTag *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextInfo, info);
    objc_storeWeak(&v10->_engineInfoProvider, providerCopy);
    playbackEngineID = [providerCopy playbackEngineID];
    playbackEngineID = v10->_playbackEngineID;
    v10->_playbackEngineID = playbackEngineID;
  }

  return v10;
}

@end