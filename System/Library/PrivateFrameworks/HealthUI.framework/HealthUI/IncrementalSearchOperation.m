@interface IncrementalSearchOperation
@end

@implementation IncrementalSearchOperation

void __35___IncrementalSearchOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
  }

  else
  {
    if (*(*(*(a1 + 40) + 8) + 32) >= 0x40uLL)
    {
      v7 = *(*(a1 + 32) + 264);
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v9 = *(v7 + 16);
      memcpy(__dst, (*(*(a1 + 40) + 8) + 32), sizeof(__dst));
      v9(v7, WeakRetained, __dst);

      *(*(*(a1 + 40) + 8) + 32) = 0;
    }

    v10 = [v6 range];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 32);
    v13 = v11 + 16 * v12;
    *(v11 + 32) = v12 + 1;
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

@end