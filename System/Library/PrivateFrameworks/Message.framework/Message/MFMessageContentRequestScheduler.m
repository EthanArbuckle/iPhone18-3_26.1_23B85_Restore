@interface MFMessageContentRequestScheduler
@end

@implementation MFMessageContentRequestScheduler

void __60___MFMessageContentRequestScheduler_performCancelableBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = [MEMORY[0x1E699AC90] signpostLog];
      v7 = v6;
      v8 = *(*(a1 + 32) + 8);
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MFMessageContentRequestScheduler", "Begin work on scheduler", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
    if (v5)
    {
      v9 = [MEMORY[0x1E699AC90] signpostLog];
      v10 = v9;
      v11 = *(*(a1 + 32) + 8);
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v10, OS_SIGNPOST_INTERVAL_END, v11, "MFMessageContentRequestScheduler", "End work on scheduler", v12, 2u);
      }
    }
  }
}

@end