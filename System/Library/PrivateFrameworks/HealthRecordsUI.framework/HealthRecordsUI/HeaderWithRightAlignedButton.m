@interface HeaderWithRightAlignedButton
- (_TtC15HealthRecordsUI28HeaderWithRightAlignedButton)initWithReuseIdentifier:(id)a3;
- (void)buttonTapped:(id)a3;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation HeaderWithRightAlignedButton

- (_TtC15HealthRecordsUI28HeaderWithRightAlignedButton)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_1D139016C();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_1D1278744(v3, v4);
}

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = a4;
  v8 = [(HeaderWithRightAlignedButton *)v6 traitCollection];
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      sub_1D106F934(0, &qword_1EE06B758);
      v10 = v7;
      v11 = sub_1D1390D8C();

      if (v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  sub_1D1278AB0();
  sub_1D1278CE0();
  v10 = v7;
LABEL_8:

LABEL_9:

  swift_unknownObjectRelease();
}

- (void)buttonTapped:(id)a3
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end