@interface HeaderWithRightAlignedButton
- (_TtC15HealthRecordsUI28HeaderWithRightAlignedButton)initWithReuseIdentifier:(id)identifier;
- (void)buttonTapped:(id)tapped;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation HeaderWithRightAlignedButton

- (_TtC15HealthRecordsUI28HeaderWithRightAlignedButton)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
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

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  collectionCopy = collection;
  traitCollection = [(HeaderWithRightAlignedButton *)selfCopy traitCollection];
  v9 = traitCollection;
  if (collectionCopy)
  {
    if (traitCollection)
    {
      sub_1D106F934(0, &qword_1EE06B758);
      v10 = collectionCopy;
      v11 = sub_1D1390D8C();

      if (v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (!traitCollection)
    {
      goto LABEL_9;
    }
  }

  sub_1D1278AB0();
  sub_1D1278CE0();
  v10 = collectionCopy;
LABEL_8:

LABEL_9:

  swift_unknownObjectRelease();
}

- (void)buttonTapped:(id)tapped
{
  v4 = self + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    selfCopy = self;
    v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end