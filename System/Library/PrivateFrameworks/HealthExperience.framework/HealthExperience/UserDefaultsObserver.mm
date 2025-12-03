@interface UserDefaultsObserver
- (_TtC16HealthExperience20UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation UserDefaultsObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_userDefaults);
  selfCopy = self;
  v4 = v2;

  v5 = sub_1D0FF53E8();

  [v4 removeObserver:selfCopy forKeyPath:v5];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for UserDefaultsObserver();
  [(UserDefaultsObserver *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_1D0FF5428();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1D0FF5CA8();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1D0F9FBC0();
  v15 = sub_1D0FF5348();

LABEL_8:
  sub_1D0F9F75C(v10, v12, v18, v15, context);

  sub_1D0F23B7C(v18);
}

- (_TtC16HealthExperience20UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end