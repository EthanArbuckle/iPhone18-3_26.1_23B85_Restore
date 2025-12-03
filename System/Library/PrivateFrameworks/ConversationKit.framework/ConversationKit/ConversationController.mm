@interface ConversationController
- (NSString)description;
- (void)frequencyController:(id)controller audioPowerChanged:(float)changed forParticipantWithStreamToken:(int64_t)token;
- (void)momentsController:(id)controller didUpdateCapabilities:(id)capabilities forProvider:(id)provider;
- (void)momentsController:(id)controller willCaptureRemoteRequestFromIdentifier:(id)identifier;
- (void)remoteVideoClient:(id)client didDetectSensitiveContentWithAnalysis:(id)analysis;
- (void)remoteVideoClient:(id)client networkQualityDidDegrade:(BOOL)degrade info:(id)info;
- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall;
- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause;
- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade;
- (void)remoteVideoClient:(id)client videoDidSuspend:(BOOL)suspend;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame;
- (void)toggleStudioLight;
@end

@implementation ConversationController

- (NSString)description
{
  selfCopy = self;
  ConversationController.description.getter();
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x1BFB209B0](v4, v6);

  return v7;
}

- (void)toggleStudioLight
{
  selfCopy = self;
  ConversationController.toggleStudioLight()();
}

- (void)frequencyController:(id)controller audioPowerChanged:(float)changed forParticipantWithStreamToken:(int64_t)token
{
  controllerCopy = controller;
  selfCopy = self;
  ConversationController.frequencyController(_:audioPowerChanged:forParticipantWithStreamToken:)();
}

- (void)momentsController:(id)controller didUpdateCapabilities:(id)capabilities forProvider:(id)provider
{
  controllerCopy = controller;
  capabilitiesCopy = capabilities;
  providerCopy = provider;
  selfCopy = self;
  ConversationController.momentsController(_:didUpdate:for:)(selfCopy, capabilitiesCopy, providerCopy);
}

- (void)momentsController:(id)controller willCaptureRemoteRequestFromIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  controllerCopy = controller;
  selfCopy = self;
  ConversationController.momentsController(_:willCaptureRemoteRequestFromIdentifier:)();
}

- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  ConversationController.remoteVideoClientDidReceiveFirstFrame(_:)();
}

- (void)remoteVideoClient:(id)client videoDidSuspend:(BOOL)suspend
{
  clientCopy = client;
  selfCopy = self;
  ConversationController.remoteVideoClient(_:videoDidSuspend:)();
}

- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause
{
  clientCopy = client;
  selfCopy = self;
  ConversationController.remoteVideoClient(_:remoteVideoDidPause:)();
}

- (void)remoteVideoClient:(id)client networkQualityDidDegrade:(BOOL)degrade info:(id)info
{
  if (info)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  clientCopy = client;
  selfCopy = self;
  ConversationController.remoteVideoClient(_:networkQualityDidDegrade:info:)();
}

- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade
{
  clientCopy = client;
  selfCopy = self;
  ConversationController.remoteVideoClient(_:videoDidDegrade:)();
}

- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall
{
  clientCopy = client;
  selfCopy = self;
  ConversationController.remoteVideoClient(_:remoteMediaDidStall:)();
}

- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change
{
  clientCopy = client;
  changeCopy = change;
  selfCopy = self;
  ConversationController.remoteVideoClient(_:remoteVideoAttributesDidChange:)();
}

- (void)remoteVideoClient:(id)client didDetectSensitiveContentWithAnalysis:(id)analysis
{
  clientCopy = client;
  analysisCopy = analysis;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  ConversationController.remoteVideoClient(_:didDetectSensitiveContentWithAnalysis:)();
  outlined consume of Data._Representation(v8, v10);
}

- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change
{
  clientCopy = client;
  changeCopy = change;
  selfCopy = self;
  ConversationController.remoteVideoClient(_:remoteScreenAttributesDidChange:)();
}

@end