@interface CRXCPrescriptionValues
- (CRXCEyePrescription)calibrationValues;
- (CRXCEyePrescription)displayValues;
- (CRXCPrescriptionValues)init;
- (void)encodeWithCoder:(id)coder;
- (void)setCalibrationValues:(id)values;
- (void)setDisplayValues:(id)values;
@end

@implementation CRXCPrescriptionValues

- (CRXCEyePrescription)displayValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDisplayValues:(id)values
{
  v5 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = values;
  valuesCopy = values;
}

- (CRXCEyePrescription)calibrationValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCalibrationValues:(id)values
{
  v5 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = values;
  valuesCopy = values;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCPrescriptionValues.encode(with:)(coderCopy);
}

- (CRXCPrescriptionValues)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end