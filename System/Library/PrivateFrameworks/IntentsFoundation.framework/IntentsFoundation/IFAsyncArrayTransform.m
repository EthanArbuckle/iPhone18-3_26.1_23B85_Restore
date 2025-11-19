@interface IFAsyncArrayTransform
@end

@implementation IFAsyncArrayTransform

void ___IFAsyncArrayTransform_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 64) == 1)
  {
    v6 = [a2 count];
    v7 = (*(a1 + 48) + 16 * *(a1 + 56));
    if (a3 && !v6)
    {
      goto LABEL_4;
    }

LABEL_6:
    v8 = a2;
    *v7 = 0;
    goto LABEL_7;
  }

  v7 = (*(a1 + 48) + 16 * *(a1 + 56));
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = a3;
  *v7 = 1;
LABEL_7:
  v7[1] = v8;
  dispatch_group_leave(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void ___IFAsyncArrayTransform_block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(a1 + 56) + v3);
      v7 = v6[1];
      if (*v6 == 1)
      {
        if (v7)
        {

          v4 = v7;
        }
      }

      else if (*(a1 + 64) == 1)
      {
        if (v7)
        {
          [v2 addObjectsFromArray:v7];
        }
      }

      else
      {
        [v2 addObject:v7];
      }

      ++v5;
      v3 += 16;
    }

    while (v5 < *(a1 + 48));
  }

  else
  {
    v4 = 0;
  }

  free(*(a1 + 56));
  (*(*(a1 + 40) + 16))();

  v8 = *(a1 + 32);

  dispatch_release(v8);
}

@end