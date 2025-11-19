@interface PHAsset(MediaAnalysisMovie)
- (uint64_t)vcp_isShortMovie;
@end

@implementation PHAsset(MediaAnalysisMovie)

- (uint64_t)vcp_isShortMovie
{
  result = [a1 isVideo];
  if (result)
  {
    [a1 duration];
    return v3 < [objc_opt_class() vcp_shortMovieDurationThreshold];
  }

  return result;
}

@end