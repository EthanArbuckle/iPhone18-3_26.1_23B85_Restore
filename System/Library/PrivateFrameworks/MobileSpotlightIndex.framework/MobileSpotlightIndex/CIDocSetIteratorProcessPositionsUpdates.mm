@interface CIDocSetIteratorProcessPositionsUpdates
@end

@implementation CIDocSetIteratorProcessPositionsUpdates

void ___CIDocSetIteratorProcessPositionsUpdates_block_invoke(uint64_t a1, uint64_t a2)
{
  makeThreadId();
  v37 = 0;
  v4 = *(*(*(a1 + 32) + 8 * a2) + 56);
  if (*(v4 + 8) == 1)
  {
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v6 = setThreadIdAndInfo(*(v4 + 64), sIndexExceptionCallbacks, v4, 0x20000000, add_explicit + 1);
    *buf = v6;
    v7 = threadData[9 * v6 + 1] + 320 * HIDWORD(v6);
    v35 = HIDWORD(v6);
    v34 = __PAIR64__(v8, v9);
    *(v7 + 216) = 0;
    v10 = *(v7 + 312);
    v11 = *(v7 + 224);
    if (v11)
    {
      v11(*(v7 + 288));
    }

    v33 = *buf;
    v32 = v35;
    v31 = v34;
    if (_setjmp(v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v30 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v30, 2u);
      }

      *(v7 + 312) = v10;
      if ((~*(v7 + 212) & 0xA0000000) == 0)
      {
        v12 = *(v7 + 288);
        if (v12)
        {
          _CIMakeInvalid(v12);
        }
      }

      CIOnThreadCleanUpReset(v31);
      dropThreadId(v33, 1, add_explicit + 1);
      CICleanUpReset(v33, HIDWORD(v31));
    }

    else
    {
      v13 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
      v14 = setThreadIdAndInfo(-1, sAssertExceptionCallbacks, 0, 0, v13 + 1);
      v29 = HIDWORD(v14);
      *v30 = v14;
      v28 = __PAIR64__(v15, v16);
      v17 = threadData[9 * v14 + 1] + 320 * HIDWORD(v14);
      v18 = *(v17 + 312);
      v19 = *(v17 + 224);
      if (v19)
      {
        v19(*(v17 + 288));
      }

      v27 = *v30;
      v26 = v29;
      v25 = v28;
      if (_setjmp(v17))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v24 = 0;
          _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v24, 2u);
        }

        *(v17 + 312) = v18;
        CIOnThreadCleanUpReset(v25);
        dropThreadId(v27, 1, v13 + 1);
        CICleanUpReset(v27, HIDWORD(v25));
      }

      else
      {
        v37 = 1;
        _CIDocSetIteratorProcessPositionsUpdatesForNode(*(*(a1 + 32) + 8 * a2), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60));
        v37 = 0;
        v20 = threadData[9 * v27 + 1] + 320 * v26;
        *(v20 + 312) = v18;
        v21 = *(v20 + 232);
        if (v21)
        {
          v21(*(v20 + 288));
        }

        dropThreadId(v27, 0, v13 + 1);
      }

      v22 = threadData[9 * v33 + 1] + 320 * v32;
      *(v22 + 312) = v10;
      v23 = *(v22 + 232);
      if (v23)
      {
        v23(*(v22 + 288));
      }

      dropThreadId(v33, 0, add_explicit + 1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Skipping because index is shut down", buf, 2u);
  }

  if (v37 == 1)
  {
    **(a1 + 40) = 1;
  }
}

@end