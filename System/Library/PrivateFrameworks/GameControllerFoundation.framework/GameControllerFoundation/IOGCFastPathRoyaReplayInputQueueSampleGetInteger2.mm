@interface IOGCFastPathRoyaReplayInputQueueSampleGetInteger2
@end

@implementation IOGCFastPathRoyaReplayInputQueueSampleGetInteger2

uint64_t ____IOGCFastPathRoyaReplayInputQueueSampleGetInteger2_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  **(a1 + 32) = *(a2 + 24);
  *v2 = *(a2 + 32);
  return 0;
}

@end