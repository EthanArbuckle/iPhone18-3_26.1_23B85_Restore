@interface FTImageTensorDescriptor
+ (id)bgraImageWithName:(id)name size:(CGSize)size;
+ (id)bgraSquareImageWithName:(id)name size:(double)size;
+ (id)descriptorWithName:(id)name size:(CGSize)size pixelFormat:(unsigned int)format;
- (CGSize)size;
@end

@implementation FTImageTensorDescriptor

+ (id)descriptorWithName:(id)name size:(CGSize)size pixelFormat:(unsigned int)format
{
  v5 = *&format;
  height = size.height;
  width = size.width;
  nameCopy = name;
  v9 = objc_alloc_init(FTImageTensorDescriptor);
  [(FTImageTensorDescriptor *)v9 setName:nameCopy];
  [(FTImageTensorDescriptor *)v9 setSize:width, height];
  [(FTImageTensorDescriptor *)v9 setPixelFormat:v5];

  return v9;
}

+ (id)bgraImageWithName:(id)name size:(CGSize)size
{
  v4 = [self descriptorWithName:name size:1111970369 pixelFormat:size.width, size.height];

  return v4;
}

+ (id)bgraSquareImageWithName:(id)name size:(double)size
{
  v4 = [self bgraImageWithName:name size:{size, size}];

  return v4;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end