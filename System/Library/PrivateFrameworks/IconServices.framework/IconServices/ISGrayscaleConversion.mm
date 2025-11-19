@interface ISGrayscaleConversion
- (BOOL)computeGrayscaleConversionColorWithCGImage:(CGImage *)a3 grayscaleConversion:;
@end

@implementation ISGrayscaleConversion

- (BOOL)computeGrayscaleConversionColorWithCGImage:(CGImage *)a3 grayscaleConversion:
{
  if (!a3)
  {
    LOBYTE(DataProvider) = 0;
    return DataProvider;
  }

  v4 = v3;
  ColorSpace = CGImageGetColorSpace(a3);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
LABEL_18:
    LOBYTE(DataProvider) = 0;
    return DataProvider;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(a3);
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  LOBYTE(DataProvider) = 0;
  if (BitsPerComponent != 8 || BitsPerPixel != 32)
  {
    return DataProvider;
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  BytesPerRow = CGImageGetBytesPerRow(a3);
  v14 = BytesPerRow >= 0 ? BytesPerRow : BytesPerRow + 3;
  AlphaInfo = CGImageGetAlphaInfo(a3);
  LOBYTE(DataProvider) = 0;
  if (AlphaInfo > kCGImageAlphaNoneSkipLast)
  {
    return DataProvider;
  }

  if (((1 << AlphaInfo) & 0x2A) == 0)
  {
    return DataProvider;
  }

  DataProvider = CGImageGetDataProvider(a3);
  if (!DataProvider)
  {
    return DataProvider;
  }

  DataProvider = CGDataProviderCopyData(DataProvider);
  if (!DataProvider)
  {
    return DataProvider;
  }

  v16 = DataProvider;
  BytePtr = CFDataGetBytePtr(DataProvider);
  if (!BytePtr)
  {
    CFRelease(v16);
    goto LABEL_18;
  }

  if (v4)
  {
    v20[0] = Width;
    v20[1] = Height;
    v20[2] = (v14 >> 2) - Width;
    v20[3] = AlphaInfo;
    v21 = BytePtr;
    [(ISGrayscaleConversion *)self computeGrayscaleConversionColorWithWidth:Width height:Height samples:v20];
    *v4 = v18;
  }

  CFRelease(v16);
  LOBYTE(DataProvider) = 1;
  return DataProvider;
}

@end