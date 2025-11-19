@interface AddContainmentForGroup
@end

@implementation AddContainmentForGroup

void ___AddContainmentForGroup_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = (*(*(a1 + 64) + 16))();
  *a4 = v6;
  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKey:v13];
    if (v7)
    {
      v8 = [*(a1 + 32) objectForKey:v13];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = [*(a1 + 48) identifier];
      v12 = [v10 arrayByAddingObject:v11];
      _AddContainmentForGroup(v8, v9, v12, *(a1 + 56), *(a1 + 64));
    }
  }
}

@end