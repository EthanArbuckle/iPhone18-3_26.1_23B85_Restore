@interface LocalPreferences.UserDefaultsObserver
- (_TtCC7JetCore16LocalPreferences20UserDefaultsObserver)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation LocalPreferences.UserDefaultsObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_1DB50A650();
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
  sub_1DB50B200();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1DB48C6F8();
  v14 = sub_1DB50A4B0();

LABEL_8:
  sub_1DB48C5BC(v9, v11, v17, v14);

  sub_1DB301DBC(v17);
}

- (_TtCC7JetCore16LocalPreferences20UserDefaultsObserver)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LocalPreferences.UserDefaultsObserver *)&v5 init];
}

@end