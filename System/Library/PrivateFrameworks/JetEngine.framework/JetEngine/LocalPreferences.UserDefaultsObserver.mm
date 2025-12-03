@interface LocalPreferences.UserDefaultsObserver
- (_TtCC9JetEngine16LocalPreferences20UserDefaultsObserver)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation LocalPreferences.UserDefaultsObserver

- (_TtCC9JetEngine16LocalPreferences20UserDefaultsObserver)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LocalPreferences.UserDefaultsObserver *)&v5 init];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_1AB460544();
    v11 = v10;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_1AB461494();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1AB159D00();
  v14 = sub_1AB4602F4();

LABEL_8:
  sub_1AB159BC4(v9, v11, v17, v14);

  sub_1AB0167A8(v17);
}

@end