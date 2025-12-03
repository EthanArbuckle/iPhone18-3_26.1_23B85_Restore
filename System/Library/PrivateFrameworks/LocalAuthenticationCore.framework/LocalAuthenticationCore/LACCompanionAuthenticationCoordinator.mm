@interface LACCompanionAuthenticationCoordinator
- (BOOL)isAvailable;
- (LACCompanionAuthenticationCoordinator)init;
- (LACCompanionAuthenticationProviding)authProvider;
- (LACCompanionAuthenticationProviding)authenticationProvider;
- (LACCompanionAuthenticationProviding)mockedAuthProvider;
- (NSString)description;
- (void)authenticateRequest:(id)request completion:(id)completion;
- (void)authenticationProvider:(id)provider didFailAuthenticationWithID:(id)d error:(id)error;
- (void)cancelAuthenticationForRequestIdentifier:(unsigned int)identifier;
- (void)dealloc;
- (void)domainStateForRequest:(id)request completion:(id)completion;
- (void)notificationCenter:(id)center didReceiveNotification:(const __CFString *)notification;
- (void)setAuthProvider:(id)provider;
- (void)setMockedAuthProvider:(id)provider;
@end

@implementation LACCompanionAuthenticationCoordinator

- (BOOL)isAvailable
{
  selfCopy = self;
  isAvailable = [(LACCompanionAuthenticationProviding *)[(LACCompanionAuthenticationCoordinator *)selfCopy authenticationProvider] isAvailable];

  swift_unknownObjectRelease();
  return isAvailable;
}

- (LACCompanionAuthenticationProviding)authenticationProvider
{
  selfCopy = self;
  isAvailable = [(LACCompanionAuthenticationProviding *)[(LACCompanionAuthenticationCoordinator *)selfCopy mockedAuthProvider] isAvailable];
  swift_unknownObjectRelease();
  v4 = &selRef_authProvider;
  if (isAvailable)
  {
    v4 = &selRef_mockedAuthProvider;
  }

  v5 = [selfCopy *v4];

  return v5;
}

- (LACCompanionAuthenticationProviding)mockedAuthProvider
{
  selfCopy = self;
  v3 = LACCompanionAuthenticationCoordinator.mockedAuthProvider.getter();

  return v3;
}

- (LACCompanionAuthenticationProviding)authProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)notificationCenter:(id)center didReceiveNotification:(const __CFString *)notification
{
  notificationCopy = notification;
  selfCopy = self;
  if (LACDarwinNotificationsEqual(notificationCopy, @"com.apple.LocalAuthentication.GlobalDomainDidChange"))
  {
    LACCompanionAuthenticationCoordinator.simulateAuthenticationSuccess()();
  }
}

- (void)setAuthProvider:(id)provider
{
  v3 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider);
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator_authProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setMockedAuthProvider:(id)provider
{
  v3 = *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider);
  *(&self->super.isa + OBJC_IVAR___LACCompanionAuthenticationCoordinator____lazy_storage___mockedAuthProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedInstance = [v3 sharedInstance];
  [sharedInstance removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = LACCompanionAuthenticationCoordinator;
  [(LACCompanionAuthenticationCoordinator *)&v6 dealloc];
}

- (NSString)description
{
  selfCopy = self;
  v3 = LACCompanionAuthenticationCoordinator.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (void)domainStateForRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  authenticationProvider = [(LACCompanionAuthenticationCoordinator *)selfCopy authenticationProvider];
  v11[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v11[3] = &block_descriptor_27;
  v10 = _Block_copy(v11);

  [(LACCompanionAuthenticationProviding *)authenticationProvider domainStateForRequest:request completion:v10];
  swift_unknownObjectRelease();

  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)authenticateRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  LACCompanionAuthenticationCoordinator.authenticateRequest(_:completion:)(request, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> (), v7);
  swift_unknownObjectRelease();
}

- (void)cancelAuthenticationForRequestIdentifier:(unsigned int)identifier
{
  selfCopy = self;
  LACCompanionAuthenticationCoordinator.cancelAuthentication(forRequestIdentifier:)(identifier);
}

- (LACCompanionAuthenticationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticationProvider:(id)provider didFailAuthenticationWithID:(id)d error:(id)error
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  specialized LACCompanionAuthenticationCoordinator.authenticationProvider(_:didFailAuthenticationWith:error:)(v11, errorCopy);
  swift_unknownObjectRelease();

  (*(v8 + 8))(v11, v7);
}

@end