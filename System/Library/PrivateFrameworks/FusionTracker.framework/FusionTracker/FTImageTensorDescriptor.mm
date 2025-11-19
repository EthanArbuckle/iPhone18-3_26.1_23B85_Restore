@interface FTImageTensorDescriptor
+ (id)bgraImageWithName:(id)a3 size:(CGSize)a4;
+ (id)bgraSquareImageWithName:(id)a3 size:(double)a4;
+ (id)descriptorWithName:(id)a3 size:(CGSize)a4 pixelFormat:(unsigned int)a5;
- (CGSize)size;
@end

@implementation FTImageTensorDescriptor

+ (id)descriptorWithName:(id)a3 size:(CGSize)a4 pixelFormat:(unsigned int)a5
{
  v5 = *&a5;
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = objc_alloc_init(FTImageTensorDescriptor);
  [(FTImageTensorDescriptor *)v9 setName:v8];
  [(FTImageTensorDescriptor *)v9 setSize:width, height];
  [(FTImageTensorDescriptor *)v9 setPixelFormat:v5];

  return v9;
}

+ (id)bgraImageWithName:(id)a3 size:(CGSize)a4
{
  v4 = [a1 descriptorWithName:a3 size:1111970369 pixelFormat:a4.width, a4.height];

  return v4;
}

+ (id)bgraSquareImageWithName:(id)a3 size:(double)a4
{
  v4 = [a1 bgraImageWithName:a3 size:{a4, a4}];

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