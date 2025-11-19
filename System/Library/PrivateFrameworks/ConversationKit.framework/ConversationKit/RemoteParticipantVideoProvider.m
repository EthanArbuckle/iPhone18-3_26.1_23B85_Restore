@interface RemoteParticipantVideoProvider
- (NSString)debugDescription;
- (void)remoteVideoClient:(id)a3 didDetectSensitiveContentWithAnalysis:(id)a4;
- (void)remoteVideoClient:(id)a3 networkQualityDidDegrade:(BOOL)a4 info:(id)a5;
- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 videoDidSuspend:(BOOL)a4;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3;
@end

@implementation RemoteParticipantVideoProvider

- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  RemoteParticipantVideoProvider.remoteVideoClientDidReceiveFirstFrame(_:)(v4);
}

- (void)remoteVideoClient:(id)a3 videoDidSuspend:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:videoDidSuspend:)(v6, v4);
}

- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteVideoDidPause:)(v6, v4);
}

- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:videoDidDegrade:)(v6, v4);
}

- (void)remoteVideoClient:(id)a3 networkQualityDidDegrade:(BOOL)a4 info:(id)a5
{
  if (a5)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:networkQualityDidDegrade:info:)(v9, a4, v8);
}

- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteMediaDidStall:)(v6, v4);
}

- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteVideoAttributesDidChange:)(v6, v7);
}

- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  RemoteParticipantVideoProvider.remoteVideoClient(_:remoteScreenAttributesDidChange:)(a3, a4);
}

- (void)remoteVideoClient:(id)a3 didDetectSensitiveContentWithAnalysis:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v13 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  RemoteParticipantVideoProvider.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)(a3, v9, v11);
  outlined consume of Data?(v9, v11);
}

- (NSString)debugDescription
{
  v2 = self;
  v3 = RemoteParticipantVideoProvider.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1BFB209B0](v3, v5);

  return v6;
}

@end