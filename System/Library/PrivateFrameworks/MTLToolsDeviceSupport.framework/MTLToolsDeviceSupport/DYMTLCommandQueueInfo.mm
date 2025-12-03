@interface DYMTLCommandQueueInfo
+ (BOOL)isLabelAppleInternal:(const char *)internal;
- (BOOL)isEqual:(id)equal;
- (DYMTLCommandQueueInfo)initWithCoder:(id)coder;
- (DYMTLCommandQueueInfo)initWithCommandQueue:(id)queue;
- (NSString)description;
- (NSString)displayName;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYMTLCommandQueueInfo

- (DYMTLCommandQueueInfo)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = DYMTLCommandQueueInfo;
  v5 = [(DYMTLCommandQueueInfo *)&v16 init];
  if (v5)
  {
    v6 = queueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      originalObject = [v6 originalObject];
    }

    else
    {
      originalObject = v6;
    }

    v8 = originalObject;

    device = [v8 device];
    v5->_deviceAddress = device;

    device2 = [v8 device];
    v5->_deviceStreamRef = [device2 streamReference];

    v5->_queueAddress = v8;
    v5->_toolsQueueAddress = v6;
    label = [v8 label];
    label = v5->_label;
    v5->_label = label;

    displayName = v5->_displayName;
    v5->_displayName = 0;

    *&v5->_canBeCaptured = 1;
    v5->_isInternalQueue = [DYMTLCommandQueueInfo isLabelAppleInternal:[(NSString *)v5->_label UTF8String]];
    v14 = v5;
  }

  return v5;
}

- (NSString)displayName
{
  if (!self->_displayName)
  {
    label = self->_label;
    if (label)
    {
      toolsQueueAddress = label;
    }

    else
    {
      toolsQueueAddress = self->_toolsQueueAddress;
      if (!toolsQueueAddress)
      {
        toolsQueueAddress = self->_queueAddress;
      }

      toolsQueueAddress = [MEMORY[0x277CCACA8] stringWithFormat:@"Command Queue 0x%llx", toolsQueueAddress];
    }

    displayName = self->_displayName;
    self->_displayName = toolsQueueAddress;
  }

  v7 = self->_displayName;

  return v7;
}

- (DYMTLCommandQueueInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DYMTLCommandQueueInfo;
  v5 = [(DYMTLCommandQueueInfo *)&v10 init];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_deviceAddress = [coderCopy decodeInt64ForKey:@"deviceAddress"];
    v5->_deviceStreamRef = [coderCopy decodeInt64ForKey:@"deviceStreamRef"];
    v5->_queueAddress = [coderCopy decodeInt64ForKey:@"queueAddress"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_canBeCaptured = 1;
    if ([coderCopy containsValueForKey:@"canBeCaptured"])
    {
      v5->_canBeCaptured = [coderCopy decodeBoolForKey:@"canBeCaptured"];
    }

    v5->_isOpenGLQueue = 0;
    if ([coderCopy containsValueForKey:@"isOpenGLQueue"])
    {
      v5->_isOpenGLQueue = [coderCopy decodeBoolForKey:@"isOpenGLQueue"];
    }

    v5->_isInternalQueue = 0;
    if ([coderCopy containsValueForKey:@"isInternalQueue"])
    {
      v5->_isInternalQueue = [coderCopy decodeBoolForKey:@"isInternalQueue"];
    }

    v5->_toolsQueueAddress = 0;
    if ([coderCopy containsValueForKey:@"toolsQueueAddress"])
    {
      v5->_toolsQueueAddress = [coderCopy decodeInt64ForKey:@"toolsQueueAddress"];
    }

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_streamRef forKey:@"streamRef"];
  [coderCopy encodeInt64:self->_deviceAddress forKey:@"deviceAddress"];
  [coderCopy encodeInt64:self->_deviceStreamRef forKey:@"deviceStreamRef"];
  [coderCopy encodeInt64:self->_queueAddress forKey:@"queueAddress"];
  [coderCopy encodeInt64:self->_toolsQueueAddress forKey:@"toolsQueueAddress"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeBool:self->_canBeCaptured forKey:@"canBeCaptured"];
  [coderCopy encodeBool:self->_isOpenGLQueue forKey:@"isOpenGLQueue"];
  [coderCopy encodeBool:self->_isInternalQueue forKey:@"isInternalQueue"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    v4[3] = self->_streamRef;
    v4[4] = self->_deviceAddress;
    v4[5] = self->_deviceStreamRef;
    v4[6] = self->_queueAddress;
    v4[7] = self->_toolsQueueAddress;
    v6 = [(NSString *)self->_label copy];
    v7 = v5[8];
    v5[8] = v6;

    *(v5 + 8) = self->_canBeCaptured;
    *(v5 + 9) = self->_isOpenGLQueue;
    *(v5 + 10) = self->_isInternalQueue;
    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v2 = @"NO";
  if (self->_canBeCaptured)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isOpenGLQueue)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_isInternalQueue)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"device:0x%llx, queue:0x%llx, toolsQueue:0x%llx, label:%@, canBeCaptured:%@, isOpenGL:%@, isInternal: %@", self->_deviceAddress, self->_queueAddress, self->_toolsQueueAddress, self->_label, v3, v4, v2];
}

+ (BOOL)isLabelAppleInternal:(const char *)internal
{
  {
    if (internal)
    {
      goto LABEL_3;
    }

LABEL_7:
    LOBYTE(v5) = 0;
    return v5;
  }

  +[DYMTLCommandQueueInfo isLabelAppleInternal:]::kPrefixLength = 1;
  if (!internal)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (+[DYMTLCommandQueueInfo isLabelAppleInternal:]::kPrefixLength)
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  if (strncmp("com.apple", internal, v4))
  {
    goto LABEL_7;
  }

  v6 = -1;
  for (i = +[DYMTLCommandQueueInfo isLabelAppleInternal:]::kWhitelistedLabels; ; ++i)
  {
    v5 = strcmp(internal, *i);
    if (!v5)
    {
      break;
    }

    if (++v6 == 4)
    {
      LOBYTE(v5) = 1;
      return v5;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_queueAddress == equalCopy[6];

  return v6;
}

@end