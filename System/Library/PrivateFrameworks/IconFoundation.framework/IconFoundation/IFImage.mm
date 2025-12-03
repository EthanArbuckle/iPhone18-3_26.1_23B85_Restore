@interface IFImage
+ (CGColorSpace)defaultCGColorSpace;
+ (CGImage)createCGImageWithIFImageData:(id)data;
+ (CGImage)escapingCGImageWithCGImage:(CGImage *)image;
+ (id)_layerDataFromIFImageData:(id)data;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)imageWithContentsOfURL:(id)l;
- (BOOL)writeToURL:(id)l options:(id)options;
- (CGSize)pixelSize;
- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale;
- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale finalizedIcon:(id)icon;
- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale layerData:(id)data;
- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale minimumSize:(CGSize)size placeholder:(BOOL)placeholder;
- (IFImage)initWithCoder:(id)coder;
- (IFImage)initWithContentsOfURL:(id)l;
- (IFImage)initWithContentsOfURL:(id)l scale:(double)scale;
- (IFImage)initWithData:(id)data uuid:(id)uuid validationToken:(id)token;
- (IFImage)initWithIOSurface:(__IOSurface *)surface scale:(double)scale;
- (NSData)bitmapData;
- (double)dimension;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IFImage

- (id)_init
{
  v3.receiver = self;
  v3.super_class = IFImage;
  return [(IFImage *)&v3 init];
}

- (double)dimension
{
  [(IFImage *)self size];
  v4 = v3;
  [(IFImage *)self size];
  if (v4 >= v5)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (CGColorSpace)defaultCGColorSpace
{
  if (defaultCGColorSpace_onceToken != -1)
  {
    +[IFImage defaultCGColorSpace];
  }

  return defaultCGColorSpace_colorSpace;
}

CGColorSpaceRef __30__IFImage_defaultCGColorSpace__block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  defaultCGColorSpace_colorSpace = result;
  return result;
}

+ (id)imageWithContentsOfURL:(id)l
{
  lCopy = l;
  v4 = [[IFImage alloc] initWithContentsOfURL:lCopy];

  if ([(IFImage *)v4 CGImage])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__IFImage_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = zone;
    block[5] = self;
    if (allocWithZone__onceToken != -1)
    {
      dispatch_once(&allocWithZone__onceToken, block);
    }

    v6 = allocWithZone__imageFactory;

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___IFImage;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

void __25__IFImage_allocWithZone___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4.receiver = *(a1 + 40);
  v4.super_class = &OBJC_METACLASS___IFImage;
  v2 = objc_msgSendSuper2(&v4, sel_allocWithZone_, v1);
  v3 = allocWithZone__imageFactory;
  allocWithZone__imageFactory = v2;
}

+ (CGImage)createCGImageWithIFImageData:(id)data
{
  dataCopy = data;
  __IS_imageHeader = [dataCopy __IS_imageHeader];
  if (!__IS_imageHeader)
  {
    goto LABEL_33;
  }

  v6 = __IS_imageHeader;
  if (*__IS_imageHeader != 9)
  {
    goto LABEL_33;
  }

  LODWORD(v5) = *(__IS_imageHeader + 12);
  v7 = v5;
  v8 = *(__IS_imageHeader + 36) * v7;
  v9 = *(__IS_imageHeader + 32) * v7;
  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    goto LABEL_33;
  }

  v11 = *(__IS_imageHeader + 4);
  v12 = [IFGraphicsContext colorSpaceFromPixelFormat:*(__IS_imageHeader + 40)];
  if (!v12)
  {
    v20 = IFDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[IFImage createCGImageWithIFImageData:];
    }

    goto LABEL_35;
  }

  v13 = v12;
  v14 = dataCopy;
  bytes = [v14 bytes];
  v16 = CGDataProviderCreateWithData(v14, (bytes + 48), v11, MEMORY[0x1E695D7C0]);
  if (!v16)
  {
LABEL_33:
    v20 = IFDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[IFImage createCGImageWithIFImageData:];
    }

LABEL_35:

    v24 = 0;
    goto LABEL_36;
  }

  v17 = v16;
  v18 = *(v6 + 40);
  v19 = 1;
  if (v18 > 3u)
  {
    if (*(v6 + 40) > 5u)
    {
      if (v18 == 6)
      {
        v21 = v9;
        v22 = v8;
        v19 = 7;
LABEL_30:
        v23 = 1;
        goto LABEL_31;
      }

      if (v18 != 7)
      {
        goto LABEL_27;
      }
    }

    else if (v18 != 4)
    {
      if (v18 == 5)
      {
        goto LABEL_28;
      }

LABEL_27:
      v19 = 0;
      goto LABEL_28;
    }

LABEL_24:
    v19 = 4353;
    goto LABEL_25;
  }

  if (*(v6 + 40) > 1u)
  {
    if (v18 == 2)
    {
      goto LABEL_28;
    }

    if (v18 == 3)
    {
      v19 = 4352;
LABEL_25:
      v21 = v9;
      v22 = v8;
      v23 = 4;
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if (*(v6 + 40))
  {
    goto LABEL_24;
  }

LABEL_28:
  v21 = v9;
  v22 = v8;
  v23 = 4;
  if (v18 >= 5u && v18 != 7)
  {
    goto LABEL_30;
  }

LABEL_31:
  v24 = CGImageCreate(v21, v22, BYTE2(v18) / v23, *(v6 + 42), (v9 * (*(v6 + 42) >> 3)), v13, v19, v17, 0, 1, kCGRenderingIntentDefault);
  CFRelease(v17);
  if (!v24)
  {
    goto LABEL_33;
  }

  CGImageSetProperty();
LABEL_36:

  return v24;
}

+ (id)_layerDataFromIFImageData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = dataCopy;
  if (!dataCopy)
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[IFImage _layerDataFromIFImageData:];
    }

    goto LABEL_21;
  }

  __IS_imageHeader = [dataCopy __IS_imageHeader];
  if (!__IS_imageHeader)
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[IFImage _layerDataFromIFImageData:];
    }

    goto LABEL_21;
  }

  v6 = *(__IS_imageHeader + 8);
  if (!v6)
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1B9DEC000, v8, OS_LOG_TYPE_INFO, "layer data size zero", &v17, 2u);
    }

    goto LABEL_21;
  }

  v7 = *(__IS_imageHeader + 4);
  if ([v4 length] < v6)
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(IFImage *)v4 _layerDataFromIFImageData:v6, v8];
    }

    goto LABEL_21;
  }

  v9 = v7 + 48 + v6;
  if (v9 > [v4 length])
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218752;
      v18 = [v4 length];
      v19 = 2048;
      v20 = 48;
      v21 = 1024;
      *v22 = v7;
      *&v22[4] = 1024;
      *&v22[6] = v6;
      v10 = "Incorrect formed data. Data size (%lu) exceeded. Header size: %lu, expected bitmap size: %d, expected layer size: %d";
      v11 = v8;
      v12 = 34;
LABEL_29:
      _os_log_error_impl(&dword_1B9DEC000, v11, OS_LOG_TYPE_ERROR, v10, &v17, v12);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (v9 > [v4 length] || v7 + 48 >= objc_msgSend(v4, "length"))
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = 134219008;
      v18 = v7 + 48;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      *v22 = [v4 length];
      *&v22[8] = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v6;
      v10 = "Incorrect formed layer data. Range: [%lu - %lu], bounds: [0 - %lu], expected bitmap size: %lu, expected layer size: %lu";
      v11 = v8;
      v12 = 52;
      goto LABEL_29;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v13 = [v4 subdataWithRange:{v7 + 48, v6}];
  v8 = v13;
  if (v13)
  {
    v8 = v13;
    v14 = v8;
  }

  else
  {
    v16 = IFDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[IFImage _layerDataFromIFImageData:];
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (IFImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _IF_decodeObjectOfClass:objc_opt_class() forKey:@"data"];

  v6 = [objc_alloc(objc_opt_class()) initWithData:v5 uuid:0];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(IFImage(ISImagePriv) *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (IFImage)initWithContentsOfURL:(id)l scale:(double)scale
{
  v6 = CGImageSourceCreateWithURL(l, 0);
  if (v6)
  {
    v7 = v6;
    if (CGImageSourceGetCount(v6))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      CFRelease(v7);
      if (ImageAtIndex)
      {
        v9 = [[IFConcreteImage alloc] initWithCGImage:ImageAtIndex scale:scale];

        CFRelease(ImageAtIndex);
        return &v9->super;
      }
    }

    else
    {
      CFRelease(v7);
    }
  }

  return 0;
}

- (IFImage)initWithContentsOfURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v7 = [IFResourceMetadata metadataWithFileName:stringByDeletingPathExtension];
  scale = [v7 scale];
  [scale doubleValue];
  v10 = v9;

  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  v11 = CGImageSourceCreateWithURL(lCopy, 0);

  if (v11)
  {
    if (CGImageSourceGetCount(v11))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
      scale2 = [v7 scale];

      if (!scale2)
      {
        v14 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
        v15 = [(__CFDictionary *)v14 _IF_numberForKey:*MEMORY[0x1E696D880]];
        if (v15 || ([(__CFDictionary *)v14 _IF_numberForKey:*MEMORY[0x1E696D888]], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v16 = v15;
          integerValue = [v15 integerValue];
          v18 = integerValue / 72;
          if (integerValue / 72 <= 1)
          {
            v18 = 1;
          }

          if (integerValue <= 287)
          {
            v10 = v18;
          }

          else
          {
            v10 = 1.0;
          }
        }
      }
    }

    else
    {
      ImageAtIndex = 0;
    }

    CFRelease(v11);
  }

  else
  {
    ImageAtIndex = 0;
  }

  v19 = [[IFConcreteImage alloc] initWithCGImage:ImageAtIndex scale:v10];

  if (ImageAtIndex)
  {
    CFRelease(ImageAtIndex);
  }

  return &v19->super;
}

- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale
{
  v5 = [[IFConcreteImage alloc] initWithCGImage:image scale:scale];

  return &v5->super;
}

- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale layerData:(id)data
{
  dataCopy = data;
  v9 = [[IFConcreteImage alloc] initWithCGImage:image scale:dataCopy layerData:scale];

  return &v9->super;
}

- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale finalizedIcon:(id)icon
{
  iconCopy = icon;
  v9 = [[IFConcreteImage alloc] initWithCGImage:image scale:iconCopy finalizedIcon:scale];

  return &v9->super;
}

- (IFImage)initWithIOSurface:(__IOSurface *)surface scale:(double)scale
{
  v5 = [[IFConcreteImage alloc] initWithIOSurface:surface scale:scale];

  return &v5->super;
}

+ (CGImage)escapingCGImageWithCGImage:(CGImage *)image
{
  if (CGImageGetProperty() == *MEMORY[0x1E695E4D0])
  {
    v5 = IFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[IFImage escapingCGImageWithCGImage:];
    }

    CGImageGetWidth(image);
    CGImageGetHeight(image);
    CGImageGetImageProvider();
    v6 = CGImageProviderCopyImageBlockSet();
    if (v6)
    {
      [[ISCGImageBlockSet alloc] initWithBlockSet:v6];
      CGImageBlockSetRelease();
      CGImageProviderGetSize();
      CGImageProviderGetComponentType();
      CGImageProviderGetColorSpace();
      if (CGImageProviderAuxInfo_onceToken != -1)
      {
        +[IFImage escapingCGImageWithCGImage:];
      }

      v7 = CGImageProviderAuxInfo_auxiliaryInfo;
      v8 = CGImageProviderCreate();
      if (v8)
      {
        v9 = v8;
        v10 = CGImageCreateWithImageProvider();
        CFRelease(v9);
        if (v10)
        {
          CFAutorelease(v10);
          return v10;
        }
      }
    }
  }

  return image;
}

- (CGSize)pixelSize
{
  [(IFImage *)self size];
  v4 = v3;
  v6 = v5;
  [(IFImage *)self scale];
  v8 = v6 * v7;
  v9 = v4 * v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (IFImage)initWithData:(id)data uuid:(id)uuid validationToken:(id)token
{
  tokenCopy = token;
  uuidCopy = uuid;
  dataCopy = data;
  v11 = [[IFCacheImage alloc] initWithData:dataCopy uuid:uuidCopy validationToken:tokenCopy];

  return &v11->super.super;
}

- (IFImage)initWithCGImage:(CGImage *)image scale:(double)scale minimumSize:(CGSize)size placeholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  height = size.height;
  width = size.width;
  v9 = [(IFImage *)self initWithCGImage:image scale:scale];
  v10 = v9;
  if (v9)
  {
    [(IFImage *)v9 setMinimumSize:width, height];
    [(IFImage *)v10 setPlaceholder:placeholderCopy];
    [(IFImage *)v10 setValidationFlags:placeholderCopy];
  }

  return v10;
}

- (BOOL)writeToURL:(id)l options:(id)options
{
  optionsCopy = options;
  lCopy = l;
  cGImage = [(IFImage *)self CGImage];
  v9 = CGImageDestinationCreateWithURL(lCopy, *MEMORY[0x1E6963860], 1uLL, 0);

  if (v9)
  {
    v10 = cGImage == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    CGImageDestinationAddImage(v9, cGImage, optionsCopy);
    v12 = CGImageDestinationFinalize(v9);
LABEL_7:
    CFRelease(v9);
    v11 = v12;
    goto LABEL_8;
  }

  v12 = 0;
  v11 = 0;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (NSData)bitmapData
{
  [(IFImage *)self CGImage];
  v3 = CGImageGetProperty();
  if (!v3)
  {
    [(IFImage *)self size];
    v5 = v4;
    v7 = v6;
    [(IFImage *)self scale];
    v9 = [IFGraphicsContext bitmapContextWithSize:0 scale:v5 preset:v7, v8];
    cGImage = [(IFImage *)self CGImage];
    [(IFImage *)self size];
    v12 = v11;
    [(IFImage *)self size];
    [v9 drawCGImage:cGImage inRect:{0.0, 0.0, v12, v13}];
    data = [v9 data];
    [(IFImage *)self size];
    v16 = v15;
    v18 = v17;
    [(IFImage *)self minimumSize];
    v20 = v19;
    v22 = v21;
    [(IFImage *)self scale];
    v44 = 0x200000;
    v23 = v16;
    v24 = v18;
    v42 = v23;
    v43 = v24;
    LODWORD(v35) = 9;
    v37 = v25;
    HIDWORD(v35) = [data length];
    layerData = [(IFImage *)self layerData];
    v36 = [layerData length];

    v27 = v20;
    v28 = v22;
    v40 = v27;
    v41 = v28;
    [(IFImage *)self iconSize];
    *&v29 = v29;
    v38 = LODWORD(v29);
    [(IFImage *)self iconSize];
    v31 = v30;
    v39 = v31;
    v32 = objc_opt_new();
    [v32 appendBytes:&v35 length:48];
    [v32 appendData:data];
    layerData2 = [(IFImage *)self layerData];
    [v32 appendData:layerData2];

    v3 = [v32 copy];
  }

  return v3;
}

+ (void)_layerDataFromIFImageData:(NSObject *)a3 .cold.2(void *a1, int a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 2048;
  v6 = [a1 length];
  _os_log_error_impl(&dword_1B9DEC000, a3, OS_LOG_TYPE_ERROR, "Incorrect formed data. Expected layer data size (%d) exceeds data size (%lu)", v4, 0x12u);
}

@end