@interface MPCNetworkRequestMonitoredTag
- (MPCNetworkRequestMonitoredTag)initWithContextInfo:(id)a3 engineInfoProvider:(id)a4;
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
  v2 = self;
  objc_sync_enter(v2);
  playbackEngineID = v2->_playbackEngineID;
  if (!playbackEngineID)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_engineInfoProvider);
    v5 = [WeakRetained playbackEngineID];
    v6 = v2->_playbackEngineID;
    v2->_playbackEngineID = v5;

    playbackEngineID = v2->_playbackEngineID;
  }

  v7 = playbackEngineID;
  objc_sync_exit(v2);

  return v7;
}

- (MPCNetworkRequestMonitoredTag)initWithContextInfo:(id)a3 engineInfoProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MPCNetworkRequestMonitoredTag;
  v9 = [(MPCNetworkRequestMonitoredTag *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextInfo, a3);
    objc_storeWeak(&v10->_engineInfoProvider, v8);
    v11 = [v8 playbackEngineID];
    playbackEngineID = v10->_playbackEngineID;
    v10->_playbackEngineID = v11;
  }

  return v10;
}

@end