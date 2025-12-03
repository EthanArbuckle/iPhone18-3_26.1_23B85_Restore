@interface CRXCPrescriptionInfo
- (BOOL)cylinderSignFlipped;
- (BOOL)outOfRange;
- (CRXCEyePrescription)calibrationValues;
- (CRXCEyePrescription)displayValues;
- (CRXCPrescriptionInfo)init;
- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)d axisID:(unint64_t)iD rxOffsetID:(unint64_t)offsetID cylinderSignFlipped:(BOOL)flipped calibratedRXID:(unint64_t)xID horizPrismID:(unint64_t)prismID horizPrismBaseDir:(int64_t)dir vertPrismID:(unint64_t)self0 vertPrismBaseDir:(int64_t)self1 outOfRange:(BOOL)self2 displayValues:(id)self3 calibrationValues:(id)self4 clampingStatus:(int64_t)self5;
- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)d axisID:(unint64_t)iD rxOffsetID:(unint64_t)offsetID cylinderSignFlipped:(BOOL)flipped calibratedRXID:(unint64_t)xID outOfRange:(BOOL)range displayValues:(id)values calibrationValues:(id)self0 clampingStatus:(int64_t)self1;
- (int64_t)clampingStatus;
- (int64_t)horizPrismBaseDir;
- (int64_t)vertPrismBaseDir;
- (unint64_t)axisID;
- (unint64_t)calibratedRXID;
- (unint64_t)horizPrismID;
- (unint64_t)rxID;
- (unint64_t)rxOffsetID;
- (unint64_t)vertPrismID;
- (void)encodeWithCoder:(id)coder;
- (void)setAxisID:(unint64_t)d;
- (void)setCalibratedRXID:(unint64_t)d;
- (void)setCalibrationValues:(id)values;
- (void)setClampingStatus:(int64_t)status;
- (void)setCylinderSignFlipped:(BOOL)flipped;
- (void)setDisplayValues:(id)values;
- (void)setHorizPrismBaseDir:(int64_t)dir;
- (void)setHorizPrismID:(unint64_t)d;
- (void)setOutOfRange:(BOOL)range;
- (void)setRxID:(unint64_t)d;
- (void)setRxOffsetID:(unint64_t)d;
- (void)setVertPrismBaseDir:(int64_t)dir;
- (void)setVertPrismID:(unint64_t)d;
@end

@implementation CRXCPrescriptionInfo

- (unint64_t)rxID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRxID:(unint64_t)d
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (unint64_t)axisID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAxisID:(unint64_t)d
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (unint64_t)rxOffsetID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRxOffsetID:(unint64_t)d
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (BOOL)cylinderSignFlipped
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCylinderSignFlipped:(BOOL)flipped
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  *(&self->super.isa + v5) = flipped;
}

- (unint64_t)calibratedRXID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCalibratedRXID:(unint64_t)d
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (unint64_t)horizPrismID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHorizPrismID:(unint64_t)d
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (int64_t)horizPrismBaseDir
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHorizPrismBaseDir:(int64_t)dir
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  swift_beginAccess();
  *(&self->super.isa + v5) = dir;
}

- (unint64_t)vertPrismID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVertPrismID:(unint64_t)d
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  swift_beginAccess();
  *(&self->super.isa + v5) = d;
}

- (int64_t)vertPrismBaseDir
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVertPrismBaseDir:(int64_t)dir
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  swift_beginAccess();
  *(&self->super.isa + v5) = dir;
}

- (BOOL)outOfRange
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOutOfRange:(BOOL)range
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  *(&self->super.isa + v5) = range;
}

- (CRXCEyePrescription)displayValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDisplayValues:(id)values
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = values;
  valuesCopy = values;
}

- (CRXCEyePrescription)calibrationValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCalibrationValues:(id)values
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = values;
  valuesCopy = values;
}

- (int64_t)clampingStatus
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setClampingStatus:(int64_t)status
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  *(&self->super.isa + v5) = status;
}

- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)d axisID:(unint64_t)iD rxOffsetID:(unint64_t)offsetID cylinderSignFlipped:(BOOL)flipped calibratedRXID:(unint64_t)xID horizPrismID:(unint64_t)prismID horizPrismBaseDir:(int64_t)dir vertPrismID:(unint64_t)self0 vertPrismBaseDir:(int64_t)self1 outOfRange:(BOOL)self2 displayValues:(id)self3 calibrationValues:(id)self4 clampingStatus:(int64_t)self5
{
  valuesCopy = values;
  calibrationValuesCopy = calibrationValues;
  v20 = sub_2473470C4(d, iD, offsetID, flipped, xID, prismID, dir, vertPrismID, baseDir, range, valuesCopy, calibrationValuesCopy, status);

  return v20;
}

- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)d axisID:(unint64_t)iD rxOffsetID:(unint64_t)offsetID cylinderSignFlipped:(BOOL)flipped calibratedRXID:(unint64_t)xID outOfRange:(BOOL)range displayValues:(id)values calibrationValues:(id)self0 clampingStatus:(int64_t)self1
{
  valuesCopy = values;
  calibrationValuesCopy = calibrationValues;
  v19 = sub_2473474C0(d, iD, offsetID, flipped, xID, range, valuesCopy, calibrationValuesCopy, status);

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_247343C14(coderCopy);
}

- (CRXCPrescriptionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end