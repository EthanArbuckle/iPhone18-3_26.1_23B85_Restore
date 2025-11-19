@interface Invalidate
@end

@implementation Invalidate

void __manager_Invalidate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    *v1 = 1;
    BluetoothEndpointCollectionDelete(*(v1 + 32));
    *(*(a1 + 32) + 32) = 0;
  }
}

@end