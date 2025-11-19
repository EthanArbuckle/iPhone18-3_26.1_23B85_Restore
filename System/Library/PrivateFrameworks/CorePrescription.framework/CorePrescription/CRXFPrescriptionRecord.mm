@interface CRXFPrescriptionRecord
- (CRXFPrescriptionRecord)initWithACCPayload:(id)a3 enrollmentName:(id)a4 enrollmentDate:(id)a5 leftEyeRX:(id)a6 rightEyeRX:(id)a7;
- (CRXFPrescriptionRecord)initWithCoder:(id)a3;
- (void)addLeftCalibrationData:(id)a3 rightCalibrationData:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXFPrescriptionRecord

- (CRXFPrescriptionRecord)initWithACCPayload:(id)a3 enrollmentName:(id)a4 enrollmentDate:(id)a5 leftEyeRX:(id)a6 rightEyeRX:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = CRXFPrescriptionRecord;
  v18 = [(CRXFPrescriptionRecord *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accPayload, a3);
    objc_storeStrong(&v19->_enrollmentName, a4);
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = [MEMORY[0x277CBEAA8] date];
    }

    enrollmentDate = v19->_enrollmentDate;
    v19->_enrollmentDate = v20;

    objc_storeStrong(&v19->_leftEyeRX, a6);
    objc_storeStrong(&v19->_rightEyeRX, a7);
  }

  return v19;
}

- (void)addLeftCalibrationData:(id)a3 rightCalibrationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  leftCalibrationData = self->_leftCalibrationData;
  self->_leftCalibrationData = v6;
  v10 = v6;

  rightCalibrationData = self->_rightCalibrationData;
  self->_rightCalibrationData = v7;
}

- (CRXFPrescriptionRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acc"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ek"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ed"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lc"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rc"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lrx"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rrx"];

  if (v5)
  {
    self = [(CRXFPrescriptionRecord *)self initWithACCPayload:v5 enrollmentName:v6 enrollmentDate:v7 leftEyeRX:v10 rightEyeRX:v11];
    [(CRXFPrescriptionRecord *)self addLeftCalibrationData:v8 rightCalibrationData:v9];
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRXFPrescriptionRecord *)self accPayload];
  [v4 encodeObject:v5 forKey:@"acc"];

  v6 = [(CRXFPrescriptionRecord *)self enrollmentName];
  [v4 encodeObject:v6 forKey:@"ek"];

  v7 = [(CRXFPrescriptionRecord *)self enrollmentDate];
  [v4 encodeObject:v7 forKey:@"ed"];

  v8 = [(CRXFPrescriptionRecord *)self leftCalibrationData];
  [v4 encodeObject:v8 forKey:@"lc"];

  v9 = [(CRXFPrescriptionRecord *)self rightCalibrationData];
  [v4 encodeObject:v9 forKey:@"rc"];

  v10 = [(CRXFPrescriptionRecord *)self leftEyeRX];
  [v4 encodeObject:v10 forKey:@"lrx"];

  v11 = [(CRXFPrescriptionRecord *)self rightEyeRX];
  [v4 encodeObject:v11 forKey:@"rrx"];
}

@end