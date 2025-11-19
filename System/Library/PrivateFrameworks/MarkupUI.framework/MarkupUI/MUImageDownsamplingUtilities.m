@interface MUImageDownsamplingUtilities
+ (BOOL)_flattenEXIFOrientationOfImage:(id)a3 toDestination:(id)a4;
+ (CGImageSource)_newImageSourceWithSourceContent:(id)a3;
+ (CGSize)_sizeFittingArea:(double)a3 withSize:(CGSize)a4;
+ (double)_maxDimensionOfSize:(CGSize)a3 fittingToArea:(double)a4;
+ (id)_flattenEXIFOrientation:(BOOL)a3 withDownsampling:(BOOL)a4 sourceContent:(id)a5 withContentType:(id)a6;
+ (id)_flattenEXIFOrientationForHEICData:(id)a3;
+ (id)_flattenRotation:(BOOL)a3 withDownsampling:(BOOL)a4 sourceImage:(id)a5;
+ (id)_preferredFileDisplayNameForSourceContent:(id)a3;
+ (id)_sourceContentType:(id)a3;
+ (id)_uniqueTemporaryDirectory;
+ (void)_shouldFlattenEXIFOrientation:(BOOL *)a3 andDownsample:(BOOL *)a4 sourceContent:(id)a5;
@end

@implementation MUImageDownsamplingUtilities

+ (id)_sourceContentType:(id)a3
{
  v3 = [a1 _newImageSourceWithSourceContent:a3];
  if (v3)
  {
    v4 = v3;
    v5 = CGImageSourceGetType(v3);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (CGImageSource)_newImageSourceWithSourceContent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = CGImageSourceCreateWithData(v3, 0);
  }

  else
  {
    v6 = CGImageSourceCreateWithURL(v3, 0);
  }

  v7 = v6;

  return v7;
}

+ (void)_shouldFlattenEXIFOrientation:(BOOL *)a3 andDownsample:(BOOL *)a4 sourceContent:(id)a5
{
  v8 = a5;
  if (a3)
  {
    *a3 = 0;
  }

  v22 = v8;
  if (a4)
  {
    *a4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v22;
    v10 = v9;
    if (a3 && [v9 imageOrientation])
    {
      *a3 = 1;
    }

    if (a4)
    {
      [v10 size];
      v12 = v11;
      [v10 size];
      if (v12 * v13 > maxImageArea())
      {
        *a4 = 1;
      }
    }
  }

  else
  {
    v14 = [a1 _newImageSourceWithSourceContent:v22];
    if (v14)
    {
      v15 = v14;
      if (a3)
      {
        v16 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
        v17 = [(__CFDictionary *)v16 valueForKey:*MEMORY[0x277CD3410]];
        if ([v17 longLongValue] >= 2)
        {
          *a3 = 1;
        }
      }

      if (a4)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);
        if (ImageAtIndex)
        {
          v19 = ImageAtIndex;
          Width = CGImageGetWidth(ImageAtIndex);
          v21 = (CGImageGetHeight(v19) * Width);
          if (maxImageArea() < v21)
          {
            *a4 = 1;
          }

          CGImageRelease(v19);
        }
      }

      CFRelease(v15);
    }
  }
}

+ (id)_flattenEXIFOrientation:(BOOL)a3 withDownsampling:(BOOL)a4 sourceContent:(id)a5 withContentType:(id)a6
{
  v7 = a4;
  v8 = a3;
  v40[4] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [a1 _uniqueTemporaryDirectory];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v37 = v8;
  v13 = [a1 _preferredFileDisplayNameForSourceContent:v10];
  v14 = [v11 preferredFilenameExtension];
  v38 = v13;
  v15 = [v12 URLByAppendingPathComponent:v13];
  v16 = v15;
  if (v14)
  {
    v17 = [v15 URLByAppendingPathExtension:v14];

    v16 = v17;
  }

  v18 = [v11 identifier];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [a1 _sourceContentType:v10];
  }

  v21 = v20;

  v22 = CGImageDestinationCreateWithURL(v16, v21, 1uLL, 0);
  if (v22)
  {
    v23 = v22;
    if (!v21 || (v24 = [a1 _newImageSourceWithSourceContent:v10]) == 0)
    {
LABEL_24:
      CFRelease(v23);
      goto LABEL_25;
    }

    isrc = v24;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v24, 0, 0);
    if (ImageAtIndex)
    {
      v26 = ImageAtIndex;
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(v26);
      CGImageRelease(v26);
      if (v7)
      {
LABEL_13:
        [a1 _maxDimensionOfSize:Width fittingToArea:{Height, maxImageArea()}];
LABEL_19:
        v39[0] = *MEMORY[0x277CD2D40];
        v30 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
        v31 = *MEMORY[0x277CD3618];
        v40[0] = v30;
        v40[1] = MEMORY[0x277CBEC28];
        v32 = *MEMORY[0x277CD3678];
        v39[1] = v31;
        v39[2] = v32;
        v39[3] = *MEMORY[0x277CD3610];
        v40[2] = MEMORY[0x277CBEC38];
        v40[3] = MEMORY[0x277CBEC38];
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

        if (v37)
        {
          v34 = [v33 mutableCopy];
          [v34 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CD3578]];

          v33 = v34;
        }

        CGImageDestinationAddImageFromSource(v23, isrc, 0, v33);
        if (!CGImageDestinationFinalize(v23))
        {

          NSLog(&cfstr_DownsampleImag.isa, v21, 0);
          v16 = 0;
        }

        CFRelease(isrc);

        goto LABEL_24;
      }
    }

    else
    {
      Height = 1.0;
      Width = 1.0;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    if (Width >= Height)
    {
      v29 = Width;
    }

    else
    {
      v29 = Height;
    }

    goto LABEL_19;
  }

  NSLog(&cfstr_DownsampleImag_0.isa, v21, 0);
  v16 = 0;
LABEL_25:

LABEL_26:

  return v16;
}

+ (id)_flattenRotation:(BOOL)a3 withDownsampling:(BOOL)a4 sourceImage:(id)a5
{
  v5 = a4;
  v7 = a5;
  [v7 size];
  if (v5)
  {
    v10 = maxImageArea();
    [v7 size];
    [a1 _sizeFittingArea:v10 withSize:{v11, v12}];
  }

  v13 = v8;
  v14 = v9;
  v15 = [MEMORY[0x277D75568] defaultFormat];
  [v15 setScale:1.0];
  v16 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v15 format:{v13, v14}];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__MUImageDownsamplingUtilities__flattenRotation_withDownsampling_sourceImage___block_invoke;
  v20[3] = &unk_27986E768;
  v21 = v7;
  v22 = v13;
  v23 = v14;
  v17 = v7;
  v18 = [v16 imageWithActions:v20];

  return v18;
}

+ (id)_flattenEXIFOrientationForHEICData:(id)a3
{
  v33[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _newImageSourceWithSourceContent:v4];
  if (!v5)
  {
    v11 = v4;
    goto LABEL_21;
  }

  v6 = v5;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    Width = CGImageGetWidth(ImageAtIndex);
    Height = CGImageGetHeight(v8);
    CGImageRelease(v8);
  }

  else
  {
    Height = 1.0;
    Width = 1.0;
  }

  if (Width >= Height)
  {
    v12 = Width;
  }

  else
  {
    v12 = Height;
  }

  v13 = *MEMORY[0x277CD3578];
  v14 = MEMORY[0x277CBEC38];
  v33[0] = MEMORY[0x277CBEC38];
  v15 = *MEMORY[0x277CD2D40];
  v32[0] = v13;
  v32[1] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v17 = *MEMORY[0x277CD3618];
  v33[1] = v16;
  v33[2] = MEMORY[0x277CBEC28];
  v18 = *MEMORY[0x277CD3580];
  v32[2] = v17;
  v32[3] = v18;
  v33[3] = *MEMORY[0x277CD3598];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
  v20 = [v19 mutableCopy];

  v21 = CGImageSourceCreateImageAtIndex(v6, 0, v20);
  [(__CFDictionary *)v20 setObject:*MEMORY[0x277CD3590] forKeyedSubscript:v18];
  v30 = *MEMORY[0x277CD2C48];
  v31 = v14;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [(__CFDictionary *)v20 setObject:v22 forKeyedSubscript:*MEMORY[0x277CD3588]];

  [(__CFDictionary *)v20 setObject:v14 forKeyedSubscript:*MEMORY[0x277CD3610]];
  v23 = CGImageSourceCreateImageAtIndex(v6, 0, v20);
  CFRelease(v6);
  v11 = v4;
  if (v21 && v23)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v25 = [*MEMORY[0x277CE1D90] identifier];
    v26 = CGImageDestinationCreateWithData(v24, v25, 1uLL, 0);

    if (v26)
    {
      v27 = objc_alloc_init(MUImageWriter);
      [(MUImageWriter *)v27 addGainMapImageToImageDestination:v26 sdrImage:v21 hdrImage:v23 imageMetadata:0 imageOptions:0];
      if (CGImageDestinationFinalize(v26))
      {
        v28 = v24;

        v11 = v28;
      }

      CFRelease(v26);
    }

    goto LABEL_17;
  }

  if (v21)
  {
LABEL_17:
    CGImageRelease(v21);
  }

  if (v23)
  {
    CGImageRelease(v23);
  }

LABEL_21:

  return v11;
}

+ (BOOL)_flattenEXIFOrientationOfImage:(id)a3 toDestination:(id)a4
{
  v25[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _sourceContentType:v6];
  v9 = CGImageDestinationCreateWithURL(v7, v8, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    v11 = [a1 _newImageSourceWithSourceContent:v6];
    if (v11)
    {
      v12 = v11;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
      if (ImageAtIndex)
      {
        v14 = ImageAtIndex;
        Width = CGImageGetWidth(ImageAtIndex);
        Height = CGImageGetHeight(v14);
        CGImageRelease(v14);
      }

      else
      {
        Height = 1.0;
        Width = 1.0;
      }

      if (Width >= Height)
      {
        v18 = Width;
      }

      else
      {
        v18 = Height;
      }

      v19 = *MEMORY[0x277CD3578];
      v25[0] = MEMORY[0x277CBEC38];
      v20 = *MEMORY[0x277CD2D40];
      v24[0] = v19;
      v24[1] = v20;
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      v24[2] = *MEMORY[0x277CD3618];
      v25[1] = v21;
      v25[2] = MEMORY[0x277CBEC28];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

      CGImageDestinationAddImageFromSource(v10, v12, 0, v22);
      v17 = CGImageDestinationFinalize(v10);
      if (!v17)
      {
        NSLog(&cfstr_DownsampleImag.isa, v8, v7);
      }

      CFRelease(v12);
    }

    else
    {
      v17 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_uniqueTemporaryDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = [v2 stringByAppendingPathComponent:v4];

    v2 = v5;
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v8 = [v2 stringByAppendingPathComponent:v7];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
  v10 = v14;
  v11 = v10;
  if (v10)
  {
    NSLog(&cfstr_FailedToCreate_2.isa, v10);
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  }

  return v12;
}

+ (id)_preferredFileDisplayNameForSourceContent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 lastPathComponent];
    v5 = [v4 stringByDeletingPathExtension];

    v6 = [v5 _stringByTrimmingDotDirectories];
  }

  else
  {
    v6 = 0;
  }

  if (![v6 length])
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];

    v6 = v8;
  }

  return v6;
}

+ (CGSize)_sizeFittingArea:(double)a3 withSize:(CGSize)a4
{
  if (a4.width * a4.height > a3)
  {
    a4.height = sqrt(a3 / (a4.width / a4.height));
    a4.width = a3 / a4.height;
  }

  width = a4.width;
  height = a4.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (double)_maxDimensionOfSize:(CGSize)a3 fittingToArea:(double)a4
{
  [a1 _sizeFittingArea:a4 withSize:{a3.width, a3.height}];
  if (v4 < v5)
  {
    v4 = v5;
  }

  return floor(v4);
}

@end