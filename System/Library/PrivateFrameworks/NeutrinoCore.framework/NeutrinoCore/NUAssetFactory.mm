@interface NUAssetFactory
+ (id)imageAssetFromURL:(id)l options:(id)options error:(id *)error;
+ (id)imageAssetWithCGImage:(CGImage *)image type:(int64_t)type options:(id)options error:(id *)error;
+ (id)imageAssetWithCIImage:(id)image type:(int64_t)type options:(id)options error:(id *)error;
+ (id)imageAssetWithCVPixelBuffer:(__CVBuffer *)buffer type:(int64_t)type options:(id)options error:(id *)error;
+ (id)imageAssetWithIOSurface:(id)surface type:(int64_t)type options:(id)options error:(id *)error;
+ (id)livePhotoAssetFromImageURL:(id)l videoURL:(id)rL options:(id)options error:(id *)error;
+ (id)videoAssetFromURL:(id)l options:(id)options error:(id *)error;
@end

@implementation NUAssetFactory

+ (id)imageAssetWithCGImage:(CGImage *)image type:(int64_t)type options:(id)options error:(id *)error
{
  v9 = NUAssetOptionIdentifier;
  optionsCopy = options;
  v11 = [optionsCopy objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    image = v11;
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    if (type > 4)
    {
      v15 = @"???";
    }

    else
    {
      v15 = off_1E8109AF0[type];
    }

    v16 = v15;
    image = [v14 stringWithFormat:@"CGImage[%@]<%p>", v16, image];
  }

  v17 = [[_NUCGImageAsset alloc] initWithCGImage:image type:type identifier:image];
  v18 = [(_NUAsset *)v17 loadWithOptions:optionsCopy error:error];

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)imageAssetWithIOSurface:(id)surface type:(int64_t)type options:(id)options error:(id *)error
{
  surfaceCopy = surface;
  v10 = NUAssetOptionIdentifier;
  optionsCopy = options;
  v12 = [optionsCopy objectForKeyedSubscript:v10];
  v13 = v12;
  if (v12)
  {
    surfaceCopy = v12;
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    if (type > 4)
    {
      v16 = @"???";
    }

    else
    {
      v16 = off_1E8109AF0[type];
    }

    v17 = v16;
    surfaceCopy = [v15 stringWithFormat:@"IOSurface[%@]<%p>", v17, surfaceCopy];
  }

  v18 = [[_NUIOSurfaceAsset alloc] initWithIOSurface:surfaceCopy type:type identifier:surfaceCopy];
  v19 = [(_NUAsset *)v18 loadWithOptions:optionsCopy error:error];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)imageAssetWithCVPixelBuffer:(__CVBuffer *)buffer type:(int64_t)type options:(id)options error:(id *)error
{
  v9 = NUAssetOptionIdentifier;
  optionsCopy = options;
  v11 = [optionsCopy objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    buffer = v11;
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    if (type > 4)
    {
      v15 = @"???";
    }

    else
    {
      v15 = off_1E8109AF0[type];
    }

    v16 = v15;
    buffer = [v14 stringWithFormat:@"CVPixelBufferRef[%@]<%p>", v16, buffer];
  }

  v17 = [[_NUCVPixelBufferAsset alloc] initWithCVPixelBuffer:buffer type:type identifier:buffer];
  v18 = [(_NUAsset *)v17 loadWithOptions:optionsCopy error:error];

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)imageAssetWithCIImage:(id)image type:(int64_t)type options:(id)options error:(id *)error
{
  imageCopy = image;
  v10 = NUAssetOptionIdentifier;
  optionsCopy = options;
  v12 = [optionsCopy objectForKeyedSubscript:v10];
  v13 = v12;
  if (v12)
  {
    imageCopy = v12;
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    if (type > 4)
    {
      v16 = @"???";
    }

    else
    {
      v16 = off_1E8109AF0[type];
    }

    v17 = v16;
    imageCopy = [v15 stringWithFormat:@"CIImage[%@]<%p>", v17, imageCopy];
  }

  v18 = [[_NUCIImageAsset alloc] initWithCIImage:imageCopy type:type identifier:imageCopy];
  v19 = [(_NUAsset *)v18 loadWithOptions:optionsCopy error:error];

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)livePhotoAssetFromImageURL:(id)l videoURL:(id)rL options:(id)options error:(id *)error
{
  v9 = NUAssetOptionIdentifier;
  optionsCopy = options;
  rLCopy = rL;
  lCopy = l;
  v13 = [optionsCopy objectForKeyedSubscript:v9];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 stringByAppendingString:@"-image"];
    v16 = [[_NUImageAsset alloc] initWithImageURL:lCopy identifier:v15];

    v17 = [v14 stringByAppendingString:@"-video"];
    v18 = [[_NUVideoAsset alloc] initWithVideoURL:rLCopy identifier:v17];

    v19 = [[_NULivePhotoAsset alloc] initWithImage:v16 video:v18 identifier:v14];
    rLCopy = v16;
    lCopy = v15;
  }

  else
  {
    v19 = [[_NULivePhotoAsset alloc] initWithImageURL:lCopy videoURL:rLCopy];
  }

  v20 = [(_NUAsset *)v19 loadWithOptions:optionsCopy error:error];
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)videoAssetFromURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  v8 = NUAssetOptionIdentifier;
  optionsCopy = options;
  v10 = [optionsCopy objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    absoluteString = v10;
  }

  else
  {
    absoluteString = [lCopy absoluteString];
  }

  v13 = absoluteString;

  v14 = [[_NUVideoAsset alloc] initWithVideoURL:lCopy identifier:v13];
  v15 = [(_NUAsset *)v14 loadWithOptions:optionsCopy error:error];

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)imageAssetFromURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  v8 = NUAssetOptionIdentifier;
  optionsCopy = options;
  v10 = [optionsCopy objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    absoluteString = v10;
  }

  else
  {
    absoluteString = [lCopy absoluteString];
  }

  v13 = absoluteString;

  v14 = [[_NUImageAsset alloc] initWithImageURL:lCopy identifier:v13];
  v15 = [(_NUAsset *)v14 loadWithOptions:optionsCopy error:error];

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end