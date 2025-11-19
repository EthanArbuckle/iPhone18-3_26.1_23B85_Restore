@interface ControlHomeIntent
- (BOOL)isEqual:(id)a3;
- (ControlHomeIntent)init;
- (ControlHomeIntent)initWithCoder:(id)a3;
- (ControlHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (ControlHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation ControlHomeIntent

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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

- (ControlHomeIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlHomeIntent();
  v4 = a3;
  v5 = [(ControlHomeIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (ControlHomeIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
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
  v11.super_class = type metadata accessor for ControlHomeIntent();
  v9 = [(ControlHomeIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (ControlHomeIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
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
  v15.super_class = type metadata accessor for ControlHomeIntent();
  v13 = [(ControlHomeIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end