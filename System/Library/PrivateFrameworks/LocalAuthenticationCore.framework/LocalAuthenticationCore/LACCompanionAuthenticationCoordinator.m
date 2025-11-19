@interface LACCompanionAuthenticationCoordinator
- (BOOL)isAvailable;
- (LACCompanionAuthenticationCoordinator)init;
- (LACCompanionAuthenticationProviding)authProvider;
- (LACCompanionAuthenticationProviding)authenticationProvider;
- (LACCompanionAuthenticationProviding)mockedAuthProvider;
- (NSString)description;
- (void)authenticateRequest:(id)a3 completion:(id)a4;
- (void)authenticationProvider:(id)a3 didFailAuthenticationWithID:(id)a4 error:(id)a5;
- (void)cancelAuthenticationForRequestIdentifier:(unsigned int)a3;
- (void)dealloc;
- (void)domainStateForRequest:(id)a3 completion:(id)a4;
- (void)notificationCenter:(id)a3 didReceiveNotification:(const __CFString *)a4;
- (void)setAuthProvider:(id)a3;
- (void)setMockedAuthProvider:(id)a3;
@end

@implementation LACCompanionAuthenticationCoordinator

- (BOOL)isAvailable
{
  v2 = self;
  v3 = [(LACCompanionAuthenticationProviding *)[(LACCompanionAuthenticationCoordinator *)v2 authenticationProvider] isAvailable];

  swift_unknownObjectRelease();
  return v3;
}

- (LACCompanionAuthenticationProviding)authenticationProvider
{
  v2 = self;
  v3 = [(LACCompanionAuthenticationProviding *)[(LACCompanionAuthenticationCoordinator *)v2 mockedAuthProvider] isAvailable];
  swift_unknownObjectRelease();
  v4 = &selRef_authProvider;
  if (v3)
  {
    v4 = &selRef_mockedAuthProvider;
  }

  v5 = [v2 *v4];

  return v5;
}

- (LACCompanionAuthenticationProviding)mockedAuthProvider
{
  v2 = self;
  v3 = LACCompanionAuthenticationCoordinator.mockedAuthProvider.getter();

  return v3;
}

- (LACCompanionAuthenticationProviding)authProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)notificationCenter:(id)a3 didReceiveNotification:(const __CFString *)a4
{
  v5 = a4;
  v6 = self;
  if (LACDarwinNotificationsEqual(v5, @"com.apple.LocalAuthentication.GlobalDomainDidChange"))
  {
    LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()();
  }
}

- (void)setAuthProvider:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider);
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setMockedAuthProvider:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider);
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedInstance];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = LACCompanionAuthenticationCoordinator;
  [(LACCompanionAuthenticationCoordinator *)&v6 dealloc];
}

- (NSString)description
{
  v2 = self;
  v3 = LACCompanionAuthenticationCoordinator.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (void)domainStateForRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  v9 = [(LACCompanionAuthenticationCoordinator *)v8 authenticationProvider];
  v11[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_27;
  v10 = _Block_copy(v11);

  [(LACCompanionAuthenticationProviding *)v9 domainStateForRequest:a3 completion:v10];
  swift_unknownObjectRelease();

  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)authenticateRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> (), v7);
  swift_unknownObjectRelease();
}

- (void)cancelAuthenticationForRequestIdentifier:(unsigned int)a3
{
  v4 = self;
  LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:)(a3);
}

- (LACCompanionAuthenticationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticationProvider:(id)a3 didFailAuthenticationWithID:(id)a4 error:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(v11, v12);
  swift_unknownObjectRelease();

  (*(v8 + 8))(v11, v7);
}

@end