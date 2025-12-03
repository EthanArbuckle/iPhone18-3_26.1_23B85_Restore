@interface CKImageData
+ (id)UTITypeForData:(id)data;
- (CGSize)ptSize;
- (CGSize)pxSize;
- (CGSize)sizeForImageSource:(CGImageSource *)source index:(unint64_t)index;
- (CKImageData)initWithData:(id)data;
- (CKImageData)initWithURL:(id)l;
- (NSData)data;
- (NSString)MIMEType;
- (UIImage)image;
- (id)_defaultDurationsWithMaxCount:(unint64_t)count;
- (id)_thumbnailFillToSize:(CGSize)size atIndex:(unint64_t)index;
- (id)_thumbnailFitToSize:(CGSize)size atIndex:(unint64_t)index;
- (id)durationsWithMaxCount:(unint64_t)count;
- (id)thumbnailAtIndex:(unint64_t)index fillToSize:(CGSize)size maxCount:(unint64_t)count;
- (id)thumbnailFillToSizeCropping:(CGSize)cropping;
- (id)thumbnailsFillToSize:(CGSize)size maxCount:(unint64_t)count;
- (id)thumbnailsFitToSize:(CGSize)size maxCount:(unint64_t)count;
- (unint64_t)count;
- (void)_initializeProperties;
- (void)dealloc;
@end

@implementation CKImageData

- (void)dealloc
{
  imageSource = self->_imageSource;
  if (imageSource)
  {
    CFRelease(imageSource);
  }

  v4.receiver = self;
  v4.super_class = CKImageData;
  [(CKImageData *)&v4 dealloc];
}

+ (id)UTITypeForData:(id)data
{
  dataCopy = data;
  v4 = [[CKImageData alloc] initWithData:dataCopy];

  uTIType = [(CKImageData *)v4 UTIType];

  return uTIType;
}

- (CKImageData)initWithData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = CKImageData;
  v5 = [(CKImageData *)&v7 init];
  if (v5)
  {
    if (dataCopy)
    {
      v5->_imageSource = CGImageSourceCreateWithData(dataCopy, 0);
      v5->_count = 0x7FFFFFFFFFFFFFFFLL;
      [(CKImageData *)v5 setData:dataCopy];
    }

    if (!v5->_imageSource)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (CKImageData)initWithURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = CKImageData;
  v5 = [(CKImageData *)&v8 init];
  v6 = v5;
  if (lCopy)
  {
    if (v5)
    {
      v5->_imageSource = CGImageSourceCreateWithURL(lCopy, 0);
      v6->_count = 0x7FFFFFFFFFFFFFFFLL;
      [(CKImageData *)v6 setUrl:lCopy];
      if (!v6->_imageSource)
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    v4 = [(CKImageData *)self url];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:8 error:0];
      v6 = self->_data;
      self->_data = v5;
    }

    data = self->_data;
  }

  return data;
}

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    v4 = MEMORY[0x1E69DCAB8];
    data = [(CKImageData *)self data];
    v6 = [v4 ckImageWithData:data];
    v7 = self->_image;
    self->_image = v6;

    image = self->_image;
  }

  return image;
}

- (id)thumbnailFillToSizeCropping:(CGSize)cropping
{
  height = cropping.height;
  width = cropping.width;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  [(CKImageData *)self ptSize];
  v11 = width / v9;
  v12 = 0.0;
  if (v9 == 0.0)
  {
    v11 = 0.0;
  }

  if (v10 != 0.0)
  {
    v12 = height / v10;
  }

  v13 = fmax(v11, v12);
  v14 = v9 * v13;
  v15 = v10 * v13;
  if (CKMainScreenScale_once_37 != -1)
  {
    [CKImageData thumbnailFillToSizeCropping:];
  }

  v16 = *&CKMainScreenScale_sMainScreenScale_37;
  if (*&CKMainScreenScale_sMainScreenScale_37 == 0.0)
  {
    v16 = 1.0;
  }

  v17 = v8 * fmax(ceil(v14 * v16) / v16, ceil(v15 * v16) / v16);
  uTIType = [(CKImageData *)self UTIType];
  if (!UTTypeConformsTo(uTIType, *MEMORY[0x1E6963808]) || [(CKImageData *)self count]> 1 || ([(CKImageData *)self data], (ThumbnailWithImageSourceAtIndexForMaxDimension = _CreateThumbnailWithJPEGForMaxDimension(v17)) == 0))
  {
    ThumbnailWithImageSourceAtIndexForMaxDimension = _CreateThumbnailWithImageSourceAtIndexForMaxDimension(self->_imageSource, 0, v17);
  }

  v20 = CKCreateSquareCroppedImageRef(ThumbnailWithImageSourceAtIndexForMaxDimension);
  CFRelease(ThumbnailWithImageSourceAtIndexForMaxDimension);
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v20 scale:0 orientation:v8];
    CFRelease(v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)thumbnailsFitToSize:(CGSize)size maxCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x1E69E9840];
  v8 = [(CKImageData *)self count];
  v9 = v8;
  v10 = 1.0;
  if (v8 > count)
  {
    v10 = v8 / count;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  if (v9 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v9;
  }

  v13 = [v11 initWithCapacity:countCopy];
  if (v9)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      if (v15 <= v14)
      {
        height = [(CKImageData *)self _thumbnailFitToSize:v14 atIndex:width, height];
        if (height)
        {
          [v13 addObject:height];
        }

        v15 = v10 + v15;
      }

      ++v14;
    }

    while (v9 != v14);
  }

  if (v9 > count)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(4);
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v20 = v9;
        v21 = 2048;
        countCopy2 = count;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = [v13 count];
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_DEBUG, "GIF wanted %ld frames (> max allowed (%ld)). Used increment %f to generate %ld frames.", buf, 0x2Au);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      [v13 count];
      _CKLog();
    }
  }

  return v13;
}

- (id)thumbnailAtIndex:(unint64_t)index fillToSize:(CGSize)size maxCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  if (index >= count)
  {
    [CKImageData thumbnailAtIndex:a2 fillToSize:self maxCount:?];
  }

  v10 = [(CKImageData *)self count];
  v11 = 1.0;
  if (v10 > count)
  {
    v11 = v10 / count;
  }

  return [(CKImageData *)self _thumbnailFitToSize:(v11 * index) atIndex:width, height];
}

- (id)thumbnailsFillToSize:(CGSize)size maxCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  v27 = *MEMORY[0x1E69E9840];
  v8 = [(CKImageData *)self count];
  v9 = v8;
  v10 = 1.0;
  if (v8 > count)
  {
    v10 = v8 / count;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  if (v9 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v9;
  }

  v13 = [v11 initWithCapacity:countCopy];
  if (v9)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      if (v15 <= v14)
      {
        height = [(CKImageData *)self _thumbnailFillToSize:v14 atIndex:width, height];
        if (height)
        {
          [v13 addObject:height];
        }

        v15 = v10 + v15;
      }

      ++v14;
    }

    while (v9 != v14);
  }

  if (v9 > count)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(4);
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v20 = v9;
        v21 = 2048;
        countCopy2 = count;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = [v13 count];
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_DEBUG, "GIF wanted %ld frames (> max allowed (%ld)). Used increment %f to generate %ld frames.", buf, 0x2Au);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      [v13 count];
      _CKLog();
    }
  }

  return v13;
}

- (id)_defaultDurationsWithMaxCount:(unint64_t)count
{
  countCopy = count;
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(CKImageData *)self count]< count)
  {
    countCopy = [(CKImageData *)self count];
  }

  v5 = countCopy;
  bzero(v12 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  if (countCopy)
  {
    v6 = countCopy;
    v7 = (v12 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0666666667];
      v9 = *v7;
      *v7++ = v8;

      --v6;
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0) count:countCopy];
  if (countCopy)
  {
    do
    {
    }

    while (v5 * 8);
  }

  return v10;
}

- (id)durationsWithMaxCount:(unint64_t)count
{
  v57 = *MEMORY[0x1E69E9840];
  uTIType = [(CKImageData *)self UTIType];
  IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage();

  if (IsSupportedAnimatedImage)
  {
    v6 = [(CKImageData *)self count];
    v7 = v6;
    v8 = 1.0;
    if (v6 > count)
    {
      v8 = v6 / count;
    }

    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    if (v7 >= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = v7;
    }

    v11 = [v9 initWithCapacity:countCopy];
    if (v7)
    {
      v12 = 0;
      v13 = *MEMORY[0x1E696DB70];
      key = *MEMORY[0x1E696DB80];
      v43 = *MEMORY[0x1E696DB68];
      v14 = *MEMORY[0x1E696DEB0];
      v47 = *MEMORY[0x1E696D3D0];
      v42 = *MEMORY[0x1E696D3C0];
      v15 = *MEMORY[0x1E696DD20];
      v46 = *MEMORY[0x1E696DD30];
      v41 = *MEMORY[0x1E696DD18];
      v16 = *MEMORY[0x1E696DFA8];
      v45 = *MEMORY[0x1E696DFB0];
      v17 = 0.0;
      v18 = 0.0;
      v40 = *MEMORY[0x1E696DFA0];
      do
      {
        if (v8 + v18 <= v12)
        {
          v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v17];
          [v11 addObject:v19];

          v17 = 0.0;
          v18 = v8 + v18;
        }

        imageSource = self->_imageSource;
        *&valuePtr = 0.0;
        v21 = CGImageSourceCopyPropertiesAtIndex(imageSource, v12, 0);
        v22 = v21;
        if (v21)
        {
          Value = CFDictionaryGetValue(v21, v13);
          v24 = Value;
          if (Value)
          {
            v25 = CFDictionaryGetValue(Value, key);
            if (v25 || (v25 = CFDictionaryGetValue(v24, v43)) != 0)
            {
              CFNumberGetValue(v25, kCFNumberFloatType, &valuePtr);
            }
          }

          v26 = CFDictionaryGetValue(v22, v14);
          v27 = v26;
          if (v26)
          {
            v28 = CFDictionaryGetValue(v26, v47);
            if (v28 || (v28 = CFDictionaryGetValue(v27, v42)) != 0)
            {
              CFNumberGetValue(v28, kCFNumberFloatType, &valuePtr);
            }
          }

          v29 = CFDictionaryGetValue(v22, v15);
          v30 = v29;
          if (v29)
          {
            v31 = CFDictionaryGetValue(v29, v46);
            if (v31 || (v31 = CFDictionaryGetValue(v30, v41)) != 0)
            {
              CFNumberGetValue(v31, kCFNumberFloatType, &valuePtr);
            }
          }

          v32 = CFDictionaryGetValue(v22, v16);
          v33 = v32;
          if (v32)
          {
            v34 = CFDictionaryGetValue(v32, v45);
            if (v34 || (v34 = CFDictionaryGetValue(v33, v40)) != 0)
            {
              CFNumberGetValue(v34, kCFNumberFloatType, &valuePtr);
            }
          }

          CFRelease(v22);
          v35 = *&valuePtr;
        }

        else
        {
          v35 = 0.0;
        }

        if (v35 < 0.011)
        {
          v35 = 0.1;
        }

        v17 = v17 + v35;
        ++v12;
      }

      while (v7 != v12);
    }

    else
    {
      v17 = 0.0;
    }

    v36 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v17];
    [v11 addObject:v36];
    if (v7 > count)
    {
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(4);
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = [v11 count];
          *&valuePtr = 3.8523e-34;
          v50 = v7;
          v51 = 2048;
          countCopy2 = count;
          v53 = 2048;
          v54 = v8;
          v55 = 2048;
          v56 = v38;
          _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_DEBUG, "GIF wanted %ld durations (> max allowed (%ld)). Used increment %f to generate %ld durations.", &valuePtr, 0x2Au);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        [v11 count];
        _CKLog();
      }
    }
  }

  else
  {
    v11 = &unk_1F04E6948;
  }

  return v11;
}

- (NSString)MIMEType
{
  uTIType = [(CKImageData *)self UTIType];
  if (UTTypeConformsTo(uTIType, *MEMORY[0x1E6963808]))
  {
    v3 = @"image/jpeg";
  }

  else if (UTTypeConformsTo(uTIType, *MEMORY[0x1E6963860]))
  {
    v3 = @"image/png";
  }

  else if (UTTypeConformsTo(uTIType, *MEMORY[0x1E69637D8]))
  {
    v3 = @"image/gif";
  }

  else
  {
    NSLog(&cfstr_NoMimeTypeForI.isa, uTIType);
    v3 = 0;
  }

  return &v3->isa;
}

- (CGSize)ptSize
{
  [(CKImageData *)self pxSize];
  v3 = v2;
  v5 = v4;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  v9 = v3 / v8;
  v10 = v5 / v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)pxSize
{
  [(CKImageData *)self _initializeProperties];
  width = self->_pxSize.width;
  height = self->_pxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)count
{
  result = self->_count;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = CGImageSourceGetCount(self->_imageSource);
    self->_count = result;
  }

  return result;
}

- (void)_initializeProperties
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!self->_initializedProperties)
  {
    self->_initializedProperties = 1;
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
    if (![(CKImageData *)self count])
    {
      v12 = 0;
LABEL_25:
      self->_orientation = v12;
      self->_pxSize.width = v3;
      self->_pxSize.height = v4;
      return;
    }

    imageSource = self->_imageSource;
    v26 = *MEMORY[0x1E696E0E8];
    v27[0] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v7 = CGImageSourceCopyPropertiesAtIndex(imageSource, 0, v6);

    if (!v7)
    {
      v12 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v8 = v7;
    v9 = *MEMORY[0x1E696DE78];
    v10 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x1E696DE78]];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v13 = [(__CFDictionary *)v8 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
      v11 = [v13 objectForKeyedSubscript:v9];

      if (!v11)
      {
        v12 = 0;
        v18 = 1;
LABEL_20:

        v19 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x1E696DED8]];
        v20 = [(__CFDictionary *)v8 objectForKey:*MEMORY[0x1E696DEC8]];
        v21 = v20;
        if (v18)
        {
          v20 = v19;
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        [v20 floatValue];
        v24 = v23;
        [v22 floatValue];
        v4 = v25;
        v3 = v24;

        goto LABEL_24;
      }
    }

    integerValue = [v11 integerValue];
    v15 = 2;
    v16 = 3;
    v17 = integerValue != 6;
    if (integerValue != 6)
    {
      v16 = 0;
    }

    if (integerValue == 8)
    {
      v17 = 0;
    }

    else
    {
      v15 = v16;
    }

    v18 = integerValue == 3 || v17;
    if (integerValue == 3)
    {
      v12 = 1;
    }

    else
    {
      v12 = v15;
    }

    goto LABEL_20;
  }
}

- (id)_thumbnailFitToSize:(CGSize)size atIndex:(unint64_t)index
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v10 = v9;

  [(CKImageData *)self ptSize];
  v13 = width / v11;
  v14 = 0.0;
  if (v11 == 0.0)
  {
    v13 = 0.0;
  }

  if (v12 != 0.0)
  {
    v14 = height / v12;
  }

  v15 = fmin(v13, v14);
  v16 = v10 * fmax(floor(v11 * v15), floor(v12 * v15));
  uTIType = [(CKImageData *)self UTIType];
  v18 = [uTIType isEqualToString:@"public.heics"];

  uTIType2 = [(CKImageData *)self UTIType];
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v21 = [uTIType2 isEqualToString:identifier];

  if (index || !v21 || [(CKImageData *)self count]> 1)
  {
    if (!v18)
    {
      goto LABEL_15;
    }

    [(CKImageData *)self sizeForImageSource:self->_imageSource index:index];
    if (v23 <= v24)
    {
      v23 = v24;
    }

    if (v23 >= v16)
    {
      goto LABEL_15;
    }

    ThumbnailFromHEICSWithMaxDimension = _CreateThumbnailFromHEICSWithMaxDimension(self->_imageSource, index);
  }

  else
  {
    [(CKImageData *)self data];
    ThumbnailFromHEICSWithMaxDimension = _CreateThumbnailWithJPEGForMaxDimension(v16);
  }

  ThumbnailWithImageSourceAtIndexForMaxDimension = ThumbnailFromHEICSWithMaxDimension;
  if (ThumbnailFromHEICSWithMaxDimension)
  {
LABEL_16:
    v26 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:ThumbnailWithImageSourceAtIndexForMaxDimension scale:0 orientation:v10];
    CFRelease(ThumbnailWithImageSourceAtIndexForMaxDimension);
    goto LABEL_18;
  }

LABEL_15:
  ThumbnailWithImageSourceAtIndexForMaxDimension = _CreateThumbnailWithImageSourceAtIndexForMaxDimension(self->_imageSource, index, v16);
  if (ThumbnailWithImageSourceAtIndexForMaxDimension)
  {
    goto LABEL_16;
  }

  v26 = 0;
LABEL_18:

  return v26;
}

- (CGSize)sizeForImageSource:(CGImageSource *)source index:(unint64_t)index
{
  v4 = CGImageSourceCopyPropertiesAtIndex(source, index, 0);
  v5 = v4;
  if (v4)
  {
    v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    [v6 doubleValue];
    v8 = v7;

    v9 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
    v8 = 0.0;
  }

  v12 = v8;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)_thumbnailFillToSize:(CGSize)size atIndex:(unint64_t)index
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v10 = v9;

  [(CKImageData *)self ptSize];
  v13 = width / v11;
  v14 = 0.0;
  if (v11 == 0.0)
  {
    v13 = 0.0;
  }

  if (v12 != 0.0)
  {
    v14 = height / v12;
  }

  v15 = fmax(v13, v14);
  v16 = v10 * fmax(round(v10 * (v11 * v15)) / v10, round(v10 * (v12 * v15)) / v10);
  if (!index && (v20 = [(CKImageData *)self UTIType], UTTypeConformsTo(v20, *MEMORY[0x1E6963808])) && [(CKImageData *)self count]<= 1 && ([(CKImageData *)self data], (ThumbnailWithJPEGForMaxDimension = _CreateThumbnailWithJPEGForMaxDimension(v16)) != 0) || (ThumbnailWithJPEGForMaxDimension = _CreateThumbnailWithImageSourceAtIndexForMaxDimension(self->_imageSource, index, v16)) != 0)
  {
    v18 = ThumbnailWithJPEGForMaxDimension;
    v19 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:ThumbnailWithJPEGForMaxDimension scale:0 orientation:v10];
    CFRelease(v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)thumbnailAtIndex:(uint64_t)a1 fillToSize:(uint64_t)a2 maxCount:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKImageData.m" lineNumber:222 description:@"index must be less than maxCount"];
}

@end