@interface HDHealthStoreClientAssertions
- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)init;
- (id)accessibilityAssertions;
- (id)assertionForHKDatabaseAccessibilityAssertionWithHkDatabaseAccessibilityAssertion:(id)assertion;
- (id)firstAssertion;
- (void)addAssertionMappingWithAssertion:(id)assertion;
- (void)dealloc;
- (void)invalidateAssertions;
- (void)removeAssertionMappingWithAssertion:(id)assertion;
@end

@implementation HDHealthStoreClientAssertions

- (void)dealloc
{
  selfCopy = self;
  sub_2289E6C60();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for HDHealthStoreClientAssertions();
  [(HDHealthStoreClientAssertions *)&v3 dealloc];
}

- (void)invalidateAssertions
{
  selfCopy = self;
  sub_2289E6C60();
}

- (id)firstAssertion
{
  selfCopy = self;
  v3 = sub_2289E6E20();

  return v3;
}

- (id)accessibilityAssertions
{
  selfCopy = self;
  v3 = sub_2289E6F3C();

  if (v3)
  {
    sub_2289B3D00(0, &qword_280D67888, 0x277D10AB8);
    v4 = sub_22911C44C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)assertionForHKDatabaseAccessibilityAssertionWithHkDatabaseAccessibilityAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  v6 = sub_2289E7114(assertionCopy);

  return v6;
}

- (void)addAssertionMappingWithAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  sub_2289E7350(assertionCopy);
}

- (void)removeAssertionMappingWithAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  sub_2289E757C(assertionCopy);
}

- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions__dbAssertionLock) = 0;
  v3 = OBJC_IVAR____TtC12HealthDaemon29HDHealthStoreClientAssertions_databaseAccessibilityAssertions;
  *(&self->super.isa + v3) = sub_2289B2A1C(MEMORY[0x277D84F90]);
  v5.receiver = self;
  v5.super_class = type metadata accessor for HDHealthStoreClientAssertions();
  return [(HDHealthStoreClientAssertions *)&v5 init];
}

@end