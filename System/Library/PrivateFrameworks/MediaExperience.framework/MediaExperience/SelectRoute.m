@interface SelectRoute
@end

@implementation SelectRoute

uint64_t __routingContextResilientRemote_SelectRoute_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 8;

  return v6(a2, v3, v4);
}

void __routingContext_SelectRoute_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(a1 + 40))
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{*(a1 + 40), 0}];
    FigRoutingManagerCreateAggregateForContextIfNecessary(*(DerivedStorage + 8), v4);
  }

  if (*DerivedStorage == 2)
  {
    IsTestCodeEnabled = MXSystemMirroring_IsTestCodeEnabled();
    v6 = *(a1 + 40);
    if (IsTestCodeEnabled)
    {
      MXSystemMirroring_PickEndpoint(*(DerivedStorage + 8), v6, *(a1 + 48), 0);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(a1 + 40);
  }

  FigRoutingManagerPickEndpointForContext(*(DerivedStorage + 8), v6, *(a1 + 48), 0);
LABEL_8:
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {

    CFRelease(v9);
  }
}

@end