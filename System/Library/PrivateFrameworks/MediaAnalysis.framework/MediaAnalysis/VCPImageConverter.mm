@interface VCPImageConverter
- (VCPImageConverter)init;
- (VCPImageConverter)initWithPixelFormat:(int)format;
- (int)convertImage:(CGImage *)image yuvFrame:(__CVBuffer *)frame;
- (int)resize:(int)resize height:(int)height;
- (void)dealloc;
@end

@implementation VCPImageConverter

- (VCPImageConverter)init
{
  v7.receiver = self;
  v7.super_class = VCPImageConverter;
  v2 = [(VCPImageConverter *)&v7 init];
  p_isa = &v2->super.isa;
  if (v2)
  {
    v2->_pixelFormat = 875704422;
    v2->_rgbFrame = 0;
    v2->_yuvFrames = 0;
    v2->_cgContext = 0;
    v2->_rgbColorSpace = CGColorSpaceCreateDeviceRGB();
    if (VTPixelTransferSessionCreate(0, p_isa + 7))
    {
      v4 = 0;
    }

    else
    {
      v4 = p_isa;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (VCPImageConverter)initWithPixelFormat:(int)format
{
  v9.receiver = self;
  v9.super_class = VCPImageConverter;
  v4 = [(VCPImageConverter *)&v9 init];
  p_isa = &v4->super.isa;
  if (v4)
  {
    v4->_pixelFormat = format;
    v4->_rgbFrame = 0;
    v4->_yuvFrames = 0;
    v4->_cgContext = 0;
    v4->_rgbColorSpace = CGColorSpaceCreateDeviceRGB();
    if (VTPixelTransferSessionCreate(0, p_isa + 7))
    {
      v6 = 0;
    }

    else
    {
      v6 = p_isa;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  rgbColorSpace = self->_rgbColorSpace;
  if (rgbColorSpace)
  {
    CFRelease(rgbColorSpace);
  }

  cgContext = self->_cgContext;
  if (cgContext)
  {
    CFRelease(cgContext);
  }

  rgbFrame = self->_rgbFrame;
  if (rgbFrame)
  {
    CFRelease(rgbFrame);
  }

  yuvFrames = self->_yuvFrames;
  if (yuvFrames)
  {
    CFRelease(yuvFrames);
  }

  rgbToYuv = self->_rgbToYuv;
  if (rgbToYuv)
  {
    CFRelease(rgbToYuv);
  }

  v8.receiver = self;
  v8.super_class = VCPImageConverter;
  [(VCPImageConverter *)&v8 dealloc];
}

- (int)resize:(int)resize height:(int)height
{
  if (self->_width == resize && self->_height == height)
  {
    return 0;
  }

  self->_width = 0;
  self->_height = 0;
  value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (value)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    pixelBufferAttributes = Mutable;
    if (Mutable)
    {
      v8 = *MEMORY[0x1E69660D8];
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], value);
      p_rgbFrame = &self->_rgbFrame;
      rgbFrame = self->_rgbFrame;
      if (rgbFrame)
      {
        CFRelease(rgbFrame);
        *p_rgbFrame = 0;
      }

      v11 = CVPixelBufferCreate(0, resize, height, 0x20u, pixelBufferAttributes, &self->_rgbFrame);
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        theDict = v13;
        if (v13)
        {
          valuePtr = resize;
          v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          v24[0] = v14;
          if (v14)
          {
            CFDictionarySetValue(v13, *MEMORY[0x1E6966208], v14);
          }

          CF<__CVBuffer *>::~CF(v24);
          v15 = theDict;
          valuePtr = height;
          v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          v24[0] = v16;
          if (v16)
          {
            CFDictionarySetValue(v15, *MEMORY[0x1E69660B8], v16);
          }

          CF<__CVBuffer *>::~CF(v24);
          v17 = theDict;
          valuePtr = self->_pixelFormat;
          v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          v24[0] = v18;
          if (v18)
          {
            CFDictionarySetValue(v17, *MEMORY[0x1E6966130], v18);
          }

          CF<__CVBuffer *>::~CF(v24);
          CFDictionarySetValue(theDict, v8, value);
          yuvFrames = self->_yuvFrames;
          if (yuvFrames)
          {
            CFRelease(yuvFrames);
            self->_yuvFrames = 0;
          }

          v11 = CVPixelBufferPoolCreate(0, 0, theDict, &self->_yuvFrames);
          if (v11)
          {
            v12 = 0;
          }

          else
          {
            cgContext = self->_cgContext;
            if (cgContext)
            {
              CFRelease(cgContext);
              self->_cgContext = 0;
            }

            CVPixelBufferLock::CVPixelBufferLock(v24, *p_rgbFrame, 0);
            v11 = v24[0];
            if (LODWORD(v24[0]) || (BaseAddress = CVPixelBufferGetBaseAddress(*p_rgbFrame), BytesPerRow = CVPixelBufferGetBytesPerRow(*p_rgbFrame), self->_cgContext = CGBitmapContextCreate(BaseAddress, resize, height, 8uLL, BytesPerRow, self->_rgbColorSpace, 6u), (v11 = CVPixelBufferLock::Unlock(v24)) != 0))
            {
              v12 = 0;
            }

            else
            {
              self->_width = resize;
              self->_height = height;
              v12 = 1;
            }

            CVPixelBufferLock::~CVPixelBufferLock(v24);
          }
        }

        else
        {
          v12 = 0;
          v11 = -108;
        }

        CF<__CVBuffer *>::~CF(&theDict);
      }
    }

    else
    {
      v12 = 0;
      v11 = -108;
    }

    CF<__CVBuffer *>::~CF(&pixelBufferAttributes);
    CF<__CVBuffer *>::~CF(&value);
    if (v12)
    {
      return 0;
    }
  }

  else
  {
    CF<__CVBuffer *>::~CF(&value);
    return -108;
  }

  return v11;
}

- (int)convertImage:(CGImage *)image yuvFrame:(__CVBuffer *)frame
{
  *frame = 0;
  Property = CGImageGetProperty();
  pixelBufferOut = 0;
  if (!Property || (CVPixelBufferCreateWithIOSurface(0, Property, 0, &pixelBufferOut), CVPixelBufferGetPixelFormatType(pixelBufferOut) != self->_pixelFormat))
  {
    Width = CGImageGetWidth(image);
    v9 = [(VCPImageConverter *)self resize:Width height:CGImageGetHeight(image)];
    if (v9)
    {
      goto LABEL_28;
    }

    destinationBuffer = 0;
    v9 = CVPixelBufferPoolCreatePixelBuffer(0, self->_yuvFrames, &destinationBuffer);
    if (v9)
    {
      goto LABEL_27;
    }

    if (pixelBufferOut && !VTPixelTransferSessionTransferImage(self->_rgbToYuv, pixelBufferOut, destinationBuffer))
    {
      goto LABEL_24;
    }

    rgbFrame = self->_rgbFrame;
    pixelBuffer = rgbFrame;
    unlockFlags = 0;
    if (rgbFrame)
    {
      v9 = CVPixelBufferLockBaseAddress(rgbFrame, 0);
      v18 = v9;
      if (v9)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPImageConverter convertImage:yuvFrame:];
        }
      }

      else
      {
        cgContext = self->_cgContext;
        v14 = CGImageGetWidth(image);
        Height = CGImageGetHeight(image);
        v23.size.width = v14;
        v23.size.height = Height;
        v23.origin.x = 0.0;
        v23.origin.y = 0.0;
        CGContextDrawImage(cgContext, v23, image);
        v9 = CVPixelBufferLock::Unlock(&v18);
        if (!v9)
        {
          v9 = VTPixelTransferSessionTransferImage(self->_rgbToYuv, self->_rgbFrame, destinationBuffer);
          v12 = v9 == 0;
          goto LABEL_19;
        }
      }

      v12 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v12 = 0;
      v9 = -50;
      v18 = -50;
    }

LABEL_19:
    if (pixelBuffer && !v18 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      if (v12)
      {
        goto LABEL_24;
      }
    }

    else if (v12)
    {
LABEL_24:
      v16 = destinationBuffer;
      if (destinationBuffer)
      {
        v16 = CFRetain(destinationBuffer);
      }

      v9 = 0;
      *frame = v16;
    }

LABEL_27:
    CF<__CVBuffer *>::~CF(&destinationBuffer);
    goto LABEL_28;
  }

  v8 = pixelBufferOut;
  if (pixelBufferOut)
  {
    v8 = CFRetain(pixelBufferOut);
  }

  v9 = 0;
  *frame = v8;
LABEL_28:
  CF<__CVBuffer *>::~CF(&pixelBufferOut);
  return v9;
}

@end