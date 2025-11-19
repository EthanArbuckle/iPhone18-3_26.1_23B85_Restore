@interface DYGTDeviceInfo
- (DYGTDeviceInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMainScreenDescriptor:(id *)a3;
@end

@implementation DYGTDeviceInfo

- (DYGTDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = DYGTDeviceInfo;
  v5 = [(DYGTDeviceInfo *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"permanentIdentifier"];
    permanentIdentifier = v5->_permanentIdentifier;
    v5->_permanentIdentifier = v6;

    v5->_runtimeIdentifier = [v4 decodeInt64ForKey:@"runtimeIdentifier"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    build = v5->_build;
    v5->_build = v14;

    v5->_platform = [v4 decodeInt32ForKey:@"platform"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metalVersion"];
    metalVersion = v5->_metalVersion;
    v5->_metalVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gputoolsVersionInfo"];
    gputoolsVersionInfo = v5->_gputoolsVersionInfo;
    v5->_gputoolsVersionInfo = v18;

    v5->_mainScreenDescriptor.width = [v4 decodeInt32ForKey:@"mainScreenResolution.width"];
    v5->_mainScreenDescriptor.height = [v4 decodeInt32ForKey:@"mainScreenResolution.height"];
    v5->_mainScreenDescriptor.scale = [v4 decodeInt32ForKey:@"mainScreenResolution.scale"];
    [v4 decodeDoubleForKey:@"mainScreenDescriptor.orientation"];
    v5->_mainScreenDescriptor.orientation = v20;
    v5->_mainScreenDescriptor.type = [v4 decodeInt32ForKey:@"mainScreenDescriptor.type"];
    v21 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedGLProfileContextsInfo"];
    profiles = v5->_profiles;
    v5->_profiles = v21;

    v5->_nativePointerSize = [v4 decodeInt32ForKey:@"nativePointerSize"];
    platform = v5->_platform;
    if (platform == 7)
    {
      v24 = 9;
      goto LABEL_6;
    }

    if (platform == 8)
    {
      v24 = 10;
LABEL_6:
      v5->_platform = v24;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  permanentIdentifier = self->_permanentIdentifier;
  v5 = a3;
  [v5 encodeObject:permanentIdentifier forKey:@"identifier"];
  [v5 encodeInt64:self->_runtimeIdentifier forKey:@"runtimeIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
  [v5 encodeObject:self->_version forKey:@"version"];
  [v5 encodeObject:self->_build forKey:@"build"];
  [v5 encodeInt32:self->_platform forKey:@"platform"];
  [v5 encodeObject:self->_metalVersion forKey:@"metalVersion"];
  [v5 encodeObject:self->_gputoolsVersionInfo forKey:@"gputoolsVersionInfo"];
  [v5 encodeInt32:self->_mainScreenDescriptor.width forKey:@"mainScreenResolution.width"];
  [v5 encodeInt32:self->_mainScreenDescriptor.height forKey:@"mainScreenResolution.height"];
  [v5 encodeInt32:self->_mainScreenDescriptor.scale forKey:@"mainScreenResolution.scale"];
  [v5 encodeDouble:@"mainScreenDescriptor.orientation" forKey:self->_mainScreenDescriptor.orientation];
  [v5 encodeInt32:self->_mainScreenDescriptor.type forKey:@"mainScreenDescriptor.type"];
  [v5 encodeObject:self->_profiles forKey:@"supportedGLProfileContextsInfo"];
  [v5 encodeInt32:self->_nativePointerSize forKey:@"nativePointerSize"];
}

- (void)setMainScreenDescriptor:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_mainScreenDescriptor.scale = *&a3->var3;
  *&self->_mainScreenDescriptor.orientation = v3;
}

@end