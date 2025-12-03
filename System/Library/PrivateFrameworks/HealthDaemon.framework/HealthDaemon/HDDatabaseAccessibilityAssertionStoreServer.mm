@interface HDDatabaseAccessibilityAssertionStoreServer
+ (id)taskIdentifier;
- (HDDatabaseAccessibilityAssertionStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)remote_invalidateDatabaseAccessibilityAssertion:(id)assertion;
- (void)remote_requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type isRecovery:(BOOL)recovery completion:(id)completion;
@end

@implementation HDDatabaseAccessibilityAssertionStoreServer

- (HDDatabaseAccessibilityAssertionStoreServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v10 = sub_22911B8DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  *(&self->super.super.isa + OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue) = 0;
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v17 = sub_22911B8BC();
  v18 = type metadata accessor for DatabaseAccessibilityAssertionStoreServer();
  v23.receiver = self;
  v23.super_class = v18;
  v19 = [(HDStandardTaskServer *)&v23 initWithUUID:v17 configuration:configurationCopy client:clientCopy delegate:delegate];

  v20 = v19;
  v21 = sub_2289CB03C();

  swift_unknownObjectRelease();
  (*(v11 + 8))(v14, v10);
  return v20;
}

- (id)exportedInterface
{
  sub_22911C26C();
  v2 = sub_22911C25C();

  return v2;
}

- (id)remoteInterface
{
  sub_22911C26C();
  v2 = sub_22911C24C();

  return v2;
}

+ (id)taskIdentifier
{
  sub_22911C26C();
  sub_22911C23C();
  v2 = sub_22911C34C();

  return v2;
}

- (void)remote_invalidateDatabaseAccessibilityAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  DatabaseAccessibilityAssertionStoreServer.remote_invalidateDatabaseAccessibilityAssertion(_:)(assertion);
}

- (void)remote_requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type isRecovery:(BOOL)recovery completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_22911C35C();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  selfCopy = self;
  DatabaseAccessibilityAssertionStoreServer.remote_requestDatabaseAccessibilityAssertion(forOwnerIdentifier:contextType:isRecovery:completion:)(v10, v12, type, recovery, sub_2289CBE08, v13);
}

@end