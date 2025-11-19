@interface HDDatabaseAccessibilityAssertionStoreServer
+ (id)taskIdentifier;
- (HDDatabaseAccessibilityAssertionStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)remote_invalidateDatabaseAccessibilityAssertion:(id)a3;
- (void)remote_requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 isRecovery:(BOOL)a5 completion:(id)a6;
@end

@implementation HDDatabaseAccessibilityAssertionStoreServer

- (HDDatabaseAccessibilityAssertionStoreServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = sub_22911B8DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  *(&self->super.super.isa + OBJC_IVAR___HDDatabaseAccessibilityAssertionStoreServer____lazy_storage___queue) = 0;
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();
  v17 = sub_22911B8BC();
  v18 = type metadata accessor for DatabaseAccessibilityAssertionStoreServer();
  v23.receiver = self;
  v23.super_class = v18;
  v19 = [(HDStandardTaskServer *)&v23 initWithUUID:v17 configuration:v15 client:v16 delegate:a6];

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

- (void)remote_invalidateDatabaseAccessibilityAssertion:(id)a3
{
  v5 = a3;
  v6 = self;
  DatabaseAccessibilityAssertionStoreServer.remote_invalidateDatabaseAccessibilityAssertion(_:)(a3);
}

- (void)remote_requestDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 isRecovery:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_22911C35C();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = self;
  DatabaseAccessibilityAssertionStoreServer.remote_requestDatabaseAccessibilityAssertion(forOwnerIdentifier:contextType:isRecovery:completion:)(v10, v12, a4, a5, sub_2289CBE08, v13);
}

@end