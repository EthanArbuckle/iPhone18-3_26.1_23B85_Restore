@interface NSDictionary(Exif)
+ (CFDictionaryRef)vcp_exifFromImageURL:()Exif;
- (float)vcp_scaledExposureTime;
- (id)vcp_captureDeviceMake;
- (id)vcp_captureDeviceModel;
- (uint64_t)vcp_flashFired;
- (uint64_t)vcp_isAppleCapture;
@end

@implementation NSDictionary(Exif)

+ (CFDictionaryRef)vcp_exifFromImageURL:()Exif
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = CGImageSourceCreateWithURL(v3, 0)) != 0)
  {
    v9 = *MEMORY[0x1E696E0A8];
    v10[0] = MEMORY[0x1E695E110];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = CGImageSourceCopyPropertiesAtIndex(v5, 0, v6);
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (float)vcp_scaledExposureTime
{
  v2 = [self objectForKey:*MEMORY[0x1E696D9B0]];
  v3 = v2;
  v4 = -1.0;
  if (v2)
  {
    v5 = *MEMORY[0x1E696D9E0];
    v6 = [v2 objectForKey:*MEMORY[0x1E696D9E0]];

    if (v6)
    {
      v7 = [v3 objectForKey:v5];
      [v7 floatValue];
      v4 = v8;
    }
  }

  v9 = [self objectForKey:*MEMORY[0x1E696DE30]];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:VCPAppleMakerNote_SISMethod];
    v12 = v11;
    if (v11)
    {
      intValue = [v11 intValue];
      if (intValue > 4370)
      {
        if (intValue != 4627 && intValue != 4371)
        {
          goto LABEL_16;
        }
      }

      else if (intValue != 275 && intValue != 531)
      {
        goto LABEL_16;
      }

      v4 = v4 * 0.125;
    }

LABEL_16:
  }

  return v4;
}

- (uint64_t)vcp_flashFired
{
  v1 = [self objectForKey:*MEMORY[0x1E696D9B0]];
  v2 = v1;
  if (v1 && (v3 = *MEMORY[0x1E696D9F0], [v1 objectForKey:*MEMORY[0x1E696D9F0]], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v2 objectForKey:v3];
    intValue = [v5 intValue];

    v7 = intValue & 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)vcp_captureDeviceMake
{
  v1 = [self objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696DF48]];

  return v2;
}

- (id)vcp_captureDeviceModel
{
  v1 = [self objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E696DF50]];

  return v2;
}

- (uint64_t)vcp_isAppleCapture
{
  vcp_captureDeviceMake = [self vcp_captureDeviceMake];
  v2 = [vcp_captureDeviceMake isEqualToString:@"Apple"];

  return v2;
}

@end