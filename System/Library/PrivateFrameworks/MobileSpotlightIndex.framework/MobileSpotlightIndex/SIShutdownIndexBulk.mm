@interface SIShutdownIndexBulk
@end

@implementation SIShutdownIndexBulk

uint64_t ___SIShutdownIndexBulk_block_invoke(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  v4 = *(a1 + 32);
  if (*(a1 + 72) != *(*v4 + 1404))
  {
    v28 = __si_assert_copy_extra_661(-1);
    v29 = v28;
    v30 = "";
    if (v28)
    {
      v30 = v28;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SpotlightIndex.c", 16475, "indexSpindleId==si_indices[0]->indexSpindleId", v30);
    free(v29);
    if (__valid_fs(-1))
    {
      v31 = 2989;
    }

    else
    {
      v31 = 3072;
    }

    *v31 = -559038737;
    abort();
  }

  result = *(v4 + 8 * a2);
  if ((*(result + 1288) & 1) == 0)
  {
    *(*(a1 + 40) + 8 * a2) = _SIShutdownSetup(result);
    if (*(*(a1 + 40) + 8 * a2))
    {
      add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v7 = setThreadIdAndInfo(*(*(*(a1 + 32) + 8 * a2) + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
      v46 = v7;
      v8 = threadData[9 * v7 + 1] + 320 * HIDWORD(v7);
      v44 = v9;
      v45 = HIDWORD(v7);
      v43 = v10;
      *(v8 + 216) = 0;
      v11 = *(v8 + 312);
      v12 = *(v8 + 224);
      if (v12)
      {
        v12(*(v8 + 288));
      }

      v42 = v46;
      v41 = v45;
      v40 = v44;
      v39 = v43;
      if (_setjmp(v8))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v8 + 312) = v11;
        CIOnThreadCleanUpReset(v39);
        dropThreadId(v42, 1, add_explicit + 1);
        CICleanUpReset(v42, v40);
      }

      else
      {
        v13 = *(*(a1 + 40) + 8 * a2);
        if (v13)
        {
          if (!_CISyncContextSync(v13, 0))
          {
            v17 = *(*(a1 + 40) + 8 * a2);
            if (v17)
            {
              if (!_CISyncContextCommitData(v17, 0, *(a1 + 48) + 104 * *(a1 + 56)))
              {
                v18 = *(*(a1 + 40) + 8 * a2);
                if (v18)
                {
                  if (!_CISyncContextCommitHeader(v18))
                  {
                    v19 = *(a1 + 48) + 104 * a2;
                    if (CIDocCountsNonEmpty(v19))
                    {
                      v20 = *(*(a1 + 40) + 8 * a2);
                      v22 = *(v20 + 72);
                      v21 = *(v20 + 80);
                      v23 = *v19;
                      v24 = *(v19 + 32);
                      v33 = *(v19 + 16);
                      v34 = v24;
                      *buf = v23;
                      v25 = *(v19 + 48);
                      v26 = *(v19 + 64);
                      v27 = *(v19 + 80);
                      v38 = *(v19 + 96);
                      v36 = v26;
                      v37 = v27;
                      v35 = v25;
                      v22(v21, buf);
                    }
                  }
                }
              }
            }
          }
        }

        v14 = threadData[9 * v42 + 1] + 320 * v41;
        *(v14 + 312) = v11;
        v15 = *(v14 + 232);
        if (v15)
        {
          v15(*(v14 + 288));
        }

        dropThreadId(v42, 0, add_explicit + 1);
      }

      v16 = *(*(a1 + 40) + 8 * a2);
      if (v16)
      {
        _CISyncContextDestroy(v16);
      }
    }

    result = _SIShutdownComplete(*(*(a1 + 32) + 8 * a2));
    *(*(a1 + 64) + 4 * a2) = 0;
  }

  return result;
}

@end