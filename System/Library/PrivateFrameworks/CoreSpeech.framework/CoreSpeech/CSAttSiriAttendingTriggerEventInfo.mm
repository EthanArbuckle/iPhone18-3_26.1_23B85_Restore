@interface CSAttSiriAttendingTriggerEventInfo
- (CSAttSiriAttendingTriggerEventInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSAttSiriAttendingTriggerEventInfo

- (void)encodeWithCoder:(id)coder
{
  ctx = self->_ctx;
  coderCopy = coder;
  [coderCopy encodeObject:ctx forKey:@"RequestContext"];
  [coderCopy encodeObject:self->_detectedToken forKey:@"DetectedToken"];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_triggerMachTime];
  [coderCopy encodeObject:v6 forKey:@"TriggerMachTime"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_triggerAbsStartSampleId];
  [coderCopy encodeObject:v7 forKey:@"TriggerAbsStartSampleId"];
}

- (CSAttSiriAttendingTriggerEventInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CSAttSiriAttendingTriggerEventInfo;
  v5 = [(CSAttSiriAttendingTriggerEventInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RequestContext"];
    ctx = v5->_ctx;
    v5->_ctx = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DetectedToken"];
    detectedToken = v5->_detectedToken;
    v5->_detectedToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TriggerMachTime"];
    v5->_triggerMachTime = [v10 unsignedLongLongValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TriggerAbsStartSampleId"];
    v5->_triggerAbsStartSampleId = [v11 unsignedLongLongValue];
  }

  return v5;
}

@end