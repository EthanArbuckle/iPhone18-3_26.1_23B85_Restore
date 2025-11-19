@interface IOGCCircularControlQueueValidateAndAccess
@end

@implementation IOGCCircularControlQueueValidateAndAccess

uint64_t ___IOGCCircularControlQueueValidateAndAccess_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = 3758097112;
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  if (a2 + (v5 >> 1) <= v6)
  {
    return 3758097127;
  }

  if (v6 + (v5 >> 1) <= a2)
  {
    return 3758097128;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 68);
  v9 = (v7 + v8 * (a2 % v5) + 72);
  if (v9 + v8 > v7 + *(a1 + 72))
  {
    return 3758097097;
  }

  if (*v9 != *(a1 + 48))
  {
    return 3758097105;
  }

  v10 = atomic_load_explicit(v9 + 1, memory_order_acquire) & 1;
  v11 = &v9[3 * v10];
  if (v11[3] == *(a1 + 56) && v11[4] == a2)
  {
    return (*(a3 + 16))(a3, v9 + v10 * *(a1 + 76) + 64, *(a1 + 80));
  }

  return result;
}

@end