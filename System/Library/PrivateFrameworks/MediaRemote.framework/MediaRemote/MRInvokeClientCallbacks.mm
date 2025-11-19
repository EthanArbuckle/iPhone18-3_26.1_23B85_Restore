@interface MRInvokeClientCallbacks
@end

@implementation MRInvokeClientCallbacks

void ___onQueue_MRInvokeClientCallbacks_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) block];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___onQueue_MRInvokeClientCallbacks_block_invoke_2;
  v7[3] = &unk_1E76A4278;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 56);
  v10 = *(a1 + 80);
  v16 = *(a1 + 112);
  v11 = *(a1 + 32);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 64);
  v15 = *(a1 + 104);
  _onClientQueue_MRInvokeClientCallback(v2, v3, v4, v5, v6, v7);
}

void ___onQueue_MRInvokeClientCallbacks_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    MRContentItemMerge(*(a1 + 32), *(a1 + 40));
    if ([*(a1 + 48) count] <= 1 || *(a1 + 96) != 1)
    {
      goto LABEL_7;
    }

LABEL_6:
    v3 = [*(a1 + 48) mutableCopy];
    [v3 removeObjectAtIndex:0];
    _onQueue_MRInvokeClientCallbacks(*(a1 + 56), v3, *(a1 + 64), *(a1 + 32), *(a1 + 96), *(a1 + 72), *(a1 + 80), *(a1 + 88));

    goto LABEL_8;
  }

  if ([*(a1 + 48) count] > 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  (*(*(a1 + 88) + 16))();
LABEL_8:
}

@end