@interface GTTransportMessageReplyContinuation
@end

@implementation GTTransportMessageReplyContinuation

uint64_t __53__GTTransportMessageReplyContinuation_dispatchError___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    v3 = *(result + 40);
    result = (*(*(v1 + 16) + 16))();
    *(*(v2 + 32) + 24) = 1;
  }

  return result;
}

@end