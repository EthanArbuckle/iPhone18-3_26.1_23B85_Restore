@interface NTKUserPhotoEditOption
+ (id)optionUsingDefaultPhoto:(BOOL)photo forDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (NTKUserPhotoEditOption)initWithCoder:(id)coder;
- (NTKUserPhotoEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (id)JSONObjectRepresentation;
- (id)dailySnapshotKey;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKUserPhotoEditOption

+ (id)optionUsingDefaultPhoto:(BOOL)photo forDevice:(id)device
{
  deviceCopy = device;
  v7 = [[self alloc] initWithDevice:deviceCopy];

  v7[16] = photo;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    usesDefaultPhoto = self->_usesDefaultPhoto;
    v6 = usesDefaultPhoto == [equalCopy usesDefaultPhoto];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NTKUserPhotoEditOption;
  coderCopy = coder;
  [(NTKEditOption *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_usesDefaultPhoto forKey:{@"UsesDefault", v5.receiver, v5.super_class}];
}

- (NTKUserPhotoEditOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NTKUserPhotoEditOption;
  v5 = [(NTKEditOption *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_usesDefaultPhoto = [coderCopy decodeBoolForKey:@"UsesDefault"];
  }

  return v5;
}

- (id)dailySnapshotKey
{
  if (self->_usesDefaultPhoto)
  {
    return @"defaultPhoto";
  }

  else
  {
    return @"selectedPhoto";
  }
}

- (id)JSONObjectRepresentation
{
  if (self->_usesDefaultPhoto)
  {
    v2 = NTKFaceBundlePhotoContentDefault;
  }

  else
  {
    v2 = NTKFaceBundlePhotoContentCustom;
  }

  return *v2;
}

- (NTKUserPhotoEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
{
  representationCopy = representation;
  v7 = [(NTKEditOption *)self initWithDevice:device];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"object must be a string - invalid value: %@", representationCopy}];
    }

    if ([representationCopy isEqualToString:@"custom"])
    {
      v7->_usesDefaultPhoto = 0;
    }

    else if ([representationCopy isEqualToString:@"default"])
    {
      v7->_usesDefaultPhoto = 1;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"invalid value: %@", representationCopy}];
    }
  }

  return v7;
}

@end