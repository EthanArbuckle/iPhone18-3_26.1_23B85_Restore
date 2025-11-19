@interface CSAttSiriAttendingTriggerEventInfo
- (CSAttSiriAttendingTriggerEventInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSAttSiriAttendingTriggerEventInfo

- (void)encodeWithCoder:(id)a3
{
  ctx = self->_ctx;
  v5 = a3;
  [v5 encodeObject:ctx forKey:@"RequestContext"];
  [v5 encodeObject:self->_detectedToken forKey:@"DetectedToken"];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_triggerMachTime];
  [v5 encodeObject:v6 forKey:@"TriggerMachTime"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_triggerAbsStartSampleId];
  [v5 encodeObject:v7 forKey:@"TriggerAbsStartSampleId"];
}

- (CSAttSiriAttendingTriggerEventInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSAttSiriAttendingTriggerEventInfo;
  v5 = [(CSAttSiriAttendingTriggerEventInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestContext"];
    ctx = v5->_ctx;
    v5->_ctx = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DetectedToken"];
    detectedToken = v5->_detectedToken;
    v5->_detectedToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TriggerMachTime"];
    v5->_triggerMachTime = [v10 unsignedLongLongValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TriggerAbsStartSampleId"];
    v5->_triggerAbsStartSampleId = [v11 unsignedLongLongValue];
  }

  return v5;
}

@end