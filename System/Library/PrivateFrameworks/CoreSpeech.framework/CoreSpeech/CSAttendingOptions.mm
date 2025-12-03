@interface CSAttendingOptions
+ (id)optionForFlexibleFollowupWithAudioRecordType:(int64_t)type deviceId:(id)id;
+ (id)optionForJarvisAnnounceMessageWithDeviceId:(id)id;
- (CSAttendingOptions)initWithAttendingType:(int64_t)type startAttendingHostTime:(unint64_t)time useVAD:(BOOL)d useOwnVoiceVAD:(BOOL)aD useBoron:(BOOL)boron startOfSpeechThresholdInMs:(double)ms prependAudioDuration:(double)duration timeoutThresholdInSec:(double)self0 triggerType:(int64_t)self1 audioStreamHoldingDurationInSec:(double)self2 audioRecordType:(int64_t)self3 deviceId:(id)self4 attendingListeningType:(unint64_t)self5 pauseDurationThreshold:(double)self6 maxPauseDelay:(double)self7;
- (CSAttendingOptions)initWithCoder:(id)coder;
- (id)copyWithRecordType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSAttendingOptions

- (void)encodeWithCoder:(id)coder
{
  attendingType = self->_attendingType;
  coderCopy = coder;
  v6 = [NSNumber numberWithInteger:attendingType];
  [coderCopy encodeObject:v6 forKey:@"CSAttendingOptions:::attendingType"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_startAttendingHostTime];
  [coderCopy encodeObject:v7 forKey:@"CSAttendingOptions:::startAttendingHostTime"];

  v8 = [NSNumber numberWithBool:self->_useVAD];
  [coderCopy encodeObject:v8 forKey:@"CSAttendingOptions:::useVAD"];

  v9 = [NSNumber numberWithBool:self->_useOwnVoiceVAD];
  [coderCopy encodeObject:v9 forKey:@"CSAttendingOptions:::useOwnVoiceVAD"];

  v10 = [NSNumber numberWithBool:self->_useBoron];
  [coderCopy encodeObject:v10 forKey:@"CSAttendingOptions:::useBoron"];

  v11 = [NSNumber numberWithDouble:self->_startOfSpeechThresholdInMs];
  [coderCopy encodeObject:v11 forKey:@"CSAttendingOptions:::startOfSpeechThresholdInMs"];

  v12 = [NSNumber numberWithDouble:self->_startOfSpeechNearMissThresholdInMs];
  [coderCopy encodeObject:v12 forKey:@"CSAttendingOptions:::startOfSpeechNearMissThresholdInMs"];

  v13 = [NSNumber numberWithDouble:self->_prependAudioDuration];
  [coderCopy encodeObject:v13 forKey:@"CSAttendingOptions:::prependAudioDuration"];

  v14 = [NSNumber numberWithDouble:self->_timeoutThresholdInSec];
  [coderCopy encodeObject:v14 forKey:@"CSAttendingOptions:::timeoutThresholdInSec"];

  v15 = [NSNumber numberWithInteger:self->_triggerType];
  [coderCopy encodeObject:v15 forKey:@"CSAttendingOptions:::triggerType"];

  v16 = [NSNumber numberWithDouble:self->_audioStreamHoldingDurationInSec];
  [coderCopy encodeObject:v16 forKey:@"CSAttendingOptions:::audioStreamHoldingDurationInSec"];

  v17 = [NSNumber numberWithLongLong:self->_recordType];
  [coderCopy encodeObject:v17 forKey:@"CSAttendingOptions:::audioRecordType"];

  [coderCopy encodeObject:self->_deviceId forKey:@"CSAttendingOptions:::deviceId"];
  v18 = [NSNumber numberWithUnsignedInteger:self->_attendingListeningType];
  [coderCopy encodeObject:v18 forKey:@"CSAttendingOptions:::attendingListeningType"];

  v19 = [NSNumber numberWithDouble:self->_pauseDurationThreshold];
  [coderCopy encodeObject:v19 forKey:@"CSAttendingOptions:::pauseDurationThreshold"];

  v20 = [NSNumber numberWithDouble:self->_maxPauseDelay];
  [coderCopy encodeObject:v20 forKey:@"CSAttendingOptions:::maxPauseDelay"];
}

- (CSAttendingOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::attendingType"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::startAttendingHostTime"];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::useVAD"];
  bOOLValue = [v6 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::useOwnVoiceVAD"];
  bOOLValue2 = [v8 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::useBoron"];
  bOOLValue3 = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::startOfSpeechThresholdInMs"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::prependAudioDuration"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::timeoutThresholdInSec"];
  [v18 doubleValue];
  v20 = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::triggerType"];
  unsignedIntegerValue2 = [v21 unsignedIntegerValue];

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::audioStreamHoldingDurationInSec"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::audioRecordType"];
  longLongValue = [v26 longLongValue];

  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::deviceId"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::attendingListeningType"];
  unsignedIntegerValue3 = [v29 unsignedIntegerValue];

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::pauseDurationThreshold"];
  [v31 doubleValue];
  v33 = v32;

  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CSAttendingOptions:::maxPauseDelay"];

  [v34 doubleValue];
  v36 = v35;

  v37 = [(CSAttendingOptions *)self initWithAttendingType:unsignedIntegerValue startAttendingHostTime:unsignedLongLongValue useVAD:bOOLValue useOwnVoiceVAD:bOOLValue2 useBoron:bOOLValue3 startOfSpeechThresholdInMs:unsignedIntegerValue2 prependAudioDuration:v14 timeoutThresholdInSec:v17 triggerType:v20 audioStreamHoldingDurationInSec:v25 audioRecordType:v33 deviceId:v36 attendingListeningType:longLongValue pauseDurationThreshold:v28 maxPauseDelay:unsignedIntegerValue3];
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

- (id)copyWithRecordType:(int64_t)type
{
  v4 = [CSAttendingOptions alloc];
  attendingType = [(CSAttendingOptions *)self attendingType];
  startAttendingHostTime = [(CSAttendingOptions *)self startAttendingHostTime];
  useVAD = [(CSAttendingOptions *)self useVAD];
  useOwnVoiceVAD = [(CSAttendingOptions *)self useOwnVoiceVAD];
  useBoron = [(CSAttendingOptions *)self useBoron];
  [(CSAttendingOptions *)self startOfSpeechThresholdInMs];
  v11 = v10;
  [(CSAttendingOptions *)self prependAudioDuration];
  v13 = v12;
  [(CSAttendingOptions *)self timeoutThresholdInSec];
  v15 = v14;
  triggerType = [(CSAttendingOptions *)self triggerType];
  [(CSAttendingOptions *)self audioStreamHoldingDurationInSec];
  v18 = v17;
  deviceId = [(CSAttendingOptions *)self deviceId];
  attendingListeningType = [(CSAttendingOptions *)self attendingListeningType];
  [(CSAttendingOptions *)self pauseDurationThreshold];
  v22 = v21;
  [(CSAttendingOptions *)self maxPauseDelay];
  v24 = [(CSAttendingOptions *)v4 initWithAttendingType:attendingType startAttendingHostTime:startAttendingHostTime useVAD:useVAD useOwnVoiceVAD:useOwnVoiceVAD useBoron:useBoron startOfSpeechThresholdInMs:triggerType prependAudioDuration:v11 timeoutThresholdInSec:v13 triggerType:v15 audioStreamHoldingDurationInSec:v18 audioRecordType:v22 deviceId:v23 attendingListeningType:type pauseDurationThreshold:deviceId maxPauseDelay:attendingListeningType];

  return v24;
}

- (CSAttendingOptions)initWithAttendingType:(int64_t)type startAttendingHostTime:(unint64_t)time useVAD:(BOOL)d useOwnVoiceVAD:(BOOL)aD useBoron:(BOOL)boron startOfSpeechThresholdInMs:(double)ms prependAudioDuration:(double)duration timeoutThresholdInSec:(double)self0 triggerType:(int64_t)self1 audioStreamHoldingDurationInSec:(double)self2 audioRecordType:(int64_t)self3 deviceId:(id)self4 attendingListeningType:(unint64_t)self5 pauseDurationThreshold:(double)self6 maxPauseDelay:(double)self7
{
  idCopy = id;
  v37.receiver = self;
  v37.super_class = CSAttendingOptions;
  v26 = [(CSAttendingOptions *)&v37 init];
  v27 = v26;
  if (v26)
  {
    v26->_attendingType = type;
    v26->_startAttendingHostTime = time;
    v26->_useVAD = d;
    v26->_useOwnVoiceVAD = 0;
    v26->_useBoron = boron;
    msCopy = 300.0;
    if (ms >= 0.0)
    {
      msCopy = ms;
    }

    v26->_startOfSpeechThresholdInMs = msCopy;
    v29.f64[0] = duration;
    v29.f64[1] = sec;
    v26->_startOfSpeechNearMissThresholdInMs = 120.0;
    *&v26->_prependAudioDuration = vbslq_s8(vcgezq_f64(v29), v29, xmmword_1001AA1B0);
    v26->_triggerType = triggerType;
    inSecCopy = 5.0;
    if (inSec >= 0.0)
    {
      inSecCopy = inSec;
    }

    v26->_audioStreamHoldingDurationInSec = inSecCopy;
    v26->_recordType = recordType;
    objc_storeStrong(&v26->_deviceId, id);
    v31.f64[0] = threshold;
    v31.f64[1] = delay;
    v27->_attendingListeningType = listeningType;
    *&v27->_pauseDurationThreshold = vbslq_s8(vcgtzq_f64(v31), v31, xmmword_1001AA1C0);
  }

  return v27;
}

+ (id)optionForJarvisAnnounceMessageWithDeviceId:(id)id
{
  idCopy = id;
  v4 = [[CSAttendingOptions alloc] initWithAttendingType:1 startAttendingHostTime:0 useVAD:1 useOwnVoiceVAD:0 useBoron:0 startOfSpeechThresholdInMs:1 prependAudioDuration:300.0 timeoutThresholdInSec:500.0 triggerType:0.0 audioStreamHoldingDurationInSec:5.0 audioRecordType:3000.0 deviceId:7000.0 attendingListeningType:23 pauseDurationThreshold:idCopy maxPauseDelay:2];

  return v4;
}

+ (id)optionForFlexibleFollowupWithAudioRecordType:(int64_t)type deviceId:(id)id
{
  idCopy = id;
  v6 = [[CSAttendingOptions alloc] initWithAttendingType:1 startAttendingHostTime:0 useVAD:1 useOwnVoiceVAD:0 useBoron:1 startOfSpeechThresholdInMs:1 prependAudioDuration:300.0 timeoutThresholdInSec:500.0 triggerType:0.0 audioStreamHoldingDurationInSec:5.0 audioRecordType:3000.0 deviceId:7000.0 attendingListeningType:type pauseDurationThreshold:idCopy maxPauseDelay:2];

  return v6;
}

@end