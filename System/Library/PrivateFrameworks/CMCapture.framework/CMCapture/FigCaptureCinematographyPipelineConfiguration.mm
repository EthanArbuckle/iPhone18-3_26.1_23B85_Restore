@interface FigCaptureCinematographyPipelineConfiguration
- (uint64_t)setPostColorProcessingThumbnailEnabled:(uint64_t)result;
- (uint64_t)setPreLTMThumbnailEnabled:(uint64_t)result;
- (uint64_t)setWeightSegmentMapEnabled:(uint64_t)result;
- (void)dealloc;
- (void)setObjectMetadataIdentifiers:(void *)identifiers;
@end

@implementation FigCaptureCinematographyPipelineConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureCinematographyPipelineConfiguration;
  [(FigCaptureCinematographyPipelineConfiguration *)&v3 dealloc];
}

- (void)setObjectMetadataIdentifiers:(void *)identifiers
{
  if (identifiers)
  {
    objc_setProperty_nonatomic_copy(identifiers, newValue, newValue, 8);
  }
}

- (uint64_t)setPreLTMThumbnailEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 57) = a2;
  }

  return result;
}

- (uint64_t)setPostColorProcessingThumbnailEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 58) = a2;
  }

  return result;
}

- (uint64_t)setWeightSegmentMapEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 59) = a2;
  }

  return result;
}

@end