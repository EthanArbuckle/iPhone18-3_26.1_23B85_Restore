@interface ChangeHistoryProcessor
- (_TtC14CopresenceCore22ChangeHistoryProcessor)init;
- (void)visitDeleteContactEvent:(id)a3;
@end

@implementation ChangeHistoryProcessor

- (void)visitDeleteContactEvent:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted);
  v4 = *&self->onContactDeleted[OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted];
  v11 = a3;
  v6 = self;
  v7 = [v11 contactIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v5(v8, v10);
}

- (_TtC14CopresenceCore22ChangeHistoryProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end