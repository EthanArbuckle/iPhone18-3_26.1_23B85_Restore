@interface CRXCDiopterRange
- (BOOL)isEqual:(id)a3;
- (CRXCDiopterRange)init;
- (CRXCDiopterRange)initWithCoder:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCDiopterRange

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRXCDiopterRange.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  CRXCDiopterRange.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCDiopterRange.encode(with:)(v4);
}

- (CRXCDiopterRange)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_10005A86C(v3);

  return v4;
}

- (CRXCDiopterRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end