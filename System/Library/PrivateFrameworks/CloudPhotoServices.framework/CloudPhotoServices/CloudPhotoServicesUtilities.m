@interface CloudPhotoServicesUtilities
+ (CGImageSource)newImageSourceFromImageAtURL:(id)a3;
+ (CGSize)dimensionsForAVAsset:(id)a3;
+ (CGSize)sizeOfImageAtURL:(id)a3 orientationOut:(int *)a4;
+ (void)getDimensionsFromImageProperties:(id)a3 orientationOut:(int *)a4 widthOut:(int *)a5 heightOut:(int *)a6;
@end

@implementation CloudPhotoServicesUtilities

+ (void)getDimensionsFromImageProperties:(id)a3 orientationOut:(int *)a4 widthOut:(int *)a5 heightOut:(int *)a6
{
  v9 = a3;
  v18 = v9;
  if (a4)
  {
    v10 = [v9 objectForKey:*MEMORY[0x277CD3410]];
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

    *a4 = [v11 intValue];

    v9 = v18;
  }

  if (a5)
  {
    v14 = [v9 objectForKey:@"RawPixelWidth"];
    if (!v14)
    {
      v14 = [v18 objectForKey:*MEMORY[0x277CD3450]];
      if (!v14)
      {
        v14 = [v18 objectForKey:*MEMORY[0x277CD3110]];
      }
    }

    v15 = v14;
    *a5 = [v14 intValue];

    v9 = v18;
  }

  if (a6)
  {
    v16 = [v9 objectForKey:@"RawPixelHeight"];
    if (!v16)
    {
      v16 = [v18 objectForKey:*MEMORY[0x277CD3448]];
      if (!v16)
      {
        v16 = [v18 objectForKey:*MEMORY[0x277CD3118]];
      }
    }

    v17 = v16;
    *a6 = [v16 intValue];

    v9 = v18;
  }
}

+ (CGImageSource)newImageSourceFromImageAtURL:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 pathExtension];
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v4 conformingToType:*MEMORY[0x277CE1DB0]];
    v6 = [v5 identifier];

    if (v6)
    {
      v11 = *MEMORY[0x277CD3668];
      v12[0] = v6;
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
    v6 = 0;
  }

  v8 = CGImageSourceCreateWithURL(v3, v7);

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (CGSize)dimensionsForAVAsset:(id)a3
{
  width = *MEMORY[0x277CBF3A8];
  height = *(MEMORY[0x277CBF3A8] + 8);
  if (a3)
  {
    v5 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:a3];
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

+ (CGSize)sizeOfImageAtURL:(id)a3 orientationOut:(int *)a4
{
  v6 = [a1 newImageSourceFromImageAtURL:a3];
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  if (v6)
  {
    v9 = v6;
    v10 = CGImageSourceCopyPropertiesAtIndex(v6, 0, 0);
    if (v10)
    {
      v13 = 0;
      [a1 getDimensionsFromImageProperties:v10 orientationOut:a4 widthOut:&v13 + 4 heightOut:&v13];
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