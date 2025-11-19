@interface FBSScenesClientHostEvent
@end

@implementation FBSScenesClientHostEvent

uint64_t __51___FBSScenesClientHostEvent_coalesceEvent_skipped___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end