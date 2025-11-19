@interface NUAuxiliaryImageAVPortraitEffectsMatte
- (__CVBuffer)cvPixelBufferRef;
- (id)auxiliaryImageByApplyingExifOrientation:(unsigned int)a3;
- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)a3;
- (id)initAuxiliaryImageFromAVPortraitEffectMatte:(id)a3;
- (unsigned)pixelFormatType;
@end

@implementation NUAuxiliaryImageAVPortraitEffectsMatte

- (__CVBuffer)cvPixelBufferRef
{
  v2 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v3 = [v2 mattingImage];

  return v3;
}

- (unsigned)pixelFormatType
{
  v2 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v3 = [v2 pixelFormatType];

  return v3;
}

- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)a3
{
  v4 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v5 = [v4 dictionaryRepresentationForAuxiliaryDataType:a3];

  return v5;
}

- (id)dictionaryRepresentation
{
  v4 = 0;
  v2 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self dictionaryRepresentationForAuxiliaryDataType:&v4];

  return v2;
}

- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v7 = [v6 portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:a3 error:a4];

  if (v7)
  {
    v8 = [[NUAuxiliaryImageAVPortraitEffectsMatte alloc] initAuxiliaryImageFromAVPortraitEffectMatte:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)auxiliaryImageByApplyingExifOrientation:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v5 = [v4 portraitEffectsMatteByApplyingExifOrientation:v3];

  v6 = [[NUAuxiliaryImageAVPortraitEffectsMatte alloc] initAuxiliaryImageFromAVPortraitEffectMatte:v5];

  return v6;
}

- (id)initAuxiliaryImageFromAVPortraitEffectMatte:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v10 = NUAssertLogger_16664();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "avPortraitEffectMatte != nil"];
      *buf = 138543362;
      v28 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_16664();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageAVPortraitEffectsMatte initAuxiliaryImageFromAVPortraitEffectMatte:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUAuxiliaryImage.m", 356, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "avPortraitEffectMatte != nil");
  }

  v6 = v5;
  v26.receiver = self;
  v26.super_class = NUAuxiliaryImageAVPortraitEffectsMatte;
  v7 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_auxiliaryImageType = 3;
    objc_storeStrong(&v7->_avPortraitEffectsMatte, a3);
  }

  return v8;
}

@end