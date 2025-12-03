@interface DYMTLCaptureScopeInfo
- (BOOL)isEqual:(id)equal;
- (DYMTLCaptureScopeInfo)initWithCaptureScope:(id)scope;
- (DYMTLCaptureScopeInfo)initWithCoder:(id)coder;
- (NSString)displayName;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYMTLCaptureScopeInfo

- (DYMTLCaptureScopeInfo)initWithCaptureScope:(id)scope
{
  scopeCopy = scope;
  v10.receiver = self;
  v10.super_class = DYMTLCaptureScopeInfo;
  v5 = [(DYMTLCaptureScopeInfo *)&v10 init];
  if (v5)
  {
    device = [scopeCopy device];
    v5->_deviceAddress = device;

    v5->_scopeAddress = scopeCopy;
    label = [scopeCopy label];
    label = v5->_label;
    v5->_label = label;

    v5->_isDefaultCapturable = 0;
  }

  return v5;
}

- (DYMTLCaptureScopeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DYMTLCaptureScopeInfo;
  v5 = [(DYMTLCaptureScopeInfo *)&v9 init];
  if (v5)
  {
    v5->_deviceAddress = [coderCopy decodeInt64ForKey:@"deviceAddress"];
    v5->_scopeAddress = [coderCopy decodeInt64ForKey:@"scopeAddress"];
    v5->_scopeStreamRef = [coderCopy decodeInt64ForKey:@"scopeStreamRef"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_isDefaultCapturable = [coderCopy decodeBoolForKey:@"isDefaultCapturable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  deviceAddress = self->_deviceAddress;
  coderCopy = coder;
  [coderCopy encodeInt64:deviceAddress forKey:@"deviceAddress"];
  [coderCopy encodeInt64:self->_scopeAddress forKey:@"scopeAddress"];
  [coderCopy encodeInt64:self->_scopeStreamRef forKey:@"scopeStreamRef"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeBool:self->_isDefaultCapturable forKey:@"isDefaultCapturable"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_scopeAddress == equalCopy[4];

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