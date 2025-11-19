@interface IOGCFastPathRoyaReplayInputQueueSampleGetInteger3
@end

@implementation IOGCFastPathRoyaReplayInputQueueSampleGetInteger3

uint64_t ____IOGCFastPathRoyaReplayInputQueueSampleGetInteger3_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  **(a1 + 32) = a2[3];
  *v2 = a2[4];
  **(a1 + 48) = a2[5];
  return 0;
}

@end