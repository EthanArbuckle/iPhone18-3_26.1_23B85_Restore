@interface HomeAttributeTargetArea
- (BOOL)isEqual:(id)a3;
- (HomeAttributeTargetArea)initWithCoder:(id)a3;
- (HomeAttributeTargetArea)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
- (NSString)description;
@end

@implementation HomeAttributeTargetArea

- (NSString)description
{
  v2 = self;
  HomeAttributeTargetArea.description.getter();

  v3 = sub_252E36F04();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = HomeAttributeTargetArea.isEqual(_:)(v8);

  sub_252982F10(v8);
  return v6;
}

- (HomeAttributeTargetArea)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
  {
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_252E36F34();
  v11 = v10;
  if (a5)
  {
    v12 = sub_252E36F34();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return HomeAttributeTargetArea.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (HomeAttributeTargetArea)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeAttributeTargetArea();
  v4 = a3;
  v5 = [(HomeAttributeTargetArea *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end