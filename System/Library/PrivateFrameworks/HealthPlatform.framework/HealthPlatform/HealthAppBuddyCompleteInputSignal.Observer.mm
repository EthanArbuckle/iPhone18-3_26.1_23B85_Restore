@interface HealthAppBuddyCompleteInputSignal.Observer
- (_TtCC14HealthPlatform33HealthAppBuddyCompleteInputSignal8Observer)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation HealthAppBuddyCompleteInputSignal.Observer

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    sub_22855D1AC();
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_22855DA7C();
  swift_unknownObjectRelease();
  if (change)
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