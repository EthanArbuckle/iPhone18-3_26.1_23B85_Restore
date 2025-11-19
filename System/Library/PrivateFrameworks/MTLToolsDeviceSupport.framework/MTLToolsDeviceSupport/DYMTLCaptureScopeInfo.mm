@interface DYMTLCaptureScopeInfo
- (BOOL)isEqual:(id)a3;
- (DYMTLCaptureScopeInfo)initWithCaptureScope:(id)a3;
- (DYMTLCaptureScopeInfo)initWithCoder:(id)a3;
- (NSString)displayName;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DYMTLCaptureScopeInfo

- (DYMTLCaptureScopeInfo)initWithCaptureScope:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DYMTLCaptureScopeInfo;
  v5 = [(DYMTLCaptureScopeInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 device];
    v5->_deviceAddress = v6;

    v5->_scopeAddress = v4;
    v7 = [v4 label];
    label = v5->_label;
    v5->_label = v7;

    v5->_isDefaultCapturable = 0;
  }

  return v5;
}

- (DYMTLCaptureScopeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DYMTLCaptureScopeInfo;
  v5 = [(DYMTLCaptureScopeInfo *)&v9 init];
  if (v5)
  {
    v5->_deviceAddress = [v4 decodeInt64ForKey:@"deviceAddress"];
    v5->_scopeAddress = [v4 decodeInt64ForKey:@"scopeAddress"];
    v5->_scopeStreamRef = [v4 decodeInt64ForKey:@"scopeStreamRef"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_isDefaultCapturable = [v4 decodeBoolForKey:@"isDefaultCapturable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  deviceAddress = self->_deviceAddress;
  v5 = a3;
  [v5 encodeInt64:deviceAddress forKey:@"deviceAddress"];
  [v5 encodeInt64:self->_scopeAddress forKey:@"scopeAddress"];
  [v5 encodeInt64:self->_scopeStreamRef forKey:@"scopeStreamRef"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeBool:self->_isDefaultCapturable forKey:@"isDefaultCapturable"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    *(v4 + 24) = self->_deviceAddress;
    *(v4 + 32) = self->_scopeAddress;
    v6 = [(NSString *)self->_label copy];
    v7 = *(v5 + 48);
    *(v5 + 48) = v6;

    *(v5 + 8) = self->_isDefaultCapturable;
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_scopeAddress == v4[4];

  return v6;
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
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capture Scope 0x%llx", self->_scopeAddress];
    }

    displayName = self->_displayName;
    self->_displayName = v4;
  }

  v6 = self->_displayName;

  return v6;
}

@end