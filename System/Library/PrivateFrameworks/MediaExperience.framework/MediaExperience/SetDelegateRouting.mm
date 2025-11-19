@interface SetDelegateRouting
@end

@implementation SetDelegateRouting

uint64_t __endpointAggregate_SetDelegateRouting_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v8[3] = 0;
  v8[4] = 0;
  v8[1] = MXAggregateEndpointHandleAuthRequired;
  v8[2] = MXAggregateEndpointHandleEndpointFailed;
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  v8[0] = v3;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 48);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 48;
  return v5(a2, v8);
}

@end