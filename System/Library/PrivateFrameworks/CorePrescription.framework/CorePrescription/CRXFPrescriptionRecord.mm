@interface CRXFPrescriptionRecord
- (CRXFPrescriptionRecord)initWithACCPayload:(id)payload enrollmentName:(id)name enrollmentDate:(id)date leftEyeRX:(id)x rightEyeRX:(id)rX;
- (CRXFPrescriptionRecord)initWithCoder:(id)coder;
- (void)addLeftCalibrationData:(id)data rightCalibrationData:(id)calibrationData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXFPrescriptionRecord

- (CRXFPrescriptionRecord)initWithACCPayload:(id)payload enrollmentName:(id)name enrollmentDate:(id)date leftEyeRX:(id)x rightEyeRX:(id)rX
{
  payloadCopy = payload;
  nameCopy = name;
  dateCopy = date;
  xCopy = x;
  rXCopy = rX;
  v23.receiver = self;
  v23.super_class = CRXFPrescriptionRecord;
  v18 = [(CRXFPrescriptionRecord *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accPayload, payload);
    objc_storeStrong(&v19->_enrollmentName, name);
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    enrollmentDate = v19->_enrollmentDate;
    v19->_enrollmentDate = date;

    objc_storeStrong(&v19->_leftEyeRX, x);
    objc_storeStrong(&v19->_rightEyeRX, rX);
  }

  return v19;
}

- (void)addLeftCalibrationData:(id)data rightCalibrationData:(id)calibrationData
{
  dataCopy = data;
  calibrationDataCopy = calibrationData;
  leftCalibrationData = self->_leftCalibrationData;
  self->_leftCalibrationData = dataCopy;
  v10 = dataCopy;

  rightCalibrationData = self->_rightCalibrationData;
  self->_rightCalibrationData = calibrationDataCopy;
}

- (CRXFPrescriptionRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acc"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ek"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ed"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lc"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rc"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lrx"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rrx"];

  if (v5)
  {
    self = [(CRXFPrescriptionRecord *)self initWithACCPayload:v5 enrollmentName:v6 enrollmentDate:v7 leftEyeRX:v10 rightEyeRX:v11];
    [(CRXFPrescriptionRecord *)self addLeftCalibrationData:v8 rightCalibrationData:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accPayload = [(CRXFPrescriptionRecord *)self accPayload];
  [coderCopy encodeObject:accPayload forKey:@"acc"];

  enrollmentName = [(CRXFPrescriptionRecord *)self enrollmentName];
  [coderCopy encodeObject:enrollmentName forKey:@"ek"];

  enrollmentDate = [(CRXFPrescriptionRecord *)self enrollmentDate];
  [coderCopy encodeObject:enrollmentDate forKey:@"ed"];

  leftCalibrationData = [(CRXFPrescriptionRecord *)self leftCalibrationData];
  [coderCopy encodeObject:leftCalibrationData forKey:@"lc"];

  rightCalibrationData = [(CRXFPrescriptionRecord *)self rightCalibrationData];
  [coderCopy encodeObject:rightCalibrationData forKey:@"rc"];

  leftEyeRX = [(CRXFPrescriptionRecord *)self leftEyeRX];
  [coderCopy encodeObject:leftEyeRX forKey:@"lrx"];

  rightEyeRX = [(CRXFPrescriptionRecord *)self rightEyeRX];
  [coderCopy encodeObject:rightEyeRX forKey:@"rrx"];
}

@end