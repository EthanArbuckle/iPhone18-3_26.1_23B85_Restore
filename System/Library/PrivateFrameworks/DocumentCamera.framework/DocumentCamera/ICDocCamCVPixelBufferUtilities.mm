@interface ICDocCamCVPixelBufferUtilities
+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)buffer;
+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)buffer colorSpace:(CGColorSpace *)space copyMemory:(BOOL)memory;
+ (id)coreImageForPixelBuffer:(__CVBuffer *)buffer colorSpace:(CGColorSpace *)space;
@end

@implementation ICDocCamCVPixelBufferUtilities

+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)buffer
{
  result = CVBufferGetAttachment(buffer, *MEMORY[0x277CC4B78], 0);
  if (result)
  {

    return [self createImageWithCVPixelBuffer:buffer colorSpace:result];
  }

  return result;
}

+ (CGImage)createImageWithCVPixelBuffer:(__CVBuffer *)buffer colorSpace:(CGColorSpace *)space copyMemory:(BOOL)memory
{
  memoryCopy = memory;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (PixelFormatType == 32)
  {
    v9 = 16390;
    if (!space)
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
    if (!space)
    {
      return 0;
    }
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  if (CVPixelBufferLockBaseAddress(buffer, 1uLL))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    if (BaseAddress)
    {
      v14 = BaseAddress;
      if (!memoryCopy)
      {
        v21 = CGDataProviderCreateWithData(buffer, BaseAddress, Height * BytesPerRow, sReleaseCVPixelBuffer);
        if (!v21)
        {
          if (buffer)
          {
            CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
            CVPixelBufferRelease(buffer);
          }

          return 0;
        }

        v22 = v21;
        CVPixelBufferRetain(buffer);
        v19 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, space, v9, v22, 0, 1, kCGRenderingIntentDefault);
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
          v19 = CGImageCreate(Width, Height, 8uLL, 0x20uLL, BytesPerRow, space, v9, v17, 0, 1, kCGRenderingIntentDefault);
          v20 = v18;
          goto LABEL_14;
        }
      }
    }
  }

  return 0;
}

+ (id)coreImageForPixelBuffer:(__CVBuffer *)buffer colorSpace:(CGColorSpace *)space
{
  v4 = [self createImageWithCVPixelBuffer:buffer colorSpace:space];
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