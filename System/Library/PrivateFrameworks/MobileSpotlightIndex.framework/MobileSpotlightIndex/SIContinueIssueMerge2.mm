@interface SIContinueIssueMerge2
@end

@implementation SIContinueIssueMerge2

void ___SIContinueIssueMerge2_block_invoke_1968(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2 && *(a2 + 2457) == 1)
  {
    *(a2 + 2457) = 0;
    v17 = -1;
    v10 = *(*(a1 + 40) + 32);
    v11 = v10 == -1 || (fd_setDir(v10, &v17) & 1) == 0;
    v12 = *__error();
    v13 = _SILogForLogForCategory(12);
    v14 = 2 * (dword_1EBF46AFC < 4);
    if (os_log_type_enabled(v13, v14))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C278D000, v13, v14, "Merge(2) started", v16, 2u);
    }

    *__error() = v12;
    if (!v11)
    {
      v15 = v17;
      MEMORY[0x1C6921200](v17);
      if ((v15 & 0x80000000) == 0)
      {
        close(v15);
      }
    }

    si_power_info_init(*(*(*(a1 + 32) + 8) + 24) + 1064, a3, a4, a5);
    si_enqueue_barrier_with_qos(*(a2 + 1160), 5, _SIContinueIssueMerge0, *(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  si_merge_ctx_free(*(*(*(a1 + 32) + 8) + 24), a2 == 0);
}

void ___SIContinueIssueMerge2_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5)
{
  if (a2 && *(a2 + 2456) == 1)
  {
    v16 = -1;
    v9 = *(a2 + 32);
    v10 = v9 == -1 || (fd_setDir(v9, &v16) & 1) == 0;
    v11 = *__error();
    v12 = _SILogForLogForCategory(12);
    v13 = 2 * (dword_1EBF46AFC < 4);
    if (os_log_type_enabled(v12, v13))
    {
      *v15 = 0;
      _os_log_impl(&dword_1C278D000, v12, v13, "Vacuum started", v15, 2u);
    }

    *__error() = v11;
    if (!v10)
    {
      v14 = v16;
      MEMORY[0x1C6921200](v16);
      if ((v14 & 0x80000000) == 0)
      {
        close(v14);
      }
    }

    *(a2 + 2456) = 0;
    si_sync_index_vaccuum_if_needed(a2, 1, a3, a4, a5);
  }
}

@end