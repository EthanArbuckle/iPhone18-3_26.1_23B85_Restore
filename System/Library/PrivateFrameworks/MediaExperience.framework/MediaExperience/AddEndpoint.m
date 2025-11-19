@interface AddEndpoint
@end

@implementation AddEndpoint

uint64_t __endpointAggregate_AddEndpoint_block_invoke(void *a1, uint64_t a2)
{
  v4 = [MXAggregateEndpointCallback alloc];
  v5 = a1[4];
  v6 = [(MXAggregateEndpointCallback *)v4 initWithAggregate:FigEndpointAggregateGetFigEndpoint() features:0 options:a1[5] callback:a1[6] callbackRefCon:a1[7] operationType:3];
  if (!a2 || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    a2 = 0;
  }

  v7 = a1[8];
  v8 = a1[5];
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 32) + 8);
  if (v10)
  {
    v11 = *(VTable + 32) + 8;
    v12 = v10(a2, v7, v8, MXAggregateSubEndpointCompletionCallback, v6);
  }

  else
  {
    v12 = 4294954514;
  }

  v13 = *(a1[9] + 40);
  FigSimpleMutexLock();
  v14 = a1[4];
  FigEndpointAggregateGetFigEndpoint();
  MXAggregateEndpointUpdateSubEndpoints();
  v15 = *(a1[9] + 40);
  FigSimpleMutexUnlock();
  return v12;
}

@end