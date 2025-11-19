@interface PKImageDescriptorBitmap
+ (id)createForImage:(id)a3 withTintColor:(int64_t)a4 hasBackground:(BOOL)a5;
- (PKImageDescriptorBitmap)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKImageDescriptorBitmap

+ (id)createForImage:(id)a3 withTintColor:(int64_t)a4 hasBackground:(BOOL)a5
{
  v8 = a3;
  if (v8)
  {
    v9 = [PKImageDescriptor _createForType:a4 withTintColor:a5 hasBackground:?];
    objc_storeStrong(v9 + 5, a3);
    v10 = [v8 imageHash];
    v11 = v9[4];
    v9[4] = v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PKImageDescriptorBitmap)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKImageDescriptorBitmap;
  v5 = [(PKImageDescriptor *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageHash"];
    imageHash = v5->_imageHash;
    v5->_imageHash = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKImageDescriptorBitmap;
  v4 = a3;
  [(PKImageDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_image forKey:{@"image", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_imageHash forKey:@"imageHash"];
}

@end