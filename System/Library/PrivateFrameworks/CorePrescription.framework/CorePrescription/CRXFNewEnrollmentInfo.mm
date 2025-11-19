@interface CRXFNewEnrollmentInfo
- (CRXFNewEnrollmentInfo)initWithUUID:(id)a3 calibrationStatus:(unint64_t)a4;
- (id)debugDescription;
@end

@implementation CRXFNewEnrollmentInfo

- (CRXFNewEnrollmentInfo)initWithUUID:(id)a3 calibrationStatus:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CRXFNewEnrollmentInfo;
  v8 = [(CRXFNewEnrollmentInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_rxUUID, a3);
    v9->_calibrationStatus = a4;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRXFNewEnrollmentInfo *)self rxUUID];
  v6 = CRXFCalibrationStatusAsString([(CRXFNewEnrollmentInfo *)self calibrationStatus]);
  v7 = [v3 stringWithFormat:@"%@<%p> uuid: %@, calibrationStatus: %@", v4, self, v5, v6];

  return v7;
}

@end