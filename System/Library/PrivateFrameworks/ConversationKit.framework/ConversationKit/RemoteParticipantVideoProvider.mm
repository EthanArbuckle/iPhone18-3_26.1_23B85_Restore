@interface RemoteParticipantVideoProvider
- (NSString)debugDescription;
- (void)remoteVideoClient:(id)client didDetectSensitiveContentWithAnalysis:(id)analysis;
- (void)remoteVideoClient:(id)client networkQualityDidDegrade:(BOOL)degrade info:(id)info;
- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall;
- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause;
- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade;
- (void)remoteVideoClient:(id)client videoDidSuspend:(BOOL)suspend;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame;
@end

@implementation RemoteParticipantVideoProvider

- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClientDidReceiveFirstFrame(_:)(frameCopy);
}

- (void)remoteVideoClient:(id)client videoDidSuspend:(BOOL)suspend
{
  suspendCopy = suspend;
  clientCopy = client;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:videoDidSuspend:)(clientCopy, suspendCopy);
}

- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause
{
  pauseCopy = pause;
  clientCopy = client;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteVideoDidPause:)(clientCopy, pauseCopy);
}

- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade
{
  degradeCopy = degrade;
  clientCopy = client;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:videoDidDegrade:)(clientCopy, degradeCopy);
}

- (void)remoteVideoClient:(id)client networkQualityDidDegrade:(BOOL)degrade info:(id)info
{
  if (info)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  clientCopy = client;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:networkQualityDidDegrade:info:)(clientCopy, degrade, v8);
}

- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall
{
  stallCopy = stall;
  clientCopy = client;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteMediaDidStall:)(clientCopy, stallCopy);
}

- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change
{
  clientCopy = client;
  changeCopy = change;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteVideoAttributesDidChange:)(clientCopy, changeCopy);
}

- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change
{
  clientCopy = client;
  changeCopy = change;
  selfCopy = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteScreenAttributesDidChange:)(client, change);
}

- (void)remoteVideoClient:(id)client didDetectSensitiveContentWithAnalysis:(id)analysis
{
  if (analysis)
  {
    clientCopy = client;
    selfCopy = self;
    analysisCopy = analysis;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    clientCopy2 = client;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  RemoteParticipantVideoProvider.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)(client, v9, v11);
  outlined consume of Data?(v9, v11);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v3 = RemoteParticipantVideoProvider.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1BFB209B0](v3, v5);

  return v6;
}

@end