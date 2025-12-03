@interface MUImageDownsamplingUtilities
+ (BOOL)_flattenEXIFOrientationOfImage:(id)image toDestination:(id)destination;
+ (CGImageSource)_newImageSourceWithSourceContent:(id)content;
+ (CGSize)_sizeFittingArea:(double)area withSize:(CGSize)size;
+ (double)_maxDimensionOfSize:(CGSize)size fittingToArea:(double)area;
+ (id)_flattenEXIFOrientation:(BOOL)orientation withDownsampling:(BOOL)downsampling sourceContent:(id)content withContentType:(id)type;
+ (id)_flattenEXIFOrientationForHEICData:(id)data;
+ (id)_flattenRotation:(BOOL)rotation withDownsampling:(BOOL)downsampling sourceImage:(id)image;
+ (id)_preferredFileDisplayNameForSourceContent:(id)content;
+ (id)_sourceContentType:(id)type;
+ (id)_uniqueTemporaryDirectory;
+ (void)_shouldFlattenEXIFOrientation:(BOOL *)orientation andDownsample:(BOOL *)downsample sourceContent:(id)content;
@end

@implementation MUImageDownsamplingUtilities

+ (id)_sourceContentType:(id)type
{
  v3 = [self _newImageSourceWithSourceContent:type];
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

+ (CGImageSource)_newImageSourceWithSourceContent:(id)content
{
  contentCopy = content;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = CGImageSourceCreateWithData(contentCopy, 0);
  }

  else
  {
    v6 = CGImageSourceCreateWithURL(contentCopy, 0);
  }

  v7 = v6;

  return v7;
}

+ (void)_shouldFlattenEXIFOrientation:(BOOL *)orientation andDownsample:(BOOL *)downsample sourceContent:(id)content
{
  contentCopy = content;
  if (orientation)
  {
    *orientation = 0;
  }

  v22 = contentCopy;
  if (downsample)
  {
    *downsample = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v22;
    v10 = v9;
    if (orientation && [v9 imageOrientation])
    {
      *orientation = 1;
    }

    if (downsample)
    {
      [v10 size];
      v12 = v11;
      [v10 size];
      if (v12 * v13 > maxImageArea())
      {
        *downsample = 1;
      }
    }
  }

  else
  {
    v14 = [self _newImageSourceWithSourceContent:v22];
    if (v14)
    {
      v15 = v14;
      if (orientation)
      {
        v16 = CGImageSourceCopyPropertiesAtIndex(v14, 0, 0);
        v17 = [(__CFDictionary *)v16 valueForKey:*MEMORY[0x277CD3410]];
        if ([v17 longLongValue] >= 2)
        {
          *orientation = 1;
        }
      }

      if (downsample)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);
        if (ImageAtIndex)
        {
          v19 = ImageAtIndex;
          Width = CGImageGetWidth(ImageAtIndex);
          v21 = (CGImageGetHeight(v19) * Width);
          if (maxImageArea() < v21)
          {
            *downsample = 1;
          }

          CGImageRelease(v19);
        }
      }

      CFRelease(v15);
    }
  }
}

+ (id)_flattenEXIFOrientation:(BOOL)orientation withDownsampling:(BOOL)downsampling sourceContent:(id)content withContentType:(id)type
{
  downsamplingCopy = downsampling;
  orientationCopy = orientation;
  v40[4] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  typeCopy = type;
  _uniqueTemporaryDirectory = [self _uniqueTemporaryDirectory];
  if (!_uniqueTemporaryDirectory)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v37 = orientationCopy;
  v13 = [self _preferredFileDisplayNameForSourceContent:contentCopy];
  preferredFilenameExtension = [typeCopy preferredFilenameExtension];
  v38 = v13;
  v15 = [_uniqueTemporaryDirectory URLByAppendingPathComponent:v13];
  v16 = v15;
  if (preferredFilenameExtension)
  {
    v17 = [v15 URLByAppendingPathExtension:preferredFilenameExtension];

    v16 = v17;
  }

  identifier = [typeCopy identifier];
  v19 = identifier;
  if (identifier)
  {
    v20 = identifier;
  }

  else
  {
    v20 = [self _sourceContentType:contentCopy];
  }

  v21 = v20;

  v22 = CGImageDestinationCreateWithURL(v16, v21, 1uLL, 0);
  if (v22)
  {
    v23 = v22;
    if (!v21 || (v24 = [self _newImageSourceWithSourceContent:contentCopy]) == 0)
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
      if (downsamplingCopy)
      {
LABEL_13:
        [self _maxDimensionOfSize:Width fittingToArea:{Height, maxImageArea()}];
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
      if (downsamplingCopy)
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

+ (id)_flattenRotation:(BOOL)rotation withDownsampling:(BOOL)downsampling sourceImage:(id)image
{
  downsamplingCopy = downsampling;
  imageCopy = image;
  [imageCopy size];
  if (downsamplingCopy)
  {
    v10 = maxImageArea();
    [imageCopy size];
    [self _sizeFittingArea:v10 withSize:{v11, v12}];
  }

  v13 = v8;
  v14 = v9;
  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  [defaultFormat setScale:1.0];
  v16 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:defaultFormat format:{v13, v14}];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__MUImageDownsamplingUtilities__flattenRotation_withDownsampling_sourceImage___block_invoke;
  v20[3] = &unk_27986E768;
  v21 = imageCopy;
  v22 = v13;
  v23 = v14;
  v17 = imageCopy;
  v18 = [v16 imageWithActions:v20];

  return v18;
}

+ (id)_flattenEXIFOrientationForHEICData:(id)data
{
  v33[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [self _newImageSourceWithSourceContent:dataCopy];
  if (!v5)
  {
    v11 = dataCopy;
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
  v11 = dataCopy;
  if (v21 && v23)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB28]);
    identifier = [*MEMORY[0x277CE1D90] identifier];
    v26 = CGImageDestinationCreateWithData(v24, identifier, 1uLL, 0);

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

+ (BOOL)_flattenEXIFOrientationOfImage:(id)image toDestination:(id)destination
{
  v25[3] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  destinationCopy = destination;
  v8 = [self _sourceContentType:imageCopy];
  v9 = CGImageDestinationCreateWithURL(destinationCopy, v8, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    v11 = [self _newImageSourceWithSourceContent:imageCopy];
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
        NSLog(&cfstr_DownsampleImag.isa, v8, destinationCopy);
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
  {
    v5 = [v2 stringByAppendingPathComponent:bundleIdentifier];

    v2 = v5;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v2 stringByAppendingPathComponent:uUIDString];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [defaultManager createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v14];
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

+ (id)_preferredFileDisplayNameForSourceContent:(id)content
{
  contentCopy = content;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    lastPathComponent = [contentCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    _stringByTrimmingDotDirectories = [stringByDeletingPathExtension _stringByTrimmingDotDirectories];
  }

  else
  {
    _stringByTrimmingDotDirectories = 0;
  }

  if (![_stringByTrimmingDotDirectories length])
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    _stringByTrimmingDotDirectories = uUIDString;
  }

  return _stringByTrimmingDotDirectories;
}

+ (CGSize)_sizeFittingArea:(double)area withSize:(CGSize)size
{
  if (size.width * size.height > area)
  {
    size.height = sqrt(area / (size.width / size.height));
    size.width = area / size.height;
  }

  width = size.width;
  height = size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (double)_maxDimensionOfSize:(CGSize)size fittingToArea:(double)area
{
  [self _sizeFittingArea:area withSize:{size.width, size.height}];
  if (v4 < v5)
  {
    v4 = v5;
  }

  return floor(v4);
}

@end