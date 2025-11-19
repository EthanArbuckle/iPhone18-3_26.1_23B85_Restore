@interface MFDAMSSearchResponseConsumer
@end

@implementation MFDAMSSearchResponseConsumer

id __45___MFDAMSSearchResponseConsumer_handleItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];

  return v2;
}

void __45___MFDAMSSearchResponseConsumer_handleItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  v8 = [*(v6 + 56) account];
  *(*(a1 + 32) + 88) += insertDAMessages(v5, v7, v8, v9, 1, 0);
}

@end