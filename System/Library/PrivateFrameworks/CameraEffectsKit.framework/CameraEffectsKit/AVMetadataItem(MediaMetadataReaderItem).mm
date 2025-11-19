@interface AVMetadataItem(MediaMetadataReaderItem)
- (CMTimeRange)timeRange;
@end

@implementation AVMetadataItem(MediaMetadataReaderItem)

- (CMTimeRange)timeRange
{
  [a1 time];
  [a1 duration];
  return CMTimeRangeMake(a2, &start, &v5);
}

@end