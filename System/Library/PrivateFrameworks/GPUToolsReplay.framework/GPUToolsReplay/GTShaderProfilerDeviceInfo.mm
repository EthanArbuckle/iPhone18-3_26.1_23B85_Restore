@interface GTShaderProfilerDeviceInfo
- (GTShaderProfilerDeviceInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTShaderProfilerDeviceInfo

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_build forKey:@"build"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
  [coderCopy encodeInt:self->_platform forKey:@"platform"];
  [coderCopy encodeObject:self->_metalVersion forKey:@"metalVersion"];
}

- (GTShaderProfilerDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = GTShaderProfilerDeviceInfo;
  v5 = [(GTShaderProfilerDeviceInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    build = v5->_build;
    v5->_build = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v10;

    v5->_platform = [coderCopy decodeInt32ForKey:@"platform"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metalVersion"];
    metalVersion = v5->_metalVersion;
    v5->_metalVersion = v12;
  }

  return v5;
}

@end