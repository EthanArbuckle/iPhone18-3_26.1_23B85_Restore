@interface IOGCFastPathRoyaReplayInputQueueSampleReadField
@end

@implementation IOGCFastPathRoyaReplayInputQueueSampleReadField

uint64_t ____IOGCFastPathRoyaReplayInputQueueSampleReadField_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 18);
  if (!*(a2 + 18))
  {
    return 3758097136;
  }

  v5 = 0;
  for (i = (a2 + 32); *i != *(a2 + 8); i += 6)
  {
LABEL_6:
    if (++v5 >= v2)
    {
      return 3758097136;
    }
  }

  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v2 = *(a2 + 18);
    goto LABEL_6;
  }

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

@end