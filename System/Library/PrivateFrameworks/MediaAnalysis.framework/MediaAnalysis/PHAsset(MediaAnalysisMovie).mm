@interface PHAsset(MediaAnalysisMovie)
- (uint64_t)vcp_isShortMovie;
@end

@implementation PHAsset(MediaAnalysisMovie)

- (uint64_t)vcp_isShortMovie
{
  result = [self isVideo];
  if (result)
  {
    [self duration];
    return v3 < [objc_opt_class() vcp_shortMovieDurationThreshold];
  }

  return result;
}

@end