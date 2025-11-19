@interface CreateCommChannel
@end

@implementation CreateCommChannel

uint64_t __routingContextResilientRemote_CreateCommChannel_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 112);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 112;

  return v6(a2, v3, v4);
}

uint64_t __central_CreateCommChannel_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4(a1);
  if (v2)
  {
    v5 = 4294954511;
  }

  else if (*(v1 + 48) && *(*(OUTLINED_FUNCTION_6_2() + 24) + 88))
  {
    v3 = OUTLINED_FUNCTION_2_3();
    v5 = v4(v3);
  }

  else
  {
    v5 = 4294954514;
  }

  return OUTLINED_FUNCTION_0_3(v5);
}

void __routingContext_CreateCommChannel_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_14(a1, a2, a3, a4, a5, a6, a7, a8, v16, cf);
  OUTLINED_FUNCTION_0_3(v9);
  if (cfa)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v10 = v8[6];
      v11 = v8[7];
      v12 = *(*(CMBaseObjectGetVTable() + 24) + 88);
      if (v12)
      {
        v13 = v12(cfa, v10, v11);
      }

      else
      {
        v13 = 4294954514;
      }

      OUTLINED_FUNCTION_0_3(v13);
      if (!*(*(v8[4] + 8) + 24))
      {
        v14 = *v8[7];
        if (v14)
        {
          v15 = FigRoutingManagerSaveCommunicationChannelUUIDForContext(*(v8[5] + 8), v14);
          OUTLINED_FUNCTION_0_3(v15);
        }
      }
    }

    CFRelease(cfa);
  }
}

@end