@interface UserDefaultItem
- (_TtC7ChatKit15UserDefaultItem)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation UserDefaultItem

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults);
  v3 = self;
  v4 = v2;
  sub_190D52690();
  v5 = sub_190D56ED0();

  [v4 removeObserver:v3 forKeyPath:v5];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for UserDefaultItem(0);
  [(UserDefaultItem *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = self;
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