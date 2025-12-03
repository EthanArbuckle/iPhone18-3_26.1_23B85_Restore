@interface CRXFCalibrationData
- (CRXFCalibrationData)initWithACCPayload:(id)payload leftCalibrationData:(id)data rightCalibrationData:(id)calibrationData;
@end

@implementation CRXFCalibrationData

- (CRXFCalibrationData)initWithACCPayload:(id)payload leftCalibrationData:(id)data rightCalibrationData:(id)calibrationData
{
  payloadCopy = payload;
  dataCopy = data;
  calibrationDataCopy = calibrationData;
  v15.receiver = self;
  v15.super_class = CRXFCalibrationData;
  v12 = [(CRXFCalibrationData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accPayload, payload);
    objc_storeStrong(&v13->_leftCalibrationData, data);
    objc_storeStrong(&v13->_rightCalibrationData, calibrationData);
  }

  return v13;
}

@end