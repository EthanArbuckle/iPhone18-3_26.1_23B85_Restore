@interface CRXFPrescriptionRecordFetchSummary
- (CRXFPrescriptionRecordFetchSummary)initWithHealthKitError:(id)a3 keychainError:(id)a4 healthRecordCount:(unint64_t)a5 asaKeyCount:(unint64_t)a6 calibrationDataDownloadFailureCount:(unint64_t)a7 meanCalibrationDataDownloadTime:(double)a8 totalFetchTime:(double)a9;
@end

@implementation CRXFPrescriptionRecordFetchSummary

- (CRXFPrescriptionRecordFetchSummary)initWithHealthKitError:(id)a3 keychainError:(id)a4 healthRecordCount:(unint64_t)a5 asaKeyCount:(unint64_t)a6 calibrationDataDownloadFailureCount:(unint64_t)a7 meanCalibrationDataDownloadTime:(double)a8 totalFetchTime:(double)a9
{
  v17 = a3;
  v18 = a4;
  v22.receiver = self;
  v22.super_class = CRXFPrescriptionRecordFetchSummary;
  v19 = [(CRXFPrescriptionRecordFetchSummary *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_healthKitError, a3);
    objc_storeStrong(&v20->_keychainError, a4);
    v20->_healthRecordCount = a5;
    v20->_asaKeyCount = a6;
    v20->_calibrationDataDownloadFailureCount = a7;
    v20->_meanCalibrationDataDownloadTime = a8;
    v20->_totalFetchTime = a9;
  }

  return v20;
}

@end