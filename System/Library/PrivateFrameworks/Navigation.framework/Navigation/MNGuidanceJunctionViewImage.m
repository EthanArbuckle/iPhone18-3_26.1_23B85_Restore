@interface MNGuidanceJunctionViewImage
- (MNGuidanceJunctionViewImage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNGuidanceJunctionViewImage

- (void)encodeWithCoder:(id)a3
{
  imageID = self->_imageID;
  v5 = a3;
  [v5 encodeInteger:imageID forKey:@"_imageID"];
  [v5 encodeObject:self->_imageData forKey:@"_imageData"];
}

- (MNGuidanceJunctionViewImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MNGuidanceJunctionViewImage;
  v5 = [(MNGuidanceJunctionViewImage *)&v9 init];
  if (v5)
  {
    v5->_imageID = [v4 decodeIntegerForKey:@"_imageID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;
  }

  return v5;
}

@end