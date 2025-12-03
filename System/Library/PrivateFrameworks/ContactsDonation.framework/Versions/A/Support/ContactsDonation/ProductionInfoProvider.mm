@interface ProductionInfoProvider
- (_TtC21contactsdonationagent22ProductionInfoProvider)init;
- (void)meCardChanged;
@end

@implementation ProductionInfoProvider

- (void)meCardChanged
{
  selfCopy = self;
  sub_1000147D0();
}

- (_TtC21contactsdonationagent22ProductionInfoProvider)init
{
  v3 = OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedName;
  v4 = type metadata accessor for PersonNameComponents();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_curatedEmailAddresses) = _swiftEmptyArrayStorage;
  *(&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider____lazy_storage___contactStore) = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_changeHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = self + OBJC_IVAR____TtC21contactsdonationagent22ProductionInfoProvider_environment;
  v7 = type metadata accessor for ProductionInfoProvider();
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v9.receiver = self;
  v9.super_class = v7;
  return [(ProductionInfoProvider *)&v9 init];
}

@end