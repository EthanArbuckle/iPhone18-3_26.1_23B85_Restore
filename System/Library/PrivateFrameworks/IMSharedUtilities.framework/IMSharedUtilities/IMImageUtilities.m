@interface IMImageUtilities
+ (BOOL)imageIsAnimatedSequenceAtFileURL:(id)a3;
+ (BOOL)imageIsSubjectLift:(CGImage *)a3;
+ (BOOL)isCroppingAvoidanceEnabled;
+ (BOOL)persistCPBitmapWithImage:(CGImage *)a3 url:(id)a4;
+ (BOOL)persistPreviewToDiskCache:(CGImage *)a3 previewURL:(id)a4 error:(id *)a5;
+ (BOOL)shouldCropImageOfSize:(CGSize)a3 maximumSizeInPx:(CGSize)a4 minimumSizeInPx:(CGSize)a5;
+ (CGContext)_newBitmapContextWithTargetSize:(CGSize)a3;
+ (CGImage)_newUncroppedPreviewImageFromImage:(CGImage *)a3 maximumSizeInPx:(CGSize)a4;
+ (CGImage)newThumbnailForTargetSize:(CGSize)a3 imageSize:(CGSize)a4 imageSource:(CGImageSource *)a5 atIndex:(unint64_t)a6 mode:(int64_t)a7 scale:(double)a8;
+ (CGImage)newUncroppedPreviewImageFromImage:(CGImage *)a3 isScreenshot:(BOOL)a4 maximumSizeInPx:(CGSize)a5 minimumSizeInPx:(CGSize)a6;
+ (CGSize)imageRefPxSize:(CGImage *)a3;
+ (CGSize)imageSourcePxSize:(CGImageSource *)a3;
+ (CGSize)uncroppedPreviewImageSizeFromImageSizeInPx:(CGSize)a3 maximumSizeInPx:(CGSize)a4;
+ (double)scaleFactorForThumbnailWithSize:(CGSize)a3 constraints:(IMPreviewConstraints *)a4 targetPxSize:(CGSize)a5 shouldScaleUpPreview:(BOOL)a6 maxUpScale:(double)a7;
+ (void)sampleImageEdges:(char *)a3 usingRect:(CGRect)a4 forMostlyWhitePixels:(unint64_t *)a5 mostlyTransparentPixels:(unint64_t *)a6 otherPixels:(unint64_t *)a7 sampledPixels:(unint64_t *)a8 bytesPerRow:(int64_t)a9;
@end

@implementation IMImageUtilities

+ (CGSize)imageSourcePxSize:(CGImageSource *)a3
{
  valuePtr = *MEMORY[0x1E695F060];
  v4 = MEMORY[0x1E695DF20];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v6 = CGImageSourceCopyPropertiesAtIndex(a3, 0, [v4 dictionaryWithObjectsAndKeys:{v5, *MEMORY[0x1E696E0B0], 0}]);
  if (v6)
  {
    v7 = v6;
    Value = CFDictionaryGetValue(v6, *MEMORY[0x1E696DEE0]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberCGFloatType, &valuePtr);
    }

    v9 = CFDictionaryGetValue(v7, *MEMORY[0x1E696DED0]);
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberCGFloatType, &valuePtr.u64[1]);
    }

    v10 = CFDictionaryGetValue(v7, *MEMORY[0x1E696DE80]);
    v13 = 0;
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberIntType, &v13);
      if (v13 >= 5)
      {
        valuePtr = vextq_s8(valuePtr, valuePtr, 8uLL);
      }
    }

    CFRelease(v7);
  }

  v12 = *&valuePtr.i64[1];
  v11 = *valuePtr.i64;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (CGSize)imageRefPxSize:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v6 = Width;
  result.height = Height;
  result.width = v6;
  return result;
}

+ (void)sampleImageEdges:(char *)a3 usingRect:(CGRect)a4 forMostlyWhitePixels:(unint64_t *)a5 mostlyTransparentPixels:(unint64_t *)a6 otherPixels:(unint64_t *)a7 sampledPixels:(unint64_t *)a8 bytesPerRow:(int64_t)a9
{
  if (a3)
  {
    x = a4.origin.x;
    width = a4.size.width;
    y = a4.origin.y;
    height = a4.size.height;
    v13 = a4.origin.y * a9;
    if (a4.origin.y < a4.size.height)
    {
      v14 = 0;
      LODWORD(v15) = 0;
      LODWORD(v16) = 0;
      LODWORD(v17) = 0;
      v18 = &a3[4 * x + 3 + v13];
      v19 = 2 * a9;
      v20 = a4.origin.y;
      while (1)
      {
        v21 = *v18;
        if (v21 < 0x32)
        {
          LODWORD(v16) = v16 + 1;
        }

        if (*(v18 - 1) < 0xFBu || *(v18 - 2) < 0xFBu)
        {
          if (v21 <= 0x31)
          {
            goto LABEL_12;
          }
        }

        else if (*(v18 - 3) > 0xFAu || v21 < 0x32)
        {
LABEL_12:
          ++v14;
          goto LABEL_13;
        }

        LODWORD(v15) = v15 + 1;
LABEL_13:
        v18 += v19;
        v20 += 2;
        LODWORD(v17) = v17 + 1;
        if (v20 >= height)
        {
          v22 = &a3[4 * width - 2 + v13];
          while (1)
          {
            v23 = v22[1];
            if (v23 < 0x32)
            {
              LODWORD(v16) = v16 + 1;
            }

            if (*v22 < 0xFBu || *(v22 - 1) < 0xFBu)
            {
              if (v23 <= 0x31)
              {
                goto LABEL_23;
              }
            }

            else if (*(v22 - 2) > 0xFAu || v23 < 0x32)
            {
LABEL_23:
              ++v14;
              goto LABEL_24;
            }

            LODWORD(v15) = v15 + 1;
LABEL_24:
            v22 += v19;
            y += 2;
            LODWORD(v17) = v17 + 1;
            if (y >= height)
            {
              goto LABEL_29;
            }
          }
        }
      }
    }

    LODWORD(v17) = 0;
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    v14 = 0;
LABEL_29:
    if (x < width)
    {
      v25 = &a3[4 * x + 3 + v13];
      v26 = a4.origin.x;
      while (1)
      {
        v27 = *v25;
        if (v27 < 0x32)
        {
          LODWORD(v16) = v16 + 1;
        }

        if (*(v25 - 1) < 0xFBu || *(v25 - 2) < 0xFBu)
        {
          if (v27 <= 0x31)
          {
            goto LABEL_39;
          }
        }

        else if (*(v25 - 3) > 0xFAu || v27 < 0x32)
        {
LABEL_39:
          ++v14;
          goto LABEL_40;
        }

        LODWORD(v15) = v15 + 1;
LABEL_40:
        v25 += 8;
        v26 += 2;
        LODWORD(v17) = v17 + 1;
        if (v26 >= width)
        {
          v28 = &a3[4 * x + 3 + (height - 1) * a9];
          while (1)
          {
            v29 = *v28;
            if (v29 < 0x32)
            {
              LODWORD(v16) = v16 + 1;
            }

            if (*(v28 - 1) < 0xFBu || *(v28 - 2) < 0xFBu)
            {
              if (v29 <= 0x31)
              {
                goto LABEL_50;
              }
            }

            else if (*(v28 - 3) > 0xFAu || v29 < 0x32)
            {
LABEL_50:
              ++v14;
              goto LABEL_51;
            }

            LODWORD(v15) = v15 + 1;
LABEL_51:
            v28 += 8;
            x += 2;
            LODWORD(v17) = v17 + 1;
            if (x >= width)
            {
              goto LABEL_52;
            }
          }
        }
      }
    }

LABEL_52:
    v24 = v14;
    v15 = v15;
    v16 = v16;
    v17 = v17;
    if (a5)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v24 = 0;
    if (a5)
    {
LABEL_53:
      *a5 = v24;
    }
  }

  if (a7)
  {
    *a7 = v15;
  }

  if (a6)
  {
    *a6 = v16;
  }

  if (a8)
  {
    *a8 = v17;
  }
}

+ (BOOL)persistCPBitmapWithImage:(CGImage *)a3 url:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v13 = 0;
    memset(buf, 0, sizeof(buf));
    IMClientPreviewConstraints(buf);
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v6 = [v5 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", *&buf[24]), @"CKAnimatedImageScale", 0}];
    [a4 path];
    v7 = CPBitmapWriterCreateWithPath();
    if (v7)
    {
      if (CPBitmapWriterAddImage())
      {
        v8 = CPBitmapWriterFinalize() != 0;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = a4;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "CPBitmapWriter success %@ at url %@", buf, 0x16u);
    }
  }

  return v8;
}

+ (BOOL)persistPreviewToDiskCache:(CGImage *)a3 previewURL:(id)a4 error:(id *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = a4;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Persisting preview to disk @ %@", &v13, 0xCu);
    }
  }

  if (!IMSupportsASTC())
  {
    v11 = [IMImageUtilities persistCPBitmapWithImage:a3 url:a4];
LABEL_8:
    if (!a5)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v9 = IMCreateASTCImageDataFromCGImageRef(a3);
  v10 = v9;
  if (v9)
  {
    v11 = IMFreeSpaceWriteDataToURL(v9, a4, 1);

    goto LABEL_8;
  }

  v11 = 0;
  if (!a5)
  {
    return v11;
  }

LABEL_9:
  if ((v11 & 1) == 0)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:9 userInfo:0];
  }

  return v11;
}

+ (BOOL)isCroppingAvoidanceEnabled
{
  v2 = +[IMFeatureFlags sharedFeatureFlags];

  return [(IMFeatureFlags *)v2 isCroppingAvoidanceEnabled];
}

+ (BOOL)imageIsSubjectLift:(CGImage *)a3
{
  [a1 imageRefPxSize:?];
  v6 = v5;
  v8 = v7;
  v9 = [a1 _newBitmapContextWithTargetSize:?];
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    v17.origin.x = *MEMORY[0x1E695EFF8];
    v17.origin.y = v12;
    v17.size.width = v6;
    v17.size.height = v8;
    CGContextDrawImage(v9, v17, a3);
    v15 = 0;
    v16 = 0;
    BytesPerRow = CGBitmapContextGetBytesPerRow(v10);
    [a1 sampleImageEdges:CGBitmapContextGetData(v10) usingRect:0 forMostlyWhitePixels:&v16 mostlyTransparentPixels:0 otherPixels:&v15 sampledPixels:BytesPerRow bytesPerRow:{v11, v12, v6, v8}];
    CGContextRelease(v10);
    LOBYTE(v9) = v16 > v15 / 5;
  }

  return v9;
}

+ (CGSize)uncroppedPreviewImageSizeFromImageSizeInPx:(CGSize)a3 maximumSizeInPx:(CGSize)a4
{
  if (a3.width > a4.width || a3.height > a4.height)
  {
    v5 = a4.width / a3.width;
    v6 = a4.height / a3.height;
    if (v5 >= v6)
    {
      v5 = v6;
    }

    a3.width = a3.width * v5;
    a3.height = a3.height * v5;
  }

  v7 = ceil(a3.width);
  v8 = ceil(a3.height);
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGImage)newUncroppedPreviewImageFromImage:(CGImage *)a3 isScreenshot:(BOOL)a4 maximumSizeInPx:(CGSize)a5 minimumSizeInPx:(CGSize)a6
{
  if (!a3)
  {
    return 0;
  }

  [a1 imageRefPxSize:?];
  if (([a1 shouldCropImageOfSize:? maximumSizeInPx:? minimumSizeInPx:?] & 1) != 0 || !a4 && !objc_msgSend(a1, "imageIsSubjectLift:", a3))
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](a1, sel__newUncroppedPreviewImageFromImage_maximumSizeInPx_);
}

+ (CGImage)_newUncroppedPreviewImageFromImage:(CGImage *)a3 maximumSizeInPx:(CGSize)a4
{
  [a1 imageRefPxSize:?];
  [a1 uncroppedPreviewImageSizeFromImageSizeInPx:? maximumSizeInPx:?];
  v7 = v6;
  v9 = v8;
  result = [a1 _newBitmapContextWithTargetSize:?];
  if (result)
  {
    v11 = result;
    v13.origin.x = *MEMORY[0x1E695EFF8];
    v13.origin.y = *(MEMORY[0x1E695EFF8] + 8);
    v13.size.width = v7;
    v13.size.height = v9;
    CGContextDrawImage(result, v13, a3);
    Image = CGBitmapContextCreateImage(v11);
    CGContextRelease(v11);
    return Image;
  }

  return result;
}

+ (BOOL)shouldCropImageOfSize:(CGSize)a3 maximumSizeInPx:(CGSize)a4 minimumSizeInPx:(CGSize)a5
{
  if (a3.width < a5.width || a3.height < a5.height)
  {
    return 1;
  }

  height = a5.height;
  width = a5.width;
  if (a3.width / a3.height < 0.166666667 || a3.width / a3.height > 6.0)
  {
    return 1;
  }

  [a1 uncroppedPreviewImageSizeFromImageSizeInPx:? maximumSizeInPx:?];
  return v11 < height || v10 < width;
}

+ (CGContext)_newBitmapContextWithTargetSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  result = CGColorSpaceCreateDeviceRGB();
  if (result)
  {
    v6 = result;
    v7 = CGBitmapContextCreate(0, width, height, 8uLL, 4 * width, result, 0x4001u);
    CGColorSpaceRelease(v6);
    return v7;
  }

  return result;
}

+ (CGImage)newThumbnailForTargetSize:(CGSize)a3 imageSize:(CGSize)a4 imageSource:(CGImageSource *)a5 atIndex:(unint64_t)a6 mode:(int64_t)a7 scale:(double)a8
{
  v8 = a3.width / a4.width;
  v9 = a3.height / a4.height;
  v10 = fmin(v8, v9);
  v11 = fmax(v8, v9);
  if (a7 != 1)
  {
    v11 = v10;
  }

  return IMCreateThumbnailWithImageSourceAtIndexForMaxDimension(a5, a6, fmax(floor(a4.width * v11), floor(a4.height * v11)));
}

+ (double)scaleFactorForThumbnailWithSize:(CGSize)a3 constraints:(IMPreviewConstraints *)a4 targetPxSize:(CGSize)a5 shouldScaleUpPreview:(BOOL)a6 maxUpScale:(double)a7
{
  width = a3.width;
  result = 1.0;
  if (a6 && !a4->var3 && (width < a5.width || a3.height < a5.height))
  {
    result = fmax(a5.width / width, a5.height / a3.height);
    if (result >= a7)
    {
      result = a7;
    }
  }

  v10 = a3.height * result;
  v11 = a4->var1.width;
  height = a4->var1.height;
  if (width * result < v11 || v10 < height)
  {
    return result * ceil(fmax(v11 / (width * result), height / v10));
  }

  return result;
}

+ (BOOL)imageIsAnimatedSequenceAtFileURL:(id)a3
{
  v3 = sub_1A88C72E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  v7 = sub_1A874905C(v6);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

@end