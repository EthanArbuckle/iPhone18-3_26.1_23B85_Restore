@interface LNCodableValue
- (BOOL)isEqual:(id)a3;
- (LNCodableValue)initWithData:(id)a3;
- (NSData)data;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNCodableValue

- (NSData)data
{
  v2 = LNCodableValue.data.getter();
  v4 = v3;
  v5 = sub_18F0932DC();
  sub_18EF9A4AC(v2, v4);

  return v5;
}

- (LNCodableValue)initWithData:(id)a3
{
  v3 = a3;
  v4 = sub_18F09330C();
  v6 = v5;

  return LNCodableValue.init(data:)(v4, v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  LNCodableValue.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = LNCodableValue.isEqual(_:)(v8);

  sub_18F021E3C(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  LNCodableValue.description.getter();

  v3 = sub_18F093B5C();

  return v3;
}

@end