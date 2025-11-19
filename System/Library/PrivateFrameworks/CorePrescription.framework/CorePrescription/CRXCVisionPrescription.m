@interface CRXCVisionPrescription
- (CRXCEyePrescription)leftEye;
- (CRXCEyePrescription)rightEye;
- (CRXCVisionPrescription)init;
@end

@implementation CRXCVisionPrescription

- (CRXCEyePrescription)leftEye
{
  v3 = OBJC_IVAR___CRXCVisionPrescription_leftEye;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (CRXCEyePrescription)rightEye
{
  v3 = OBJC_IVAR___CRXCVisionPrescription_rightEye;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (CRXCVisionPrescription)init
{
  *(&self->super.isa + OBJC_IVAR___CRXCVisionPrescription_leftEye) = 0;
  *(&self->super.isa + OBJC_IVAR___CRXCVisionPrescription_rightEye) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRXCVisionPrescription();
  return [(CRXCVisionPrescription *)&v3 init];
}

@end