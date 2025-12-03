@interface NUVisionSegmentationRequest
+ (void)warmUp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newRenderJob;
- (void)_commonInit;
- (void)takePropertiesFromRequest:(id)request;
@end

@implementation NUVisionSegmentationRequest

- (id)newRenderJob
{
  v3 = [NUVisionSegmentationJob alloc];

  return [(NUVisionSegmentationJob *)v3 initWithVisionSegmentationRequest:self];
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = NUVisionSegmentationRequest;
  v3 = [(NURenderRequest *)&v11 description];
  v4 = [(NUVisionSegmentationRequest *)self segmentationType]- 1;
  if (v4 > 2)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_1E810AEF8[v4];
  }

  v6 = [(NUVisionSegmentationRequest *)self visionSegmentationPolicy]- 1;
  if (v6 > 2)
  {
    v7 = @"First";
  }

  else
  {
    v7 = off_1E810AF10[v6];
  }

  scalePolicy = [(NUVisionSegmentationRequest *)self scalePolicy];
  v9 = [v3 stringByAppendingFormat:@"Segmentation Type: %@, Vision Segmentation Policy: %@, Scale Policy: %@", v5, v7, scalePolicy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NUVisionSegmentationRequest;
  v4 = [(NURenderRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 23, self->_scalePolicy);
    v5[21] = self->_segmentationType;
    v5[22] = self->_visionSegmentationPolicy;
    *(v5 + 160) = self->_produceConfidenceMap;
  }

  return v5;
}

- (void)takePropertiesFromRequest:(id)request
{
  requestCopy = request;
  sampleMode = [(NURenderRequest *)self sampleMode];
  v6.receiver = self;
  v6.super_class = NUVisionSegmentationRequest;
  [(NURenderRequest *)&v6 takePropertiesFromRequest:requestCopy];

  [(NURenderRequest *)self setSampleMode:sampleMode];
}

- (void)_commonInit
{
  v5.receiver = self;
  v5.super_class = NUVisionSegmentationRequest;
  [(NURenderRequest *)&v5 _commonInit];
  v3 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:3048192];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;

  [(NURenderRequest *)self setSampleMode:2];
}

+ (void)warmUp
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E6984570]);
  [v3 setRevision:1];
  [v3 setQualityLevel:1];
  [v2 addObject:v3];

  v4 = objc_alloc_init(MEMORY[0x1E6984538]);
  [v2 addObject:v4];

  v5 = objc_alloc_init(MEMORY[0x1E6984578]);
  [v2 addObject:v5];

  v6 = +[NUFactory sharedFactory];
  visionSession = [v6 visionSession];
  v11 = 0;
  v8 = [visionSession prepareForPerformingRequests:v2 error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_227_22606);
    }

    v10 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Failed to warmUp Vision segmentation requests, error: %{public}@", buf, 0xCu);
    }
  }
}

@end