@interface SFSearchResult
@end

@implementation SFSearchResult

void __82__SFSearchResult_VisualCat__processVisualCATResultSynchronouslyUsingPatternClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (PARLogHandleForCategory_onceToken_23 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
  }

  v7 = PARLogHandleForCategory_logHandles_4_25;
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1064000, v8, OS_SIGNPOST_INTERVAL_END, v9, "execute", "", &v17, 2u);
  }

  if (v6 || ([v5 visual], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    if (PARLogHandleForCategory_onceToken_23 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_23, &__block_literal_global_24);
    }

    v10 = PARLogHandleForCategory_logHandles_4_25;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_4_25, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [v6 localizedDescription];
      v17 = 138412290;
      v18 = v12;
      _os_log_error_impl(&dword_1B1064000, v11, OS_LOG_TYPE_ERROR, "Empty VisualCAT output, check DialogEngine logs. Execution error: %@.", &v17, 0xCu);
    }
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = [v5 visual];
    [v14 setVisualCATOutput:v15];
  }

  dispatch_group_leave(*(a1 + 32));

  v16 = *MEMORY[0x1E69E9840];
}

@end