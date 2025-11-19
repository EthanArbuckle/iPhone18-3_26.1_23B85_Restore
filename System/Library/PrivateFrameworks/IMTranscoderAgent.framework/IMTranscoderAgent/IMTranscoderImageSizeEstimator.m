@interface IMTranscoderImageSizeEstimator
+ (id)newEstimatorWithURL:(id)a3 uti:(id)a4 imageSource:(CGImageSource *)a5;
- (CGSize)_newSizeForMaximumDimension:(int64_t)a3 originalSize:(CGSize)result;
- (IMTranscoderImageSizeEstimator)initWithUTI:(id)a3 imageSource:(CGImageSource *)a4;
- (IMTranscoderImageSizeEstimator)initWithUTI:(id)a3 originalSize:(CGSize)a4 fileSize:(unint64_t)a5;
- (double)_nominalBytesPerPixelForUTI:(id)a3;
- (double)_normalizedInputFactorForUTI:(id)a3 bytesPerPixel:(double)a4;
- (unint64_t)estimatedSizeForOutputUTI:(id)a3 maximumDimension:(int64_t)a4 quality:(double)a5;
@end

@implementation IMTranscoderImageSizeEstimator

+ (id)newEstimatorWithURL:(id)a3 uti:(id)a4 imageSource:(CGImageSource *)a5
{
  if (!UTTypeConformsTo(a4, *MEMORY[0x277CC20C8]) && !UTTypeConformsTo(a4, @"public.heif-standard") || (v8 = [IMTranscoderImageCMPhotoSizeEstimator alloc], (result = objc_msgSend_initWithURL_uti_imageSource_(v8, v9, a3, a4, a5, v10, v11)) == 0))
  {
    v13 = [IMTranscoderImageSizeEstimator alloc];

    return MEMORY[0x2821F9670](v13, sel_initWithUTI_imageSource_, a4, a5, v14, v15, v16);
  }

  return result;
}

- (IMTranscoderImageSizeEstimator)initWithUTI:(id)a3 imageSource:(CGImageSource *)a4
{
  v36.receiver = self;
  v36.super_class = IMTranscoderImageSizeEstimator;
  v6 = [(IMTranscoderImageSizeEstimator *)&v36 init];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a4, 0, 0);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    BitsPerPixel = CGImageGetBitsPerPixel(ImageAtIndex);
    Width = CGImageGetWidth(v8);
    Height = CGImageGetHeight(v8);
    v6->_originalSize.width = Width;
    v6->_originalSize.height = Height;
    CFRelease(v8);
    if (v6->_originalSize.width != *MEMORY[0x277CBF3A8] || v6->_originalSize.height != *(MEMORY[0x277CBF3A8] + 8))
    {
      v13 = CGImageSourceCopyProperties(a4, 0);
      v19 = v13;
      if (v13)
      {
        v20 = objc_msgSend_objectForKeyedSubscript_(v13, v14, *MEMORY[0x277CD31B8], v15, v16, v17, v18);
        objc_msgSend_doubleValue(v20, v21, v22, v23, v24, v25, v26);
        if (v32 != 0.0)
        {
          v33 = v32 / (v6->_originalSize.width * v6->_originalSize.height);
          if (BitsPerPixel > 0x27)
          {
            v33 = v33 * 0.5;
          }

          objc_msgSend__normalizedInputFactorForUTI_bytesPerPixel_(v6, v27, a3, v28, v29, v30, v31, v33);
          v6->_normalizedInputFactor = v34;
        }
      }
    }
  }

  return v6;
}

- (IMTranscoderImageSizeEstimator)initWithUTI:(id)a3 originalSize:(CGSize)a4 fileSize:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v17.receiver = self;
  v17.super_class = IMTranscoderImageSizeEstimator;
  v9 = [(IMTranscoderImageSizeEstimator *)&v17 init];
  v9->_originalSize.width = width;
  v9->_originalSize.height = height;
  objc_msgSend__normalizedInputFactorForUTI_bytesPerPixel_(v9, v10, a3, v11, v12, v13, v14, a5 / (width * height));
  v9->_normalizedInputFactor = v15;
  return v9;
}

- (CGSize)_newSizeForMaximumDimension:(int64_t)a3 originalSize:(CGSize)result
{
  if (result.width <= result.height)
  {
    height = result.height;
  }

  else
  {
    height = result.width;
  }

  if (height > a3)
  {
    v5 = a3 / height;
    result.width = (result.width * v5);
    result.height = (result.height * v5);
  }

  return result;
}

- (double)_nominalBytesPerPixelForUTI:(id)a3
{
  if (UTTypeConformsTo(a3, *MEMORY[0x277CC20C8]))
  {
    return 0.35;
  }

  if (UTTypeConformsTo(a3, @"public.heif-standard"))
  {
    return 0.18;
  }

  if (UTTypeConformsTo(a3, *MEMORY[0x277CC2120]))
  {
    return 1.8;
  }

  v5 = UTTypeConformsTo(a3, *MEMORY[0x277CC2088]);
  result = 0.7;
  if (!v5)
  {
    return 0.0;
  }

  return result;
}

- (double)_normalizedInputFactorForUTI:(id)a3 bytesPerPixel:(double)a4
{
  objc_msgSend__nominalBytesPerPixelForUTI_(self, a2, a3, v4, v5, v6, v7);
  v10 = a4 / v9;
  if (v9 == 0.0)
  {
    v10 = 1.0;
  }

  result = 2.0;
  if (v10 <= 2.0)
  {
    result = v10;
    if (v10 < 0.15)
    {
      return 0.15;
    }
  }

  return result;
}

- (unint64_t)estimatedSizeForOutputUTI:(id)a3 maximumDimension:(int64_t)a4 quality:(double)a5
{
  if (self->_originalSize.width == *MEMORY[0x277CBF3A8] && self->_originalSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 0;
  }

  objc_msgSend__newSizeForMaximumDimension_originalSize_(self, a2, a4, a4, v5, v6, v7);
  v14 = v12 * v13;
  if (UTTypeConformsTo(a3, *MEMORY[0x277CC20C8]))
  {
    objc_msgSend__estimatedBytesPerPixelForJPEGQuality_(self, v15, v16, v17, v18, v19, v20, a5);
  }

  else if (UTTypeConformsTo(a3, @"public.heif-standard"))
  {
    objc_msgSend__estimatedBytesPerPixelForJPEGQuality_(self, v23, v24, v25, v26, v27, v28, a5);
    v21 = v29 * 0.6;
  }

  else
  {
    objc_msgSend__nominalBytesPerPixelForUTI_(self, v23, a3, v25, v26, v27, v28);
  }

  return (v14 * (v21 * self->_normalizedInputFactor) * 0.85);
}

@end