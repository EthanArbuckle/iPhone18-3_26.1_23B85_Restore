@interface CSSpeechStartDetectedMetaData
- (CSSpeechStartDetectedMetaData)initWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
@end

@implementation CSSpeechStartDetectedMetaData

- (CSSpeechStartDetectedMetaData)initWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CSSpeechStartDetectedMetaData;
  v10 = [(CSSpeechStartDetectedMetaData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hostTime = a3;
    v10->_audioRecordType = a4;
    objc_storeStrong(&v10->_deviceId, a5);
  }

  return v11;
}

@end