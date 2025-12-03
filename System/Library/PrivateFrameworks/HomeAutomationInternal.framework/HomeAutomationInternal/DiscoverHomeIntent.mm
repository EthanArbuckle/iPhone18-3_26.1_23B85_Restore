@interface DiscoverHomeIntent
- (DiscoverHomeIntent)init;
- (DiscoverHomeIntent)initWithCoder:(id)coder;
- (DiscoverHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (DiscoverHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation DiscoverHomeIntent

- (DiscoverHomeIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiscoverHomeIntent();
  return [(DiscoverHomeIntent *)&v3 init];
}

- (DiscoverHomeIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DiscoverHomeIntent();
  coderCopy = coder;
  v5 = [(DiscoverHomeIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (DiscoverHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for DiscoverHomeIntent();
  v9 = [(DiscoverHomeIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (DiscoverHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for DiscoverHomeIntent();
  v13 = [(DiscoverHomeIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end