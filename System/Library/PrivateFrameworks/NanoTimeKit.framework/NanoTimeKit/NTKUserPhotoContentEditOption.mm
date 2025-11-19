@interface NTKUserPhotoContentEditOption
- (NTKUserPhotoContentEditOption)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKUserPhotoContentEditOption

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = NTKUserPhotoContentEditOption;
  [(NTKEditOption *)&v6 encodeWithCoder:v4];
  path = self->_path;
  if (path)
  {
    [v4 encodeObject:path forKey:@"Path"];
  }

  [v4 encodeBool:self->_isDefaultPhoto forKey:@"IsDefault"];
}

- (NTKUserPhotoContentEditOption)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NTKUserPhotoContentEditOption;
  v5 = [(NTKEditOption *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [v4 decodeBoolForKey:@"IsDefault"];
    v5->_isDefaultPhoto = v8;
    if (v5->_path)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    v5->_isDefaultPhoto = v9;
  }

  return v5;
}

@end