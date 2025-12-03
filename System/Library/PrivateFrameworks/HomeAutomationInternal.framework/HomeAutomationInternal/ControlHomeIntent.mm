@interface ControlHomeIntent
- (BOOL)isEqual:(id)equal;
- (ControlHomeIntent)init;
- (ControlHomeIntent)initWithCoder:(id)coder;
- (ControlHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (ControlHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation ControlHomeIntent

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ControlHomeIntent.isEqual(_:)(v8);

  sub_252982F10(v8);
  return v6 & 1;
}

- (ControlHomeIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ControlHomeIntent();
  return [(ControlHomeIntent *)&v3 init];
}

- (ControlHomeIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlHomeIntent();
  coderCopy = coder;
  v5 = [(ControlHomeIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (ControlHomeIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for ControlHomeIntent();
  v9 = [(ControlHomeIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (ControlHomeIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for ControlHomeIntent();
  v13 = [(ControlHomeIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10];

  return v13;
}

@end