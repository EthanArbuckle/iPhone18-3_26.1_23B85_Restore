@interface AutomateHomeIntent
- (AutomateHomeIntent)init;
- (AutomateHomeIntent)initWithCoder:(id)coder;
- (AutomateHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (AutomateHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation AutomateHomeIntent

- (AutomateHomeIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutomateHomeIntent();
  return [(AutomateHomeIntent *)&v3 init];
}

- (AutomateHomeIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AutomateHomeIntent();
  coderCopy = coder;
  v5 = [(AutomateHomeIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (AutomateHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for AutomateHomeIntent();
  v9 = [(AutomateHomeIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (AutomateHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for AutomateHomeIntent();
  v13 = [(AutomateHomeIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end