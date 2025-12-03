@interface AVMetadataItem(MediaMetadataReaderItem)
- (CMTimeRange)timeRange;
@end

@implementation AVMetadataItem(MediaMetadataReaderItem)

- (CMTimeRange)timeRange
{
  [self time];
  [self duration];
  return CMTimeRangeMake(a2, &start, &v5);
}

@end