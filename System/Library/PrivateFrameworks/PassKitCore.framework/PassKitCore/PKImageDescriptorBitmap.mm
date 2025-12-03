@interface PKImageDescriptorBitmap
+ (id)createForImage:(id)image withTintColor:(int64_t)color hasBackground:(BOOL)background;
- (PKImageDescriptorBitmap)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKImageDescriptorBitmap

+ (id)createForImage:(id)image withTintColor:(int64_t)color hasBackground:(BOOL)background
{
  imageCopy = image;
  if (imageCopy)
  {
    v9 = [PKImageDescriptor _createForType:color withTintColor:background hasBackground:?];
    objc_storeStrong(v9 + 5, image);
    imageHash = [imageCopy imageHash];
    v11 = v9[4];
    v9[4] = imageHash;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKImageDescriptorBitmap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKImageDescriptorBitmap;
  v5 = [(PKImageDescriptor *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageHash"];
    imageHash = v5->_imageHash;
    v5->_imageHash = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKImageDescriptorBitmap;
  coderCopy = coder;
  [(PKImageDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_image forKey:{@"image", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_imageHash forKey:@"imageHash"];
}

@end