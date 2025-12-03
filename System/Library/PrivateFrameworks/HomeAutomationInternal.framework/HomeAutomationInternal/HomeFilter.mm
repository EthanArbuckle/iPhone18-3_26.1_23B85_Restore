@interface HomeFilter
- (HomeFilter)initWithCoder:(id)coder;
- (HomeFilter)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
- (NSString)description;
- (int64_t)hash;
@end

@implementation HomeFilter

- (int64_t)hash
{
  selfCopy = self;
  v3 = HomeFilter.hash.getter();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  HomeFilter.description.getter();

  v3 = sub_252E36F04();

  return v3;
}

- (HomeFilter)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
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
  if (hint)
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

- (HomeFilter)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeFilter();
  coderCopy = coder;
  v5 = [(HomeFilter *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end