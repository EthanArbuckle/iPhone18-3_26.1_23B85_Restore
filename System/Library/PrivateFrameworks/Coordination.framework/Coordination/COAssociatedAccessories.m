@interface COAssociatedAccessories
@end

@implementation COAssociatedAccessories

void ___COAssociatedAccessories_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v8 = [v3 accessory];

  v4 = v8;
  if (v8)
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) setByAddingObject:v8];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }
}

@end