@interface HRTFLogObjectForCategory
@end

@implementation HRTFLogObjectForCategory

void __HRTFLogObjectForCategory_HRTFSerializableCaptureData_block_invoke()
{
  v0 = os_log_create("com.apple.HRTFEnrollment", "HRTFSerializableCaptureData");
  v1 = logObjHRTFSerializableCaptureData;
  logObjHRTFSerializableCaptureData = v0;
}

void __HRTFLogObjectForCategory_HRTFSyncedCaptureSource_block_invoke()
{
  v0 = os_log_create("com.apple.HRTFEnrollment", "HRTFSyncedCaptureSource");
  v1 = logObjHRTFSyncedCaptureSource;
  logObjHRTFSyncedCaptureSource = v0;
}

void __HRTFLogObjectForCategory_HRTFEnrollmentSession_block_invoke()
{
  v0 = os_log_create("com.apple.HRTFEnrollment", "HRTFEnrollmentSession");
  v1 = logObjHRTFEnrollmentSession;
  logObjHRTFEnrollmentSession = v0;
}

@end