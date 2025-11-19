@interface CRXCPrescriptionInfo
- (BOOL)cylinderSignFlipped;
- (BOOL)outOfRange;
- (CRXCEyePrescription)calibrationValues;
- (CRXCEyePrescription)displayValues;
- (CRXCPrescriptionInfo)init;
- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)a3 axisID:(unint64_t)a4 rxOffsetID:(unint64_t)a5 cylinderSignFlipped:(BOOL)a6 calibratedRXID:(unint64_t)a7 horizPrismID:(unint64_t)a8 horizPrismBaseDir:(int64_t)a9 vertPrismID:(unint64_t)a10 vertPrismBaseDir:(int64_t)a11 outOfRange:(BOOL)a12 displayValues:(id)a13 calibrationValues:(id)a14 clampingStatus:(int64_t)a15;
- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)a3 axisID:(unint64_t)a4 rxOffsetID:(unint64_t)a5 cylinderSignFlipped:(BOOL)a6 calibratedRXID:(unint64_t)a7 outOfRange:(BOOL)a8 displayValues:(id)a9 calibrationValues:(id)a10 clampingStatus:(int64_t)a11;
- (int64_t)clampingStatus;
- (int64_t)horizPrismBaseDir;
- (int64_t)vertPrismBaseDir;
- (unint64_t)axisID;
- (unint64_t)calibratedRXID;
- (unint64_t)horizPrismID;
- (unint64_t)rxID;
- (unint64_t)rxOffsetID;
- (unint64_t)vertPrismID;
- (void)encodeWithCoder:(id)a3;
- (void)setAxisID:(unint64_t)a3;
- (void)setCalibratedRXID:(unint64_t)a3;
- (void)setCalibrationValues:(id)a3;
- (void)setClampingStatus:(int64_t)a3;
- (void)setCylinderSignFlipped:(BOOL)a3;
- (void)setDisplayValues:(id)a3;
- (void)setHorizPrismBaseDir:(int64_t)a3;
- (void)setHorizPrismID:(unint64_t)a3;
- (void)setOutOfRange:(BOOL)a3;
- (void)setRxID:(unint64_t)a3;
- (void)setRxOffsetID:(unint64_t)a3;
- (void)setVertPrismBaseDir:(int64_t)a3;
- (void)setVertPrismID:(unint64_t)a3;
@end

@implementation CRXCPrescriptionInfo

- (unint64_t)rxID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRxID:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)axisID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAxisID:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)rxOffsetID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRxOffsetID:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)cylinderSignFlipped
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCylinderSignFlipped:(BOOL)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)calibratedRXID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCalibratedRXID:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)horizPrismID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHorizPrismID:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)horizPrismBaseDir
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHorizPrismBaseDir:(int64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)vertPrismID
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVertPrismID:(unint64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)vertPrismBaseDir
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setVertPrismBaseDir:(int64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)outOfRange
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOutOfRange:(BOOL)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CRXCEyePrescription)displayValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDisplayValues:(id)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (CRXCEyePrescription)calibrationValues
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCalibrationValues:(id)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (int64_t)clampingStatus
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setClampingStatus:(int64_t)a3
{
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)a3 axisID:(unint64_t)a4 rxOffsetID:(unint64_t)a5 cylinderSignFlipped:(BOOL)a6 calibratedRXID:(unint64_t)a7 horizPrismID:(unint64_t)a8 horizPrismBaseDir:(int64_t)a9 vertPrismID:(unint64_t)a10 vertPrismBaseDir:(int64_t)a11 outOfRange:(BOOL)a12 displayValues:(id)a13 calibrationValues:(id)a14 clampingStatus:(int64_t)a15
{
  v18 = a13;
  v19 = a14;
  v20 = sub_10000D0A0(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v18, v19, a15);

  return v20;
}

- (CRXCPrescriptionInfo)initWithRxID:(unint64_t)a3 axisID:(unint64_t)a4 rxOffsetID:(unint64_t)a5 cylinderSignFlipped:(BOOL)a6 calibratedRXID:(unint64_t)a7 outOfRange:(BOOL)a8 displayValues:(id)a9 calibrationValues:(id)a10 clampingStatus:(int64_t)a11
{
  v17 = a9;
  v18 = a10;
  v19 = sub_10000D49C(a3, a4, a5, a6, a7, a8, v17, v18, a11);

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCPrescriptionInfo.encode(with:)(v4);
}

- (CRXCPrescriptionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end