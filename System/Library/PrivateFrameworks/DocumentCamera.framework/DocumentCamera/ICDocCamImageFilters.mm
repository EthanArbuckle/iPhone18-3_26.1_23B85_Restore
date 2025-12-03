@interface ICDocCamImageFilters
+ (id)bradleyAdaptiveThreshold:(id)threshold;
+ (id)bradleyAdaptiveThreshold:(id)threshold orientation:(int64_t)orientation;
+ (id)bradleyAdaptiveThresholdWithBlur:(id)blur orientation:(int64_t)orientation;
+ (id)colorDocument:(id)document orientation:(int64_t)orientation constantColor:(BOOL)color;
+ (id)colorDocument:(id)document orientation:(int64_t)orientation filterName:(id)name filterAmount:(float)amount filterKey:(id)key;
+ (id)convertImageToGrayScale:(id)scale;
+ (id)filteredImage:(id)image imageFilterType:(signed __int16)type;
+ (id)filteredImage:(id)image imageFilterType:(signed __int16)type constantColor:(BOOL)color;
+ (id)filteredImage:(id)image orientation:(int64_t)orientation imageFilterType:(signed __int16)type;
+ (id)filteredImage:(id)image orientation:(int64_t)orientation imageFilterType:(signed __int16)type constantColor:(BOOL)color;
+ (id)grayscale:(id)grayscale orientation:(int64_t)orientation;
+ (id)grayscaleDocument:(id)document orientation:(int64_t)orientation;
+ (id)imageFilterNames;
+ (id)imageWithRGBColorspaceFromImage:(id)image;
+ (id)localizedImageFilterNameForName:(id)name;
+ (id)localizedImageFilterNameForType:(signed __int16)type;
+ (id)nonLocalizedImageFilterNameForType:(signed __int16)type;
+ (id)nonLocalizedImageFilterNames;
+ (id)perspectiveCorrectedCIImageFromCIImage:(id)image imageQuad:(id)quad;
+ (id)perspectiveCorrectedImageFromImage:(id)image imageQuad:(id)quad;
+ (id)perspectiveCorrectedImageFromImage:(id)image normalizedImageQuad:(id)quad;
+ (id)sharedCoreImageContext;
+ (id)whiteboardAndSaturation:(id)saturation orientation:(int64_t)orientation;
+ (id)whiteboardFilter:(id)filter orientation:(int64_t)orientation;
+ (signed)imageFilterTypeFromName:(id)name;
+ (signed)imageFilterTypeFromNonLocalizedName:(id)name;
@end

@implementation ICDocCamImageFilters

+ (id)imageFilterNames
{
  if (imageFilterNames_onceToken != -1)
  {
    +[ICDocCamImageFilters imageFilterNames];
  }

  v3 = imageFilterNames_sImageFilterNames;

  return v3;
}

void __40__ICDocCamImageFilters_imageFilterNames__block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = [ICDocCamImageFilters localizedImageFilterNameForType:0];
  v1 = [ICDocCamImageFilters localizedImageFilterNameForType:1, v0];
  v7[1] = v1;
  v2 = [ICDocCamImageFilters localizedImageFilterNameForType:2];
  v7[2] = v2;
  v3 = [ICDocCamImageFilters localizedImageFilterNameForType:3];
  v7[3] = v3;
  v4 = [ICDocCamImageFilters localizedImageFilterNameForType:4];
  v7[4] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v6 = imageFilterNames_sImageFilterNames;
  imageFilterNames_sImageFilterNames = v5;
}

+ (id)nonLocalizedImageFilterNames
{
  if (nonLocalizedImageFilterNames_onceToken != -1)
  {
    +[ICDocCamImageFilters nonLocalizedImageFilterNames];
  }

  v3 = nonLocalizedImageFilterNames_sImageFilterNames;

  return v3;
}

void __52__ICDocCamImageFilters_nonLocalizedImageFilterNames__block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = [ICDocCamImageFilters nonLocalizedImageFilterNameForType:0];
  v1 = [ICDocCamImageFilters nonLocalizedImageFilterNameForType:1, v0];
  v7[1] = v1;
  v2 = [ICDocCamImageFilters nonLocalizedImageFilterNameForType:2];
  v7[2] = v2;
  v3 = [ICDocCamImageFilters nonLocalizedImageFilterNameForType:3];
  v7[3] = v3;
  v4 = [ICDocCamImageFilters nonLocalizedImageFilterNameForType:4];
  v7[4] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v6 = nonLocalizedImageFilterNames_sImageFilterNames;
  nonLocalizedImageFilterNames_sImageFilterNames = v5;
}

+ (signed)imageFilterTypeFromName:(id)name
{
  nameCopy = name;
  imageFilterNames = [self imageFilterNames];
  v6 = [imageFilterNames indexOfObject:nameCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

+ (signed)imageFilterTypeFromNonLocalizedName:(id)name
{
  nameCopy = name;
  nonLocalizedImageFilterNames = [self nonLocalizedImageFilterNames];
  v6 = [nonLocalizedImageFilterNames indexOfObject:nameCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

+ (id)localizedImageFilterNameForName:(id)name
{
  v4 = [self imageFilterTypeFromName:name];

  return [self localizedImageFilterNameForType:v4];
}

+ (id)localizedImageFilterNameForType:(signed __int16)type
{
  v3 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      v4 = @"Color";
    }

    else
    {
      v4 = @"Photo";
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        v4 = @"Grayscale";
        break;
      case 3:
        v4 = @"Black & White";
        break;
      case 4:
        v4 = @"Whiteboard";
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = [DCLocalization localizedStringForKey:v4 value:v4 table:@"Localizable"];
LABEL_13:

  return v3;
}

+ (id)nonLocalizedImageFilterNameForType:(signed __int16)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_278F93840[type];
  }
}

+ (id)sharedCoreImageContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedCoreImageContext_context)
  {
    v3 = [MEMORY[0x277CBF740] contextWithOptions:0];
    v4 = sharedCoreImageContext_context;
    sharedCoreImageContext_context = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = sharedCoreImageContext_context;

  return v5;
}

+ (id)bradleyAdaptiveThreshold:(id)threshold
{
  thresholdCopy = threshold;
  dc_CGImage = [thresholdCopy dc_CGImage];
  Width = CGImageGetWidth(dc_CGImage);
  Height = CGImageGetHeight(dc_CGImage);
  DataProvider = CGImageGetDataProvider(dc_CGImage);
  v8 = CGDataProviderCopyData(DataProvider);
  bytes = [(__CFData *)v8 bytes];

  DeviceGray = CGColorSpaceCreateDeviceGray();
  v11 = CGBitmapContextCreate(0, Width, Height, 8uLL, Width, DeviceGray, 0);
  Data = CGBitmapContextGetData(v11);
  v13 = 8 * Width;
  v14 = (Height & 0x80000000) != 0;
  if ((Height & 0x80000000) == 0)
  {
    v15 = Height;
  }

  else
  {
    v15 = -Height;
  }

  v16 = !is_mul_ok(v15, v13);
  v17 = v15 * v13;
  if (!v17)
  {
    v14 = 0;
  }

  if (v16 || v14)
  {
    v48 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamImageFilters *)Width bradleyAdaptiveThreshold:v48];
    }

    CGContextRelease(v11);
    v47 = thresholdCopy;
  }

  else
  {
    v18 = Data;
    if ((Height & 0x80000000) == 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = -v17;
    }

    v20 = malloc_type_malloc(v19, 0x100004000313F17uLL);
    if (Height >= 1)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (Width >= 1)
        {
          v23 = 0;
          v24 = &v20[v21];
          v25 = (bytes + v21);
          v21 += Width;
          v26 = Width;
          do
          {
            v27 = *v25++;
            v23 += v27;
            v28 = v23;
            if (v22)
            {
              v28 = v24[-Width] + v23;
            }

            *v24++ = v28;
            --v26;
          }

          while (v26);
        }

        ++v22;
      }

      while (v22 != Height);
      v29 = 0;
      if ((Width & 0x80000000) == 0)
      {
        v30 = Width;
      }

      else
      {
        v30 = Width + 31;
      }

      v31 = v30 >> 5;
      v32 = -(v30 >> 5);
      do
      {
        if (Width >= 1)
        {
          v33 = (v29 - v31) & ~((v29 - v31) >> 31);
          if (v31 + v29 >= Height)
          {
            v34 = Height - 1;
          }

          else
          {
            v34 = v31 + v29;
          }

          v35 = v34 - v33;
          v36 = v34 * Width;
          v37 = v33 * Width;
          v38 = bytes;
          v39 = v18;
          v40 = v32;
          v41 = v31;
          v42 = Width;
          do
          {
            if (v41 >= Width)
            {
              v43 = Width - 1;
            }

            else
            {
              v43 = v41;
            }

            v44 = *v38++;
            if (v44 * ((v43 - (v40 & ~(v40 >> 31))) * v35) < ((v20[v43 + v36] - (v20[v43 + v37] + v20[(v40 & ~(v40 >> 31)) + v36]) + v20[(v40 & ~(v40 >> 31)) + v37]) * 0.849999994))
            {
              v45 = 0;
            }

            else
            {
              v45 = -1;
            }

            *v39++ = v45;
            ++v41;
            ++v40;
            --v42;
          }

          while (v42);
        }

        ++v29;
        v18 += Width;
        bytes += Width;
      }

      while (v29 != (Height & 0x7FFFFFFF));
    }

    free(v20);
    Image = CGBitmapContextCreateImage(v11);
    v47 = [MEMORY[0x277D755B8] dc_imageWithCGImage:Image];
    CGContextRelease(v11);
    CGImageRelease(Image);
  }

  CGColorSpaceRelease(DeviceGray);

  return v47;
}

+ (id)convertImageToGrayScale:(id)scale
{
  dc_CGImage = [scale dc_CGImage];
  Width = CGImageGetWidth(dc_CGImage);
  Height = CGImageGetHeight(dc_CGImage);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v7 = CGBitmapContextCreate(0, Width, Height, 8uLL, Width, DeviceGray, 0);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = Width;
  v12.size.height = Height;
  CGContextDrawImage(v7, v12, dc_CGImage);
  Image = CGBitmapContextCreateImage(v7);
  v9 = [MEMORY[0x277D755B8] dc_imageWithCGImage:Image];
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v7);
  CFRelease(Image);

  return v9;
}

+ (id)whiteboardFilter:(id)filter orientation:(int64_t)orientation
{
  v5 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(filter, "dc_CGImage")}];
  v6 = objc_alloc_init(WhiteboardFilter);
  [(WhiteboardFilter *)v6 setInputImage:v5];
  [(WhiteboardFilter *)v6 setStride:&unk_285C6D3F0];
  outputImage = [(WhiteboardFilter *)v6 outputImage];
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  [outputImage extent];
  v9 = [v8 createCGImage:outputImage fromRect:?];
  v10 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v9 scale:orientation orientation:1.0];
  CGImageRelease(v9);

  return v10;
}

+ (id)whiteboardAndSaturation:(id)saturation orientation:(int64_t)orientation
{
  v5 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(saturation, "dc_CGImage")}];
  v6 = objc_alloc_init(WhiteboardFilter);
  [(WhiteboardFilter *)v6 setInputImage:v5];
  [(WhiteboardFilter *)v6 setStride:&unk_285C6D3F0];
  outputImage = [(WhiteboardFilter *)v6 outputImage];
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  [outputImage extent];
  v9 = [v8 createCGImage:outputImage fromRect:?];
  v10 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v9 scale:orientation orientation:1.0];
  v11 = [MEMORY[0x277CBF750] filterWithName:@"CIColorControls"];
  [v11 setDefaults];
  [v11 setValue:&unk_285C6D408 forKey:@"inputSaturation"];
  v12 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(v10, "dc_CGImage")}];
  [v11 setValue:v12 forKey:@"inputImage"];

  v13 = [v11 valueForKey:@"outputImage"];
  [v13 extent];
  v14 = [v8 createCGImage:v13 fromRect:?];
  v15 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v14 scale:orientation orientation:1.0];
  CGImageRelease(v14);
  CGImageRelease(v9);

  return v15;
}

+ (id)grayscale:(id)grayscale orientation:(int64_t)orientation
{
  v5 = [ICDocCamImageFilters convertImageToGrayScale:grayscale];
  v6 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v5 scale:"dc_CGImage") orientation:{orientation, 1.0}];

  return v6;
}

+ (id)bradleyAdaptiveThreshold:(id)threshold orientation:(int64_t)orientation
{
  v5 = [ICDocCamImageFilters convertImageToGrayScale:threshold];
  v6 = [ICDocCamImageFilters bradleyAdaptiveThreshold:v5];
  v7 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v6 scale:"dc_CGImage") orientation:{orientation, 1.0}];

  return v7;
}

+ (id)bradleyAdaptiveThresholdWithBlur:(id)blur orientation:(int64_t)orientation
{
  v5 = [ICDocCamImageFilters convertImageToGrayScale:blur];
  v6 = [ICDocCamImageFilters bradleyAdaptiveThreshold:v5];
  v7 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v6 scale:"dc_CGImage") orientation:{orientation, 1.0}];

  v8 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(v7, "dc_CGImage")}];
  v9 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur" keysAndValues:{*MEMORY[0x277CBFAF0], v8, @"inputRadius", &unk_285C6D420, 0}];
  outputImage = [v9 outputImage];
  v11 = +[ICDocCamImageFilters sharedCoreImageContext];
  [outputImage extent];
  v12 = [v11 createCGImage:outputImage fromRect:?];
  v13 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v12 scale:orientation orientation:1.0];
  CGImageRelease(v12);

  return v13;
}

+ (id)colorDocument:(id)document orientation:(int64_t)orientation constantColor:(BOOL)color
{
  if (color)
  {
    v8 = @"CIDocumentEnhancer";
  }

  else
  {
    v8 = @"CIPaperWash";
  }

  if (color)
  {
    v9 = *"333?";
  }

  else
  {
    v9 = 1.0;
  }

  v10 = MEMORY[0x277CBFAA0];
  if (!color)
  {
    v10 = MEMORY[0x277CBFB10];
  }

  v11 = *v10;
  *&v12 = v9;
  v13 = [self colorDocument:document orientation:orientation filterName:v8 filterAmount:v11 filterKey:v12];

  return v13;
}

+ (id)colorDocument:(id)document orientation:(int64_t)orientation filterName:(id)name filterAmount:(float)amount filterKey:(id)key
{
  v11 = MEMORY[0x277CBF758];
  keyCopy = key;
  nameCopy = name;
  v14 = [v11 imageWithCGImage:{objc_msgSend(document, "dc_CGImage")}];
  v15 = [MEMORY[0x277CBF750] filterWithName:nameCopy];

  *&v16 = amount;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [v15 setValue:v17 forKey:keyCopy];

  [v15 setValue:v14 forKey:*MEMORY[0x277CBFAF0]];
  outputImage = [v15 outputImage];
  v19 = +[ICDocCamImageFilters sharedCoreImageContext];
  [outputImage extent];
  v20 = [v19 createCGImage:outputImage fromRect:?];
  v21 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v20 scale:orientation orientation:1.0];
  CGImageRelease(v20);

  return v21;
}

+ (id)grayscaleDocument:(id)document orientation:(int64_t)orientation
{
  v5 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(document, "dc_CGImage")}];
  v6 = [MEMORY[0x277CBF750] filterWithName:@"CIPaperWash"];
  [v6 setValue:v5 forKey:*MEMORY[0x277CBFAF0]];
  [v6 setValue:&unk_285C6D438 forKey:*MEMORY[0x277CBFB10]];
  outputImage = [v6 outputImage];
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  [outputImage extent];
  v9 = [v8 createCGImage:outputImage fromRect:?];
  v10 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v9 scale:orientation orientation:1.0];
  CGImageRelease(v9);

  return v10;
}

+ (id)filteredImage:(id)image imageFilterType:(signed __int16)type
{
  typeCopy = type;
  imageCopy = image;
  v7 = [self filteredImage:imageCopy orientation:objc_msgSend(imageCopy imageFilterType:{"dc_imageOrientation"), typeCopy}];

  return v7;
}

+ (id)filteredImage:(id)image imageFilterType:(signed __int16)type constantColor:(BOOL)color
{
  colorCopy = color;
  typeCopy = type;
  imageCopy = image;
  v9 = [self filteredImage:imageCopy orientation:objc_msgSend(imageCopy imageFilterType:"dc_imageOrientation") constantColor:{typeCopy, colorCopy}];

  return v9;
}

+ (id)filteredImage:(id)image orientation:(int64_t)orientation imageFilterType:(signed __int16)type
{
  typeCopy = type;
  imageCopy = image;
  v9 = objc_autoreleasePoolPush();
  v10 = 0;
  if (typeCopy <= 1)
  {
    if (typeCopy)
    {
      if (typeCopy != 1)
      {
        goto LABEL_13;
      }

      v11 = [self colorDocument:imageCopy orientation:orientation];
    }

    else
    {
      v11 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(imageCopy scale:"dc_CGImage") orientation:{orientation, 1.0}];
    }
  }

  else
  {
    switch(typeCopy)
    {
      case 2:
        v11 = [self grayscaleDocument:imageCopy orientation:orientation];
        break;
      case 3:
        v11 = [self bradleyAdaptiveThreshold:imageCopy orientation:orientation];
        break;
      case 4:
        v11 = [self whiteboardFilter:imageCopy orientation:orientation];
        break;
      default:
        goto LABEL_13;
    }
  }

  v10 = v11;
LABEL_13:
  objc_autoreleasePoolPop(v9);

  return v10;
}

+ (id)filteredImage:(id)image orientation:(int64_t)orientation imageFilterType:(signed __int16)type constantColor:(BOOL)color
{
  colorCopy = color;
  typeCopy = type;
  imageCopy = image;
  v11 = objc_autoreleasePoolPush();
  v12 = 0;
  if (typeCopy <= 1)
  {
    if (typeCopy)
    {
      if (typeCopy != 1)
      {
        goto LABEL_13;
      }

      v13 = [self colorDocument:imageCopy orientation:orientation constantColor:colorCopy];
    }

    else
    {
      v13 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(imageCopy scale:"dc_CGImage") orientation:{orientation, 1.0}];
    }
  }

  else
  {
    switch(typeCopy)
    {
      case 2:
        v13 = [self grayscaleDocument:imageCopy orientation:orientation];
        break;
      case 3:
        v13 = [self bradleyAdaptiveThreshold:imageCopy orientation:orientation];
        break;
      case 4:
        v13 = [self whiteboardFilter:imageCopy orientation:orientation];
        break;
      default:
        goto LABEL_13;
    }
  }

  v12 = v13;
LABEL_13:
  objc_autoreleasePoolPop(v11);

  return v12;
}

+ (id)imageWithRGBColorspaceFromImage:(id)image
{
  imageCopy = image;
  dc_CGImage = [imageCopy dc_CGImage];
  ColorSpace = CGImageGetColorSpace(dc_CGImage);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    Width = CGImageGetWidth(dc_CGImage);
    Height = CGImageGetHeight(dc_CGImage);
    v8 = DCTSUCreateRGBABitmapContext(0, Width, Height, 1.0);
    if (v8)
    {
      v9 = v8;
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v15.size.width = Width;
      v15.size.height = Height;
      CGContextDrawImage(v8, v15, dc_CGImage);
      Image = CGBitmapContextCreateImage(v9);
      if (Image)
      {
        v11 = Image;
        v12 = [MEMORY[0x277D755B8] dc_imageWithCGImage:Image scale:objc_msgSend(imageCopy orientation:{"dc_imageOrientation"), 1.0}];

        CFRelease(v11);
        imageCopy = v12;
      }

      CGContextRelease(v9);
    }
  }

  v13 = imageCopy;

  return imageCopy;
}

+ (id)perspectiveCorrectedCIImageFromCIImage:(id)image imageQuad:(id)quad
{
  v5 = MEMORY[0x277CBF750];
  quadCopy = quad;
  imageCopy = image;
  v8 = [v5 filterWithName:@"CIPerspectiveCorrection"];
  v9 = MEMORY[0x277CBF788];
  [quadCopy topLeft];
  v10 = [v9 vectorWithCGPoint:?];
  [v8 setValue:v10 forKey:@"inputTopLeft"];

  v11 = MEMORY[0x277CBF788];
  [quadCopy topRight];
  v12 = [v11 vectorWithCGPoint:?];
  [v8 setValue:v12 forKey:@"inputTopRight"];

  v13 = MEMORY[0x277CBF788];
  [quadCopy bottomLeft];
  v14 = [v13 vectorWithCGPoint:?];
  [v8 setValue:v14 forKey:@"inputBottomLeft"];

  v15 = MEMORY[0x277CBF788];
  [quadCopy bottomRight];
  v17 = v16;
  v19 = v18;

  v20 = [v15 vectorWithCGPoint:{v17, v19}];
  [v8 setValue:v20 forKey:@"inputBottomRight"];

  [v8 setValue:imageCopy forKey:*MEMORY[0x277CBFAF0]];
  v21 = [v8 valueForKey:*MEMORY[0x277CBFB50]];
  [v21 extent];
  v26 = CGRectInset(v25, 1.0, 1.0);
  v22 = [v21 imageByCroppingToRect:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];

  return v22;
}

+ (id)perspectiveCorrectedImageFromImage:(id)image imageQuad:(id)quad
{
  imageCopy = image;
  quadCopy = quad;
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  v9 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(imageCopy, "dc_CGImage")}];
  v10 = [self perspectiveCorrectedCIImageFromCIImage:v9 imageQuad:quadCopy];

  [v10 extent];
  v11 = [v8 createCGImage:v10 fromRect:?];
  if (v11)
  {
    v12 = v11;
    v13 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v11 scale:objc_msgSend(imageCopy orientation:{"dc_imageOrientation"), 1.0}];

    CGImageRelease(v12);
    imageCopy = v13;
  }

  return imageCopy;
}

+ (id)perspectiveCorrectedImageFromImage:(id)image normalizedImageQuad:(id)quad
{
  quadCopy = quad;
  imageCopy = image;
  dc_CGImage = [imageCopy dc_CGImage];
  Width = CGImageGetWidth(dc_CGImage);
  v10 = [quadCopy imageQuadByScalingBy:{Width, CGImageGetHeight(dc_CGImage)}];

  v11 = [self perspectiveCorrectedImageFromImage:imageCopy imageQuad:v10];

  return v11;
}

+ (void)bradleyAdaptiveThreshold:(os_log_t)log .cold.1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "adaptiveThreshold() overflow check failed with %d x %d image", v3, 0xEu);
}

@end