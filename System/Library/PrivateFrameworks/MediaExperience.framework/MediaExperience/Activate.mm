@interface Activate
@end

@implementation Activate

uint64_t __endpointAggregate_Activate_block_invoke(void *a1, uint64_t a2)
{
  v4 = [[MXAggregateEndpointCallback alloc] initWithAggregate:a1[4] features:a1[5] options:a1[6] callback:a1[7] callbackRefCon:a1[8] operationType:1];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(a2, v5, v6, MXAggregateEndpointCompletionCallback, v4);
}

@end