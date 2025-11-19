@interface SendData
@end

@implementation SendData

void __routingContext_SendData_block_invoke(uint64_t a1)
{
  cf = 0;
  FigRoutingManagerCopyPickedEndpointForRoutingContext(*(*(a1 + 40) + 8), &cf);
  v2 = cf;
  if (cf && (FigEndpointExtendedGetClassID(), CMBaseObjectIsMemberOfClass()))
  {
    v3 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
    *v3 = CFRetain(*(a1 + 48));
    v3[1] = *(a1 + 56);
    v3[2] = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(*(CMBaseObjectGetVTable() + 24) + 96);
    if (v6)
    {
      v7 = v6(v2, v4, v5, routingContext_sendDataCompletionCallback, v3);
    }

    else
    {
      v7 = 4294954514;
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
    if (*(*(*(a1 + 32) + 8) + 24) == -12782)
    {
      routingContext_sendDataCompletionCallback(v7, *(a1 + 72), 4294954514, v3);
    }
  }

  else
  {
    (*(a1 + 56))(*(a1 + 48), *(a1 + 72), *(*(*(a1 + 32) + 8) + 24), *(a1 + 64));
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __endpointAggregate_SendData_block_invoke(void *a1, uint64_t a2)
{
  if (!a2 || (v3 = a2, FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v3 = 0;
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  VTable = CMBaseObjectGetVTable();
  v9 = *(*(VTable + 24) + 96);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 24) + 96;

  return v9(v3, v4, v5, v6, v7);
}

uint64_t __central_SendData_block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_1_4(a1);
  if (v2)
  {
    v10 = 4294954511;
  }

  else if (v1[6] && (v3 = v1[7], v4 = v1[8], v5 = v1[9], v6 = v1[10], v7 = v1[6], *(*(CMBaseObjectGetVTable() + 24) + 96)))
  {
    v8 = OUTLINED_FUNCTION_2_3();
    v10 = v9(v8);
  }

  else
  {
    v10 = 4294954514;
  }

  return OUTLINED_FUNCTION_0_3(v10);
}

@end