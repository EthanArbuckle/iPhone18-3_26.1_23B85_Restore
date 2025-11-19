@interface DRMeshSetPartAt
@end

@implementation DRMeshSetPartAt

__n128 __DRMeshSetPartAt_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 96 * *(a1 + 64);
  *v2 = *(a1 + 72);
  *(v2 + 8) = *(a1 + 80);
  *(v2 + 24) = *(a1 + 96);
  *(v2 + 48) = *(a1 + 32);
  result = *(a1 + 48);
  *(v2 + 64) = result;
  return result;
}

@end