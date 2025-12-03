@interface ShowHomeIntent
- (ShowHomeIntent)init;
- (ShowHomeIntent)initWithCoder:(id)coder;
- (ShowHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (ShowHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation ShowHomeIntent

- (ShowHomeIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowHomeIntent();
  return [(ShowHomeIntent *)&v3 init];
}

- (ShowHomeIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShowHomeIntent();
  coderCopy = coder;
  v5 = [(ShowHomeIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (ShowHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_252E36F34();
    storeCopy = store;
    v7 = sub_252E36F04();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ShowHomeIntent();
  v9 = [(ShowHomeIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (ShowHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_252E36E44();
    domainCopy = domain;
    verbCopy = verb;
    v10 = sub_252E36E24();
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ShowHomeIntent();
  v13 = [(ShowHomeIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end