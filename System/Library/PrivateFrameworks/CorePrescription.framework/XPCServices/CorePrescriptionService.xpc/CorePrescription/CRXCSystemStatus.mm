@interface CRXCSystemStatus
- (BOOL)isEqual:(id)equal;
- (CRXCSystemStatus)init;
- (CRXCSystemStatus)initWithCoder:(id)coder;
- (NSString)description;
- (NSString)hardwareModel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCSystemStatus

- (NSString)hardwareModel
{
  v2 = *(self + OBJC_IVAR___CRXCSystemStatus_hardwareModel);
  v3 = *(self + OBJC_IVAR___CRXCSystemStatus_hardwareModel + 8);

  v4 = sub_100081288();

  return v4;
}

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

  v6 = CRXCSystemStatus.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  CRXCSystemStatus.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCSystemStatus.encode(with:)(coderCopy);
}

- (CRXCSystemStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_10004C66C(coderCopy);

  return v4;
}

- (CRXCSystemStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end