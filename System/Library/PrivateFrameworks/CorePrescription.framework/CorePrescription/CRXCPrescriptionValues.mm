@interface CRXCPrescriptionValues
- (CRXCEyePrescription)calibrationValues;
- (CRXCEyePrescription)displayValues;
- (CRXCPrescriptionValues)init;
- (void)encodeWithCoder:(id)a3;
- (void)setCalibrationValues:(id)a3;
- (void)setDisplayValues:(id)a3;
@end

@implementation CRXCPrescriptionValues

- (CRXCEyePrescription)displayValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDisplayValues:(id)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (CRXCEyePrescription)calibrationValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCalibrationValues:(id)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2473407B8(v4);
}

- (CRXCPrescriptionValues)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end