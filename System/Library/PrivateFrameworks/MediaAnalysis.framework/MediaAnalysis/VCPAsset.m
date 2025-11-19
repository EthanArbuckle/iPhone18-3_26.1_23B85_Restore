@interface VCPAsset
+ (void)unimplementedExceptionForMethodName:(id)a3;
- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange;
- (BOOL)hadFlash;
- (CGSize)originalMovieSize;
- (float)exposureTimeSeconds;
- (float)originalPhotoOffsetSeconds;
- (float)photoOffsetSeconds;
- (float)timelapseRate;
- (id)typeDescription;
@end

@implementation VCPAsset

+ (void)unimplementedExceptionForMethodName:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF30];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPAsset %@] should not be called", v3];
  v6 = [v4 exceptionWithName:@"NotImplementedException" reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)typeDescription
{
  if ([(VCPAsset *)self mediaType]== 1)
  {
    if (([(VCPAsset *)self mediaSubtypes]& 8) != 0)
    {
      return @"Live Photo";
    }

    if (([(VCPAsset *)self mediaSubtypes]& 1) != 0)
    {
      return @"Pano Photo";
    }

    if (([(VCPAsset *)self mediaSubtypes]& 4) != 0)
    {
      return @"Screenshot";
    }

    if (([(VCPAsset *)self mediaSubtypes]& 2) != 0)
    {
      return @"HDR Photo";
    }

    v3 = [(VCPAsset *)self mediaSubtypes];
    v4 = @"SDOF Photo";
    v5 = @"Photo";
    v6 = (v3 & 0x10) == 0;
  }

  else
  {
    if ([(VCPAsset *)self mediaType]!= 2)
    {
      return @"Unknown";
    }

    if (([(VCPAsset *)self mediaSubtypes]& 0x20000) != 0)
    {
      return @"Slow-mo Movie";
    }

    v7 = [(VCPAsset *)self mediaSubtypes];
    v4 = @"Timelapse Movie";
    v5 = @"Movie";
    v6 = (v7 & 0x40000) == 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (BOOL)hadFlash
{
  v2 = [(VCPAsset *)self exif];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 vcp_flashFired];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (float)exposureTimeSeconds
{
  v3 = 0.0;
  if ([(VCPAsset *)self isLivePhoto])
  {
    v4 = [(VCPAsset *)self exif];
    v5 = v4;
    if (v4)
    {
      [v4 vcp_scaledExposureTime];
      v3 = v6;
    }

    else
    {
      v3 = 0.0333;
    }
  }

  return v3;
}

- (float)photoOffsetSeconds
{
  v2 = [(VCPAsset *)self isLivePhoto];
  result = 1.6;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (float)originalPhotoOffsetSeconds
{
  v2 = [(VCPAsset *)self isLivePhoto];
  result = 1.6;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)slomoRange
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

- (float)timelapseRate
{
  v2 = [(VCPAsset *)self isTimelapse];
  result = 0.66667;
  if (!v2)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)originalMovieSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end