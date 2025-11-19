@interface HomeFilter
- (HomeFilter)initWithCoder:(id)a3;
- (HomeFilter)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
- (NSString)description;
- (int64_t)hash;
@end

@implementation HomeFilter

- (int64_t)hash
{
  v2 = self;
  v3 = HomeFilter.hash.getter();

  return v3;
}

- (NSString)description
{
  v2 = self;
  HomeFilter.description.getter();

  v3 = sub_252E36F04();

  return v3;
}

- (HomeFilter)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
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

  return HomeFilter.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (HomeFilter)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeFilter();
  v4 = a3;
  v5 = [(HomeFilter *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end