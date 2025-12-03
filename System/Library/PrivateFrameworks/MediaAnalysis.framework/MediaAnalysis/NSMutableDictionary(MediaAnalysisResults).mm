@interface NSMutableDictionary(MediaAnalysisResults)
- (void)vcp_setTimerange:()MediaAnalysisResults;
@end

@implementation NSMutableDictionary(MediaAnalysisResults)

- (void)vcp_setTimerange:()MediaAnalysisResults
{
  v4 = a3[1];
  *&v6.start.value = *a3;
  *&v6.start.epoch = v4;
  *&v6.duration.timescale = a3[2];
  v5 = CMTimeRangeCopyAsDictionary(&v6, 0);
  [self addEntriesFromDictionary:v5];
}

@end