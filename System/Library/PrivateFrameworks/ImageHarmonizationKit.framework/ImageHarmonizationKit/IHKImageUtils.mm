@interface IHKImageUtils
+ (CGImage)CopyCGImageTosRGB:(CGImage *)b;
+ (CGImage)convertCGImageToBGRA_sRGB:(CGImage *)b;
+ (__CVBuffer)convertCGImageToBGRA_sRGB_PixelBuffer:(CGImage *)buffer;
@end

@implementation IHKImageUtils

+ (CGImage)CopyCGImageTosRGB:(CGImage *)b
{
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  CopyWithColorSpace = CGImageCreateCopyWithColorSpace(b, v4);
  CGColorSpaceRelease(v4);
  return CopyWithColorSpace;
}

+ (CGImage)convertCGImageToBGRA_sRGB:(CGImage *)b
{
  Width = CGImageGetWidth(b);
  Height = CGImageGetHeight(b);
  v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  BytesPerRow = CGImageGetBytesPerRow(b);
  v8 = CGBitmapContextCreate(0, Width, Height, 8uLL, BytesPerRow, v6, 0x2002u);
  v11.size.width = Width;
  v11.size.height = Height;
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  CGContextDrawImage(v8, v11, b);
  Image = CGBitmapContextCreateImage(v8);
  CGContextRelease(v8);
  CGColorSpaceRelease(v6);
  return Image;
}

+ (__CVBuffer)convertCGImageToBGRA_sRGB_PixelBuffer:(CGImage *)buffer
{
  Width = CGImageGetWidth(buffer);
  Height = CGImageGetHeight(buffer);
  v25 = Height;
  v26 = 0;
  v27 = 0;
  if (!Width || (v6 = Height) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid dimensions requested for CVPixelBuffer creation.");
    goto LABEL_15;
  }

  pixelBufferOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v30 = Mutable;
  v11 = CFDictionaryCreateMutable(v7, 0, v8, v9);
  v12 = *MEMORY[0x277CC4DE8];
  v29.__r_.__value_.__r.__words[0] = v11;
  CFDictionarySetValue(Mutable, v12, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v13 = CVPixelBufferCreate(v7, Width, v25, 0x42475241u, Mutable, &pixelBufferOut);
  if (v13)
  {
    v21 = v13;
    v22 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v28, v21);
    v23 = std::string::insert(&v28, 0, "Failed to create CVPixelBuffer. Status = ");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v22, &v29);
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v14 = pixelBufferOut;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (CVPixelBufferLockBaseAddress(v14, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
    goto LABEL_15;
  }

  v15 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  BaseAddress = CVPixelBufferGetBaseAddress(v14);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v14);
  v18 = CGBitmapContextCreate(BaseAddress, Width, v6, 8uLL, BytesPerRow, v15, 0x2002u);
  v32.size.width = Width;
  v32.size.height = v6;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  CGContextDrawImage(v18, v32, buffer);
  CVBufferSetAttachment(v14, *MEMORY[0x277CC4B78], v15, kCVAttachmentMode_ShouldNotPropagate);
  CGContextRelease(v18);
  CGColorSpaceRelease(v15);
  if (CVPixelBufferUnlockBaseAddress(v14, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
LABEL_15:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v14;
}

@end