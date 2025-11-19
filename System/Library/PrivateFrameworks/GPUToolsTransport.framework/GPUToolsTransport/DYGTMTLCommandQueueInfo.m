@interface DYGTMTLCommandQueueInfo
- (DYGTMTLCommandQueueInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYGTMTLCommandQueueInfo

- (DYGTMTLCommandQueueInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DYGTMTLCommandQueueInfo;
  v5 = [(DYGTMTLCommandQueueInfo *)&v11 init];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_deviceStreamRef = [v4 decodeInt64ForKey:@"deviceStreamRef"];
    v5->_deviceAddress = [v4 decodeInt64ForKey:@"deviceAddress"];
    v5->_toolsDeviceAddress = [v4 decodeInt64ForKey:@"toolsDeviceAddress"];
    v5->_queueAddress = [v4 decodeInt64ForKey:@"queueAddress"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    if ([v4 containsValueForKey:@"canBeCaptured"])
    {
      v8 = [v4 decodeBoolForKey:@"canBeCaptured"];
    }

    else
    {
      v8 = 1;
    }

    v5->_canBeCaptured = v8;
    v5->_isOpenGLQueue = [v4 decodeBoolForKey:@"isOpenGLQueue"];
    v5->_isInternalQueue = [v4 decodeBoolForKey:@"isInternalQueue"];
    v5->_toolsQueueAddress = [v4 decodeInt64ForKey:@"toolsQueueAddress"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  streamRef = self->_streamRef;
  v5 = a3;
  [v5 encodeInt64:streamRef forKey:@"streamRef"];
  [v5 encodeInt64:self->_deviceAddress forKey:@"deviceAddress"];
  [v5 encodeInt64:self->_deviceStreamRef forKey:@"deviceStreamRef"];
  [v5 encodeInt64:self->_toolsDeviceAddress forKey:@"toolsDeviceAddress"];
  [v5 encodeInt64:self->_queueAddress forKey:@"queueAddress"];
  [v5 encodeInt64:self->_toolsQueueAddress forKey:@"toolsQueueAddress"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeBool:self->_canBeCaptured forKey:@"canBeCaptured"];
  [v5 encodeBool:self->_isOpenGLQueue forKey:@"isOpenGLQueue"];
  [v5 encodeBool:self->_isInternalQueue forKey:@"isInternalQueue"];
}

@end