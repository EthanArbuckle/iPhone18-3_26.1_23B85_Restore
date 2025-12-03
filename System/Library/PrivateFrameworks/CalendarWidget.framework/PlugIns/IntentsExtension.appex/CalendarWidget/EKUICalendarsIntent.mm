@interface EKUICalendarsIntent
- (EKUICalendarsIntent)init;
- (EKUICalendarsIntent)initWithCoder:(id)coder;
- (EKUICalendarsIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (EKUICalendarsIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation EKUICalendarsIntent

- (EKUICalendarsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EKUICalendarsIntent();
  return [(EKUICalendarsIntent *)&v3 init];
}

- (EKUICalendarsIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EKUICalendarsIntent();
  coderCopy = coder;
  v5 = [(EKUICalendarsIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (EKUICalendarsIntent)initWithIdentifier:(id)identifier backingStore:(id)store
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
  v11.super_class = type metadata accessor for EKUICalendarsIntent();
  v9 = [(EKUICalendarsIntent *)&v11 initWithIdentifier:v7 backingStore:store];

  return v9;
}

- (EKUICalendarsIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
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
  v15.super_class = type metadata accessor for EKUICalendarsIntent();
  v13 = [(EKUICalendarsIntent *)&v15 initWithDomain:domain verb:verb parametersByName:v10.super.isa];

  return v13;
}

@end