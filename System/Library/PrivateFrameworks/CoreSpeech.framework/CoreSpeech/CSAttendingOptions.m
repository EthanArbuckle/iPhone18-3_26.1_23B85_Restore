@interface CSAttendingOptions
+ (id)optionForFlexibleFollowupWithAudioRecordType:(int64_t)a3 deviceId:(id)a4;
+ (id)optionForJarvisAnnounceMessageWithDeviceId:(id)a3;
- (CSAttendingOptions)initWithAttendingType:(int64_t)a3 startAttendingHostTime:(unint64_t)a4 useVAD:(BOOL)a5 useOwnVoiceVAD:(BOOL)a6 useBoron:(BOOL)a7 startOfSpeechThresholdInMs:(double)a8 prependAudioDuration:(double)a9 timeoutThresholdInSec:(double)a10 triggerType:(int64_t)a11 audioStreamHoldingDurationInSec:(double)a12 audioRecordType:(int64_t)a13 deviceId:(id)a14 attendingListeningType:(unint64_t)a15 pauseDurationThreshold:(double)a16 maxPauseDelay:(double)a17;
- (CSAttendingOptions)initWithCoder:(id)a3;
- (id)copyWithRecordType:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSAttendingOptions

- (void)encodeWithCoder:(id)a3
{
  attendingType = self->_attendingType;
  v5 = a3;
  v6 = [NSNumber numberWithInteger:attendingType];
  [v5 encodeObject:v6 forKey:@"CSAttendingOptions:::attendingType"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_startAttendingHostTime];
  [v5 encodeObject:v7 forKey:@"CSAttendingOptions:::startAttendingHostTime"];

  v8 = [NSNumber numberWithBool:self->_useVAD];
  [v5 encodeObject:v8 forKey:@"CSAttendingOptions:::useVAD"];

  v9 = [NSNumber numberWithBool:self->_useOwnVoiceVAD];
  [v5 encodeObject:v9 forKey:@"CSAttendingOptions:::useOwnVoiceVAD"];

  v10 = [NSNumber numberWithBool:self->_useBoron];
  [v5 encodeObject:v10 forKey:@"CSAttendingOptions:::useBoron"];

  v11 = [NSNumber numberWithDouble:self->_startOfSpeechThresholdInMs];
  [v5 encodeObject:v11 forKey:@"CSAttendingOptions:::startOfSpeechThresholdInMs"];

  v12 = [NSNumber numberWithDouble:self->_startOfSpeechNearMissThresholdInMs];
  [v5 encodeObject:v12 forKey:@"CSAttendingOptions:::startOfSpeechNearMissThresholdInMs"];

  v13 = [NSNumber numberWithDouble:self->_prependAudioDuration];
  [v5 encodeObject:v13 forKey:@"CSAttendingOptions:::prependAudioDuration"];

  v14 = [NSNumber numberWithDouble:self->_timeoutThresholdInSec];
  [v5 encodeObject:v14 forKey:@"CSAttendingOptions:::timeoutThresholdInSec"];

  v15 = [NSNumber numberWithInteger:self->_triggerType];
  [v5 encodeObject:v15 forKey:@"CSAttendingOptions:::triggerType"];

  v16 = [NSNumber numberWithDouble:self->_audioStreamHoldingDurationInSec];
  [v5 encodeObject:v16 forKey:@"CSAttendingOptions:::audioStreamHoldingDurationInSec"];

  v17 = [NSNumber numberWithLongLong:self->_recordType];
  [v5 encodeObject:v17 forKey:@"CSAttendingOptions:::audioRecordType"];

  [v5 encodeObject:self->_deviceId forKey:@"CSAttendingOptions:::deviceId"];
  v18 = [NSNumber numberWithUnsignedInteger:self->_attendingListeningType];
  [v5 encodeObject:v18 forKey:@"CSAttendingOptions:::attendingListeningType"];

  v19 = [NSNumber numberWithDouble:self->_pauseDurationThreshold];
  [v5 encodeObject:v19 forKey:@"CSAttendingOptions:::pauseDurationThreshold"];

  v20 = [NSNumber numberWithDouble:self->_maxPauseDelay];
  [v5 encodeObject:v20 forKey:@"CSAttendingOptions:::maxPauseDelay"];
}

- (CSAttendingOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::attendingType"];
  v40 = [v4 unsignedIntegerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::startAttendingHostTime"];
  v39 = [v5 unsignedLongLongValue];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::useVAD"];
  v7 = [v6 BOOLValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::useOwnVoiceVAD"];
  v9 = [v8 BOOLValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::useBoron"];
  v11 = [v10 BOOLValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::startOfSpeechThresholdInMs"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::prependAudioDuration"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::timeoutThresholdInSec"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::triggerType"];
  v22 = [v21 unsignedIntegerValue];

  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::audioStreamHoldingDurationInSec"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::audioRecordType"];
  v27 = [v26 longLongValue];

  v28 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::deviceId"];
  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::attendingListeningType"];
  v30 = [v29 unsignedIntegerValue];

  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::pauseDurationThreshold"];
  [v31 doubleValue];
  v33 = v32;

  v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::maxPauseDelay"];

  [v34 doubleValue];
  v36 = v35;

  v37 = [(CSAttendingOptions *)self initWithAttendingType:v40 startAttendingHostTime:v39 useVAD:v7 useOwnVoiceVAD:v9 useBoron:v11 startOfSpeechThresholdInMs:v22 prependAudioDuration:v14 timeoutThresholdInSec:v17 triggerType:v20 audioStreamHoldingDurationInSec:v25 audioRecordType:v33 deviceId:v36 attendingListeningType:v27 pauseDurationThreshold:v28 maxPauseDelay:v30];
  return v37;
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

  [v3 appendFormat:@"[startAttendingHostTime = %llu]", self->_startAttendingHostTime];
  if (self->_useVAD)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"[useVAD = %@]", v7];
  if (self->_useOwnVoiceVAD)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"[useOwnVoiceVAD = %@]", v8];
  if (self->_useBoron)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"[useBoron = %@]", v9];
  [v3 appendFormat:@"[startOfSpeechThresholdInMs = %.2f]", *&self->_startOfSpeechThresholdInMs];
  [v3 appendFormat:@"[startOfSpeechNearMissThresholdInMs = %.2f]", *&self->_startOfSpeechNearMissThresholdInMs];
  [v3 appendFormat:@"[prependAudioDuration = %.2f]", *&self->_prependAudioDuration];
  [v3 appendFormat:@"[timeoutThresholdInSec = %.2f]", *&self->_timeoutThresholdInSec];
  [v3 appendFormat:@"[triggerType = %lu]", self->_triggerType];
  [v3 appendFormat:@"[audioStreamHoldingDurationInSec = %.2f]", *&self->_audioStreamHoldingDurationInSec];
  [v3 appendFormat:@"[audioRecordType = %lld]", self->_recordType];
  [v3 appendFormat:@"[deviceId = %@]", self->_deviceId];
  [v3 appendFormat:@"[attendingListeningType = %lu]", self->_attendingListeningType];
  [v3 appendFormat:@"[pauseDurationThreshold = %.2f]", *&self->_pauseDurationThreshold];
  [v3 appendFormat:@"[maxPauseDelay = %.2f]", *&self->_maxPauseDelay];

  return v3;
}

- (id)copyWithRecordType:(int64_t)a3
{
  v4 = [CSAttendingOptions alloc];
  v5 = [(CSAttendingOptions *)self attendingType];
  v6 = [(CSAttendingOptions *)self startAttendingHostTime];
  v7 = [(CSAttendingOptions *)self useVAD];
  v8 = [(CSAttendingOptions *)self useOwnVoiceVAD];
  v9 = [(CSAttendingOptions *)self useBoron];
  [(CSAttendingOptions *)self startOfSpeechThresholdInMs];
  v11 = v10;
  [(CSAttendingOptions *)self prependAudioDuration];
  v13 = v12;
  [(CSAttendingOptions *)self timeoutThresholdInSec];
  v15 = v14;
  v16 = [(CSAttendingOptions *)self triggerType];
  [(CSAttendingOptions *)self audioStreamHoldingDurationInSec];
  v18 = v17;
  v19 = [(CSAttendingOptions *)self deviceId];
  v20 = [(CSAttendingOptions *)self attendingListeningType];
  [(CSAttendingOptions *)self pauseDurationThreshold];
  v22 = v21;
  [(CSAttendingOptions *)self maxPauseDelay];
  v24 = [(CSAttendingOptions *)v4 initWithAttendingType:v5 startAttendingHostTime:v6 useVAD:v7 useOwnVoiceVAD:v8 useBoron:v9 startOfSpeechThresholdInMs:v16 prependAudioDuration:v11 timeoutThresholdInSec:v13 triggerType:v15 audioStreamHoldingDurationInSec:v18 audioRecordType:v22 deviceId:v23 attendingListeningType:a3 pauseDurationThreshold:v19 maxPauseDelay:v20];

  return v24;
}

- (CSAttendingOptions)initWithAttendingType:(int64_t)a3 startAttendingHostTime:(unint64_t)a4 useVAD:(BOOL)a5 useOwnVoiceVAD:(BOOL)a6 useBoron:(BOOL)a7 startOfSpeechThresholdInMs:(double)a8 prependAudioDuration:(double)a9 timeoutThresholdInSec:(double)a10 triggerType:(int64_t)a11 audioStreamHoldingDurationInSec:(double)a12 audioRecordType:(int64_t)a13 deviceId:(id)a14 attendingListeningType:(unint64_t)a15 pauseDurationThreshold:(double)a16 maxPauseDelay:(double)a17
{
  v25 = a14;
  v37.receiver = self;
  v37.super_class = CSAttendingOptions;
  v26 = [(CSAttendingOptions *)&v37 init];
  v27 = v26;
  if (v26)
  {
    v26->_attendingType = a3;
    v26->_startAttendingHostTime = a4;
    v26->_useVAD = a5;
    v26->_useOwnVoiceVAD = 0;
    v26->_useBoron = a7;
    v28 = 300.0;
    if (a8 >= 0.0)
    {
      v28 = a8;
    }

    v26->_startOfSpeechThresholdInMs = v28;
    v29.f64[0] = a9;
    v29.f64[1] = a10;
    v26->_startOfSpeechNearMissThresholdInMs = 120.0;
    *&v26->_prependAudioDuration = vbslq_s8(vcgezq_f64(v29), v29, xmmword_1001AA1B0);
    v26->_triggerType = a11;
    v30 = 5.0;
    if (a12 >= 0.0)
    {
      v30 = a12;
    }

    v26->_audioStreamHoldingDurationInSec = v30;
    v26->_recordType = a13;
    objc_storeStrong(&v26->_deviceId, a14);
    v31.f64[0] = a16;
    v31.f64[1] = a17;
    v27->_attendingListeningType = a15;
    *&v27->_pauseDurationThreshold = vbslq_s8(vcgtzq_f64(v31), v31, xmmword_1001AA1C0);
  }

  return v27;
}

+ (id)optionForJarvisAnnounceMessageWithDeviceId:(id)a3
{
  v3 = a3;
  v4 = [[CSAttendingOptions alloc] initWithAttendingType:1 startAttendingHostTime:0 useVAD:1 useOwnVoiceVAD:0 useBoron:0 startOfSpeechThresholdInMs:1 prependAudioDuration:300.0 timeoutThresholdInSec:500.0 triggerType:0.0 audioStreamHoldingDurationInSec:5.0 audioRecordType:3000.0 deviceId:7000.0 attendingListeningType:23 pauseDurationThreshold:v3 maxPauseDelay:2];

  return v4;
}

+ (id)optionForFlexibleFollowupWithAudioRecordType:(int64_t)a3 deviceId:(id)a4
{
  v5 = a4;
  v6 = [[CSAttendingOptions alloc] initWithAttendingType:1 startAttendingHostTime:0 useVAD:1 useOwnVoiceVAD:0 useBoron:1 startOfSpeechThresholdInMs:1 prependAudioDuration:300.0 timeoutThresholdInSec:500.0 triggerType:0.0 audioStreamHoldingDurationInSec:5.0 audioRecordType:3000.0 deviceId:7000.0 attendingListeningType:a3 pauseDurationThreshold:v5 maxPauseDelay:2];

  return v6;
}

@end