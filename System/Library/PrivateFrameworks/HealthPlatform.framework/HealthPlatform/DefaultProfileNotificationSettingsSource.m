@interface DefaultProfileNotificationSettingsSource
- (_TtC14HealthPlatform40DefaultProfileNotificationSettingsSource)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DefaultProfileNotificationSettingsSource

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    sub_22855D1AC();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v12 = a5;
    v13 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_22855DA7C();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_2284BFBAC(&qword_27D83F2B0, 255, type metadata accessor for NSKeyValueChangeKey);
  v11 = sub_22855D0EC();

LABEL_8:
  sub_2284BF958(v14, v11);

  sub_22843D15C(v14);
}

- (_TtC14HealthPlatform40DefaultProfileNotificationSettingsSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end