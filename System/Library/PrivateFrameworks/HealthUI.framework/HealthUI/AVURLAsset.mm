@interface AVURLAsset
@end

@implementation AVURLAsset

void __39__AVURLAsset_HKAdditions__hk_assetSize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 firstObject];
    [v7 naturalSize];
    if (v7)
    {
      v12 = v9;
      v13 = v8;
      [v7 preferredTransform];
      v9 = v12;
      v8 = v13;
      v10 = v14;
      v11 = v15;
    }

    else
    {
      v10 = 0uLL;
      v11 = 0uLL;
    }

    *(*(*(a1 + 48) + 8) + 32) = vmlaq_n_f64(vmulq_n_f64(v11, v9), v10, v8);
  }

  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __39__AVURLAsset_HKAdditions__hk_assetSize__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __44__AVURLAsset_HKAdditions__hk_thumbnailImage__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __44__AVURLAsset_HKAdditions__hk_thumbnailImage__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

@end