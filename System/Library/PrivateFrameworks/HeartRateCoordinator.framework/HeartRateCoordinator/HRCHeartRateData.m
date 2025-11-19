@interface HRCHeartRateData
- (HRCHeartRateData)initWithCoder:(id)a3;
- (HRCHeartRateData)initWithHeartRate:(double)a3 confidence:(id)a4 confidenceLevel:(unsigned __int8)a5 arbitrationStatus:(unsigned __int8)a6 context:(int64_t)a7 hrContext:(int64_t)a8 timestamp:(id)a9 sampleUuid:(id)a10 sourceType:(unsigned __int8)a11 streamingThrottleStatus:(unsigned __int8)a12 deviceUuid:(id)a13 device:(id)a14 sensorLocation:(unsigned __int8)a15 flags:(unsigned int)a16;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HRCHeartRateData

- (void)encodeWithCoder:(id)a3
{
  heartRate = self->_heartRate;
  v5 = a3;
  v6 = NSStringFromSelector(sel_heartRate);
  [v5 encodeDouble:v6 forKey:heartRate];

  confidence = self->_confidence;
  v8 = NSStringFromSelector(sel_confidence);
  [v5 encodeObject:confidence forKey:v8];

  confidenceLevel = self->_confidenceLevel;
  v10 = NSStringFromSelector(sel_confidenceLevel);
  [v5 encodeInt:confidenceLevel forKey:v10];

  arbitrationStatus = self->_arbitrationStatus;
  v12 = NSStringFromSelector(sel_arbitrationStatus);
  [v5 encodeInt:arbitrationStatus forKey:v12];

  context = self->_context;
  v14 = NSStringFromSelector(sel_context);
  [v5 encodeInteger:context forKey:v14];

  hrContext = self->_hrContext;
  v16 = NSStringFromSelector(sel_hrContext);
  [v5 encodeInteger:hrContext forKey:v16];

  timestamp = self->_timestamp;
  v18 = NSStringFromSelector(sel_timestamp);
  [v5 encodeObject:timestamp forKey:v18];

  uuid = self->_uuid;
  v20 = NSStringFromSelector(sel_uuid);
  [v5 encodeObject:uuid forKey:v20];

  sourceType = self->_sourceType;
  v22 = NSStringFromSelector(sel_sourceType);
  [v5 encodeInt:sourceType forKey:v22];

  streamingThrottleStatus = self->_streamingThrottleStatus;
  v24 = NSStringFromSelector(sel_streamingThrottleStatus);
  [v5 encodeInt:streamingThrottleStatus forKey:v24];

  deviceUuid = self->_deviceUuid;
  v26 = NSStringFromSelector(sel_deviceUuid);
  [v5 encodeObject:deviceUuid forKey:v26];

  device = self->_device;
  v28 = NSStringFromSelector(sel_device);
  [v5 encodeObject:device forKey:v28];

  sensorLocation = self->_sensorLocation;
  v30 = NSStringFromSelector(sel_sensorLocation);
  [v5 encodeInt:sensorLocation forKey:v30];

  flags = self->_flags;
  v32 = NSStringFromSelector(sel_flags);
  [v5 encodeInt:flags forKey:v32];
}

- (HRCHeartRateData)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = NSStringFromSelector(sel_heartRate);
  [v3 decodeDoubleForKey:v4];
  v6 = v5;

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_confidence);
  v40 = [v3 decodeObjectOfClass:v7 forKey:v8];

  v9 = NSStringFromSelector(sel_confidenceLevel);
  v39 = [v3 decodeIntForKey:v9];

  v10 = NSStringFromSelector(sel_arbitrationStatus);
  v38 = [v3 decodeIntForKey:v10];

  v11 = NSStringFromSelector(sel_context);
  v37 = [v3 decodeIntegerForKey:v11];

  v12 = NSStringFromSelector(sel_hrContext);
  v36 = [v3 decodeIntegerForKey:v12];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_timestamp);
  v15 = [v3 decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_uuid);
  v18 = [v3 decodeObjectOfClass:v16 forKey:v17];

  v19 = NSStringFromSelector(sel_sourceType);
  v20 = [v3 decodeIntForKey:v19];

  v21 = NSStringFromSelector(sel_streamingThrottleStatus);
  LOBYTE(v19) = [v3 decodeIntForKey:v21];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_deviceUuid);
  v24 = [v3 decodeObjectOfClass:v22 forKey:v23];

  v25 = objc_opt_class();
  v26 = NSStringFromSelector(sel_device);
  v27 = [v3 decodeObjectOfClass:v25 forKey:v26];

  v28 = NSStringFromSelector(sel_sensorLocation);
  v29 = [v3 decodeIntForKey:v28];

  v30 = NSStringFromSelector(sel_flags);
  v31 = [v3 decodeIntForKey:v30];

  HIDWORD(v35) = v31;
  LOBYTE(v35) = v29;
  BYTE1(v34) = v19;
  LOBYTE(v34) = v20;
  v32 = [HRCHeartRateData initWithHeartRate:"initWithHeartRate:confidence:confidenceLevel:arbitrationStatus:context:hrContext:timestamp:sampleUuid:sourceType:streamingThrottleStatus:deviceUuid:device:sensorLocation:flags:" confidence:v40 confidenceLevel:v39 arbitrationStatus:v38 context:v37 hrContext:v36 timestamp:v15 sampleUuid:v6 sourceType:v18 streamingThrottleStatus:v34 deviceUuid:v24 device:v27 sensorLocation:v35 flags:?];

  return v32;
}

- (HRCHeartRateData)initWithHeartRate:(double)a3 confidence:(id)a4 confidenceLevel:(unsigned __int8)a5 arbitrationStatus:(unsigned __int8)a6 context:(int64_t)a7 hrContext:(int64_t)a8 timestamp:(id)a9 sampleUuid:(id)a10 sourceType:(unsigned __int8)a11 streamingThrottleStatus:(unsigned __int8)a12 deviceUuid:(id)a13 device:(id)a14 sensorLocation:(unsigned __int8)a15 flags:(unsigned int)a16
{
  v22 = a4;
  v23 = a9;
  v24 = a10;
  v25 = a13;
  v37 = a14;
  v39.receiver = self;
  v39.super_class = HRCHeartRateData;
  v26 = [(HRCHeartRateData *)&v39 init];
  v26->_heartRate = a3;
  confidence = v26->_confidence;
  v26->_confidence = v22;
  v28 = v22;

  v26->_confidenceLevel = a5;
  v26->_arbitrationStatus = a6;
  v26->_context = a7;
  v26->_hrContext = a8;
  timestamp = v26->_timestamp;
  v26->_timestamp = v23;
  v30 = v23;

  uuid = v26->_uuid;
  v26->_uuid = v24;
  v32 = v24;

  v26->_sourceType = a11;
  v26->_streamingThrottleStatus = a12;
  deviceUuid = v26->_deviceUuid;
  v26->_deviceUuid = v25;
  v34 = v25;

  device = v26->_device;
  v26->_device = v37;

  v26->_sensorLocation = a15;
  v26->_flags = a16;
  return v26;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = [(HRCHeartRateData *)self uuid];
  [(HRCHeartRateData *)self heartRate];
  v5 = v4;
  v6 = [(HRCHeartRateData *)self confidence];
  [v6 doubleValue];
  v8 = v7;
  v13 = [(HRCHeartRateData *)self hrContext];
  v9 = [(HRCHeartRateData *)self timestamp];
  v10 = [(HRCHeartRateData *)self deviceUuid];
  v11 = [v14 stringWithFormat:@"HRCHeartRateData uuid:%@, bpm:%f, confidence:%f, context:%ld, date:%@, DeviceUUID:%@, Throttle:%d, SourceType:%d, Arbitration:%d, ConfidenceLevel:%d, loc:%d, flags:%08x", v3, v5, v8, v13, v9, v10, -[HRCHeartRateData streamingThrottleStatus](self, "streamingThrottleStatus"), -[HRCHeartRateData sourceType](self, "sourceType"), -[HRCHeartRateData arbitrationStatus](self, "arbitrationStatus"), -[HRCHeartRateData confidenceLevel](self, "confidenceLevel"), -[HRCHeartRateData sensorLocation](self, "sensorLocation"), -[HRCHeartRateData flags](self, "flags")];

  return v11;
}

@end