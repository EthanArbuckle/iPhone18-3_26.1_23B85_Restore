@interface AVAsset(IC_UI)
- (id)ic_previewImage;
@end

@implementation AVAsset(IC_UI)

- (id)ic_previewImage
{
  commonMetadata = [self commonMetadata];
  v3 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x1E6987680] keySpace:*MEMORY[0x1E6987838]];
  if (![v3 count])
  {
    v4 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x1E6987878] keySpace:*MEMORY[0x1E6987858]];

    v3 = v4;
  }

  if (![v3 count])
  {
    dataValue = 0;
    goto LABEL_8;
  }

  v5 = [v3 objectAtIndexedSubscript:0];
  dataValue = [v5 dataValue];

  if (!dataValue || ([MEMORY[0x1E69DCAB8] imageWithData:dataValue], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_8:
    v8 = [objc_alloc(MEMORY[0x1E6987E68]) initWithAsset:self];
    [v8 setAppliesPreferredTrackTransform:1];
    v16 = **&MEMORY[0x1E6960CC0];
    memset(timescale, 0, sizeof(timescale));
    v15 = 0;
    [self duration];
    v12 = 0;
    time1 = v16;
    v9 = [v8 copyCGImageAtTime:&time1 actualTime:0 error:&v12];
    if (v9)
    {
      v10 = v9;
      v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v9];
      CFRelease(v10);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end