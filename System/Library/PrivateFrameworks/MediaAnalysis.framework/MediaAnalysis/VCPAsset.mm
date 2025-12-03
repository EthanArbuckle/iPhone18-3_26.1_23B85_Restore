@interface VCPAsset
+ (void)unimplementedExceptionForMethodName:(id)name;
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

+ (void)unimplementedExceptionForMethodName:(id)name
{
  nameCopy = name;
  v4 = MEMORY[0x1E695DF30];
  nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPAsset %@] should not be called", nameCopy];
  v6 = [v4 exceptionWithName:@"NotImplementedException" reason:nameCopy userInfo:0];
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

    mediaSubtypes = [(VCPAsset *)self mediaSubtypes];
    v4 = @"SDOF Photo";
    v5 = @"Photo";
    v6 = (mediaSubtypes & 0x10) == 0;
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

    mediaSubtypes2 = [(VCPAsset *)self mediaSubtypes];
    v4 = @"Timelapse Movie";
    v5 = @"Movie";
    v6 = (mediaSubtypes2 & 0x40000) == 0;
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
  exif = [(VCPAsset *)self exif];
  v3 = exif;
  if (exif)
  {
    vcp_flashFired = [exif vcp_flashFired];
  }

  else
  {
    vcp_flashFired = 0;
  }

  return vcp_flashFired;
}

- (float)exposureTimeSeconds
{
  v3 = 0.0;
  if ([(VCPAsset *)self isLivePhoto])
  {
    exif = [(VCPAsset *)self exif];
    v5 = exif;
    if (exif)
    {
      [exif vcp_scaledExposureTime];
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
  isLivePhoto = [(VCPAsset *)self isLivePhoto];
  result = 1.6;
  if (!isLivePhoto)
  {
    return 0.0;
  }

  return result;
}

- (float)originalPhotoOffsetSeconds
{
  isLivePhoto = [(VCPAsset *)self isLivePhoto];
  result = 1.6;
  if (!isLivePhoto)
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
  isTimelapse = [(VCPAsset *)self isTimelapse];
  result = 0.66667;
  if (!isTimelapse)
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