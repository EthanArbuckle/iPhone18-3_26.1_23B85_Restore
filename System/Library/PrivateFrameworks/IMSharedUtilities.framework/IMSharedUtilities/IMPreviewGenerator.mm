@interface IMPreviewGenerator
+ (BOOL)validPreviewExistsAtPreviewURL:(id)l;
+ (CGImage)newCroppedAndRescaledImageFromImage:(CGImage *)image constraints:(IMPreviewConstraints *)constraints targetPxSize:(CGSize)size;
+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (CGRect)_scaledTargetRectForSize:(CGSize)size andThumbnailSize:(CGSize)thumbnailSize;
+ (CGSize)thumbnailFillSizeForWidth:(double)width imageSize:(CGSize)size scale:(double)scale;
+ (id)generateAndPersistMetadataFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error;
+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error;
+ (id)metadataExtension;
@end

@implementation IMPreviewGenerator

+ (id)metadataExtension
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = objc_opt_class();
      v3 = v6;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "%@ Tried to get metadata extension for an unsupported object", &v5, 0xCu);
    }
  }

  return 0;
}

+ (CGImage)newPreviewFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      v11 = v14;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "%@ Tried to generate preview for an unsupported object", &v13, 0xCu);
    }
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:2 userInfo:0];
  }

  return 0;
}

+ (id)generateAndPersistPreviewFromSourceURL:(id)l senderContext:(id)context balloonBundleID:(id)d withPreviewConstraints:(IMPreviewConstraints *)constraints outSize:(CGSize *)size error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      v15 = v18;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "%@ Tried to generate preview for an unsupported object", &v17, 0xCu);
    }
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:2 userInfo:0];
  }

  return 0;
}

+ (id)generateAndPersistMetadataFromSourceURL:(id)l senderContext:(id)context withPreviewConstraints:(IMPreviewConstraints *)constraints error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      v11 = v14;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "%@ Tried to generate metadata for an unsupported object", &v13, 0xCu);
    }
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMPreviewGenerationErrorDomain" code:2 userInfo:0];
  }

  return 0;
}

+ (CGImage)newCroppedAndRescaledImageFromImage:(CGImage *)image constraints:(IMPreviewConstraints *)constraints targetPxSize:(CGSize)size
{
  v33 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    return 0;
  }

  height = size.height;
  width = size.width;
  [IMImageUtilities imageRefPxSize:?];
  v11 = v10;
  v13 = v12;
  shouldScaleUpPreview = [objc_opt_class() shouldScaleUpPreview];
  [objc_opt_class() maxUpScale];
  v15 = *&constraints->var1.height;
  *buf = *&constraints->var0;
  *&buf[16] = v15;
  v32 = *&constraints->var3;
  [IMImageUtilities scaleFactorForThumbnailWithSize:buf constraints:shouldScaleUpPreview targetPxSize:v11 shouldScaleUpPreview:v13 maxUpScale:width, height, v16];
  v18 = fmin(v11 * v17, width);
  v19 = fmin(v13 * v17, height);
  v20 = malloc_type_calloc(1uLL, 4 * v18 * v19, 0xEE0A512CuLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v22 = CGBitmapContextCreate(v20, v18, v19, 8uLL, 4 * v18, DeviceRGB, 0x4001u);
  if (v22)
  {
    [self _scaledTargetRectForSize:v18 andThumbnailSize:{v19, v11, v13}];
    CGContextDrawImage(v22, v34, image);
    if ([self shouldShadePreview])
    {
      v29 = 0;
      v30 = 0;
      [IMImageUtilities sampleImageEdges:v20 usingRect:&v30 forMostlyWhitePixels:&v29 otherPixels:4 * v18 bytesPerRow:0.0, 0.0, v18, v19];
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = v30;
          *&buf[12] = 2048;
          *&buf[14] = v29;
          _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Sampled edges: white %tu other: %tu", buf, 0x16u);
        }
      }

      if ((v29 + v30) / 5.0 < v30)
      {
        CGContextSetBlendMode(v22, kCGBlendModeSourceAtop);
        *buf = xmmword_1A88E1268;
        *&buf[16] = unk_1A88E1278;
        v24 = CGColorCreate(DeviceRGB, buf);
        CGContextSetFillColorWithColor(v22, v24);
        v35.origin.x = 0.0;
        v35.origin.y = 0.0;
        v35.size.width = v18;
        v35.size.height = v19;
        CGContextFillRect(v22, v35);
        if (v24)
        {
          CFRelease(v24);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Crop image if necessary", buf, 2u);
      }
    }

    Image = CGBitmapContextCreateImage(v22);
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "+[IMPreviewGenerator newCroppedAndRescaledImageFromImage:constraints:targetPxSize:]";
        _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "IMImagePreviewGenerator - %s Failed to generate image context", buf, 0xCu);
      }
    }

    Image = 0;
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  free(v20);
LABEL_17:
  if (v22)
  {
    CFRelease(v22);
  }

  if (DeviceRGB)
  {
    CFRelease(DeviceRGB);
  }

  return Image;
}

+ (CGSize)thumbnailFillSizeForWidth:(double)width imageSize:(CGSize)size scale:(double)scale
{
  v5 = fmax(size.width / size.height, 0.75);
  if (v5 > 1.77777778)
  {
    v5 = 1.77777778;
  }

  v6 = width / v5;
  v7 = ceil(width);
  v8 = ceil(v6);
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGRect)_scaledTargetRectForSize:(CGSize)size andThumbnailSize:(CGSize)thumbnailSize
{
  width = size.width;
  v5 = size.width / thumbnailSize.width <= size.height / thumbnailSize.height;
  v6 = thumbnailSize.width / thumbnailSize.height;
  if (v5)
  {
    v10 = size.height * v6;
    v9 = (size.height * v6 - width) * -0.5;
    v8 = 0.0;
    height = size.height;
    width = v10;
  }

  else
  {
    height = width / v6;
    v8 = (width / v6 - size.height) * -0.5;
    v9 = 0.0;
  }

  v11 = v8;
  v12 = width;
  result.size.height = height;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

+ (BOOL)validPreviewExistsAtPreviewURL:(id)l
{
  v3 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  path = [lCopy path];

  LOBYTE(lCopy) = [defaultManager fileExistsAtPath:path];
  return lCopy;
}

@end