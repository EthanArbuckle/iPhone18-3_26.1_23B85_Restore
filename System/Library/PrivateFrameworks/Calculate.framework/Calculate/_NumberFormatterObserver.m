@interface _NumberFormatterObserver
- (_TtC9Calculate24_NumberFormatterObserver)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation _NumberFormatterObserver

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = sub_1C1F52454();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v15 = a5;
    v16 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_1C1F52944();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey();
  sub_1C1ED5210(&qword_1EDC2C2B0, type metadata accessor for NSKeyValueChangeKey);
  v14 = sub_1C1F52354();

LABEL_8:
  sub_1C1ED4404(v9, v11, v17, v14);

  sub_1C1EC418C(v17);
}

- (_TtC9Calculate24_NumberFormatterObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end