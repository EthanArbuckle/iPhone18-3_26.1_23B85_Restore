@interface NTKUserPhotoEditOption
+ (id)optionUsingDefaultPhoto:(BOOL)a3 forDevice:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NTKUserPhotoEditOption)initWithCoder:(id)a3;
- (NTKUserPhotoEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (id)JSONObjectRepresentation;
- (id)dailySnapshotKey;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKUserPhotoEditOption

+ (id)optionUsingDefaultPhoto:(BOOL)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithDevice:v6];

  v7[16] = a3;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    usesDefaultPhoto = self->_usesDefaultPhoto;
    v6 = usesDefaultPhoto == [v4 usesDefaultPhoto];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKUserPhotoEditOption;
  v4 = a3;
  [(NTKEditOption *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_usesDefaultPhoto forKey:{@"UsesDefault", v5.receiver, v5.super_class}];
}

- (NTKUserPhotoEditOption)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NTKUserPhotoEditOption;
  v5 = [(NTKEditOption *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_usesDefaultPhoto = [v4 decodeBoolForKey:@"UsesDefault"];
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

- (NTKUserPhotoEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = [(NTKEditOption *)self initWithDevice:a4];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"object must be a string - invalid value: %@", v6}];
    }

    if ([v6 isEqualToString:@"custom"])
    {
      v7->_usesDefaultPhoto = 0;
    }

    else if ([v6 isEqualToString:@"default"])
    {
      v7->_usesDefaultPhoto = 1;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"invalid value: %@", v6}];
    }
  }

  return v7;
}

@end