@interface UserDefaultsObserver
- (_TtC16HealthExperience20UserDefaultsObserver)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation UserDefaultsObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16HealthExperience20UserDefaultsObserver_userDefaults);
  v3 = self;
  v4 = v2;

  v5 = sub_1D0FF53E8();

  [v4 removeObserver:v3 forKeyPath:v5];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for UserDefaultsObserver();
  [(UserDefaultsObserver *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_1D0FF5428();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_1D0FF5CA8();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1D0F9FBC0();
  v15 = sub_1D0FF5348();

LABEL_8:
  sub_1D0F9F75C(v10, v12, v18, v15, a6);

  sub_1D0F23B7C(v18);
}

- (_TtC16HealthExperience20UserDefaultsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end