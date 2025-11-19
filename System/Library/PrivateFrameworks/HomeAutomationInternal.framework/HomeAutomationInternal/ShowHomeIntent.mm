@interface ShowHomeIntent
- (ShowHomeIntent)init;
- (ShowHomeIntent)initWithCoder:(id)a3;
- (ShowHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (ShowHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation ShowHomeIntent

- (ShowHomeIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowHomeIntent();
  return [(ShowHomeIntent *)&v3 init];
}

- (ShowHomeIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShowHomeIntent();
  v4 = a3;
  v5 = [(ShowHomeIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (ShowHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  v11.super_class = type metadata accessor for ShowHomeIntent();
  v9 = [(ShowHomeIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (ShowHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
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
  v15.super_class = type metadata accessor for ShowHomeIntent();
  v13 = [(ShowHomeIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end