@interface LACCompanionAuthenticationController
- (BOOL)canProcessRequest:(id)a3;
- (BOOL)isFeatureSupported;
- (BOOL)isSessionActive;
- (LACClientInfoProviding)clientInfoProvider;
- (LACCompanionAuthenticationController)init;
- (LACCompanionAuthenticationController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 replyQueue:(id)a7;
- (LACCompanionAuthenticationCoordinating)authenticator;
- (LACCompanionAuthenticationEnvironmentProviding)environmentProvider;
- (LACCompanionAuthenticationSessionMonitoring)sessionMonitor;
- (id)configureRequestForPreflight:(id)a3;
- (id)mapError:(id)a3;
- (void)cancelAllRequests;
- (void)cancelRequestsForContextID:(id)a3;
- (void)companionAuthenticationSessionMonitorDidUpdate:(id)a3;
- (void)domainStateForRequest:(id)a3 completion:(id)a4;
@end

@implementation LACCompanionAuthenticationController

- (BOOL)canProcessRequest:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = LACCompanionAuthenticationController.canProcessRequest(_:)(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (BOOL)isFeatureSupported
{
  v2 = self;
  v3 = [(LACCompanionAuthenticationEnvironmentProviding *)[(LACCompanionAuthenticationController *)v2 environmentProvider] environment];
  swift_unknownObjectRelease();
  v4 = [v3 isFeatureSupported];

  return v4;
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
  v2 = self;
  v3 = [(LACCompanionAuthenticationSessionMonitoring *)[(LACCompanionAuthenticationController *)v2 sessionMonitor] isSessionActive];

  swift_unknownObjectRelease();
  return v3;
}

- (LACCompanionAuthenticationSessionMonitoring)sessionMonitor
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationController_sessionMonitor);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)cancelRequestsForContextID:(id)a3
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
  v13 = self;
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

- (LACCompanionAuthenticationController)initWithAuthenticator:(id)a3 clientInfoProvider:(id)a4 environmentProvider:(id)a5 sessionMonitor:(id)a6 replyQueue:(id)a7
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return LACCompanionAuthenticationController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(a3, a4, a5, a6, a7);
}

- (void)domainStateForRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = [(LACCompanionAuthenticationController *)v8 authenticator];
  v11[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> ();
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_20;
  v10 = _Block_copy(v11);

  [(LACCompanionAuthenticationCoordinating *)v9 domainStateForRequest:a3 completion:v10];
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
  v8 = self;
  LACCompanionAuthenticationController.cancelPendingRequests(contextID:)(v6);

  outlined destroy of AsyncStream<()>.Continuation?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

- (id)mapError:(id)a3
{
  v3 = a3;
  v4 = _convertErrorToNSError(_:)();

  return v4;
}

- (id)configureRequestForPreflight:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = specialized LACCompanionAuthenticationController.configureRequest(forPreflight:)(a3);
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

- (void)companionAuthenticationSessionMonitorDidUpdate:(id)a3
{
  v3 = self;
  LACCompanionAuthenticationController.handleSessionUpdate()();
}

@end