@interface NSDictionary(MediaAnalysisPauseResume)
- (void)vcp_syncPoint;
@end

@implementation NSDictionary(MediaAnalysisPauseResume)

- (void)vcp_syncPoint
{
  v3 = [a1 objectForKey:@"SyncPoint"];
  v5 = v3;
  if (v3)
  {
    CMTimeMakeFromDictionary(a2, v3);
  }

  else
  {
    v4 = MEMORY[0x1E6960C70];
    *&a2->value = *MEMORY[0x1E6960C70];
    a2->epoch = *(v4 + 16);
  }
}

@end