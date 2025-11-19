@interface SetDelegateRemoteControl
@end

@implementation SetDelegateRemoteControl

uint64_t __endpointAggregate_SetDelegateRemoteControl_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v8[1] = 0;
  v8[2] = MXAggregateEndpointDidReceiveDataFromCommChannel;
  v8[3] = MXAggregateEndpointDidCloseCommChannel;
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  v8[0] = v3;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 56;
  return v5(a2, v8);
}

uint64_t __central_SetDelegateRemoteControl_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*v1)
  {
    v7 = 4294954511;
  }

  else
  {
    v2 = *(v1 + 8);
    v3 = *(a1 + 48);
    VTable = CMBaseObjectGetVTable();
    v5 = *(*(VTable + 16) + 56);
    if (v5)
    {
      v6 = *(VTable + 16) + 56;
      v7 = v5(v2, v3);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  return OUTLINED_FUNCTION_0_3(v7);
}

@end