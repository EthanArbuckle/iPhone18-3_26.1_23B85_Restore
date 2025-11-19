@interface CRXFCalibrationData
- (CRXFCalibrationData)initWithACCPayload:(id)a3 leftCalibrationData:(id)a4 rightCalibrationData:(id)a5;
@end

@implementation CRXFCalibrationData

- (CRXFCalibrationData)initWithACCPayload:(id)a3 leftCalibrationData:(id)a4 rightCalibrationData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRXFCalibrationData;
  v12 = [(CRXFCalibrationData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accPayload, a3);
    objc_storeStrong(&v13->_leftCalibrationData, a4);
    objc_storeStrong(&v13->_rightCalibrationData, a5);
  }

  return v13;
}

@end