@interface NUVisionInstanceSegmentationRequest
+ (int64_t)maximumTargetPoints;
- (NUVisionInstanceSegmentationRequest)initWithComposition:(id)composition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation NUVisionInstanceSegmentationRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NUVisionInstanceSegmentationRequest;
  v4 = [(NURenderRequest *)&v10 copyWithZone:zone];
  if (v4)
  {
    targetSamplePoints = [(NUVisionInstanceSegmentationRequest *)self targetSamplePoints];
    v6 = v4[21];
    v4[21] = targetSamplePoints;

    scalePolicy = [(NUVisionInstanceSegmentationRequest *)self scalePolicy];
    v8 = v4[20];
    v4[20] = scalePolicy;
  }

  return v4;
}

- (id)newRenderJob
{
  v3 = [NUVisionInstanceSegmentationJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (NUVisionInstanceSegmentationRequest)initWithComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = NUVisionInstanceSegmentationRequest;
  v3 = [(NURenderRequest *)&v8 initWithComposition:composition];
  v4 = +[NUGlobalSettings inpaintSegmentationMaxInputSize];
  if (v4 < 1)
  {
    v5 = +[NUFixedScalePolicy oneToOneScalePolicy];
  }

  else
  {
    v5 = [[NUPixelCountScalePolicy alloc] initWithTargetPixelCount:v4];
  }

  v6 = v5;
  [(NUVisionInstanceSegmentationRequest *)v3 setScalePolicy:v5];

  [(NURenderRequest *)v3 setSampleMode:2];
  [(NURenderRequest *)v3 setIsOneShot:1];
  return v3;
}

+ (int64_t)maximumTargetPoints
{
  result = _maximumTargetPoints;
  if (!_maximumTargetPoints)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6984558]);
    maximumTargetPoints = [v3 maximumTargetPoints];

    return maximumTargetPoints;
  }

  return result;
}

@end