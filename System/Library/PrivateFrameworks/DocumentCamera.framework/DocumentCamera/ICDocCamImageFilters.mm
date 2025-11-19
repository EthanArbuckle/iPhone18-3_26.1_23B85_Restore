@interface ICDocCamImageFilters
+ (id)bradleyAdaptiveThreshold:(id)a3;
+ (id)bradleyAdaptiveThreshold:(id)a3 orientation:(int64_t)a4;
+ (id)bradleyAdaptiveThresholdWithBlur:(id)a3 orientation:(int64_t)a4;
+ (id)colorDocument:(id)a3 orientation:(int64_t)a4 constantColor:(BOOL)a5;
+ (id)colorDocument:(id)a3 orientation:(int64_t)a4 filterName:(id)a5 filterAmount:(float)a6 filterKey:(id)a7;
+ (id)convertImageToGrayScale:(id)a3;
+ (id)filteredImage:(id)a3 imageFilterType:(signed __int16)a4;
+ (id)filteredImage:(id)a3 imageFilterType:(signed __int16)a4 constantColor:(BOOL)a5;
+ (id)filteredImage:(id)a3 orientation:(int64_t)a4 imageFilterType:(signed __int16)a5;
+ (id)filteredImage:(id)a3 orientation:(int64_t)a4 imageFilterType:(signed __int16)a5 constantColor:(BOOL)a6;
+ (id)grayscale:(id)a3 orientation:(int64_t)a4;
+ (id)grayscaleDocument:(id)a3 orientation:(int64_t)a4;
+ (id)imageFilterNames;
+ (id)imageWithRGBColorspaceFromImage:(id)a3;
+ (id)localizedImageFilterNameForName:(id)a3;
+ (id)localizedImageFilterNameForType:(signed __int16)a3;
+ (id)nonLocalizedImageFilterNameForType:(signed __int16)a3;
+ (id)nonLocalizedImageFilterNames;
+ (id)perspectiveCorrectedCIImageFromCIImage:(id)a3 imageQuad:(id)a4;
+ (id)perspectiveCorrectedImageFromImage:(id)a3 imageQuad:(id)a4;
+ (id)perspectiveCorrectedImageFromImage:(id)a3 normalizedImageQuad:(id)a4;
+ (id)sharedCoreImageContext;
+ (id)whiteboardAndSaturation:(id)a3 orientation:(int64_t)a4;
+ (id)whiteboardFilter:(id)a3 orientation:(int64_t)a4;
+ (signed)imageFilterTypeFromName:(id)a3;
+ (signed)imageFilterTypeFromNonLocalizedName:(id)a3;
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

+ (signed)imageFilterTypeFromName:(id)a3
{
  v4 = a3;
  v5 = [a1 imageFilterNames];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

+ (signed)imageFilterTypeFromNonLocalizedName:(id)a3
{
  v4 = a3;
  v5 = [a1 nonLocalizedImageFilterNames];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

+ (id)localizedImageFilterNameForName:(id)a3
{
  v4 = [a1 imageFilterTypeFromName:a3];

  return [a1 localizedImageFilterNameForType:v4];
}

+ (id)localizedImageFilterNameForType:(signed __int16)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
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
    switch(a3)
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

+ (id)nonLocalizedImageFilterNameForType:(signed __int16)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_278F93840[a3];
  }
}

+ (id)sharedCoreImageContext
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!sharedCoreImageContext_context)
  {
    v3 = [MEMORY[0x277CBF740] contextWithOptions:0];
    v4 = sharedCoreImageContext_context;
    sharedCoreImageContext_context = v3;
  }

  objc_sync_exit(v2);

  v5 = sharedCoreImageContext_context;

  return v5;
}

+ (id)bradleyAdaptiveThreshold:(id)a3
{
  v3 = a3;
  v4 = [v3 dc_CGImage];
  Width = CGImageGetWidth(v4);
  Height = CGImageGetHeight(v4);
  DataProvider = CGImageGetDataProvider(v4);
  v8 = CGDataProviderCopyData(DataProvider);
  v9 = [(__CFData *)v8 bytes];

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
    v47 = v3;
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
          v25 = (v9 + v21);
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
          v38 = v9;
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
        v9 += Width;
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

+ (id)convertImageToGrayScale:(id)a3
{
  v3 = [a3 dc_CGImage];
  Width = CGImageGetWidth(v3);
  Height = CGImageGetHeight(v3);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v7 = CGBitmapContextCreate(0, Width, Height, 8uLL, Width, DeviceGray, 0);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = Width;
  v12.size.height = Height;
  CGContextDrawImage(v7, v12, v3);
  Image = CGBitmapContextCreateImage(v7);
  v9 = [MEMORY[0x277D755B8] dc_imageWithCGImage:Image];
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v7);
  CFRelease(Image);

  return v9;
}

+ (id)whiteboardFilter:(id)a3 orientation:(int64_t)a4
{
  v5 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(a3, "dc_CGImage")}];
  v6 = objc_alloc_init(WhiteboardFilter);
  [(WhiteboardFilter *)v6 setInputImage:v5];
  [(WhiteboardFilter *)v6 setStride:&unk_285C6D3F0];
  v7 = [(WhiteboardFilter *)v6 outputImage];
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  [v7 extent];
  v9 = [v8 createCGImage:v7 fromRect:?];
  v10 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v9 scale:a4 orientation:1.0];
  CGImageRelease(v9);

  return v10;
}

+ (id)whiteboardAndSaturation:(id)a3 orientation:(int64_t)a4
{
  v5 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(a3, "dc_CGImage")}];
  v6 = objc_alloc_init(WhiteboardFilter);
  [(WhiteboardFilter *)v6 setInputImage:v5];
  [(WhiteboardFilter *)v6 setStride:&unk_285C6D3F0];
  v7 = [(WhiteboardFilter *)v6 outputImage];
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  [v7 extent];
  v9 = [v8 createCGImage:v7 fromRect:?];
  v10 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v9 scale:a4 orientation:1.0];
  v11 = [MEMORY[0x277CBF750] filterWithName:@"CIColorControls"];
  [v11 setDefaults];
  [v11 setValue:&unk_285C6D408 forKey:@"inputSaturation"];
  v12 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(v10, "dc_CGImage")}];
  [v11 setValue:v12 forKey:@"inputImage"];

  v13 = [v11 valueForKey:@"outputImage"];
  [v13 extent];
  v14 = [v8 createCGImage:v13 fromRect:?];
  v15 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v14 scale:a4 orientation:1.0];
  CGImageRelease(v14);
  CGImageRelease(v9);

  return v15;
}

+ (id)grayscale:(id)a3 orientation:(int64_t)a4
{
  v5 = [ICDocCamImageFilters convertImageToGrayScale:a3];
  v6 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v5 scale:"dc_CGImage") orientation:{a4, 1.0}];

  return v6;
}

+ (id)bradleyAdaptiveThreshold:(id)a3 orientation:(int64_t)a4
{
  v5 = [ICDocCamImageFilters convertImageToGrayScale:a3];
  v6 = [ICDocCamImageFilters bradleyAdaptiveThreshold:v5];
  v7 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v6 scale:"dc_CGImage") orientation:{a4, 1.0}];

  return v7;
}

+ (id)bradleyAdaptiveThresholdWithBlur:(id)a3 orientation:(int64_t)a4
{
  v5 = [ICDocCamImageFilters convertImageToGrayScale:a3];
  v6 = [ICDocCamImageFilters bradleyAdaptiveThreshold:v5];
  v7 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v6 scale:"dc_CGImage") orientation:{a4, 1.0}];

  v8 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(v7, "dc_CGImage")}];
  v9 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur" keysAndValues:{*MEMORY[0x277CBFAF0], v8, @"inputRadius", &unk_285C6D420, 0}];
  v10 = [v9 outputImage];
  v11 = +[ICDocCamImageFilters sharedCoreImageContext];
  [v10 extent];
  v12 = [v11 createCGImage:v10 fromRect:?];
  v13 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v12 scale:a4 orientation:1.0];
  CGImageRelease(v12);

  return v13;
}

+ (id)colorDocument:(id)a3 orientation:(int64_t)a4 constantColor:(BOOL)a5
{
  if (a5)
  {
    v8 = @"CIDocumentEnhancer";
  }

  else
  {
    v8 = @"CIPaperWash";
  }

  if (a5)
  {
    v9 = *"333?";
  }

  else
  {
    v9 = 1.0;
  }

  v10 = MEMORY[0x277CBFAA0];
  if (!a5)
  {
    v10 = MEMORY[0x277CBFB10];
  }

  v11 = *v10;
  *&v12 = v9;
  v13 = [a1 colorDocument:a3 orientation:a4 filterName:v8 filterAmount:v11 filterKey:v12];

  return v13;
}

+ (id)colorDocument:(id)a3 orientation:(int64_t)a4 filterName:(id)a5 filterAmount:(float)a6 filterKey:(id)a7
{
  v11 = MEMORY[0x277CBF758];
  v12 = a7;
  v13 = a5;
  v14 = [v11 imageWithCGImage:{objc_msgSend(a3, "dc_CGImage")}];
  v15 = [MEMORY[0x277CBF750] filterWithName:v13];

  *&v16 = a6;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  [v15 setValue:v17 forKey:v12];

  [v15 setValue:v14 forKey:*MEMORY[0x277CBFAF0]];
  v18 = [v15 outputImage];
  v19 = +[ICDocCamImageFilters sharedCoreImageContext];
  [v18 extent];
  v20 = [v19 createCGImage:v18 fromRect:?];
  v21 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v20 scale:a4 orientation:1.0];
  CGImageRelease(v20);

  return v21;
}

+ (id)grayscaleDocument:(id)a3 orientation:(int64_t)a4
{
  v5 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(a3, "dc_CGImage")}];
  v6 = [MEMORY[0x277CBF750] filterWithName:@"CIPaperWash"];
  [v6 setValue:v5 forKey:*MEMORY[0x277CBFAF0]];
  [v6 setValue:&unk_285C6D438 forKey:*MEMORY[0x277CBFB10]];
  v7 = [v6 outputImage];
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  [v7 extent];
  v9 = [v8 createCGImage:v7 fromRect:?];
  v10 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v9 scale:a4 orientation:1.0];
  CGImageRelease(v9);

  return v10;
}

+ (id)filteredImage:(id)a3 imageFilterType:(signed __int16)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 filteredImage:v6 orientation:objc_msgSend(v6 imageFilterType:{"dc_imageOrientation"), v4}];

  return v7;
}

+ (id)filteredImage:(id)a3 imageFilterType:(signed __int16)a4 constantColor:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [a1 filteredImage:v8 orientation:objc_msgSend(v8 imageFilterType:"dc_imageOrientation") constantColor:{v6, v5}];

  return v9;
}

+ (id)filteredImage:(id)a3 orientation:(int64_t)a4 imageFilterType:(signed __int16)a5
{
  v5 = a5;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v11 = [a1 colorDocument:v8 orientation:a4];
    }

    else
    {
      v11 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v8 scale:"dc_CGImage") orientation:{a4, 1.0}];
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v11 = [a1 grayscaleDocument:v8 orientation:a4];
        break;
      case 3:
        v11 = [a1 bradleyAdaptiveThreshold:v8 orientation:a4];
        break;
      case 4:
        v11 = [a1 whiteboardFilter:v8 orientation:a4];
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

+ (id)filteredImage:(id)a3 orientation:(int64_t)a4 imageFilterType:(signed __int16)a5 constantColor:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = objc_autoreleasePoolPush();
  v12 = 0;
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_13;
      }

      v13 = [a1 colorDocument:v10 orientation:a4 constantColor:v6];
    }

    else
    {
      v13 = [MEMORY[0x277D755B8] dc_imageWithCGImage:objc_msgSend(v10 scale:"dc_CGImage") orientation:{a4, 1.0}];
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v13 = [a1 grayscaleDocument:v10 orientation:a4];
        break;
      case 3:
        v13 = [a1 bradleyAdaptiveThreshold:v10 orientation:a4];
        break;
      case 4:
        v13 = [a1 whiteboardFilter:v10 orientation:a4];
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

+ (id)imageWithRGBColorspaceFromImage:(id)a3
{
  v3 = a3;
  v4 = [v3 dc_CGImage];
  ColorSpace = CGImageGetColorSpace(v4);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v4);
    v8 = DCTSUCreateRGBABitmapContext(0, Width, Height, 1.0);
    if (v8)
    {
      v9 = v8;
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v15.size.width = Width;
      v15.size.height = Height;
      CGContextDrawImage(v8, v15, v4);
      Image = CGBitmapContextCreateImage(v9);
      if (Image)
      {
        v11 = Image;
        v12 = [MEMORY[0x277D755B8] dc_imageWithCGImage:Image scale:objc_msgSend(v3 orientation:{"dc_imageOrientation"), 1.0}];

        CFRelease(v11);
        v3 = v12;
      }

      CGContextRelease(v9);
    }
  }

  v13 = v3;

  return v3;
}

+ (id)perspectiveCorrectedCIImageFromCIImage:(id)a3 imageQuad:(id)a4
{
  v5 = MEMORY[0x277CBF750];
  v6 = a4;
  v7 = a3;
  v8 = [v5 filterWithName:@"CIPerspectiveCorrection"];
  v9 = MEMORY[0x277CBF788];
  [v6 topLeft];
  v10 = [v9 vectorWithCGPoint:?];
  [v8 setValue:v10 forKey:@"inputTopLeft"];

  v11 = MEMORY[0x277CBF788];
  [v6 topRight];
  v12 = [v11 vectorWithCGPoint:?];
  [v8 setValue:v12 forKey:@"inputTopRight"];

  v13 = MEMORY[0x277CBF788];
  [v6 bottomLeft];
  v14 = [v13 vectorWithCGPoint:?];
  [v8 setValue:v14 forKey:@"inputBottomLeft"];

  v15 = MEMORY[0x277CBF788];
  [v6 bottomRight];
  v17 = v16;
  v19 = v18;

  v20 = [v15 vectorWithCGPoint:{v17, v19}];
  [v8 setValue:v20 forKey:@"inputBottomRight"];

  [v8 setValue:v7 forKey:*MEMORY[0x277CBFAF0]];
  v21 = [v8 valueForKey:*MEMORY[0x277CBFB50]];
  [v21 extent];
  v26 = CGRectInset(v25, 1.0, 1.0);
  v22 = [v21 imageByCroppingToRect:{v26.origin.x, v26.origin.y, v26.size.width, v26.size.height}];

  return v22;
}

+ (id)perspectiveCorrectedImageFromImage:(id)a3 imageQuad:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ICDocCamImageFilters sharedCoreImageContext];
  v9 = [MEMORY[0x277CBF758] imageWithCGImage:{objc_msgSend(v6, "dc_CGImage")}];
  v10 = [a1 perspectiveCorrectedCIImageFromCIImage:v9 imageQuad:v7];

  [v10 extent];
  v11 = [v8 createCGImage:v10 fromRect:?];
  if (v11)
  {
    v12 = v11;
    v13 = [MEMORY[0x277D755B8] dc_imageWithCGImage:v11 scale:objc_msgSend(v6 orientation:{"dc_imageOrientation"), 1.0}];

    CGImageRelease(v12);
    v6 = v13;
  }

  return v6;
}

+ (id)perspectiveCorrectedImageFromImage:(id)a3 normalizedImageQuad:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dc_CGImage];
  Width = CGImageGetWidth(v8);
  v10 = [v6 imageQuadByScalingBy:{Width, CGImageGetHeight(v8)}];

  v11 = [a1 perspectiveCorrectedImageFromImage:v7 imageQuad:v10];

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