@interface NUAuxiliaryImageAVPortraitEffectsMatte
- (__CVBuffer)cvPixelBufferRef;
- (id)auxiliaryImageByApplyingExifOrientation:(unsigned int)orientation;
- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)type;
- (id)initAuxiliaryImageFromAVPortraitEffectMatte:(id)matte;
- (unsigned)pixelFormatType;
@end

@implementation NUAuxiliaryImageAVPortraitEffectsMatte

- (__CVBuffer)cvPixelBufferRef
{
  avPortraitEffectsMatte = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  mattingImage = [avPortraitEffectsMatte mattingImage];

  return mattingImage;
}

- (unsigned)pixelFormatType
{
  avPortraitEffectsMatte = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  pixelFormatType = [avPortraitEffectsMatte pixelFormatType];

  return pixelFormatType;
}

- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)type
{
  avPortraitEffectsMatte = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v5 = [avPortraitEffectsMatte dictionaryRepresentationForAuxiliaryDataType:type];

  return v5;
}

- (id)dictionaryRepresentation
{
  v4 = 0;
  v2 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self dictionaryRepresentationForAuxiliaryDataType:&v4];

  return v2;
}

- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  avPortraitEffectsMatte = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v7 = [avPortraitEffectsMatte portraitEffectsMatteByReplacingPortraitEffectsMatteWithPixelBuffer:buffer error:error];

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

- (id)auxiliaryImageByApplyingExifOrientation:(unsigned int)orientation
{
  v3 = *&orientation;
  avPortraitEffectsMatte = [(NUAuxiliaryImageAVPortraitEffectsMatte *)self avPortraitEffectsMatte];
  v5 = [avPortraitEffectsMatte portraitEffectsMatteByApplyingExifOrientation:v3];

  v6 = [[NUAuxiliaryImageAVPortraitEffectsMatte alloc] initAuxiliaryImageFromAVPortraitEffectMatte:v5];

  return v6;
}

- (id)initAuxiliaryImageFromAVPortraitEffectMatte:(id)matte
{
  v31 = *MEMORY[0x1E69E9840];
  matteCopy = matte;
  if (!matteCopy)
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
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageAVPortraitEffectsMatte initAuxiliaryImageFromAVPortraitEffectMatte:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUAuxiliaryImage.m", 356, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "avPortraitEffectMatte != nil");
  }

  v6 = matteCopy;
  v26.receiver = self;
  v26.super_class = NUAuxiliaryImageAVPortraitEffectsMatte;
  v7 = [(NUAuxiliaryImageAVPortraitEffectsMatte *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_auxiliaryImageType = 3;
    objc_storeStrong(&v7->_avPortraitEffectsMatte, matte);
  }

  return v8;
}

@end