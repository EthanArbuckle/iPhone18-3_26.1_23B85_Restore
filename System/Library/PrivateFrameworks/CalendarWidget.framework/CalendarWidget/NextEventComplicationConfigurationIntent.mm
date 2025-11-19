@interface NextEventComplicationConfigurationIntent
- (NextEventComplicationConfigurationIntent)init;
- (NextEventComplicationConfigurationIntent)initWithCoder:(id)a3;
- (NextEventComplicationConfigurationIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (NextEventComplicationConfigurationIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation NextEventComplicationConfigurationIntent

- (NextEventComplicationConfigurationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  return [(NextEventComplicationConfigurationIntent *)&v3 init];
}

- (NextEventComplicationConfigurationIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v4 = a3;
  v5 = [(NextEventComplicationConfigurationIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (NextEventComplicationConfigurationIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  v11.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v9 = [(NextEventComplicationConfigurationIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (NextEventComplicationConfigurationIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
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
  v15.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v13 = [(NextEventComplicationConfigurationIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end