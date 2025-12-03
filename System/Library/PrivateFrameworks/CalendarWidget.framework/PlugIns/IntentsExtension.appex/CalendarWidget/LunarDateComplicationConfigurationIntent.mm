@interface LunarDateComplicationConfigurationIntent
- (LunarDateComplicationConfigurationIntent)init;
- (LunarDateComplicationConfigurationIntent)initWithCoder:(id)coder;
- (LunarDateComplicationConfigurationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (LunarDateComplicationConfigurationIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation LunarDateComplicationConfigurationIntent

- (LunarDateComplicationConfigurationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  return [(LunarDateComplicationConfigurationIntent *)&v3 init];
}

- (LunarDateComplicationConfigurationIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  coderCopy = coder;
  v5 = [(LunarDateComplicationConfigurationIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (LunarDateComplicationConfigurationIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    sub_1000086A8();
    storeCopy = store;
    v7 = sub_100008698();
  }

  else
  {
    storeCopy2 = store;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v9 = [(LunarDateComplicationConfigurationIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (LunarDateComplicationConfigurationIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  if (name)
  {
    sub_100008688();
    domainCopy = domain;
    verbCopy = verb;
    v10.super.isa = sub_100008678().super.isa;
  }

  else
  {
    domainCopy2 = domain;
    verbCopy2 = verb;
    v10.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v13 = [(LunarDateComplicationConfigurationIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end