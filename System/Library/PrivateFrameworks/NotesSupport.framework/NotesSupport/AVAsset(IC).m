@interface AVAsset(IC)
- (CGImageSourceRef)newPreviewImageSource;
- (__CFData)previewImageDataWithUTType:()IC;
@end

@implementation AVAsset(IC)

- (__CFData)previewImageDataWithUTType:()IC
{
  v4 = a3;
  v5 = [a1 commonMetadata];
  v6 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v5 withKey:*MEMORY[0x1E6987680] keySpace:*MEMORY[0x1E6987838]];
  if (![v6 count])
  {
    v7 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v5 withKey:*MEMORY[0x1E6987878] keySpace:*MEMORY[0x1E6987858]];

    v6 = v7;
  }

  if (![v6 count] || (objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "dataValue"), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:a1];
    [v10 setAppliesPreferredTrackTransform:1];
    v20 = **&MEMORY[0x1E6960CC0];
    memset(timescale, 0, sizeof(timescale));
    v19 = 0;
    [a1 duration];
    v16 = 0;
    time1 = v20;
    v11 = [v10 copyCGImageAtTime:&time1 actualTime:0 error:&v16];
    v9 = 0;
    if (v11 && !v16)
    {
      v12 = [MEMORY[0x1E695DF88] data];
      v13 = [v4 identifier];
      v14 = CGImageDestinationCreateWithData(v12, v13, 1uLL, 0);

      CGImageDestinationAddImage(v14, v11, 0);
      v9 = 0;
      if (CGImageDestinationFinalize(v14))
      {
        v9 = v12;
      }

      CFRelease(v14);
    }

    CGImageRelease(v11);
  }

  return v9;
}

- (CGImageSourceRef)newPreviewImageSource
{
  v1 = [a1 previewImageDataWithUTType:*MEMORY[0x1E6982F28]];
  v2 = v1;
  if (v1)
  {
    v3 = CGImageSourceCreateWithData(v1, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end