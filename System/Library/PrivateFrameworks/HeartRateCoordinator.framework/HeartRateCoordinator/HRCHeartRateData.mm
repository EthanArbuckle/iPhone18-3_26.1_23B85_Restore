@interface HRCHeartRateData
- (HRCHeartRateData)initWithCoder:(id)coder;
- (HRCHeartRateData)initWithHeartRate:(double)rate confidence:(id)confidence confidenceLevel:(unsigned __int8)level arbitrationStatus:(unsigned __int8)status context:(int64_t)context hrContext:(int64_t)hrContext timestamp:(id)timestamp sampleUuid:(id)self0 sourceType:(unsigned __int8)self1 streamingThrottleStatus:(unsigned __int8)self2 deviceUuid:(id)self3 device:(id)self4 sensorLocation:(unsigned __int8)self5 flags:(unsigned int)self6;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRCHeartRateData

- (void)encodeWithCoder:(id)coder
{
  heartRate = self->_heartRate;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_heartRate);
  [coderCopy encodeDouble:v6 forKey:heartRate];

  confidence = self->_confidence;
  v8 = NSStringFromSelector(sel_confidence);
  [coderCopy encodeObject:confidence forKey:v8];

  confidenceLevel = self->_confidenceLevel;
  v10 = NSStringFromSelector(sel_confidenceLevel);
  [coderCopy encodeInt:confidenceLevel forKey:v10];

  arbitrationStatus = self->_arbitrationStatus;
  v12 = NSStringFromSelector(sel_arbitrationStatus);
  [coderCopy encodeInt:arbitrationStatus forKey:v12];

  context = self->_context;
  v14 = NSStringFromSelector(sel_context);
  [coderCopy encodeInteger:context forKey:v14];

  hrContext = self->_hrContext;
  v16 = NSStringFromSelector(sel_hrContext);
  [coderCopy encodeInteger:hrContext forKey:v16];

  timestamp = self->_timestamp;
  v18 = NSStringFromSelector(sel_timestamp);
  [coderCopy encodeObject:timestamp forKey:v18];

  uuid = self->_uuid;
  v20 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v20];

  sourceType = self->_sourceType;
  v22 = NSStringFromSelector(sel_sourceType);
  [coderCopy encodeInt:sourceType forKey:v22];

  streamingThrottleStatus = self->_streamingThrottleStatus;
  v24 = NSStringFromSelector(sel_streamingThrottleStatus);
  [coderCopy encodeInt:streamingThrottleStatus forKey:v24];

  deviceUuid = self->_deviceUuid;
  v26 = NSStringFromSelector(sel_deviceUuid);
  [coderCopy encodeObject:deviceUuid forKey:v26];

  device = self->_device;
  v28 = NSStringFromSelector(sel_device);
  [coderCopy encodeObject:device forKey:v28];

  sensorLocation = self->_sensorLocation;
  v30 = NSStringFromSelector(sel_sensorLocation);
  [coderCopy encodeInt:sensorLocation forKey:v30];

  flags = self->_flags;
  v32 = NSStringFromSelector(sel_flags);
  [coderCopy encodeInt:flags forKey:v32];
}

- (HRCHeartRateData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = NSStringFromSelector(sel_heartRate);
  [coderCopy decodeDoubleForKey:v4];
  v6 = v5;

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_confidence);
  v40 = [coderCopy decodeObjectOfClass:v7 forKey:v8];

  v9 = NSStringFromSelector(sel_confidenceLevel);
  v39 = [coderCopy decodeIntForKey:v9];

  v10 = NSStringFromSelector(sel_arbitrationStatus);
  v38 = [coderCopy decodeIntForKey:v10];

  v11 = NSStringFromSelector(sel_context);
  v37 = [coderCopy decodeIntegerForKey:v11];

  v12 = NSStringFromSelector(sel_hrContext);
  v36 = [coderCopy decodeIntegerForKey:v12];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_timestamp);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_uuid);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = NSStringFromSelector(sel_sourceType);
  v20 = [coderCopy decodeIntForKey:v19];

  v21 = NSStringFromSelector(sel_streamingThrottleStatus);
  LOBYTE(v19) = [coderCopy decodeIntForKey:v21];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_deviceUuid);
  v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];

  v25 = objc_opt_class();
  v26 = NSStringFromSelector(sel_device);
  v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];

  v28 = NSStringFromSelector(sel_sensorLocation);
  v29 = [coderCopy decodeIntForKey:v28];

  v30 = NSStringFromSelector(sel_flags);
  v31 = [coderCopy decodeIntForKey:v30];

  HIDWORD(v35) = v31;
  LOBYTE(v35) = v29;
  BYTE1(v34) = v19;
  LOBYTE(v34) = v20;
  v32 = [HRCHeartRateData initWithHeartRate:"initWithHeartRate:confidence:confidenceLevel:arbitrationStatus:context:hrContext:timestamp:sampleUuid:sourceType:streamingThrottleStatus:deviceUuid:device:sensorLocation:flags:" confidence:v40 confidenceLevel:v39 arbitrationStatus:v38 context:v37 hrContext:v36 timestamp:v15 sampleUuid:v6 sourceType:v18 streamingThrottleStatus:v34 deviceUuid:v24 device:v27 sensorLocation:v35 flags:?];

  return v32;
}

- (HRCHeartRateData)initWithHeartRate:(double)rate confidence:(id)confidence confidenceLevel:(unsigned __int8)level arbitrationStatus:(unsigned __int8)status context:(int64_t)context hrContext:(int64_t)hrContext timestamp:(id)timestamp sampleUuid:(id)self0 sourceType:(unsigned __int8)self1 streamingThrottleStatus:(unsigned __int8)self2 deviceUuid:(id)self3 device:(id)self4 sensorLocation:(unsigned __int8)self5 flags:(unsigned int)self6
{
  confidenceCopy = confidence;
  timestampCopy = timestamp;
  uuidCopy = uuid;
  deviceUuidCopy = deviceUuid;
  deviceCopy = device;
  v39.receiver = self;
  v39.super_class = HRCHeartRateData;
  v26 = [(HRCHeartRateData *)&v39 init];
  v26->_heartRate = rate;
  confidence = v26->_confidence;
  v26->_confidence = confidenceCopy;
  v28 = confidenceCopy;

  v26->_confidenceLevel = level;
  v26->_arbitrationStatus = status;
  v26->_context = context;
  v26->_hrContext = hrContext;
  timestamp = v26->_timestamp;
  v26->_timestamp = timestampCopy;
  v30 = timestampCopy;

  uuid = v26->_uuid;
  v26->_uuid = uuidCopy;
  v32 = uuidCopy;

  v26->_sourceType = type;
  v26->_streamingThrottleStatus = throttleStatus;
  deviceUuid = v26->_deviceUuid;
  v26->_deviceUuid = deviceUuidCopy;
  v34 = deviceUuidCopy;

  device = v26->_device;
  v26->_device = deviceCopy;

  v26->_sensorLocation = location;
  v26->_flags = flags;
  return v26;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  uuid = [(HRCHeartRateData *)self uuid];
  [(HRCHeartRateData *)self heartRate];
  v5 = v4;
  confidence = [(HRCHeartRateData *)self confidence];
  [confidence doubleValue];
  v8 = v7;
  hrContext = [(HRCHeartRateData *)self hrContext];
  timestamp = [(HRCHeartRateData *)self timestamp];
  deviceUuid = [(HRCHeartRateData *)self deviceUuid];
  v11 = [v14 stringWithFormat:@"HRCHeartRateData uuid:%@, bpm:%f, confidence:%f, context:%ld, date:%@, DeviceUUID:%@, Throttle:%d, SourceType:%d, Arbitration:%d, ConfidenceLevel:%d, loc:%d, flags:%08x", uuid, v5, v8, hrContext, timestamp, deviceUuid, -[HRCHeartRateData streamingThrottleStatus](self, "streamingThrottleStatus"), -[HRCHeartRateData sourceType](self, "sourceType"), -[HRCHeartRateData arbitrationStatus](self, "arbitrationStatus"), -[HRCHeartRateData confidenceLevel](self, "confidenceLevel"), -[HRCHeartRateData sensorLocation](self, "sensorLocation"), -[HRCHeartRateData flags](self, "flags")];

  return v11;
}

@end