@interface NTKUserPhotoContentEditOption
- (NTKUserPhotoContentEditOption)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKUserPhotoContentEditOption

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = NTKUserPhotoContentEditOption;
  [(NTKEditOption *)&v6 encodeWithCoder:coderCopy];
  path = self->_path;
  if (path)
  {
    [coderCopy encodeObject:path forKey:@"Path"];
  }

  [coderCopy encodeBool:self->_isDefaultPhoto forKey:@"IsDefault"];
}

- (NTKUserPhotoContentEditOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NTKUserPhotoContentEditOption;
  v5 = [(NTKEditOption *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = [coderCopy decodeBoolForKey:@"IsDefault"];
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