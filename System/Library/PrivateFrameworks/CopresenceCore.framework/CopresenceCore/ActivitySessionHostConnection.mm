@interface ActivitySessionHostConnection
- (void)addAnalyticsReport:(id)a3;
- (void)end;
- (void)joinWithAudioSessionID:(id)a3 completion:(id)a4;
- (void)leaveWithCompletion:(id)a3;
- (void)logAttachmentEventWithReport:(id)a3 reportEvent:(id)a4;
- (void)postEventWithEvent:(id)a3;
- (void)presentSessionDismissalAlertWithAllowingCancellation:(BOOL)a3 completion:(id)a4;
- (void)requestEncryptionKeysFor:(id)a3;
- (void)requestEndpointWith:(id)a3 completion:(id)a4;
- (void)requestForegroundPresentation;
- (void)requestParticipantTranslationsFor:(id)a3 completion:(id)a4;
- (void)sendResourceAtURL:(id)a3 to:(id)a4 metadata:(id)a5 completion:(id)a6;
- (void)updateActivityWithActivity:(id)a3;
- (void)updateCapabilitiesWithCapabilities:(int64_t)a3;
@end

@implementation ActivitySessionHostConnection

- (void)joinWithAudioSessionID:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  ActivitySessionHostConnection.join(audioSessionID:completion:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned PresenceSessionConnectionInfo?, @unowned NSError?) -> (), v7);
}

- (void)leaveWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  ActivitySessionHostConnection.leave(completion:)(thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v5);
}

- (void)end
{
  v2 = self;
  ActivitySessionHostConnection.end()();
}

- (void)postEventWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  ActivitySessionHostConnection.postEvent(event:)(v4);
}

- (void)logAttachmentEventWithReport:(id)a3 reportEvent:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:)(v9, v6, v8);
}

- (void)requestEncryptionKeysFor:(id)a3
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v7.value._rawValue = v4;
  ActivitySessionHostConnection.requestEncryptionKeys(for:)(v7);
}

- (void)requestParticipantTranslationsFor:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for ParticipantTranslationRequest();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(v6, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSSet) -> (), v7);
}

- (void)updateActivityWithActivity:(id)a3
{
  v4 = a3;
  v5 = self;
  ActivitySessionHostConnection.updateActivity(activity:)(v4);
}

- (void)presentSessionDismissalAlertWithAllowingCancellation:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v7);
}

- (void)requestForegroundPresentation
{
  v2 = self;
  ActivitySessionHostConnection.requestForegroundPresentation()();
}

- (void)sendResourceAtURL:(id)a3 to:(id)a4 metadata:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a5;
  v13 = self;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)(v11, v10, v14, v16, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v17);

  outlined consume of Data._Representation(v14, v16);
}

- (void)requestEndpointWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  ActivitySessionHostConnection.requestEndpoint(with:completion:)(v6, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSXPCListenerEndpoint?) -> (), v9);
}

- (void)updateCapabilitiesWithCapabilities:(int64_t)a3
{
  v4 = self;
  ActivitySessionHostConnection.updateCapabilities(capabilities:)(a3);
}

- (void)addAnalyticsReport:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  ActivitySessionHostConnection.addAnalyticsReport(_:)(v4);
}

@end