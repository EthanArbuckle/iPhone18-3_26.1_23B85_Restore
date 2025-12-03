@interface MRImageUtilities
+ (CGSize)imageDimensionsForImageData:(id)data error:(id *)error;
+ (CGSize)sizeFromSource:(CGImageSource *)source error:(id *)error;
+ (id)resizeImageData:(id)data forFittingSize:(CGSize)size error:(id *)error;
+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)size imageSize:(CGSize)imageSize;
@end

@implementation MRImageUtilities

+ (id)resizeImageData:(id)data forFittingSize:(CGSize)size error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v7 = _MRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRImageUtilities] resizeImageData", buf, 2u);
  }

  v35 = 0;
  [MRImageUtilities imageDimensionsForImageData:dataCopy error:&v35];
  v9 = v8;
  v11 = v10;
  v12 = v35;
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      v15 = 0;
      *error = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    MSVImageUtilitiesMakeBoundingBoxSize();
    v17 = v16;
    v19 = v18;
    v20 = dataCopy;
    v21 = *MEMORY[0x1E696E0A8];
    v39 = *MEMORY[0x1E696E0A8];
    v22 = MEMORY[0x1E695E110];
    v40[0] = MEMORY[0x1E695E110];
    v23 = CGImageSourceCreateWithData(v20, [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1]);
    if (v17 <= v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = v17;
    }

    v25 = v24;
    v26 = [MRImageUtilities subsampleFactorForMaxPixelSize:v24 imageSize:v9, v11];
    v38[0] = v22;
    v27 = *MEMORY[0x1E696E0F8];
    v37[0] = v21;
    v37[1] = v27;
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:v26];
    v38[1] = v28;
    v37[2] = *MEMORY[0x1E696D328];
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
    v37[3] = *MEMORY[0x1E696D338];
    v38[2] = v29;
    v38[3] = &unk_1F1577B68;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];

    v31 = objc_opt_new();
    v32 = CGImageDestinationCreateWithData(v31, @"public.jpeg", 1uLL, v30);
    CGImageDestinationAddImageFromSource(v32, v23, 0, v30);
    CGImageDestinationFinalize(v32);
    CFRelease(v23);
    CFRelease(v32);
    if (v31 && [(__CFData *)v31 length])
    {
      v15 = v31;
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MRImageUtilitiesError" code:3 debugDescription:@"Could not produce resized image data for source data."];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (CGSize)imageDimensionsForImageData:(id)data error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E696E0A8];
  v16[0] = MEMORY[0x1E695E110];
  v5 = MEMORY[0x1E695DF20];
  dataCopy = data;
  v7 = CGImageSourceCreateWithData(dataCopy, [v5 dictionaryWithObjects:v16 forKeys:&v15 count:1]);

  if (v7)
  {
    [MRImageUtilities sizeFromSource:v7 error:error];
    v9 = v8;
    v11 = v10;
    CFRelease(v7);
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MRImageUtilitiesError" code:1 debugDescription:@"Provided data did not produce valid image source."];
    }

    v9 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  v12 = *MEMORY[0x1E69E9840];
  v13 = v9;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (CGSize)sizeFromSource:(CGImageSource *)source error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = *MEMORY[0x1E696E0A8];
  v16[0] = MEMORY[0x1E695E110];
  v5 = CGImageSourceCopyPropertiesAtIndex(source, 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1]);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v7 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MRImageUtilitiesError" code:2 debugDescription:@"Could not decode image to obtain dimensions."];
    }

    integerValue = *MEMORY[0x1E695F060];
    integerValue2 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    integerValue = [v6 integerValue];
    integerValue2 = [v8 integerValue];
  }

  v12 = *MEMORY[0x1E69E9840];
  v13 = integerValue;
  v14 = integerValue2;
  result.height = v14;
  result.width = v13;
  return result;
}

+ (int64_t)subsampleFactorForMaxPixelSize:(int64_t)size imageSize:(CGSize)imageSize
{
  if (imageSize.width <= imageSize.height)
  {
    imageSize.width = imageSize.height;
  }

  return vcvtmd_s64_f64(imageSize.width / size);
}

@end