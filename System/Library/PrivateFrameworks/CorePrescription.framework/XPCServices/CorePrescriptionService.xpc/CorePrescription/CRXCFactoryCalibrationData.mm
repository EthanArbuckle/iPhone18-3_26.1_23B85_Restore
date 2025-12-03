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
  sub_10000D808(v2, v3);
  v4.super.isa = sub_100080CC8().super.isa;
  sub_100006A34(v2, v3);

  return v4.super.isa;
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

  v6 = CRXCFactoryCalibrationData.isEqual(_:)(v8);

  sub_10000D014(v8);
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