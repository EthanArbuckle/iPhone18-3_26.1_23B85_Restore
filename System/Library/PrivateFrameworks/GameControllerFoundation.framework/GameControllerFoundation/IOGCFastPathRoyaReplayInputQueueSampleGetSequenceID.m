@interface IOGCFastPathRoyaReplayInputQueueSampleGetSequenceID
@end

@implementation IOGCFastPathRoyaReplayInputQueueSampleGetSequenceID

uint64_t ____IOGCFastPathRoyaReplayInputQueueSampleGetSequenceID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  **(a1 + 32) = *(a2 + 24);
  if (v2)
  {
    *v2 = -1;
  }

  return 0;
}

@end