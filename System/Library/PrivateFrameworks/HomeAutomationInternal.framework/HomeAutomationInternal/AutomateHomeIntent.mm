@interface AutomateHomeIntent
- (AutomateHomeIntent)init;
- (AutomateHomeIntent)initWithCoder:(id)a3;
- (AutomateHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (AutomateHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation AutomateHomeIntent

- (AutomateHomeIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AutomateHomeIntent();
  return [(AutomateHomeIntent *)&v3 init];
}

- (AutomateHomeIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AutomateHomeIntent();
  v4 = a3;
  v5 = [(AutomateHomeIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (AutomateHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  v11.super_class = type metadata accessor for AutomateHomeIntent();
  v9 = [(AutomateHomeIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (AutomateHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
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
  v15.super_class = type metadata accessor for AutomateHomeIntent();
  v13 = [(AutomateHomeIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end