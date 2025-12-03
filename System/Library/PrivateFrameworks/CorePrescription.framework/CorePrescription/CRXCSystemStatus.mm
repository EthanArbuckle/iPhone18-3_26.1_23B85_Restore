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

  v4 = sub_247365C44();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_247353B60(v8);

  sub_247347038(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_247353E88();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_247354270(coderCopy);
}

- (CRXCSystemStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_247354824(coderCopy);

  return v4;
}

- (CRXCSystemStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end