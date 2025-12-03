@interface MockTriggerBuilder
- (NSArray)recurrences;
- (NSString)description;
- (NSString)name;
- (_TtC13HomeDataModel18MockTriggerBuilder)init;
- (void)addActionSet:(id)set;
- (void)addEndEvent:(id)event;
- (void)addEvent:(id)event;
- (void)removeActionSet:(id)set;
- (void)removeEndEvent:(id)event;
- (void)removeEvent:(id)event;
- (void)setName:(id)name;
- (void)setName:(id)name isConfigured:(BOOL)configured;
- (void)setPolicy:(id)policy;
- (void)setPredicate:(id)predicate;
- (void)setRecurrences:(id)recurrences;
- (void)setTriggerOwnedActionSet:(id)set;
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

- (void)setName:(id)name
{
  if (name)
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

- (void)setRecurrences:(id)recurrences
{
  if (recurrences)
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

- (void)setPredicate:(id)predicate
{
  v4 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_predicate);
  *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_predicate) = predicate;
  predicateCopy = predicate;
}

- (void)setPolicy:(id)policy
{
  v4 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_policy);
  *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_policy) = policy;
  policyCopy = policy;
}

- (void)setTriggerOwnedActionSet:(id)set
{
  v4 = *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_triggerOwnedActionSet);
  *(self + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_triggerOwnedActionSet) = set;
  setCopy = set;
}

- (void)setName:(id)name isConfigured:(BOOL)configured
{
  if (name)
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
  selfCopy = self;

  *(selfCopy + OBJC_IVAR____TtC13HomeDataModel18MockTriggerBuilder_nameIsConfigured) = configured;
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1D179DA30(eventCopy);
}

- (void)removeEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1D179DAA4(eventCopy);
}

- (void)addEndEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1D179DB2C(eventCopy);
}

- (void)removeEndEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1D179DBA0(eventCopy);
}

- (void)addActionSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  sub_1D179DDBC(setCopy);
}

- (void)removeActionSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  sub_1D179DEF0(setCopy);
}

- (NSString)description
{
  selfCopy = self;
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