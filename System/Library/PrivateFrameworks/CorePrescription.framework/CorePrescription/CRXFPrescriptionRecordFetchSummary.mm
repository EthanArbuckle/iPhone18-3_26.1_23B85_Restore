@interface CRXFPrescriptionRecordFetchSummary
- (CRXFPrescriptionRecordFetchSummary)initWithHealthKitError:(id)error keychainError:(id)keychainError healthRecordCount:(unint64_t)count asaKeyCount:(unint64_t)keyCount calibrationDataDownloadFailureCount:(unint64_t)failureCount meanCalibrationDataDownloadTime:(double)time totalFetchTime:(double)fetchTime;
@end

@implementation CRXFPrescriptionRecordFetchSummary

- (CRXFPrescriptionRecordFetchSummary)initWithHealthKitError:(id)error keychainError:(id)keychainError healthRecordCount:(unint64_t)count asaKeyCount:(unint64_t)keyCount calibrationDataDownloadFailureCount:(unint64_t)failureCount meanCalibrationDataDownloadTime:(double)time totalFetchTime:(double)fetchTime
{
  errorCopy = error;
  keychainErrorCopy = keychainError;
  v22.receiver = self;
  v22.super_class = CRXFPrescriptionRecordFetchSummary;
  v19 = [(CRXFPrescriptionRecordFetchSummary *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_healthKitError, error);
    objc_storeStrong(&v20->_keychainError, keychainError);
    v20->_healthRecordCount = count;
    v20->_asaKeyCount = keyCount;
    v20->_calibrationDataDownloadFailureCount = failureCount;
    v20->_meanCalibrationDataDownloadTime = time;
    v20->_totalFetchTime = fetchTime;
  }

  return v20;
}

@end