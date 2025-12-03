@interface CloudPhotoServicesUtilities
+ (CGImageSource)newImageSourceFromImageAtURL:(id)l;
+ (CGSize)dimensionsForAVAsset:(id)asset;
+ (CGSize)sizeOfImageAtURL:(id)l orientationOut:(int *)out;
+ (void)getDimensionsFromImageProperties:(id)properties orientationOut:(int *)out widthOut:(int *)widthOut heightOut:(int *)heightOut;
@end

@implementation CloudPhotoServicesUtilities

+ (void)getDimensionsFromImageProperties:(id)properties orientationOut:(int *)out widthOut:(int *)widthOut heightOut:(int *)heightOut
{
  propertiesCopy = properties;
  v18 = propertiesCopy;
  if (out)
  {
    v10 = [propertiesCopy objectForKey:*MEMORY[0x277CD3410]];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = [v18 objectForKey:*MEMORY[0x277CD3490]];
      if (!v12 || (v13 = v12, [v12 objectForKey:*MEMORY[0x277CD34B8]], v11 = objc_claimAutoreleasedReturnValue(), v13, !v11))
      {
        v11 = &unk_2856B1770;
      }
    }

    *out = [v11 intValue];

    propertiesCopy = v18;
  }

  if (widthOut)
  {
    v14 = [propertiesCopy objectForKey:@"RawPixelWidth"];
    if (!v14)
    {
      v14 = [v18 objectForKey:*MEMORY[0x277CD3450]];
      if (!v14)
      {
        v14 = [v18 objectForKey:*MEMORY[0x277CD3110]];
      }
    }

    v15 = v14;
    *widthOut = [v14 intValue];

    propertiesCopy = v18;
  }

  if (heightOut)
  {
    v16 = [propertiesCopy objectForKey:@"RawPixelHeight"];
    if (!v16)
    {
      v16 = [v18 objectForKey:*MEMORY[0x277CD3448]];
      if (!v16)
      {
        v16 = [v18 objectForKey:*MEMORY[0x277CD3118]];
      }
    }

    v17 = v16;
    *heightOut = [v16 intValue];

    propertiesCopy = v18;
  }
}

+ (CGImageSource)newImageSourceFromImageAtURL:(id)l
{
  v12[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  if ([pathExtension length])
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:pathExtension conformingToType:*MEMORY[0x277CE1DB0]];
    identifier = [v5 identifier];

    if (identifier)
    {
      v11 = *MEMORY[0x277CD3668];
      v12[0] = identifier;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    identifier = 0;
  }

  v8 = CGImageSourceCreateWithURL(lCopy, v7);

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (CGSize)dimensionsForAVAsset:(id)asset
{
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  if (asset)
  {
    v5 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:asset];
    if ([v5 count])
    {
      v6 = [v5 objectAtIndex:0];
      [v6 naturalSize];
      v8 = v7;
      v10 = v9;
      if (v6)
      {
        [v6 preferredTransform];
      }

      v14.size.width = v10 * 0.0 + 0.0 * v8;
      v14.size.height = v14.size.width;
      v14.origin.x = 0.0;
      v14.origin.y = 0.0;
      v15 = CGRectStandardize(v14);
      width = v15.size.width;
      height = v15.size.height;
    }
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (CGSize)sizeOfImageAtURL:(id)l orientationOut:(int *)out
{
  v6 = [self newImageSourceFromImageAtURL:l];
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if (v6)
  {
    v9 = v6;
    v10 = CGImageSourceCopyPropertiesAtIndex(v6, 0, 0);
    if (v10)
    {
      v13 = 0;
      [self getDimensionsFromImageProperties:v10 orientationOut:out widthOut:&v13 + 4 heightOut:&v13];
      v7 = SHIDWORD(v13);
      v8 = v13;
    }

    CFRelease(v9);
  }

  v11 = v7;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

@end