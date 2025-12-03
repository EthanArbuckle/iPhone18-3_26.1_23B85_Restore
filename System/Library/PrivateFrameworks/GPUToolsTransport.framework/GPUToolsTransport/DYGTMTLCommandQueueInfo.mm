@interface DYGTMTLCommandQueueInfo
- (DYGTMTLCommandQueueInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYGTMTLCommandQueueInfo

- (DYGTMTLCommandQueueInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DYGTMTLCommandQueueInfo;
  v5 = [(DYGTMTLCommandQueueInfo *)&v11 init];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_deviceStreamRef = [coderCopy decodeInt64ForKey:@"deviceStreamRef"];
    v5->_deviceAddress = [coderCopy decodeInt64ForKey:@"deviceAddress"];
    v5->_toolsDeviceAddress = [coderCopy decodeInt64ForKey:@"toolsDeviceAddress"];
    v5->_queueAddress = [coderCopy decodeInt64ForKey:@"queueAddress"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    if ([coderCopy containsValueForKey:@"canBeCaptured"])
    {
      v8 = [coderCopy decodeBoolForKey:@"canBeCaptured"];
    }

    else
    {
      v8 = 1;
    }

    v5->_canBeCaptured = v8;
    v5->_isOpenGLQueue = [coderCopy decodeBoolForKey:@"isOpenGLQueue"];
    v5->_isInternalQueue = [coderCopy decodeBoolForKey:@"isInternalQueue"];
    v5->_toolsQueueAddress = [coderCopy decodeInt64ForKey:@"toolsQueueAddress"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  streamRef = self->_streamRef;
  coderCopy = coder;
  [coderCopy encodeInt64:streamRef forKey:@"streamRef"];
  [coderCopy encodeInt64:self->_deviceAddress forKey:@"deviceAddress"];
  [coderCopy encodeInt64:self->_deviceStreamRef forKey:@"deviceStreamRef"];
  [coderCopy encodeInt64:self->_toolsDeviceAddress forKey:@"toolsDeviceAddress"];
  [coderCopy encodeInt64:self->_queueAddress forKey:@"queueAddress"];
  [coderCopy encodeInt64:self->_toolsQueueAddress forKey:@"toolsQueueAddress"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeBool:self->_canBeCaptured forKey:@"canBeCaptured"];
  [coderCopy encodeBool:self->_isOpenGLQueue forKey:@"isOpenGLQueue"];
  [coderCopy encodeBool:self->_isInternalQueue forKey:@"isInternalQueue"];
}

@end