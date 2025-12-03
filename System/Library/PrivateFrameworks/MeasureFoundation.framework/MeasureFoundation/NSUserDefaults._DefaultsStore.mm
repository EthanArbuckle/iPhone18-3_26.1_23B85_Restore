@interface NSUserDefaults._DefaultsStore
- (_TtCE17MeasureFoundationCSo14NSUserDefaults14_DefaultsStore)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NSUserDefaults._DefaultsStore

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_258428660();
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
  sub_258428E20();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_2583A3EE8(&qword_27F927DB0, type metadata accessor for NSKeyValueChangeKey);
  v14 = sub_258428510();

LABEL_8:
  _sSo14NSUserDefaultsC17MeasureFoundationE01_B5StoreC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyg6ChangeI0aypGSgSvSgtF_0(v9, v11, v17, v14);

  sub_2583A3D90(v17);
}

- (_TtCE17MeasureFoundationCSo14NSUserDefaults14_DefaultsStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end