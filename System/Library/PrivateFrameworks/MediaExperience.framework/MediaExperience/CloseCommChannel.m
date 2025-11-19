@interface CloseCommChannel
@end

@implementation CloseCommChannel

void __routingContextRemoteXPC_CloseCommChannel_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v7.length = CFArrayGetCount(v2);
  v7.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v7, *(a1 + 40));
  if (FirstIndexOfValue != -1)
  {
    v4 = FirstIndexOfValue;
    v5 = *(*(a1 + 32) + 56);

    CFArrayRemoveValueAtIndex(v5, v4);
  }
}

uint64_t __routingContextResilientRemote_CloseCommChannel_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 128);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 128;

  return v5(a2, v3);
}

uint64_t __central_CloseCommChannel_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4(a1);
  if (v2)
  {
    v9 = 4294954511;
  }

  else
  {
    v3 = *(v1 + 48);
    if (v3 && (v4 = *(v1 + 56), v5 = *(v1 + 48), VTable = CMBaseObjectGetVTable(), (v7 = *(*(VTable + 24) + 104)) != 0))
    {
      v8 = *(VTable + 24) + 104;
      v9 = v7(v3, v4);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  return OUTLINED_FUNCTION_0_3(v9);
}

void __routingContext_CloseCommChannel_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_14(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  OUTLINED_FUNCTION_0_3(v9);
  if (cfa)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v10 = *(v8 + 48);
      v11 = *(*(CMBaseObjectGetVTable() + 24) + 104);
      if (v11)
      {
        v12 = v11(cfa, v10);
      }

      else
      {
        v12 = 4294954514;
      }

      OUTLINED_FUNCTION_0_3(v12);
    }

    CFRelease(cfa);
  }
}

@end