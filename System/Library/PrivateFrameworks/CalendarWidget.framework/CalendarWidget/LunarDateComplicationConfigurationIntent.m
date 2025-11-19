@interface LunarDateComplicationConfigurationIntent
- (LunarDateComplicationConfigurationIntent)init;
- (LunarDateComplicationConfigurationIntent)initWithCoder:(id)a3;
- (LunarDateComplicationConfigurationIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (LunarDateComplicationConfigurationIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation LunarDateComplicationConfigurationIntent

- (LunarDateComplicationConfigurationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  return [(LunarDateComplicationConfigurationIntent *)&v3 init];
}

- (LunarDateComplicationConfigurationIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v4 = a3;
  v5 = [(LunarDateComplicationConfigurationIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (LunarDateComplicationConfigurationIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_1E4878BDC();
    v6 = a4;
    v7 = sub_1E4878B9C();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v9 = [(LunarDateComplicationConfigurationIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (LunarDateComplicationConfigurationIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_1E4878A8C();
    v8 = a3;
    v9 = a4;
    v10 = sub_1E4878A7C();
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v13 = [(LunarDateComplicationConfigurationIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end