@interface NSMutableDictionary(MediaAnalysisPauseResume)
- (void)vcp_setSyncPoint:()MediaAnalysisPauseResume;
@end

@implementation NSMutableDictionary(MediaAnalysisPauseResume)

- (void)vcp_setSyncPoint:()MediaAnalysisPauseResume
{
  v5 = *a3;
  v4 = CMTimeCopyAsDictionary(&v5, 0);
  [a1 setObject:v4 forKey:@"SyncPoint"];
}

@end