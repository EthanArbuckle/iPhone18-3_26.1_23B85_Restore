@interface IOGCFastPathRoyaReplayInputQueueSampleGetTimestamp
@end

@implementation IOGCFastPathRoyaReplayInputQueueSampleGetTimestamp

uint64_t ____IOGCFastPathRoyaReplayInputQueueSampleGetTimestamp_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  **(a1 + 32) = *(a2 + 24);
  if (v2)
  {
    *v2 = *(a2 + 32);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *v3 = 0;
  }

  return 0;
}

@end