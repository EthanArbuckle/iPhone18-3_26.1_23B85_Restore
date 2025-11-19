@interface CRKCoreGraphicsUtilities
+ (CGContext)createImageContextForSize:(CGSize)a3;
+ (CGImage)createResizedImageFromImage:(CGImage *)a3 newSize:(CGSize)a4;
+ (id)imageDataFromImage:(CGImage *)a3;
@end

@implementation CRKCoreGraphicsUtilities

+ (id)imageDataFromImage:(CGImage *)a3
{
  v4 = objc_opt_new();
  v5 = [*MEMORY[0x277CE1E10] identifier];
  v6 = CGImageDestinationCreateWithData(v4, v5, 1uLL, 0);

  if (v6)
  {
    CGImageDestinationAddImage(v6, a3, 0);
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

+ (CGImage)createResizedImageFromImage:(CGImage *)a3 newSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a4.width;
  v8 = a4.height;
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  BytesPerRow = CGImageGetBytesPerRow(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  BitmapInfo = CGImageGetBitmapInfo(a3);
  result = CGBitmapContextCreate(0, v7, v8, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  if (result)
  {
    v14 = result;
    CGContextSetInterpolationQuality(result, kCGInterpolationHigh);
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = width;
    v16.size.height = height;
    CGContextDrawImage(v14, v16, a3);
    Image = CGBitmapContextCreateImage(v14);
    CGContextRelease(v14);
    return Image;
  }

  return result;
}

+ (CGContext)createImageContextForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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