@interface DiscoverHomeIntent
- (DiscoverHomeIntent)init;
- (DiscoverHomeIntent)initWithCoder:(id)a3;
- (DiscoverHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (DiscoverHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation DiscoverHomeIntent

- (DiscoverHomeIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiscoverHomeIntent();
  return [(DiscoverHomeIntent *)&v3 init];
}

- (DiscoverHomeIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DiscoverHomeIntent();
  v4 = a3;
  v5 = [(DiscoverHomeIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (DiscoverHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_252E36F34();
    v6 = a4;
    v7 = sub_252E36F04();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DiscoverHomeIntent();
  v9 = [(DiscoverHomeIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (DiscoverHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_252E36E44();
    v8 = a3;
    v9 = a4;
    v10 = sub_252E36E24();
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for DiscoverHomeIntent();
  v13 = [(DiscoverHomeIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end