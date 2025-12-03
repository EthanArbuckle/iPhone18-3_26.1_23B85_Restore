@interface SleepingSampleChangeManager
- (_TtC19HealthBalanceDaemon27SleepingSampleChangeManager)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation SleepingSampleChangeManager

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  selfCopy = self;
  sub_2288E6450();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_22892F0C8();
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
  sub_22892F4F8();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_2288E6FF4(&qword_27D85B140, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_22892EFC8();

LABEL_8:
  sub_2288E557C(v10, v12, v18, v15, context);

  sub_2288DB2A4(v18);
}

- (_TtC19HealthBalanceDaemon27SleepingSampleChangeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end