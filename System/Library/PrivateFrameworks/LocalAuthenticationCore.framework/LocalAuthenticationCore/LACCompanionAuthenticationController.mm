@interface LACCompanionAuthenticationController
- (BOOL)canProcessRequest:(id)request;
- (BOOL)isFeatureSupported;
- (BOOL)isSessionActive;
- (LACClientInfoProviding)clientInfoProvider;
- (LACCompanionAuthenticationController)init;
- (LACCompanionAuthenticationController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor replyQueue:(id)queue;
- (LACCompanionAuthenticationCoordinating)authenticator;
- (LACCompanionAuthenticationEnvironmentProviding)environmentProvider;
- (LACCompanionAuthenticationSessionMonitoring)sessionMonitor;
- (id)configureRequestForPreflight:(id)preflight;
- (id)mapError:(id)error;
- (void)cancelAllRequests;
- (void)cancelRequestsForContextID:(id)d;
- (void)companionAuthenticationSessionMonitorDidUpdate:(id)update;
- (void)domainStateForRequest:(id)request completion:(id)completion;
@end

@implementation LACCompanionAuthenticationController

- (BOOL)canProcessRequest:(id)request
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = LACCompanionAuthenticationController.canProcessRequest(_:)(request);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)isFeatureSupported
{
  selfCopy = self;
  environment = [(LACCompanionAuthenticationEnvironmentProviding *)[(LACCompanionAuthenticationController *)selfCopy environmentProvider] environment];
  swift_unknownObjectRelease();
  isFeatureSupported = [environment isFeatureSupported];

  return isFeatureSupported;
}

- (LACCompanionAuthenticationEnvironmentProviding)environmentProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationController_environmentProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACCompanionAuthenticationCoordinating)authenticator
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationController_authenticator);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (BOOL)isSessionActive
{
  selfCopy = self;
  isSessionActive = [(LACCompanionAuthenticationSessionMonitoring *)[(LACCompanionAuthenticationController *)selfCopy sessionMonitor] isSessionActive];

  swift_unknownObjectRelease();
  return isSessionActive;
}

- (LACCompanionAuthenticationSessionMonitoring)sessionMonitor
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationController_sessionMonitor);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)cancelRequestsForContextID:(id)d
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v14 - v6);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v9 + 16))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  selfCopy = self;
  LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v7);

  outlined destroy of AsyncStream<()>.Continuation?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v9 + 8))(v12, v8);
}

- (LACClientInfoProviding)clientInfoProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationController_clientInfoProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (LACCompanionAuthenticationController)initWithAuthenticator:(id)authenticator clientInfoProvider:(id)provider environmentProvider:(id)environmentProvider sessionMonitor:(id)monitor replyQueue:(id)queue
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return LACCompanionAuthenticationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(authenticator, provider, environmentProvider, monitor, queue);
}

- (void)domainStateForRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  authenticator = [(LACCompanionAuthenticationController *)selfCopy authenticator];
  v11[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> ();
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_20;
  v10 = _Block_copy(v11);

  [(LACCompanionAuthenticationCoordinating *)authenticator domainStateForRequest:request completion:v10];
  swift_unknownObjectRelease();

  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)cancelAllRequests
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v9 - v5);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  selfCopy = self;
  LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v6);

  outlined destroy of AsyncStream<()>.Continuation?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

- (id)mapError:(id)error
{
  errorCopy = error;
  v4 = _convertErrorToNSError(_:)();

  return v4;
}

- (id)configureRequestForPreflight:(id)preflight
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = specialized LACCompanionAuthenticationController.configureRequest(forPreflight:)(preflight);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  return v6;
}

- (LACCompanionAuthenticationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)companionAuthenticationSessionMonitorDidUpdate:(id)update
{
  selfCopy = self;
  LACCompanionAuthenticationController.handleSessionUpdate()();
}

@end