@interface UserDefaultItem
- (_TtC7ChatKit15UserDefaultItem)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation UserDefaultItem

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults);
  selfCopy = self;
  v4 = v2;
  sub_190D52690();
  v5 = sub_190D56ED0();

  [v4 removeObserver:selfCopy forKeyPath:v5];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for UserDefaultItem(0);
  [(UserDefaultItem *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v9 = OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults) = 0;
  sub_190B224E8();
  sub_19021E7D8(v10);
  *(&self->super.isa + v9) = 1;
}

- (_TtC7ChatKit15UserDefaultItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end