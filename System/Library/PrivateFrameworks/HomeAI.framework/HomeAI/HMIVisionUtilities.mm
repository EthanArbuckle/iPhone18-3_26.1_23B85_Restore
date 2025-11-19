@interface HMIVisionUtilities
+ (BOOL)isPixelFormatCompressed:(unsigned int)a3;
+ (CGRect)applyPadding:(CGRect)a3 withOriginalSize:(CGSize)a4 padding:(CGSize)a5;
+ (CGRect)imposeMinSizeFor:(CGRect)a3 withOriginalSize:(CGSize)a4 minCrop:(CGSize)a5;
+ (CGRect)maintainAspectRatio:(CGRect)a3 originalSize:(CGSize)a4 ratioThreshold:(float)a5;
+ (__CVBuffer)createPixelBufferFromImageData:(id)a3 error:(id *)a4;
+ (__CVBuffer)createPixelBufferFromJPEGData:(id)a3 error:(id *)a4;
+ (__CVBuffer)createPixelBufferFromJPEGDataProvider:(CGDataProvider *)a3 error:(id *)a4;
+ (__CVBuffer)createPixelBufferFromJPEGPath:(id)a3 error:(id *)a4;
+ (__CVBuffer)createPixelBufferWithSize:(CGSize)a3 pixelFormat:(unsigned int)a4 useIOSurface:(BOOL)a5;
+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)a3 crop:(CGRect)a4 error:(id *)a5;
+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)a3 crop:(CGRect)a4 options:(int64_t)a5 error:(id *)a6;
+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)a3 size:(CGSize)a4 error:(id *)a5;
+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)a3 crop:(CGRect)a4 size:(CGSize)a5 pixelFormat:(unsigned int)a6 options:(int64_t)a7 error:(id *)a8;
+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)a3 pixelFormat:(unsigned int)a4 options:(int64_t)a5 error:(id *)a6;
+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)a3 rotationAngle:(float)a4 crop:(CGRect)a5 size:(CGSize)a6 precision:(unint64_t)a7 error:(id *)a8;
+ (id)createJPEGDataFromPixelBuffer:(__CVBuffer *)a3 scale:(float)a4 encodeQuality:(float)a5 error:(id *)a6;
+ (void)releaseCachedVisionResources;
@end

@implementation HMIVisionUtilities

+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)a3 crop:(CGRect)a4 error:(id *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);

  return [a1 transferPixelBuffer:a3 crop:PixelFormatType size:0 pixelFormat:a5 options:x error:y, width, height, width, height];
}

+ (__CVBuffer)cropPixelBuffer:(__CVBuffer *)a3 crop:(CGRect)a4 options:(int64_t)a5 error:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);

  return [a1 transferPixelBuffer:a3 crop:PixelFormatType size:a5 pixelFormat:a6 options:x error:y, width, height, width, height];
}

+ (__CVBuffer)resizePixelBuffer:(__CVBuffer *)a3 size:(CGSize)a4 error:(id *)a5
{
  height = a4.height;
  width = a4.width;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v11 = *MEMORY[0x277CBF398];
  v12 = *(MEMORY[0x277CBF398] + 8);
  v13 = *(MEMORY[0x277CBF398] + 16);
  v14 = *(MEMORY[0x277CBF398] + 24);

  return [a1 transferPixelBuffer:a3 crop:PixelFormatType size:0 pixelFormat:a5 options:v11 error:v12, v13, v14, width, height];
}

+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)a3 pixelFormat:(unsigned int)a4 options:(int64_t)a5 error:(id *)a6
{
  v8 = *&a4;
  Size = HMICVPixelBufferGetSize(a3);
  v13 = v12;
  v14 = *MEMORY[0x277CBF398];
  v15 = *(MEMORY[0x277CBF398] + 8);
  v16 = *(MEMORY[0x277CBF398] + 16);
  v17 = *(MEMORY[0x277CBF398] + 24);

  return [a1 transferPixelBuffer:a3 crop:v8 size:a5 pixelFormat:a6 options:v14 error:v15, v16, v17, Size, v13];
}

+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)a3 crop:(CGRect)a4 size:(CGSize)a5 pixelFormat:(unsigned int)a6 options:(int64_t)a7 error:(id *)a8
{
  v10 = *&a6;
  height = a5.height;
  width = a5.width;
  v13 = a4.size.height;
  v14 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  v20 = (a7 & 1) != 0 || [HMIVisionUtilities isPixelFormatCompressed:v10];
  Size = HMICVPixelBufferGetSize(v17);
  v23 = v22;
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = v14;
  v61.size.height = v13;
  if (CGRectIsNull(v61))
  {
    v24 = 0;
  }

  else
  {
    v64.origin.x = HMICGRectMakeWithSize();
    v64.origin.y = v25;
    v64.size.width = v26;
    v64.size.height = v27;
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = v14;
    v62.size.height = v13;
    v24 = !CGRectEqualToRect(v62, v64);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(v17);
  v29 = PixelFormatType;
  if (v24 || PixelFormatType != v10 || Size != width || v23 != height || v20 != (IOSurface != 0))
  {
    pixelTransferSessionOut = 0;
    v60 = [[HMISignpost alloc] initWithName:@"transferPixelBuffer"];
    if ((a7 & 8) != 0)
    {
      v31 = width * 2.1;
      v32 = height * 2.1;
      if (v24)
      {
        if (v14 <= v31 || v13 <= v32)
        {
          v30 = 0;
          v24 = 1;
          goto LABEL_30;
        }
      }

      else if (Size <= v31 || v23 <= v32)
      {
        v30 = 0;
        v24 = 0;
        goto LABEL_30;
      }

      v35 = [HMIVisionUtilities transferPixelBuffer:v17 crop:v29 size:a7 & 0xFFFFFFFFFFFFFFF7 | (IOSurface != 0) pixelFormat:a8 options:x error:y, v14, v13, width + width, height + height];
      v24 = 0;
      if (!v35)
      {
        v36 = 0;
        goto LABEL_39;
      }

      v30 = 1;
      v17 = v35;
    }

    else
    {
      v30 = 0;
    }

LABEL_30:
    v36 = [a1 createPixelBufferWithSize:v10 pixelFormat:1 useIOSurface:width, height];
    if (v36)
    {
      v37 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
      if (v37)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"VTPixelTransferSessionCreate failed. Error %d", v37];
        v39 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1022 description:v38];
        v40 = v39;
        if (a8)
        {
          v41 = v39;
          *a8 = v40;
        }
      }

      else
      {
        if (!v24)
        {
          goto LABEL_75;
        }

        v63.origin.x = x;
        v63.origin.y = y;
        v63.size.width = v14;
        v63.size.height = v13;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v63);
        v47 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B8], DictionaryRepresentation);
        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        if (v47)
        {
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"VTSessionSetProperty failed. Error %d", v47];
          v48 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1022 description:v38];
          v40 = v48;
          if (a8)
          {
            v49 = v48;
            *a8 = v40;
          }
        }

        else
        {
LABEL_75:
          if ((a7 & 2) != 0 && (v50 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2880], *MEMORY[0x277CBED28]), v50))
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"VTSessionSetProperty failed. Error %d", v50];
            v51 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1022 description:v38];
            v40 = v51;
            if (a8)
            {
              v52 = v51;
              *a8 = v40;
            }
          }

          else if ((a7 & 4) != 0 && (v53 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2888], *MEMORY[0x277CBED28]), v53))
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"VTSessionSetProperty failed. Error %d", v53];
            v54 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1022 description:v38];
            v40 = v54;
            if (a8)
            {
              v55 = v54;
              *a8 = v40;
            }
          }

          else
          {
            CVPixelBufferLockBaseAddress(v17, 1uLL);
            v56 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v17, v36);
            CVPixelBufferUnlockBaseAddress(v17, 1uLL);
            if (!v56)
            {
              VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
              if (pixelTransferSessionOut)
              {
                CFRelease(pixelTransferSessionOut);
              }

              if (v30)
              {
                CVPixelBufferRelease(v17);
              }

              goto LABEL_45;
            }

            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"VTPixelTransferSessionTransferImage failed. Error %d", v56];
            v57 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1022 description:v38];
            v40 = v57;
            if (a8)
            {
              v58 = v57;
              *a8 = v40;
            }
          }
        }
      }

      HMIErrorLogC(v40);
    }

    else
    {
      v42 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1001];
      v43 = v42;
      if (a8)
      {
        v44 = v42;
        *a8 = v43;
      }

      HMIErrorLogC(v43);

      v36 = 0;
    }

    v24 = v30;
LABEL_39:
    CVPixelBufferRelease(v36);
    if (v24)
    {
      CVPixelBufferRelease(v17);
    }

    if (pixelTransferSessionOut)
    {
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }
    }

    v36 = 0;
LABEL_45:
    __HMISignpostScopeLeave(&v60);

    return v36;
  }

  CVPixelBufferRetain(v17);
  return v17;
}

+ (id)createJPEGDataFromPixelBuffer:(__CVBuffer *)a3 scale:(float)a4 encodeQuality:(float)a5 error:(id *)a6
{
  v46[2] = *MEMORY[0x277D85DE8];
  theBuffer = 0;
  v38 = [[HMISignpost alloc] initWithName:@"JPEGDataFromPixelBuffer"];
  cf = 0;
  v9 = [MEMORY[0x277CBEB28] data];
  v10 = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277CF6D60];
  v45[0] = *MEMORY[0x277CF6D68];
  v45[1] = v11;
  v46[0] = MEMORY[0x277CBEC38];
  v46[1] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  if (CMPhotoCompressionSessionCreate())
  {
    v13 = 0;
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  v14 = *MEMORY[0x277CF6CD8];
  v43[0] = *MEMORY[0x277CF6CE0];
  v43[1] = v14;
  v44[0] = &unk_284074F28;
  v44[1] = &unk_284074F40;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  if (CMPhotoCompressionSessionOpenEmptyContainer())
  {
    goto LABEL_4;
  }

  Size = HMICVPixelBufferGetSize(a3);
  v19 = v18;
  if (a4 > 0.0 && a4 < 1.0)
  {
    CGAffineTransformMakeScale(&v35, a4, a4);
    v20 = v19 * v35.c;
    v19 = v19 * v35.d + v35.b * Size;
    Size = v20 + v35.a * Size;
  }

  if (Size <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = Size;
  }

  v22 = MEMORY[0x277CBEB38];
  v23 = *MEMORY[0x277CF6D08];
  v41[0] = *MEMORY[0x277CF6CF0];
  v41[1] = v23;
  v42[0] = &unk_284074F58;
  v42[1] = v10;
  v41[2] = *MEMORY[0x277CF6D20];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
  v42[2] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v15 = [v22 dictionaryWithDictionary:v25];

  v26 = *MEMORY[0x277CF6D38];
  if (a5 <= 0.0 || a5 > 1.0)
  {
    [v15 setObject:&unk_284074F88 forKeyedSubscript:v26];
    [v15 setObject:&unk_284074F28 forKeyedSubscript:*MEMORY[0x277CF6D30]];
  }

  else
  {
    [v15 setObject:&unk_284074F70 forKeyedSubscript:v26];
    v39 = *MEMORY[0x277CF6DD8];
    *&v27 = a5;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
    v40 = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [v15 setObject:v29 forKeyedSubscript:*MEMORY[0x277CF6D30]];
  }

  if (!CMPhotoCompressionSessionAddImage() || ([MEMORY[0x277CBEB38] dictionaryWithDictionary:{v15, 0}], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "setObject:forKey:", MEMORY[0x277CBEC38], *MEMORY[0x277CF6D28]), v31 = CMPhotoCompressionSessionAddImage(), v30, !v31))
  {
    if (!CMPhotoCompressionSessionCloseContainerAndCopyBacking())
    {
      v32 = theBuffer;
      DataLength = CMBlockBufferGetDataLength(theBuffer);
      v34 = malloc_type_malloc(DataLength, 0x9C4C29C1uLL);
      CMBlockBufferCopyDataBytes(v32, 0, DataLength, v34);
      CFRelease(v32);
      [v9 appendBytes:v34 length:DataLength];
      free(v34);
    }
  }

LABEL_5:
  CMPhotoCompressionSessionDiscardCaches();
  CMPhotoCompressionSessionReleaseHardwareResources();
  CMPhotoCompressionSessionInvalidate();
  if (cf)
  {
    CFRelease(cf);
  }

  __HMISignpostScopeLeave(&v38);

  return v9;
}

+ (__CVBuffer)createPixelBufferFromJPEGDataProvider:(CGDataProvider *)a3 error:(id *)a4
{
  if (!a3 || (v6 = CGImageCreateWithJPEGDataProvider(a3, 0, 0, kCGRenderingIntentDefault)) == 0)
  {
    v19 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000];
    v20 = v19;
    if (a4)
    {
      v21 = v19;
      *a4 = v20;
    }

    HMIErrorLogC(v20);

    v18 = 0;
    v11 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v7);
  ColorSpace = CGImageGetColorSpace(v7);
  v11 = CGColorSpaceRetain(ColorSpace);
  v12 = Width;
  v13 = [a1 createPixelBufferWithSize:1111970369 pixelFormat:0 useIOSurface:Width, Height];
  if (!v13)
  {
    v23 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000];
    v24 = v23;
    if (a4)
    {
      v25 = v23;
      *a4 = v24;
    }

    HMIErrorLogC(v24);

    v18 = 0;
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  CVPixelBufferLockBaseAddress(v13, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v14);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v14);
  v17 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, v11, 0x2002u);
  if (v17)
  {
    v18 = v17;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = v12;
    v29.size.height = Height;
    CGContextDrawImage(v17, v29, v7);
    CVPixelBufferUnlockBaseAddress(v14, 0);
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(v14, 0);
    v26 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000];
    v27 = v26;
    if (a4)
    {
      v28 = v26;
      *a4 = v27;
    }

    HMIErrorLogC(v27);

    v18 = 0;
  }

LABEL_10:
  CGColorSpaceRelease(v11);
  CGContextRelease(v18);
  CGImageRelease(v7);
  return v14;
}

+ (__CVBuffer)createPixelBufferFromJPEGPath:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = CGDataProviderCreateWithFilename([a3 UTF8String]);
  if (v8)
  {
    v9 = [a1 createPixelBufferFromJPEGDataProvider:v8 error:a4];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000];
    v11 = v10;
    if (a4)
    {
      v12 = v10;
      *a4 = v11;
    }

    HMIErrorLogC(v11);

    v9 = 0;
  }

  CGDataProviderRelease(v8);
  return v9;
}

+ (__CVBuffer)createPixelBufferFromJPEGData:(id)a3 error:(id *)a4
{
  v6 = CGDataProviderCreateWithCFData(a3);
  if (v6)
  {
    v7 = [a1 createPixelBufferFromJPEGDataProvider:v6 error:a4];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000];
    v9 = v8;
    if (a4)
    {
      v10 = v8;
      *a4 = v9;
    }

    HMIErrorLogC(v9);

    v7 = 0;
  }

  CGDataProviderRelease(v6);
  return v7;
}

+ (__CVBuffer)createPixelBufferFromImageData:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBF758] imageWithData:a3];
  [v5 extent];
  v8 = [HMIVisionUtilities createPixelBufferWithSize:1111970369 pixelFormat:0 useIOSurface:v6, v7];
  v9 = v8;
  if (v8)
  {
    CVPixelBufferLockBaseAddress(v8, 0);
    v10 = [MEMORY[0x277CBF740] contextWithOptions:0];
    [v10 render:v5 toCVPixelBuffer:v9];
    CVPixelBufferUnlockBaseAddress(v9, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1001];
    v10 = v11;
    if (a4)
    {
      v12 = v11;
      *a4 = v10;
    }

    HMIErrorLogC(v10);
  }

  return v9;
}

+ (__CVBuffer)createPixelBufferWithSize:(CGSize)a3 pixelFormat:(unsigned int)a4 useIOSurface:(BOOL)a5
{
  height = a3.height;
  width = a3.width;
  v19 = *MEMORY[0x277D85DE8];
  if (a5)
  {
LABEL_6:
    v16 = *MEMORY[0x277CC4DE8];
    v17 = MEMORY[0x277CBEC10];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    goto LABEL_8;
  }

  if ([HMIVisionUtilities isPixelFormatCompressed:*&a4])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Creating pixel buffer with IOSurface because the pixel format is compressed.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_6;
  }

  v13 = 0;
LABEL_8:
  *buf = 0;
  if (CVPixelBufferCreate(0, width, height, a4, v13, buf))
  {
    v14 = 0;
  }

  else
  {
    v14 = *buf;
  }

  return v14;
}

+ (CGRect)applyPadding:(CGRect)a3 withOriginalSize:(CGSize)a4 padding:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v9 = a3.size.height;
  v10 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeScale(&v31, a4.width, a4.height);
  v30 = v31;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = v10;
  v32.size.height = v9;
  v33 = CGRectApplyAffineTransform(v32, &v30);
  v13 = v33.origin.y;
  v14 = v33.origin.x;
  v15 = v33.origin.x + v33.size.width;
  v16 = v33.origin.y + v33.size.height;
  v17 = width / 2;
  if (v17 >= v33.origin.x)
  {
    v17 = v33.origin.x;
  }

  v18 = height / 2;
  if (v18 >= v13)
  {
    v18 = v33.origin.y;
  }

  v19 = width + v15 - v17;
  if (v8 < v19)
  {
    v19 = v8;
  }

  v20 = v19;
  if (v7 >= height + v16 - v18)
  {
    v21 = height + v16 - v18;
  }

  else
  {
    v21 = v7;
  }

  v22 = (width - (v20 - v15));
  v23 = (height - (v21 - v16));
  if (v17 > v22)
  {
    v22 = v17;
  }

  if (v18 > v23)
  {
    v23 = v18;
  }

  v24 = (v14 - v22) & ~((v14 - v22) >> 31);
  v25 = v24;
  v26 = (v13 - v23) & ~((v13 - v23) >> 31);
  v27 = v26;
  v28 = (v20 - v24);
  v29 = (v21 - v26);
  CGAffineTransformMakeScale(&v30, 1.0 / v8, 1.0 / v7);
  v31 = v30;
  v34.origin.x = v25;
  v34.origin.y = v27;
  v34.size.width = v28;
  v34.size.height = v29;
  return CGRectApplyAffineTransform(v34, &v30);
}

+ (CGRect)imposeMinSizeFor:(CGRect)a3 withOriginalSize:(CGSize)a4 minCrop:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v9 = a3.size.height;
  v10 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v26, 0, sizeof(v26));
  CGAffineTransformMakeScale(&v26, a4.width, a4.height);
  v25 = v26;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = v10;
  v27.size.height = v9;
  v28 = CGRectApplyAffineTransform(v27, &v25);
  v14 = v28.size.height;
  if (width <= v28.size.width)
  {
    v15 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    v15 = width - v28.size.width;
  }

  if (height <= v14)
  {
    v16 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    v16 = height - v14;
  }

  if (v16 >= 0.0 || v15 >= 0.0)
  {
    [a1 applyPadding:x withOriginalSize:y padding:{v10, v9, v8, v7, v15}];
    x = v17;
    y = v18;
    v10 = v19;
    v9 = v20;
  }

  v21 = x;
  v22 = y;
  v23 = v10;
  v24 = v9;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (CGRect)maintainAspectRatio:(CGRect)a3 originalSize:(CGSize)a4 ratioThreshold:(float)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.size.height;
  v9 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeScale(&v28, a4.width, a4.height);
  v27 = v28;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = v9;
  v29.size.height = v8;
  v30 = CGRectApplyAffineTransform(v29, &v27);
  v13 = v30.size.width;
  v14 = v30.size.height;
  if (v13 <= v14)
  {
    v18 = v14 / v13;
    if (v18 > a5)
    {
      v17 = (((v18 / a5) + -1.0) * v13);
      v16 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = v13 / v14;
    if (v15 > a5)
    {
      v16 = (((v15 / a5) + -1.0) * v14);
      v17 = 0.0;
LABEL_6:
      [a1 applyPadding:x withOriginalSize:y padding:{v9, v8, width, height, v17, v16}];
      x = v19;
      y = v20;
      v9 = v21;
      v8 = v22;
    }
  }

  v23 = x;
  v24 = y;
  v25 = v9;
  v26 = v8;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (__CVBuffer)transferPixelBuffer:(__CVBuffer *)a3 rotationAngle:(float)a4 crop:(CGRect)a5 size:(CGSize)a6 precision:(unint64_t)a7 error:(id *)a8
{
  height = a6.height;
  width = a6.width;
  v12 = a5.size.height;
  v13 = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  if (CGRectIsNull(a5) || (v49.origin.x = x, v49.origin.y = y, v49.size.width = v13, v49.size.height = v12, CGRectIsInfinite(v49)) || (v50.origin.x = x, v50.origin.y = y, v50.size.width = v13, v50.size.height = v12, CGRectIsEmpty(v50)))
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = @"Invalid crop for affine transform";
LABEL_5:
    v21 = [v19 stringWithFormat:v20];
    v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:v21];
    v23 = v22;
    if (a8)
    {
      v24 = v22;
      *a8 = v23;
    }

    HMIErrorLogC(v23);

    return 0;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1111970369)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = @"Error in pixelbuffer format for affine transform";
    goto LABEL_5;
  }

  v27 = [a1 createPixelBufferWithSize:1111970369 pixelFormat:1 useIOSurface:width, height];
  if (!v27)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = @"Error generating pixelbuffer for affine transform";
    goto LABEL_5;
  }

  v25 = v27;
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(v25, 0);
  v48[0] = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
  v48[1] = CVPixelBufferGetHeight(a3);
  v48[2] = CVPixelBufferGetWidth(a3);
  v48[3] = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
  v47[0] = CVPixelBufferGetBaseAddressOfPlane(v25, 0);
  v47[1] = CVPixelBufferGetHeight(v25);
  v47[2] = CVPixelBufferGetWidth(v25);
  v47[3] = CVPixelBufferGetBytesPerRowOfPlane(v25, 0);
  v38 = CVPixelBufferGetHeight(a3);
  memset(&v46, 0, sizeof(v46));
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v13;
  v51.size.height = v12;
  v28 = -CGRectGetMidX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = v13;
  v52.size.height = v12;
  MidY = CGRectGetMidY(v52);
  CGAffineTransformMakeTranslation(&v46, v28, MidY - v38);
  memset(&v45, 0, sizeof(v45));
  CGAffineTransformMakeRotation(&v45, a4);
  memset(&v44, 0, sizeof(v44));
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = v13;
  v53.size.height = v12;
  v30 = width / CGRectGetWidth(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = v13;
  v54.size.height = v12;
  v31 = CGRectGetHeight(v54);
  CGAffineTransformMakeScale(&v44, v30, height / v31);
  memset(&v43, 0, sizeof(v43));
  CGAffineTransformMakeTranslation(&v43, width * 0.5, height * 0.5);
  t1 = v44;
  memset(&v42, 0, sizeof(v42));
  t2 = v43;
  CGAffineTransformConcat(&v40, &t1, &t2);
  t2 = v45;
  CGAffineTransformConcat(&t1, &t2, &v40);
  v40 = v46;
  CGAffineTransformConcat(&v42, &v40, &t1);
  LODWORD(t1.a) = 0;
  if (a7 == 1)
  {
    v32 = 36;
  }

  else
  {
    v32 = 4;
  }

  v33 = MEMORY[0x2318CBCB0](v48, v47, 0, &v42, &t1, v32);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  CVPixelBufferUnlockBaseAddress(v25, 0);
  if (v33)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error applying affine transform"];
    v35 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:v34];
    v36 = v35;
    if (a8)
    {
      v37 = v35;
      *a8 = v36;
    }

    HMIErrorLogC(v36);

    CVPixelBufferRelease(v25);
    return 0;
  }

  return v25;
}

+ (void)releaseCachedVisionResources
{
  v2 = [MEMORY[0x277CE2E18] globalSession];
  [v2 releaseCachedResources];
}

+ (BOOL)isPixelFormatCompressed:(unsigned int)a3
{
  v3 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC4F18]];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end