@interface GTShaderProfilerDeviceInfo
- (GTShaderProfilerDeviceInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTShaderProfilerDeviceInfo

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_build forKey:@"build"];
  [v5 encodeObject:self->_version forKey:@"version"];
  [v5 encodeInt:self->_platform forKey:@"platform"];
  [v5 encodeObject:self->_metalVersion forKey:@"metalVersion"];
}

- (GTShaderProfilerDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GTShaderProfilerDeviceInfo;
  v5 = [(GTShaderProfilerDeviceInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    build = v5->_build;
    v5->_build = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v10;

    v5->_platform = [v4 decodeInt32ForKey:@"platform"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalVersion"];
    metalVersion = v5->_metalVersion;
    v5->_metalVersion = v12;
  }

  return v5;
}

@end