@interface MockTriggerBuilder
- (NSArray)recurrences;
- (NSString)description;
- (NSString)name;
- (_TtC13HomeDataModel18MockTriggerBuilder)init;
- (void)addActionSet:(id)a3;
- (void)addEndEvent:(id)a3;
- (void)addEvent:(id)a3;
- (void)removeActionSet:(id)a3;
- (void)removeEndEvent:(id)a3;
- (void)removeEvent:(id)a3;
- (void)setName:(id)a3;
- (void)setName:(id)a3 isConfigured:(BOOL)a4;
- (void)setPolicy:(id)a3;
- (void)setPredicate:(id)a3;
- (void)setRecurrences:(id)a3;
- (void)setTriggerOwnedActionSet:(id)a3;
@end

@implementation MockTriggerBuilder

- (NSString)name
{
  if (*(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name);
    v3 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name + 8);

    v4 = sub_1D1E677EC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setName:(id)a3
{
  if (a3)
  {
    v4 = sub_1D1E6781C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name);
  v7 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSArray)recurrences
{
  if (*(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_recurrences))
  {
    sub_1D1E662EC();

    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setRecurrences:(id)a3
{
  if (a3)
  {
    sub_1D1E662EC();
    v4 = sub_1D1E67C1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_recurrences);
  *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_recurrences) = v4;
}

- (void)setPredicate:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_predicate);
  *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_predicate) = a3;
  v3 = a3;
}

- (void)setPolicy:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_policy);
  *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_policy) = a3;
  v3 = a3;
}

- (void)setTriggerOwnedActionSet:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_triggerOwnedActionSet);
  *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_triggerOwnedActionSet) = a3;
  v3 = a3;
}

- (void)setName:(id)a3 isConfigured:(BOOL)a4
{
  if (a3)
  {
    v6 = sub_1D1E6781C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name);
  v9 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_name + 8);
  *v8 = v6;
  v8[1] = v7;
  v10 = self;

  *(v10 + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_nameIsConfigured) = a4;
}

- (void)addEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D179DA30(v4);
}

- (void)removeEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D179DAA4(v4);
}

- (void)addEndEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D179DB2C(v4);
}

- (void)removeEndEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D179DBA0(v4);
}

- (void)addActionSet:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D179DDBC(v4);
}

- (void)removeActionSet:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D179DEF0(v4);
}

- (NSString)description
{
  v2 = self;
  sub_1D179DFE0();

  v3 = sub_1D1E677EC();

  return v3;
}

- (_TtC13HomeDataModel18MockTriggerBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end