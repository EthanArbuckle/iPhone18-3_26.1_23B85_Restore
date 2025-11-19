@interface CRXCFactoryCalibrationData
- (BOOL)isEqual:(id)a3;
- (CRXCFactoryCalibrationData)init;
- (NSData)acc;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CRXCFactoryCalibrationData.isEqual(_:)(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCFactoryCalibrationData.encode(with:)(v4);
}

- (CRXCFactoryCalibrationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end