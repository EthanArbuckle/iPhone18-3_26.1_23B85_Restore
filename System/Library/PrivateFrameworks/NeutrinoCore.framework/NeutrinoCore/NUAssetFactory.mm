@interface NUAssetFactory
+ (id)imageAssetFromURL:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)imageAssetWithCGImage:(CGImage *)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6;
+ (id)imageAssetWithCIImage:(id)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6;
+ (id)imageAssetWithCVPixelBuffer:(__CVBuffer *)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6;
+ (id)imageAssetWithIOSurface:(id)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6;
+ (id)livePhotoAssetFromImageURL:(id)a3 videoURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)videoAssetFromURL:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation NUAssetFactory

+ (id)imageAssetWithCGImage:(CGImage *)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6
{
  v9 = NUAssetOptionIdentifier;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    if (a4 > 4)
    {
      v15 = @"???";
    }

    else
    {
      v15 = off_1E8109AF0[a4];
    }

    v16 = v15;
    v13 = [v14 stringWithFormat:@"CGImage[%@]<%p>", v16, a3];
  }

  v17 = [[_NUCGImageAsset alloc] initWithCGImage:a3 type:a4 identifier:v13];
  v18 = [(_NUAsset *)v17 loadWithOptions:v10 error:a6];

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

+ (id)imageAssetWithIOSurface:(id)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = NUAssetOptionIdentifier;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:v10];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    if (a4 > 4)
    {
      v16 = @"???";
    }

    else
    {
      v16 = off_1E8109AF0[a4];
    }

    v17 = v16;
    v14 = [v15 stringWithFormat:@"IOSurface[%@]<%p>", v17, v9];
  }

  v18 = [[_NUIOSurfaceAsset alloc] initWithIOSurface:v9 type:a4 identifier:v14];
  v19 = [(_NUAsset *)v18 loadWithOptions:v11 error:a6];

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

+ (id)imageAssetWithCVPixelBuffer:(__CVBuffer *)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6
{
  v9 = NUAssetOptionIdentifier;
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    if (a4 > 4)
    {
      v15 = @"???";
    }

    else
    {
      v15 = off_1E8109AF0[a4];
    }

    v16 = v15;
    v13 = [v14 stringWithFormat:@"CVPixelBufferRef[%@]<%p>", v16, a3];
  }

  v17 = [[_NUCVPixelBufferAsset alloc] initWithCVPixelBuffer:a3 type:a4 identifier:v13];
  v18 = [(_NUAsset *)v17 loadWithOptions:v10 error:a6];

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

+ (id)imageAssetWithCIImage:(id)a3 type:(int64_t)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = NUAssetOptionIdentifier;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:v10];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    if (a4 > 4)
    {
      v16 = @"???";
    }

    else
    {
      v16 = off_1E8109AF0[a4];
    }

    v17 = v16;
    v14 = [v15 stringWithFormat:@"CIImage[%@]<%p>", v17, v9];
  }

  v18 = [[_NUCIImageAsset alloc] initWithCIImage:v9 type:a4 identifier:v14];
  v19 = [(_NUAsset *)v18 loadWithOptions:v11 error:a6];

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

+ (id)livePhotoAssetFromImageURL:(id)a3 videoURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = NUAssetOptionIdentifier;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v10 objectForKeyedSubscript:v9];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 stringByAppendingString:@"-image"];
    v16 = [[_NUImageAsset alloc] initWithImageURL:v12 identifier:v15];

    v17 = [v14 stringByAppendingString:@"-video"];
    v18 = [[_NUVideoAsset alloc] initWithVideoURL:v11 identifier:v17];

    v19 = [[_NULivePhotoAsset alloc] initWithImage:v16 video:v18 identifier:v14];
    v11 = v16;
    v12 = v15;
  }

  else
  {
    v19 = [[_NULivePhotoAsset alloc] initWithImageURL:v12 videoURL:v11];
  }

  v20 = [(_NUAsset *)v19 loadWithOptions:v10 error:a6];
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

+ (id)videoAssetFromURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = NUAssetOptionIdentifier;
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v7 absoluteString];
  }

  v13 = v12;

  v14 = [[_NUVideoAsset alloc] initWithVideoURL:v7 identifier:v13];
  v15 = [(_NUAsset *)v14 loadWithOptions:v9 error:a5];

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

+ (id)imageAssetFromURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = NUAssetOptionIdentifier;
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v7 absoluteString];
  }

  v13 = v12;

  v14 = [[_NUImageAsset alloc] initWithImageURL:v7 identifier:v13];
  v15 = [(_NUAsset *)v14 loadWithOptions:v9 error:a5];

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