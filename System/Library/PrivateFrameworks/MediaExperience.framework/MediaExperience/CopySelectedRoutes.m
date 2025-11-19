@interface CopySelectedRoutes
@end

@implementation CopySelectedRoutes

uint64_t __routingContext_CopySelectedRoutes_block_invoke(void *a1)
{
  result = FigRoutingManagerCopyPickedEndpointsForRoutingContext(*(a1[6] + 8), (*(a1[5] + 8) + 24));
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end