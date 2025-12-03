@interface CSSpeechStartDetectedMetaData
- (CSSpeechStartDetectedMetaData)initWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id;
@end

@implementation CSSpeechStartDetectedMetaData

- (CSSpeechStartDetectedMetaData)initWithHostTime:(unint64_t)time audioRecordType:(int64_t)type audioRecordDeviceId:(id)id
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = CSSpeechStartDetectedMetaData;
  v10 = [(CSSpeechStartDetectedMetaData *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hostTime = time;
    v10->_audioRecordType = type;
    objc_storeStrong(&v10->_deviceId, id);
  }

  return v11;
}

@end