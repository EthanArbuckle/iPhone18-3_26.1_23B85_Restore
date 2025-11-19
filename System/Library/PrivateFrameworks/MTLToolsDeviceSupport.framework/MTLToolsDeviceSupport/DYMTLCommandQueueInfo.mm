@interface DYMTLCommandQueueInfo
+ (BOOL)isLabelAppleInternal:(const char *)a3;
- (BOOL)isEqual:(id)a3;
- (DYMTLCommandQueueInfo)initWithCoder:(id)a3;
- (DYMTLCommandQueueInfo)initWithCommandQueue:(id)a3;
- (NSString)description;
- (NSString)displayName;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYMTLCommandQueueInfo

- (DYMTLCommandQueueInfo)initWithCommandQueue:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DYMTLCommandQueueInfo;
  v5 = [(DYMTLCommandQueueInfo *)&v16 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 originalObject];
    }

    else
    {
      v7 = v6;
    }

    v8 = v7;

    v9 = [v8 device];
    v5->_deviceAddress = v9;

    v10 = [v8 device];
    v5->_deviceStreamRef = [v10 streamReference];

    v5->_queueAddress = v8;
    v5->_toolsQueueAddress = v6;
    v11 = [v8 label];
    label = v5->_label;
    v5->_label = v11;

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
      v4 = label;
    }

    else
    {
      toolsQueueAddress = self->_toolsQueueAddress;
      if (!toolsQueueAddress)
      {
        toolsQueueAddress = self->_queueAddress;
      }

      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Command Queue 0x%llx", toolsQueueAddress];
    }

    displayName = self->_displayName;
    self->_displayName = v4;
  }

  v7 = self->_displayName;

  return v7;
}

- (DYMTLCommandQueueInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DYMTLCommandQueueInfo;
  v5 = [(DYMTLCommandQueueInfo *)&v10 init];
  if (v5)
  {
    v5->_streamRef = [v4 decodeInt64ForKey:@"streamRef"];
    v5->_deviceAddress = [v4 decodeInt64ForKey:@"deviceAddress"];
    v5->_deviceStreamRef = [v4 decodeInt64ForKey:@"deviceStreamRef"];
    v5->_queueAddress = [v4 decodeInt64ForKey:@"queueAddress"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_canBeCaptured = 1;
    if ([v4 containsValueForKey:@"canBeCaptured"])
    {
      v5->_canBeCaptured = [v4 decodeBoolForKey:@"canBeCaptured"];
    }

    v5->_isOpenGLQueue = 0;
    if ([v4 containsValueForKey:@"isOpenGLQueue"])
    {
      v5->_isOpenGLQueue = [v4 decodeBoolForKey:@"isOpenGLQueue"];
    }

    v5->_isInternalQueue = 0;
    if ([v4 containsValueForKey:@"isInternalQueue"])
    {
      v5->_isInternalQueue = [v4 decodeBoolForKey:@"isInternalQueue"];
    }

    v5->_toolsQueueAddress = 0;
    if ([v4 containsValueForKey:@"toolsQueueAddress"])
    {
      v5->_toolsQueueAddress = [v4 decodeInt64ForKey:@"toolsQueueAddress"];
    }

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_streamRef forKey:@"streamRef"];
  [v4 encodeInt64:self->_deviceAddress forKey:@"deviceAddress"];
  [v4 encodeInt64:self->_deviceStreamRef forKey:@"deviceStreamRef"];
  [v4 encodeInt64:self->_queueAddress forKey:@"queueAddress"];
  [v4 encodeInt64:self->_toolsQueueAddress forKey:@"toolsQueueAddress"];
  [v4 encodeObject:self->_label forKey:@"label"];
  [v4 encodeBool:self->_canBeCaptured forKey:@"canBeCaptured"];
  [v4 encodeBool:self->_isOpenGLQueue forKey:@"isOpenGLQueue"];
  [v4 encodeBool:self->_isInternalQueue forKey:@"isInternalQueue"];
}

- (id)copyWithZone:(_NSZone *)a3
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

+ (BOOL)isLabelAppleInternal:(const char *)a3
{
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_7:
    LOBYTE(v5) = 0;
    return v5;
  }

  +[DYMTLCommandQueueInfo isLabelAppleInternal:]::kPrefixLength = 1;
  if (!a3)
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

  if (strncmp("com.apple", a3, v4))
  {
    goto LABEL_7;
  }

  v6 = -1;
  for (i = +[DYMTLCommandQueueInfo isLabelAppleInternal:]::kWhitelistedLabels; ; ++i)
  {
    v5 = strcmp(a3, *i);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_queueAddress == v4[6];

  return v6;
}

@end