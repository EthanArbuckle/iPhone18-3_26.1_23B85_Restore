@interface CSAttendingTriggerInfo
+ (id)triggerInfoForServerInvoke;
- (CSAttendingTriggerInfo)initWithAttendingType:(int64_t)type detectedToken:(id)token triggerMachTime:(unint64_t)time triggerAbsStartSampleId:(unint64_t)id audioRecordType:(int64_t)recordType audioRecordDeviceId:(id)deviceId amountOfSpeechDetectedInMs:(float)ms triggerThresholdInMs:(float)self0;
- (CSAttendingTriggerInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSAttendingTriggerInfo

- (void)encodeWithCoder:(id)coder
{
  attendingType = self->_attendingType;
  coderCopy = coder;
  v5 = [NSNumber numberWithInteger:attendingType];
  [coderCopy encodeObject:v5 forKey:@"CSAttendingTriggerInfo:::attendingType"];

  [coderCopy encodeObject:self->_detectedToken forKey:@"CSAttendingTriggerInfo:::detectedToken"];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_triggerMachTime];
  [coderCopy encodeObject:v6 forKey:@"CSAttendingTriggerInfo:::triggerMachTime"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_triggerAbsStartSampleId];
  [coderCopy encodeObject:v7 forKey:@"CSAttendingTriggerInfo:::triggerAbsStartSampleId"];

  v8 = [NSNumber numberWithLongLong:self->_audioRecordType];
  [coderCopy encodeObject:v8 forKey:@"CSAttendingTriggerInfo:::audioRecordType"];

  [coderCopy encodeObject:self->_deviceId forKey:@"CSAttendingTriggerInfo:::deviceId"];
  *&v9 = self->_amountOfSpeechDetectedInMs;
  [coderCopy encodeFloat:@"CSAttendingTriggerInfo:::amountOfSpeechDetectedInMs" forKey:v9];
  *&v10 = self->_triggerThresholdInMs;
  [coderCopy encodeFloat:@"CSAttendingTriggerInfo:::detectionThresholdInMs" forKey:v10];
}

- (CSAttendingTriggerInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingTriggerInfo:::attendingType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingTriggerInfo:::detectedToken"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingTriggerInfo:::triggerMachTime"];
  unsignedLongLongValue = [v8 unsignedLongLongValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingTriggerInfo:::triggerAbsStartSampleId"];
  unsignedLongLongValue2 = [v10 unsignedLongLongValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingTriggerInfo:::audioRecordType"];
  longLongValue = [v12 longLongValue];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingTriggerInfo:::deviceId"];
  [coderCopy decodeFloatForKey:@"CSAttendingTriggerInfo:::amountOfSpeechDetectedInMs"];
  v16 = v15;
  [coderCopy decodeFloatForKey:@"CSAttendingTriggerInfo:::detectionThresholdInMs"];
  v18 = v17;

  LODWORD(v19) = v16;
  LODWORD(v20) = v18;
  v21 = [(CSAttendingTriggerInfo *)self initWithAttendingType:unsignedIntegerValue detectedToken:v7 triggerMachTime:unsignedLongLongValue triggerAbsStartSampleId:unsignedLongLongValue2 audioRecordType:longLongValue audioRecordDeviceId:v14 amountOfSpeechDetectedInMs:v19 triggerThresholdInMs:v20];

  return v21;
}

- (id)description
{
  v3 = +[NSMutableString string];
  v4 = self->_attendingType - 1;
  if (v4 > 6)
  {
    v5 = @"Default";
  }

  else
  {
    v5 = *(&off_100250920 + v4);
  }

  v6 = v5;
  [v3 appendFormat:@"[type = %@]", v6];

  [v3 appendFormat:@"[detectedToken = %@]", self->_detectedToken];
  [v3 appendFormat:@"[triggerMachTime = %llu]", self->_triggerMachTime];
  [v3 appendFormat:@"[triggerAbsStartSampleId = %llu]", self->_triggerAbsStartSampleId];
  [v3 appendFormat:@"[recordType = %llu]", self->_audioRecordType];
  [v3 appendFormat:@"[deviceId = %@]", self->_deviceId];
  [v3 appendFormat:@"[amountOfSpeechDetectedInMs = %f]", self->_amountOfSpeechDetectedInMs];
  [v3 appendFormat:@"[detectionThresholdInMs = %f]", self->_triggerThresholdInMs];

  return v3;
}

- (CSAttendingTriggerInfo)initWithAttendingType:(int64_t)type detectedToken:(id)token triggerMachTime:(unint64_t)time triggerAbsStartSampleId:(unint64_t)id audioRecordType:(int64_t)recordType audioRecordDeviceId:(id)deviceId amountOfSpeechDetectedInMs:(float)ms triggerThresholdInMs:(float)self0
{
  tokenCopy = token;
  deviceIdCopy = deviceId;
  v24.receiver = self;
  v24.super_class = CSAttendingTriggerInfo;
  v21 = [(CSAttendingTriggerInfo *)&v24 init];
  v22 = v21;
  if (v21)
  {
    v21->_attendingType = type;
    objc_storeStrong(&v21->_detectedToken, token);
    v22->_triggerMachTime = time;
    v22->_triggerAbsStartSampleId = id;
    v22->_audioRecordType = recordType;
    objc_storeStrong(&v22->_deviceId, deviceId);
    v22->_amountOfSpeechDetectedInMs = ms;
    v22->_triggerThresholdInMs = inMs;
  }

  return v22;
}

+ (id)triggerInfoForServerInvoke
{
  v2 = [[CSAttendingTriggerInfo alloc] initWithAttendingType:0 detectedToken:0 triggerMachTime:0 triggerAbsStartSampleId:0 audioRecordType:5 audioRecordDeviceId:0 amountOfSpeechDetectedInMs:0.0 triggerThresholdInMs:0.0];

  return v2;
}

@end