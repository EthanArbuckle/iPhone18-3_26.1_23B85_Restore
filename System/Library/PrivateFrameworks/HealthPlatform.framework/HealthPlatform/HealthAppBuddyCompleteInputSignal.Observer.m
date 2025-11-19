@interface HealthAppBuddyCompleteInputSignal.Observer
- (_TtCC14HealthPlatform33HealthAppBuddyCompleteInputSignal8Observer)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation HealthAppBuddyCompleteInputSignal.Observer

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
    memset(v13, 0, sizeof(v13));
    v11 = a5;
    v12 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
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
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_2285544DC(&qword_27D83F2B0, type metadata accessor for NSKeyValueChangeKey);
    sub_22855D0EC();
  }

LABEL_7:
  sub_228554334();

  sub_22843D15C(v13);
}

- (_TtCC14HealthPlatform33HealthAppBuddyCompleteInputSignal8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end