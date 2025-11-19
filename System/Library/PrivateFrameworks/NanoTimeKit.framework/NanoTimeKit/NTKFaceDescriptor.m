@interface NTKFaceDescriptor
- (BOOL)isAvailableForDevice:(id)a3;
- (BOOL)isEqual:(id)a3;
- (Class)faceClass;
- (NTKFaceDescriptor)initWithBundleIdentifier:(id)a3;
- (NTKFaceDescriptor)initWithCoder:(id)a3;
- (NTKFaceDescriptor)initWithFaceStyle:(int64_t)a3;
- (id)_initWithFaceStyle:(int64_t)a3 bundleIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKFaceDescriptor

- (id)_initWithFaceStyle:(int64_t)a3 bundleIdentifier:(id)a4
{
  if (a3 == 44)
  {
    v4 = [(NTKFaceDescriptor *)self initWithBundleIdentifier:a4];
  }

  else
  {
    v4 = [(NTKFaceDescriptor *)self initWithFaceStyle:a3, a4];
  }

  v5 = v4;

  return v5;
}

- (NTKFaceDescriptor)initWithFaceStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = NTKFaceDescriptor;
  v4 = [(NTKFaceDescriptor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    bundleIdentifier = v4->_bundleIdentifier;
    v4->_faceStyle = a3;
    v4->_bundleIdentifier = 0;
  }

  return v5;
}

- (NTKFaceDescriptor)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKFaceDescriptor;
  v5 = [(NTKFaceDescriptor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_faceStyle = 44;
    v7 = [v4 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;
  }

  return v6;
}

- (NTKFaceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"faceStyle"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v7 = [(NTKFaceDescriptor *)self _initWithFaceStyle:v5 bundleIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[NTKFaceDescriptor faceStyle](self forKey:{"faceStyle"), @"faceStyle"}];
  v5 = [(NTKFaceDescriptor *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NTKFaceDescriptor *)self faceStyle];
  v6 = [(NTKFaceDescriptor *)self bundleIdentifier];
  v7 = [v4 _initWithFaceStyle:v5 bundleIdentifier:v6];

  return v7;
}

- (BOOL)isAvailableForDevice:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceDescriptor *)self faceStyle];
  if (v5 == 44)
  {
    v6 = [(NTKFaceDescriptor *)self bundleIdentifier];
    v7 = +[NTKFaceBundleManager sharedManager];
    v8 = [v7 faceBundleForBundleIdentifier:v6 onDevice:v4];

    IsAvailable = v8 != 0;
  }

  else
  {
    IsAvailable = NTKFaceStyleIsAvailable(v5, v4);
  }

  return IsAvailable;
}

- (unint64_t)hash
{
  v3 = [(NTKFaceDescriptor *)self faceStyle];
  v4 = [(NTKFaceDescriptor *)self bundleIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NTKFaceDescriptor faceStyle](self, "faceStyle"), v5 == [v4 faceStyle]))
  {
    v6 = [(NTKFaceDescriptor *)self bundleIdentifier];
    v7 = [v4 bundleIdentifier];
    v8 = NTKEqualObjects(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [(NTKFaceDescriptor *)self faceStyle];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (v3 == 44)
  {
    [(NTKFaceDescriptor *)self bundleIdentifier];
  }

  else
  {
    NTKFaceStyleDescription([(NTKFaceDescriptor *)self faceStyle]);
  }
  v7 = ;
  v8 = [v4 stringWithFormat:@"<%@: %p, %@>", v6, self, v7];

  return v8;
}

- (Class)faceClass
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [(NTKFaceDescriptor *)self faceStyle];
  if (v4 == 44)
  {
    v5 = [(NTKFaceDescriptor *)self bundleIdentifier];
    if (v5)
    {
      v6 = +[NTKFaceBundleManager sharedManager];
      v7 = [v6 faceBundleForBundleIdentifier:v5 onDevice:v3];

      v8 = [v7 faceClass];
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NTKFaceDescriptor faceClass];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = [NTKFace _faceClassForStyle:v4 onDevice:v3];
  }

  return v8;
}

@end