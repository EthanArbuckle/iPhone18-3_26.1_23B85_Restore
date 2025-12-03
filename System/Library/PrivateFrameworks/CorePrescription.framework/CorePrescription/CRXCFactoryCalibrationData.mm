@interface CRXCFactoryCalibrationData
- (BOOL)isEqual:(id)equal;
- (CRXCFactoryCalibrationData)init;
- (NSData)acc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCFactoryCalibrationData

- (NSData)acc
{
  v2 = *(self + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  v3 = *(self + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8);
  sub_24734782C(v2, v3);
  v4 = sub_247365B24();
  sub_247347880(v2, v3);

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

  v6 = CRXCFactoryCalibrationData.isEqual(_:)(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCFactoryCalibrationData.encode(with:)(coderCopy);
}

- (CRXCFactoryCalibrationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end