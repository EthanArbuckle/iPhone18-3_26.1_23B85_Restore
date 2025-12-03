@interface CRXCDiopterRange
- (BOOL)isEqual:(id)equal;
- (CRXCDiopterRange)init;
- (CRXCDiopterRange)initWithCoder:(id)coder;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCDiopterRange

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRXCDiopterRange.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  CRXCDiopterRange.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCDiopterRange.encode(with:)(coderCopy);
}

- (CRXCDiopterRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_10005A86C(coderCopy);

  return v4;
}

- (CRXCDiopterRange)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end