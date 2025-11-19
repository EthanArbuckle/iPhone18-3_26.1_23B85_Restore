@interface HomeAttributeTargetMap
- (BOOL)isEqual:(id)a3;
- (HomeAttributeTargetMap)initWithCoder:(id)a3;
- (HomeAttributeTargetMap)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
- (NSString)description;
@end

@implementation HomeAttributeTargetMap

- (NSString)description
{
  v2 = self;
  HomeAttributeTargetMap.description.getter();

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

  v6 = HomeAttributeTargetMap.isEqual(_:)(v8);

  sub_252982F10(v8);
  return v6;
}

- (HomeAttributeTargetMap)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
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

  return HomeAttributeTargetMap.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (HomeAttributeTargetMap)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeAttributeTargetMap();
  v4 = a3;
  v5 = [(HomeAttributeTargetMap *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end