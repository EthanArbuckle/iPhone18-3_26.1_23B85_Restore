@interface MNGuidanceJunctionViewImage
- (MNGuidanceJunctionViewImage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNGuidanceJunctionViewImage

- (void)encodeWithCoder:(id)coder
{
  imageID = self->_imageID;
  coderCopy = coder;
  [coderCopy encodeInteger:imageID forKey:@"_imageID"];
  [coderCopy encodeObject:self->_imageData forKey:@"_imageData"];
}

- (MNGuidanceJunctionViewImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MNGuidanceJunctionViewImage;
  v5 = [(MNGuidanceJunctionViewImage *)&v9 init];
  if (v5)
  {
    v5->_imageID = [coderCopy decodeIntegerForKey:@"_imageID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;
  }

  return v5;
}

@end