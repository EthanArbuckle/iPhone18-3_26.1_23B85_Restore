@interface NextEventComplicationConfigurationIntent
- (NextEventComplicationConfigurationIntent)init;
- (NextEventComplicationConfigurationIntent)initWithCoder:(id)coder;
- (NextEventComplicationConfigurationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (NextEventComplicationConfigurationIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation NextEventComplicationConfigurationIntent

- (NextEventComplicationConfigurationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  return [(NextEventComplicationConfigurationIntent *)&v3 init];
}

- (NextEventComplicationConfigurationIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  coderCopy = coder;
  v5 = [(NextEventComplicationConfigurationIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (NextEventComplicationConfigurationIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_1E4878BDC();
    storeCopy = store;
    v7 = sub_1E4878B9C();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v9 = [(NextEventComplicationConfigurationIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (NextEventComplicationConfigurationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_1E4878A8C();
    domainCopy = domain;
    verbCopy = verb;
    v10 = sub_1E4878A7C();
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v13 = [(NextEventComplicationConfigurationIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end