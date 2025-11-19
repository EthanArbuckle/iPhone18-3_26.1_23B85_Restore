@interface SIInitSDB
@end

@implementation SIInitSDB

uint64_t ___SIInitSDB_block_invoke_4(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 1192);
  if (a2)
  {
    return si_set_obj_state_locked(v3, v4, 1);
  }

  else
  {
    return si_set_obj_state(v3, v4);
  }
}

void ___SIInitSDB_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = malloc_type_malloc(0x28uLL, 0x10A0040A9CEF559uLL);
    v5 = 0;
    atomic_store(1u, v4);
    *(v4 + 1) = v3;
    *(v4 + 2) = a2;
    *(v4 + 3) = 0;
    *(v4 + 4) = dbGCFree;
    do
    {
      if ((v5 - 12) >= 6 && v5 != 9)
      {
        v7 = *(v3 + 1008 + 8 * v5);
        if (v7)
        {
          si_enqueue_cleanup_if_busy(v7, v4);
        }
      }

      ++v5;
    }

    while (v5 != 18);

    SIGCContextRelease(v4);
  }
}

void ___SIInitSDB_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = malloc_type_malloc(0x28uLL, 0x10A0040A9CEF559uLL);
    v7 = 0;
    atomic_store(1u, v6);
    *(v6 + 1) = v5;
    *(v6 + 2) = a2;
    *(v6 + 3) = a3;
    *(v6 + 4) = dbGCUnmap;
    do
    {
      v8 = *(v5 + 1008 + v7);
      if (v8)
      {
        si_enqueue_cleanup_if_busy(v8, v6);
      }

      v7 += 8;
    }

    while (v7 != 144);

    SIGCContextRelease(v6);
  }
}

uint64_t ___SIInitSDB_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___SIInitSDB_block_invoke_7;
  v3[3] = &__block_descriptor_tmp_1156;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  ContentIndexSetDirtyCallback(a2, v3);
  return 1;
}

@end