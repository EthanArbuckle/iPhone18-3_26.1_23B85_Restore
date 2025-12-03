@interface BPSThumbnailGenerator
+ (BOOL)writeScaledCPBitmapForImage:(id)image desiredSize:(CGSize)size scale:(double)scale withPath:(id)path;
+ (BOOL)writeScaledPNGForImage:(id)image desiredSize:(CGSize)size scale:(double)scale withPath:(id)path;
+ (id)scaledImageForImage:(id)image desiredSize:(CGSize)size scale:(double)scale;
@end

@implementation BPSThumbnailGenerator

+ (id)scaledImageForImage:(id)image desiredSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  cGImage = [imageCopy CGImage];
  if (scale <= 0.0)
  {
    [imageCopy scale];
    scale = v10;
  }

  v11 = width * scale;
  v12 = height * scale;
  BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
  BytesPerRow = CGImageGetBytesPerRow(cGImage);
  BitsPerPixel = CGImageGetBitsPerPixel(cGImage);
  ColorSpace = CGImageGetColorSpace(cGImage);
  AlphaInfo = CGImageGetAlphaInfo(cGImage);
  BitmapInfo = CGImageGetBitmapInfo(cGImage);
  if (BitsPerPixel == 64 && AlphaInfo == kCGImageAlphaLast && BitsPerComponent == 16)
  {
    v21 = (BitmapInfo & 0xFFFFFFE0) + 1;
  }

  else
  {
    v21 = BitmapInfo;
  }

  v22 = CGBitmapContextCreate(0, v11, v12, BitsPerComponent, BytesPerRow, ColorSpace, v21);
  CGContextSetInterpolationQuality(v22, kCGInterpolationHigh);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v11;
  v27.size.height = v12;
  CGContextDrawImage(v22, v27, cGImage);
  Image = CGBitmapContextCreateImage(v22);
  v24 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:scale];
  if (Image)
  {
    CFRelease(Image);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v24;
}

+ (BOOL)writeScaledPNGForImage:(id)image desiredSize:(CGSize)size scale:(double)scale withPath:(id)path
{
  height = size.height;
  width = size.width;
  v11 = MEMORY[0x277CCACA8];
  imageCopy = image;
  path = [v11 stringWithFormat:@"%@.png", path];
  v14 = [self scaledImageForImage:imageCopy desiredSize:width scale:{height, scale}];

  v15 = UIImagePNGRepresentation(v14);
  LOBYTE(imageCopy) = [v15 writeToFile:path atomically:0];

  return imageCopy;
}

+ (BOOL)writeScaledCPBitmapForImage:(id)image desiredSize:(CGSize)size scale:(double)scale withPath:(id)path
{
  height = size.height;
  width = size.width;
  v11 = MEMORY[0x277CCACA8];
  imageCopy = image;
  path = [v11 stringWithFormat:@"%@.cpbitmap", path];
  v14 = [self scaledImageForImage:imageCopy desiredSize:width scale:{height, 0.0}];

  LOBYTE(v11) = [v14 writeToCPBitmapFile:path flags:scale];
  return v11;
}

@end