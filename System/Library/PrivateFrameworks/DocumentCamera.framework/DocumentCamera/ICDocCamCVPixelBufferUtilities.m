@interface ICDocCamCVPixelBufferUtilities
+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)a3;
+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)a3 colorSpace:(CGColorSpace *)a4 copyMemory:(BOOL)a5;
+ (id)coreImageForPixelBuffer:(__CVBuffer *)a3 colorSpace:(CGColorSpace *)a4;
@end

@implementation ICDocCamCVPixelBufferUtilities

+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)a3
{
  result = CVBufferGetAttachment(a3, *MEMORY[0x277CC4B78], 0);
  if (result)
  {

    return [a1 createImageWithCVPixelBuffer:a3 colorSpace:result];
  }

  return result;
}

+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)a3 colorSpace:(CGColorSpace *)a4 copyMemory:(BOOL)a5
{
  v5 = a5;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType == 32)
  {
    v9 = 16390;
    if (!a4)
    {
      return 0;
    }
  }

  else
  {
    if (PixelFormatType != 1111970369)
    {
      return 0;
    }

    v9 = 8198;
    if (!a4)
    {
      return 0;
    }
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (CVPixelBufferLockBaseAddress(a3, 1uLL))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a3);
    if (BaseAddress)
    {
      v14 = BaseAddress;
      if (!v5)
      {
        v21 = CGDataProviderCreateWithData(a3, BaseAddress, Height * BytesPerRow, sReleaseCVPixelBuffer);
        if (!v21)
        {
          if (a3)
          {
            CVPixelBufferUnlockBaseAddress(a3, 1uLL);
            CVPixelBufferRelease(a3);
          }

          return 0;
        }

        v22 = v21;
        CVPixelBufferRetain(a3);
        v19 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, a4, v9, v22, 0, 1, kCGRenderingIntentDefault);
        v20 = v22;
LABEL_14:
        CGDataProviderRelease(v20);
        return v19;
      }

      v15 = malloc_type_malloc(Height * BytesPerRow, 0x5617599EuLL);
      if (v15)
      {
        v16 = v15;
        memcpy(v15, v14, Height * BytesPerRow);
        v17 = CGDataProviderCreateWithData(v16, v16, Height * BytesPerRow, sReleasePixelMemory);
        if (v17)
        {
          v18 = v17;
          v19 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, a4, v9, v17, 0, 1, kCGRenderingIntentDefault);
          v20 = v18;
          goto LABEL_14;
        }
      }
    }
  }

  return 0;
}

+ (id)coreImageForPixelBuffer:(__CVBuffer *)a3 colorSpace:(CGColorSpace *)a4
{
  v4 = [a1 createImageWithCVPixelBuffer:a3 colorSpace:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CBF758] imageWithCGImage:v4];
    CGImageRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end