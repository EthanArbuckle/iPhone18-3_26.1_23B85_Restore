@interface CAMBurstYUVImage
- (CAMBurstYUVImage)initWithCGImage:(CGImage *)image maxDimension:(int)dimension;
- (CAMBurstYUVImage)initWithCIImage:(id)image ctx:(id)ctx maxDimension:(int)dimension;
- (CAMBurstYUVImage)initWithIOSurface:(__IOSurface *)surface maxDimension:(int)dimension;
- (__CVBuffer)pixelBuffer;
- (void)convertRGBAToYUV420:(char *)v420 rgbaBytesPerRow:(int)row;
- (void)dealloc;
@end

@implementation CAMBurstYUVImage

- (void)convertRGBAToYUV420:(char *)v420 rgbaBytesPerRow:(int)row
{
  v7 = malloc_type_malloc((self->height + (self->height >> 1)) * self->bytesPerRow, 0x7267E243uLL);
  height = self->height;
  bytesPerRow = self->bytesPerRow;
  v10 = &v7[height * bytesPerRow];
  self->Ybuffer = v7;
  self->Cbuffer = v10;
  if (height >= 1)
  {
    v11 = 0;
    rowCopy = row;
    v13 = row + 4;
    v14 = row + 1;
    v15 = row + 5;
    v16 = row + 2;
    v17 = row + 6;
    width = self->width;
    v19 = v420 + 4;
    v45 = 2 * row;
    v20.i64[0] = 0xFF000000FFLL;
    v20.i64[1] = 0xFF000000FFLL;
    do
    {
      if (width >= 1)
      {
        v46 = v11;
        v21 = 0;
        v22 = v19;
        v47 = v10;
        v48 = v7;
        v23 = v7;
        v24 = v10;
        do
        {
          v25 = *(v22 - 4);
          v26 = *v22;
          v27 = v22[rowCopy - 4];
          v28 = *(v22 - 3);
          v29 = v22[1];
          v30 = v22[v14 - 4];
          v31 = *(v22 - 2);
          v32 = v22[2];
          v33.i32[0] = (301 * v28 + 153 * v25 + 58 * v31 + 256) >> 9;
          v34.i32[0] = ((-170 * v28 - 86 * v25 + (v31 << 8) + 256) >> 9) + 128;
          v35 = v22[v16 - 4];
          v33.i32[1] = (301 * v29 + 153 * v26 + 58 * v32 + 256) >> 9;
          v34.i32[1] = ((-170 * v29 - 86 * v26 + (v32 << 8) + 256) >> 9) + 128;
          v34.i32[2] = ((-170 * v30 - 86 * v27 + (v35 << 8) + 256) >> 9) + 128;
          v36 = v22[v13 - 4];
          v37 = -214 * v28 + (v25 << 8);
          v38 = v22[v15 - 4];
          v39 = v37 - 42 * v31;
          v33.i32[2] = (301 * v30 + 153 * v27 + 58 * v35 + 256) >> 9;
          v40 = v22[v17 - 4];
          v34.i32[3] = ((-170 * v38 - 86 * v36 + (v40 << 8) + 256) >> 9) + 128;
          v41.i32[0] = ((v39 + 256) >> 9) + 128;
          v41.i32[1] = ((-214 * v29 + (v26 << 8) - 42 * v32 + 256) >> 9) + 128;
          v41.i32[2] = ((-214 * v30 + (v27 << 8) - 42 * v35 + 256) >> 9) + 128;
          v33.i32[3] = (301 * v38 + 153 * v36 + 58 * v40 + 256) >> 9;
          v41.i32[3] = ((-214 * v38 + (v36 << 8) - 42 * v40 + 256) >> 9) + 128;
          v42 = vminq_u32(v33, v20);
          *v23 = v42.i8[0];
          v23[1] = v42.i8[4];
          v43 = vminq_s32(vmaxq_s32(v34, 0), v20);
          v23[self->bytesPerRow] = v42.i8[8];
          v44 = vminq_s32(vmaxq_s32(v41, 0), v20);
          v23[self->bytesPerRow + 1] = v42.i8[12];
          *v24 = (v43.i32[0] + v43.i32[1] + v43.i32[2] + v43.i32[3] + 2) >> 2;
          v24[1] = (v44.i32[0] + v44.i32[1] + v44.i32[2] + v44.i32[3] + 2) >> 2;
          v21 += 2;
          v23 += 2;
          v24 += 2;
          width = self->width;
          v22 += 8;
        }

        while (v21 < width);
        height = self->height;
        bytesPerRow = self->bytesPerRow;
        v10 = v47;
        v7 = v48;
        v11 = v46;
      }

      v11 += 2;
      v7 += 2 * bytesPerRow;
      v10 += bytesPerRow;
      v19 += v45;
    }

    while (v11 < height);
  }
}

- (CAMBurstYUVImage)initWithCGImage:(CGImage *)image maxDimension:(int)dimension
{
  self->dataPtr = 0;
  self->pixelBuffer = 0;
  self->ioSurf = 0;
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BurstLoggingMessage("initWithCGImage: %dx%d\n", Width, Height);
  if (Width > dimension || Height > dimension)
  {
    dimensionCopy = dimension;
    if (Width <= Height)
    {
      v11 = dimensionCopy / Height;
      v12 = (v11 * Width);
      v9 = 28;
      v10 = 24;
      dimensionCopy2 = dimension;
      dimensionCopy3 = v12;
    }

    else
    {
      v11 = dimensionCopy / Width;
      v12 = (v11 * Height);
      v9 = 24;
      v10 = 28;
      dimensionCopy2 = v12;
      dimensionCopy3 = dimension;
    }
  }

  else
  {
    v9 = 28;
    v10 = 24;
    v11 = 1.0;
    v12 = Width;
    dimension = Height;
    dimensionCopy2 = Height;
    dimensionCopy3 = Width;
  }

  *(&self->super.isa + v10) = v12;
  *(&self->super.isa + v9) = dimension;
  v16 = (dimensionCopy3 + 3) & 0xFFFFFFFC;
  self->bytesPerRow = v16;
  v17 = malloc_type_malloc((4 * dimensionCopy2 * v16), 0xD91D3657uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v19 = CGBitmapContextCreate(v17, self->width, self->height, 8uLL, 4 * self->bytesPerRow, DeviceRGB, 5u);
  if (v19)
  {
    v20 = v19;
    CGContextScaleCTM(v19, v11, v11);
    v22.size.width = Width;
    v22.size.height = Height;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    CGContextDrawImage(v20, v22, image);
    CGContextRelease(v20);
  }

  CGColorSpaceRelease(DeviceRGB);
  [(CAMBurstYUVImage *)self convertRGBAToYUV420:v17 rgbaBytesPerRow:(4 * self->bytesPerRow)];
  free(v17);
  return self;
}

- (CAMBurstYUVImage)initWithCIImage:(id)image ctx:(id)ctx maxDimension:(int)dimension
{
  [image extent];
  v10 = v9;
  v12 = v11;
  v13 = v7;
  v14 = v8;
  v15 = v7;
  dimensionCopy = v8;
  v17 = 24;
  v18 = ((dimension / v8) * v7);
  v19 = 28;
  v20 = 24;
  if (v7 > v8)
  {
    v20 = 28;
  }

  if (v15 > dimensionCopy)
  {
    v18 = ((dimension / v7) * v8);
    v19 = 24;
  }

  v21 = v15 <= dimension && dimensionCopy <= dimension;
  if (!v21)
  {
    v17 = v20;
    v15 = v18;
  }

  *(&self->super.isa + v17) = v15;
  v22 = 28;
  if (!v21)
  {
    v22 = v19;
    dimensionCopy = dimension;
  }

  *(&self->super.isa + v22) = dimensionCopy;
  self->pixelBuffer = 0;
  self->ioSurf = 0;
  self->dataPtr = 0;
  v23 = MEMORY[0x1E695E9D8];
  v24 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v26 = CFDictionaryCreateMutable(0, 0, v23, v24);
  v27 = CFDictionaryCreateMutable(0, 0, v23, v24);
  valuePtr = 875704422;
  v28 = self->width >> 1;
  v45 = self->height >> 1;
  v46 = v28;
  v44 = 2;
  v29 = CFNumberCreate(0, kCFNumberIntType, &self->width);
  v30 = CFNumberCreate(0, kCFNumberIntType, &self->height);
  v31 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberIntType, &v46);
  v33 = CFNumberCreate(0, kCFNumberIntType, &v45);
  v34 = CFNumberCreate(0, kCFNumberIntType, &v44);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D130], v29);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696CF58], v30);
  v43 = v31;
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696CFC0], v31);
  v35 = *MEMORY[0x1E696D0C8];
  cf = v29;
  CFDictionaryAddValue(v26, *MEMORY[0x1E696D0C8], v29);
  v36 = *MEMORY[0x1E696D090];
  CFDictionaryAddValue(v26, *MEMORY[0x1E696D090], v30);
  CFDictionaryAddValue(v27, v35, v32);
  CFDictionaryAddValue(v27, v36, v33);
  CFDictionaryAddValue(v27, *MEMORY[0x1E696CFE0], v34);
  v37 = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v37, v26);
  CFArrayAppendValue(v37, v27);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D0A8], v37);
  v38 = IOSurfaceCreate(Mutable);
  self->ioSurf = v38;
  if (v38)
  {
    [ctx render:image toIOSurface:v38 bounds:0 colorSpace:{v10, v12, v13, v14}];
    IOSurfaceLock(self->ioSurf, 0, 0);
    self->width = IOSurfaceGetWidth(self->ioSurf);
    self->height = IOSurfaceGetHeight(self->ioSurf);
    self->bytesPerRow = IOSurfaceGetBytesPerRow(self->ioSurf);
    self->Ybuffer = IOSurfaceGetBaseAddressOfPlane(self->ioSurf, 0);
    self->Cbuffer = IOSurfaceGetBaseAddressOfPlane(self->ioSurf, 1uLL);
  }

  CFRelease(cf);
  CFRelease(v30);
  CFRelease(v43);
  CFRelease(v32);
  CFRelease(v33);
  CFRelease(v34);
  CFRelease(Mutable);
  CFRelease(v26);
  CFRelease(v27);
  CFRelease(v37);
  return self;
}

- (CAMBurstYUVImage)initWithIOSurface:(__IOSurface *)surface maxDimension:(int)dimension
{
  Width = IOSurfaceGetWidth(surface);
  Height = IOSurfaceGetHeight(surface);
  v9 = Height;
  if (Width > dimension || Height > dimension)
  {
    dimensionCopy = dimension;
    if (Width <= Height)
    {
      v12 = ((dimensionCopy / Height) * Width);
      v10 = 28;
      v11 = 24;
    }

    else
    {
      v12 = ((dimensionCopy / Width) * Height);
      v10 = 24;
      v11 = 28;
    }
  }

  else
  {
    v10 = 28;
    v11 = 24;
    v12 = Width;
    dimension = Height;
  }

  *(&self->super.isa + v11) = v12;
  *(&self->super.isa + v10) = dimension;
  self->pixelBuffer = 0;
  self->ioSurf = 0;
  self->dataPtr = 0;
  PixelFormat = IOSurfaceGetPixelFormat(surface);
  if (self->width == Width && self->height == v9 && PixelFormat == 875704422)
  {
    self->ioSurf = surface;
    CFRetain(surface);
    IOSurfaceLock(self->ioSurf, 1u, 0);
    self->width = IOSurfaceGetWidth(self->ioSurf);
    self->height = IOSurfaceGetHeight(self->ioSurf);
    self->bytesPerRow = IOSurfaceGetBytesPerRowOfPlane(self->ioSurf, 0);
    self->Ybuffer = IOSurfaceGetBaseAddressOfPlane(self->ioSurf, 0);
    self->Cbuffer = IOSurfaceGetBaseAddressOfPlane(self->ioSurf, 1uLL);
  }

  else
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(0, surface, 0, &pixelBufferOut);
    pixelBuffer = 0;
    v15 = MEMORY[0x1E695E9D8];
    v16 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v18 = CFDictionaryCreateMutable(0, 0, v15, v16);
    valuePtr = 768;
    v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v18, *MEMORY[0x1E696CE60], v19);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E69660D8], v18);
    CVPixelBufferCreate(0, self->width, self->height, 0x34323066u, Mutable, &pixelBuffer);
    CFRelease(Mutable);
    CFRelease(v18);
    CFRelease(v19);
    pixelTransferSessionOut = 0;
    VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
    v20 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, pixelBuffer);
    if (v20)
    {
      NSLog(&cfstr_ErrorWithVtpix.isa, v20);
    }

    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    self->width = CVPixelBufferGetWidth(pixelBuffer);
    self->height = CVPixelBufferGetHeight(pixelBuffer);
    self->bytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    self->Ybuffer = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    self->Cbuffer = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
    self->pixelBuffer = pixelBuffer;
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    CFRelease(pixelBufferOut);
  }

  return self;
}

- (void)dealloc
{
  dataPtr = self->dataPtr;
  if (dataPtr)
  {
    CFRelease(dataPtr);
  }

  pixelBuffer = self->pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    CVPixelBufferRelease(self->pixelBuffer);
    self->Ybuffer = 0;
  }

  ioSurf = self->ioSurf;
  if (ioSurf)
  {
    IOSurfaceUnlock(ioSurf, 1u, 0);
    CFRelease(self->ioSurf);
    self->Ybuffer = 0;
  }

  else
  {
    Ybuffer = self->Ybuffer;
    if (Ybuffer)
    {
      free(Ybuffer);
    }
  }

  v7.receiver = self;
  v7.super_class = CAMBurstYUVImage;
  [(CAMBurstYUVImage *)&v7 dealloc];
}

- (__CVBuffer)pixelBuffer
{
  result = self->pixelBuffer;
  if (!result)
  {
    if (self->ioSurf)
    {
      pixelBufferOut = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E69662D0], *MEMORY[0x1E695E4D0]);
      CVPixelBufferCreateWithIOSurface(0, self->ioSurf, Mutable, &pixelBufferOut);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return pixelBufferOut;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end