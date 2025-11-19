@interface SendCommand
@end

@implementation SendCommand

uint64_t __routingContextResilientRemote_SendCommand_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 136);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = *(VTable + 16) + 136;

  return v8(a2, v3, v4, v5, v6);
}

void __routingContext_SendCommand_block_invoke(uint64_t a1)
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
    v6 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (v6)
    {
      v7 = v6(v2, v4, v5, routingContext_sendCommandCompletionCallback, v3);
    }

    else
    {
      v7 = 4294954514;
    }

    *(*(*(a1 + 32) + 8) + 24) = v7;
    if (*(*(*(a1 + 32) + 8) + 24) == -12782)
    {
      routingContext_sendCommandCompletionCallback(v7, 4294954514, 0, v3);
    }
  }

  else
  {
    (*(a1 + 56))(*(a1 + 48), 0, *(*(*(a1 + 32) + 8) + 24), *(a1 + 64));
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __endpointAggregate_SendCommand_block_invoke(void *a1, uint64_t a2)
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
  v9 = *(*(VTable + 24) + 72);
  if (!v9)
  {
    return 4294954514;
  }

  v10 = *(VTable + 24) + 72;

  return v9(v3, v4, v5, v6, v7);
}

@end