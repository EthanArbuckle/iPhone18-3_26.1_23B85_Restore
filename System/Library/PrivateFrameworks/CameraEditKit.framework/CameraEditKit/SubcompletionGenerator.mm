@interface SubcompletionGenerator
@end

@implementation SubcompletionGenerator

id ___SubcompletionGenerator_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained CEKC2GroupCompletionAnimationDidBegin:v3];

  ++*(*(*(a1 + 40) + 8) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___SubcompletionGenerator_block_invoke_2;
  v10[3] = &unk_1E7CC6940;
  objc_copyWeak(v16, (a1 + 72));
  v11 = v3;
  v13 = *(a1 + 48);
  v16[1] = *(a1 + 80);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v5;
  v12 = v6;
  v7 = v3;
  v8 = _Block_copy(v10);

  objc_destroyWeak(v16);

  return v8;
}

void ___SubcompletionGenerator_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained CEKC2GroupCompletionAnimationDidComplete:*(a1 + 32) finished:a2 retargeted:a3];
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  if (!--*(*(*(a1 + 64) + 8) + 24))
  {
    if (*(a1 + 88))
    {
      v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
      v8 = [v7 getCFRunLoop];

      v9 = *MEMORY[0x1E695E8E0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___SubcompletionGenerator_block_invoke_3;
      block[3] = &unk_1E7CC6918;
      v12 = *(a1 + 64);
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      CFRunLoopPerformBlock(v8, v9, block);
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      (*(*(a1 + 40) + 16))();
    }
  }
}

void *___SubcompletionGenerator_block_invoke_3(void *result)
{
  if (!*(*(result[5] + 8) + 24))
  {
    *(*(result[6] + 8) + 24) = 1;
    return (*(result[4] + 16))(result[4], *(*(result[7] + 8) + 24), *(*(result[8] + 8) + 24));
  }

  return result;
}

@end