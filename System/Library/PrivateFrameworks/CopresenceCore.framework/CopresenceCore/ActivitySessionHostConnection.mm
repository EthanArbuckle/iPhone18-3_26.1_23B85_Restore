@interface ActivitySessionHostConnection
- (void)addAnalyticsReport:(id)report;
- (void)end;
- (void)joinWithAudioSessionID:(id)d completion:(id)completion;
- (void)leaveWithCompletion:(id)completion;
- (void)logAttachmentEventWithReport:(id)report reportEvent:(id)event;
- (void)postEventWithEvent:(id)event;
- (void)presentSessionDismissalAlertWithAllowingCancellation:(BOOL)cancellation completion:(id)completion;
- (void)requestEncryptionKeysFor:(id)for;
- (void)requestEndpointWith:(id)with completion:(id)completion;
- (void)requestForegroundPresentation;
- (void)requestParticipantTranslationsFor:(id)for completion:(id)completion;
- (void)sendResourceAtURL:(id)l to:(id)to metadata:(id)metadata completion:(id)completion;
- (void)updateActivityWithActivity:(id)activity;
- (void)updateCapabilitiesWithCapabilities:(int64_t)capabilities;
@end

@implementation ActivitySessionHostConnection

- (void)joinWithAudioSessionID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  dCopy = d;
  selfCopy = self;
  ActivitySessionHostConnection.join(audioSessionID:completion:)(d, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned PresenceSessionConnectionInfo?, @unowned NSError?) -> (), v7);
}

- (void)leaveWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  ActivitySessionHostConnection.leave(completion:)(thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v5);
}

- (void)end
{
  selfCopy = self;
  ActivitySessionHostConnection.end()();
}

- (void)postEventWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  ActivitySessionHostConnection.postEvent(event:)(eventCopy);
}

- (void)logAttachmentEventWithReport:(id)report reportEvent:(id)event
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  reportCopy = report;
  selfCopy = self;
  ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:)(reportCopy, v6, v8);
}

- (void)requestEncryptionKeysFor:(id)for
{
  if (for)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v7.value._rawValue = v4;
  ActivitySessionHostConnection.requestEncryptionKeys(for:)(v7);
}

- (void)requestParticipantTranslationsFor:(id)for completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for ParticipantTranslationRequest();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(v6, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSSet) -> (), v7);
}

- (void)updateActivityWithActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  ActivitySessionHostConnection.updateActivity(activity:)(activityCopy);
}

- (void)presentSessionDismissalAlertWithAllowingCancellation:(BOOL)cancellation completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:)(cancellation, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v7);
}

- (void)requestForegroundPresentation
{
  selfCopy = self;
  ActivitySessionHostConnection.requestForegroundPresentation()();
}

- (void)sendResourceAtURL:(id)l to:(id)to metadata:(id)metadata completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  lCopy = l;
  metadataCopy = metadata;
  selfCopy = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)(lCopy, v10, v14, v16, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v17);

  outlined consume of Data._Representation(v14, v16);
}

- (void)requestEndpointWith:(id)with completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  ActivitySessionHostConnection.requestEndpoint(with:completion:)(v6, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSXPCListenerEndpoint?) -> (), v9);
}

- (void)updateCapabilitiesWithCapabilities:(int64_t)capabilities
{
  selfCopy = self;
  ActivitySessionHostConnection.updateCapabilities(capabilities:)(capabilities);
}

- (void)addAnalyticsReport:(id)report
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ActivitySessionHostConnection.addAnalyticsReport(_:)(v4);
}

@end