@interface LNCodableValue
- (BOOL)isEqual:(id)equal;
- (LNCodableValue)initWithData:(id)data;
- (NSData)data;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
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

- (LNCodableValue)initWithData:(id)data
{
  dataCopy = data;
  v4 = sub_18F09330C();
  v6 = v5;

  return LNCodableValue.init(data:)(v4, v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  LNCodableValue.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18F093FAC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LNCodableValue.isEqual(_:)(v8);

  sub_18F021E3C(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  LNCodableValue.description.getter();

  v3 = sub_18F093B5C();

  return v3;
}

@end