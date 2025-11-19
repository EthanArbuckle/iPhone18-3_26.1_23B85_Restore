@interface BPSThumbnailGenerator
+ (BOOL)writeScaledCPBitmapForImage:(id)a3 desiredSize:(CGSize)a4 scale:(double)a5 withPath:(id)a6;
+ (BOOL)writeScaledPNGForImage:(id)a3 desiredSize:(CGSize)a4 scale:(double)a5 withPath:(id)a6;
+ (id)scaledImageForImage:(id)a3 desiredSize:(CGSize)a4 scale:(double)a5;
@end

@implementation BPSThumbnailGenerator

+ (id)scaledImageForImage:(id)a3 desiredSize:(CGSize)a4 scale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = [v8 CGImage];
  if (a5 <= 0.0)
  {
    [v8 scale];
    a5 = v10;
  }

  v11 = width * a5;
  v12 = height * a5;
  BitsPerComponent = CGImageGetBitsPerComponent(v9);
  BytesPerRow = CGImageGetBytesPerRow(v9);
  BitsPerPixel = CGImageGetBitsPerPixel(v9);
  ColorSpace = CGImageGetColorSpace(v9);
  AlphaInfo = CGImageGetAlphaInfo(v9);
  BitmapInfo = CGImageGetBitmapInfo(v9);
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
  CGContextDrawImage(v22, v27, v9);
  Image = CGBitmapContextCreateImage(v22);
  v24 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:a5];
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

+ (BOOL)writeScaledPNGForImage:(id)a3 desiredSize:(CGSize)a4 scale:(double)a5 withPath:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = MEMORY[0x277CCACA8];
  v12 = a3;
  v13 = [v11 stringWithFormat:@"%@.png", a6];
  v14 = [a1 scaledImageForImage:v12 desiredSize:width scale:{height, a5}];

  v15 = UIImagePNGRepresentation(v14);
  LOBYTE(v12) = [v15 writeToFile:v13 atomically:0];

  return v12;
}

+ (BOOL)writeScaledCPBitmapForImage:(id)a3 desiredSize:(CGSize)a4 scale:(double)a5 withPath:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = MEMORY[0x277CCACA8];
  v12 = a3;
  v13 = [v11 stringWithFormat:@"%@.cpbitmap", a6];
  v14 = [a1 scaledImageForImage:v12 desiredSize:width scale:{height, 0.0}];

  LOBYTE(v11) = [v14 writeToCPBitmapFile:v13 flags:a5];
  return v11;
}

@end