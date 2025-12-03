@interface CRXFNewEnrollmentInfo
- (CRXFNewEnrollmentInfo)initWithUUID:(id)d calibrationStatus:(unint64_t)status;
- (id)debugDescription;
@end

@implementation CRXFNewEnrollmentInfo

- (CRXFNewEnrollmentInfo)initWithUUID:(id)d calibrationStatus:(unint64_t)status
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CRXFNewEnrollmentInfo;
  v8 = [(CRXFNewEnrollmentInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rxUUID, d);
    v9->_calibrationStatus = status;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  rxUUID = [(CRXFNewEnrollmentInfo *)self rxUUID];
  v6 = CRXFCalibrationStatusAsString([(CRXFNewEnrollmentInfo *)self calibrationStatus]);
  v7 = [v3 stringWithFormat:@"%@<%p> uuid: %@, calibrationStatus: %@", v4, self, rxUUID, v6];

  return v7;
}

@end