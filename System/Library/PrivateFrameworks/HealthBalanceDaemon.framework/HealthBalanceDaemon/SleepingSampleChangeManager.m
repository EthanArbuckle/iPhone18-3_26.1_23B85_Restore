@interface SleepingSampleChangeManager
- (_TtC19HealthBalanceDaemon27SleepingSampleChangeManager)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation SleepingSampleChangeManager

- (void)profileDidBecomeReady:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2288E6450();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_22892F0C8();
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
  sub_22892F4F8();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_2288E6FF4(&qword_27D85B140, type metadata accessor for NSKeyValueChangeKey);
  v15 = sub_22892EFC8();

LABEL_8:
  sub_2288E557C(v10, v12, v18, v15, a6);

  sub_2288DB2A4(v18);
}

- (_TtC19HealthBalanceDaemon27SleepingSampleChangeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end