@interface ConversationController
- (NSString)description;
- (void)frequencyController:(id)a3 audioPowerChanged:(float)a4 forParticipantWithStreamToken:(int64_t)a5;
- (void)momentsController:(id)a3 didUpdateCapabilities:(id)a4 forProvider:(id)a5;
- (void)momentsController:(id)a3 willCaptureRemoteRequestFromIdentifier:(id)a4;
- (void)remoteVideoClient:(id)a3 didDetectSensitiveContentWithAnalysis:(id)a4;
- (void)remoteVideoClient:(id)a3 networkQualityDidDegrade:(BOOL)a4 info:(id)a5;
- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 videoDidSuspend:(BOOL)a4;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3;
- (void)toggleStudioLight;
@end

@implementation ConversationController

- (NSString)description
{
  v2 = self;
  ConversationController.description.getter();
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x1BFB209B0](v4, v6);

  return v7;
}

- (void)toggleStudioLight
{
  v2 = self;
  ConversationController.toggleStudioLight()();
}

- (void)frequencyController:(id)a3 audioPowerChanged:(float)a4 forParticipantWithStreamToken:(int64_t)a5
{
  v6 = a3;
  v7 = self;
  ConversationController.frequencyController(_:audioPowerChanged:forParticipantWithStreamToken:)();
}

- (void)momentsController:(id)a3 didUpdateCapabilities:(id)a4 forProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  ConversationController.momentsController(_:didUpdate:for:)(v11, v9, v10);
}

- (void)momentsController:(id)a3 willCaptureRemoteRequestFromIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  ConversationController.momentsController(_:willCaptureRemoteRequestFromIdentifier:)();
}

- (void)remoteVideoClientDidReceiveFirstFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationController.remoteVideoClientDidReceiveFirstFrame(_:)();
}

- (void)remoteVideoClient:(id)a3 videoDidSuspend:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  ConversationController.remoteVideoClient(_:videoDidSuspend:)();
}

- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  ConversationController.remoteVideoClient(_:remoteVideoDidPause:)();
}

- (void)remoteVideoClient:(id)a3 networkQualityDidDegrade:(BOOL)a4 info:(id)a5
{
  if (a5)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  ConversationController.remoteVideoClient(_:networkQualityDidDegrade:info:)();
}

- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  ConversationController.remoteVideoClient(_:videoDidDegrade:)();
}

- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  ConversationController.remoteVideoClient(_:remoteMediaDidStall:)();
}

- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:)();
}

- (void)remoteVideoClient:(id)a3 didDetectSensitiveContentWithAnalysis:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  ConversationController.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)();
  outlined consume of Data._Representation(v8, v10);
}

- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  ConversationController.remoteVideoClient(_:remoteScreenAttributesDidChange:)();
}

@end