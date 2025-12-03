@interface CRKCoreGraphicsUtilities
+ (CGContext)createImageContextForSize:(CGSize)size;
+ (CGImage)createResizedImageFromImage:(CGImage *)image newSize:(CGSize)size;
+ (id)imageDataFromImage:(CGImage *)image;
@end

@implementation CRKCoreGraphicsUtilities

+ (id)imageDataFromImage:(CGImage *)image
{
  v4 = objc_opt_new();
  identifier = [*MEMORY[0x277CE1E10] identifier];
  v6 = CGImageDestinationCreateWithData(v4, identifier, 1uLL, 0);

  if (v6)
  {
    CGImageDestinationAddImage(v6, image, 0);
    v7 = CGImageDestinationFinalize(v6);
    CFRelease(v6);
    if (v7)
    {
      v8 = [(__CFData *)v4 copy];
      goto LABEL_9;
    }

    v9 = _CRKLogGeneral_16();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKCoreGraphicsUtilities imageDataFromImage:v9];
    }
  }

  else
  {
    v9 = _CRKLogGeneral_16();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CRKCoreGraphicsUtilities imageDataFromImage:v9];
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (CGImage)createResizedImageFromImage:(CGImage *)image newSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = size.width;
  v8 = size.height;
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  BytesPerRow = CGImageGetBytesPerRow(image);
  ColorSpace = CGImageGetColorSpace(image);
  BitmapInfo = CGImageGetBitmapInfo(image);
  result = CGBitmapContextCreate(0, v7, v8, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  if (result)
  {
    v14 = result;
    CGContextSetInterpolationQuality(result, kCGInterpolationHigh);
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = width;
    v16.size.height = height;
    CGContextDrawImage(v14, v16, image);
    Image = CGBitmapContextCreateImage(v14);
    CGContextRelease(v14);
    return Image;
  }

  return result;
}

+ (CGContext)createImageContextForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  result = CGColorSpaceCreateDeviceRGB();
  if (result)
  {
    v6 = result;
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v8 = CGBitmapContextCreate(0, width, height, 8uLL, AlignedBytesPerRow, v6, 0x2002u);
    CFRelease(v6);
    return v8;
  }

  return result;
}

@end