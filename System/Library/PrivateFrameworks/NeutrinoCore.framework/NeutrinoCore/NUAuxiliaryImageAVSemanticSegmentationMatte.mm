@interface NUAuxiliaryImageAVSemanticSegmentationMatte
- (CGImage)cgImageRef;
- (__CVBuffer)cvPixelBufferRef;
- (id)auxiliaryImageByApplyingExifOrientation:(unsigned int)a3;
- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)a3;
- (id)initAuxiliaryImageFromAVSemanticSegmentationMatte:(id)a3;
- (unsigned)pixelFormatType;
@end

@implementation NUAuxiliaryImageAVSemanticSegmentationMatte

- (CGImage)cgImageRef
{
  v9 = *MEMORY[0x1E69E9840];
  imageOut = 0;
  v2 = VTCreateCGImageFromCVPixelBuffer([(NUAuxiliaryImageAVSemanticSegmentationMatte *)self cvPixelBufferRef], 0, &imageOut);
  if (v2)
  {
    v3 = v2;
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_211_16707);
    }

    v4 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "VTCreateCGImageFromCVPixelBuffer() failed: %d", buf, 8u);
    }
  }

  return imageOut;
}

- (__CVBuffer)cvPixelBufferRef
{
  v2 = [(NUAuxiliaryImageAVSemanticSegmentationMatte *)self avSemanticSegmentationMatte];
  v3 = [v2 mattingImage];

  return v3;
}

- (unsigned)pixelFormatType
{
  v2 = [(NUAuxiliaryImageAVSemanticSegmentationMatte *)self avSemanticSegmentationMatte];
  v3 = [v2 pixelFormatType];

  return v3;
}

- (id)dictionaryRepresentationForAuxiliaryDataType:(id *)a3
{
  v4 = [(NUAuxiliaryImageAVSemanticSegmentationMatte *)self avSemanticSegmentationMatte];
  v5 = [v4 dictionaryRepresentationForAuxiliaryDataType:a3];

  return v5;
}

- (id)dictionaryRepresentation
{
  v4 = 0;
  v2 = [(NUAuxiliaryImageAVSemanticSegmentationMatte *)self dictionaryRepresentationForAuxiliaryDataType:&v4];

  return v2;
}

- (id)auxiliaryImageByReplacingAuxiliaryImageWithPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = [(NUAuxiliaryImageAVSemanticSegmentationMatte *)self avSemanticSegmentationMatte];
  v7 = [v6 semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:a3 error:a4];

  if (v7)
  {
    v8 = [[NUAuxiliaryImageAVSemanticSegmentationMatte alloc] initAuxiliaryImageFromAVSemanticSegmentationMatte:v7];
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
  v4 = [(NUAuxiliaryImageAVSemanticSegmentationMatte *)self avSemanticSegmentationMatte];
  v5 = [v4 semanticSegmentationMatteByApplyingExifOrientation:v3];

  v6 = [[NUAuxiliaryImageAVSemanticSegmentationMatte alloc] initAuxiliaryImageFromAVSemanticSegmentationMatte:v5];

  return v6;
}

- (id)initAuxiliaryImageFromAVSemanticSegmentationMatte:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = NUAssertLogger_16664();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "avSemanticSegmentationMatte != nil"];
      *buf = 138543362;
      v29 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_16664();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUAuxiliaryImageAVSemanticSegmentationMatte initAuxiliaryImageFromAVSemanticSegmentationMatte:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUAuxiliaryImage.m", 429, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "avSemanticSegmentationMatte != nil");
  }

  v6 = v5;
  v27.receiver = self;
  v27.super_class = NUAuxiliaryImageAVSemanticSegmentationMatte;
  v7 = [(NUAuxiliaryImageAVSemanticSegmentationMatte *)&v27 init];
  if (v7)
  {
    v8 = [v6 matteType];
    if ([v8 isEqualToString:*MEMORY[0x1E6987038]])
    {
      v9 = 4;
    }

    else if ([v8 isEqualToString:*MEMORY[0x1E6987030]])
    {
      v9 = 5;
    }

    else if ([v8 isEqualToString:*MEMORY[0x1E6987040]])
    {
      v9 = 6;
    }

    else if ([v8 isEqualToString:*MEMORY[0x1E6987028]])
    {
      v9 = 8;
    }

    else
    {
      if (![v8 isEqualToString:@"AVSemanticSegmentationMatteTypeSky"])
      {
        v7->_auxiliaryImageType = 0;
        goto LABEL_14;
      }

      v9 = 9;
    }

    v7->_auxiliaryImageType = v9;
LABEL_14:
    objc_storeStrong(&v7->_avSemanticSegmentationMatte, a3);
  }

  return v7;
}

@end