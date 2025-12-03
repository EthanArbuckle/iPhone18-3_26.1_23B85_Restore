@interface NTKFaceDescriptor
- (BOOL)isAvailableForDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (Class)faceClass;
- (NTKFaceDescriptor)initWithBundleIdentifier:(id)identifier;
- (NTKFaceDescriptor)initWithCoder:(id)coder;
- (NTKFaceDescriptor)initWithFaceStyle:(int64_t)style;
- (id)_initWithFaceStyle:(int64_t)style bundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKFaceDescriptor

- (id)_initWithFaceStyle:(int64_t)style bundleIdentifier:(id)identifier
{
  if (style == 44)
  {
    identifier = [(NTKFaceDescriptor *)self initWithBundleIdentifier:identifier];
  }

  else
  {
    identifier = [(NTKFaceDescriptor *)self initWithFaceStyle:style, identifier];
  }

  v5 = identifier;

  return v5;
}

- (NTKFaceDescriptor)initWithFaceStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = NTKFaceDescriptor;
  v4 = [(NTKFaceDescriptor *)&v8 init];
  v5 = v4;
  if (v4)
  {
    bundleIdentifier = v4->_bundleIdentifier;
    v4->_faceStyle = style;
    v4->_bundleIdentifier = 0;
  }

  return v5;
}

- (NTKFaceDescriptor)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = NTKFaceDescriptor;
  v5 = [(NTKFaceDescriptor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_faceStyle = 44;
    v7 = [identifierCopy copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;
  }

  return v6;
}

- (NTKFaceDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"faceStyle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  v7 = [(NTKFaceDescriptor *)self _initWithFaceStyle:v5 bundleIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NTKFaceDescriptor faceStyle](self forKey:{"faceStyle"), @"faceStyle"}];
  bundleIdentifier = [(NTKFaceDescriptor *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  faceStyle = [(NTKFaceDescriptor *)self faceStyle];
  bundleIdentifier = [(NTKFaceDescriptor *)self bundleIdentifier];
  v7 = [v4 _initWithFaceStyle:faceStyle bundleIdentifier:bundleIdentifier];

  return v7;
}

- (BOOL)isAvailableForDevice:(id)device
{
  deviceCopy = device;
  faceStyle = [(NTKFaceDescriptor *)self faceStyle];
  if (faceStyle == 44)
  {
    bundleIdentifier = [(NTKFaceDescriptor *)self bundleIdentifier];
    v7 = +[NTKFaceBundleManager sharedManager];
    v8 = [v7 faceBundleForBundleIdentifier:bundleIdentifier onDevice:deviceCopy];

    IsAvailable = v8 != 0;
  }

  else
  {
    IsAvailable = NTKFaceStyleIsAvailable(faceStyle, deviceCopy);
  }

  return IsAvailable;
}

- (unint64_t)hash
{
  faceStyle = [(NTKFaceDescriptor *)self faceStyle];
  bundleIdentifier = [(NTKFaceDescriptor *)self bundleIdentifier];
  v5 = [bundleIdentifier hash];

  return v5 ^ faceStyle;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NTKFaceDescriptor faceStyle](self, "faceStyle"), v5 == [equalCopy faceStyle]))
  {
    bundleIdentifier = [(NTKFaceDescriptor *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v8 = NTKEqualObjects(bundleIdentifier, bundleIdentifier2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  faceStyle = [(NTKFaceDescriptor *)self faceStyle];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (faceStyle == 44)
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
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  faceStyle = [(NTKFaceDescriptor *)self faceStyle];
  if (faceStyle == 44)
  {
    bundleIdentifier = [(NTKFaceDescriptor *)self bundleIdentifier];
    if (bundleIdentifier)
    {
      v6 = +[NTKFaceBundleManager sharedManager];
      v7 = [v6 faceBundleForBundleIdentifier:bundleIdentifier onDevice:currentDevice];

      faceClass = [v7 faceClass];
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NTKFaceDescriptor faceClass];
      }

      faceClass = 0;
    }
  }

  else
  {
    faceClass = [NTKFace _faceClassForStyle:faceStyle onDevice:currentDevice];
  }

  return faceClass;
}

@end