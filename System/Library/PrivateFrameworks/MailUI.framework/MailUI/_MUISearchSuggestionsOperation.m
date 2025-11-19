@interface _MUISearchSuggestionsOperation
- (id)_runningSuggesterNames;
- (id)_startQueryForSuggester:(dispatch_queue_t *)a1;
- (id)initWithRequestID:(void *)a3 phraseManager:(void *)a4 suggestionsGenerator:;
- (void)_asyncCompleteSuggester:(void *)a1;
- (void)_didCompleteAllSuggesters;
- (void)_suggester:(void *)a3 didCompleteWithSuggestions:;
- (void)cancel;
- (void)start;
- (void)suggester:(void *)a3 producedSuggestions:;
@end

@implementation _MUISearchSuggestionsOperation

- (id)_startQueryForSuggester:(dispatch_queue_t *)a1
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[7]);
    v4 = a1[7];
    v5 = a1;
    v6 = v3;
    v7 = signpostLog();
    v8 = os_signpost_enabled(v7);

    if (v8)
    {
      v9 = signpostLog();
      v10 = os_signpost_id_generate(v9);

      v11 = [v5[4] phraseKind];
      v12 = signpostLog();
      v13 = v12;
      if (v11)
      {
        if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
        {
          v14 = v5[3];
          if (v14)
          {
            v15 = v14[2];
          }

          else
          {
            v15 = 0;
          }

          v16 = v14;
          v17 = [v6 logIdentifier];
          LODWORD(buf) = 67109378;
          HIDWORD(buf) = v15;
          v33 = 2114;
          v34 = v17;
          _os_signpost_emit_with_name_impl(&dword_214A5E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "com.apple.mail.search.suggestion.zkw.suggester", "id=%{signpost.description:attribute}u suggester=%{signpost.description:attribute,public}@", &buf, 0x12u);
        }
      }

      else if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v19 = v5[3];
        if (v19)
        {
          v20 = v19[2];
        }

        else
        {
          v20 = 0;
        }

        v21 = v19;
        v22 = [v6 logIdentifier];
        LODWORD(buf) = 67109378;
        HIDWORD(buf) = v20;
        v33 = 2114;
        v34 = v22;
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "com.apple.mail.search.suggestion.ayt.suggester", "id=%{signpost.description:attribute}u suggester=%{signpost.description:attribute,public}@", &buf, 0x12u);
      }

      v18 = [v5[4] phraseKind];
    }

    else
    {
      v18 = 0;
      v10 = 0;
    }

    objc_initWeak(&buf, v5);
    v23 = v5[4];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58___MUISearchSuggestionsOperation__startQueryForSuggester___block_invoke;
    v29[3] = &unk_27818B1B0;
    v31[1] = v18;
    v31[2] = v10;
    v29[4] = v4;
    objc_copyWeak(v31, &buf);
    v24 = v6;
    v30 = v24;
    v25 = [v24 generateSuggestionsUsingPhraseManager:v23 handler:v29];

    v26 = v5[6];
    v27 = [MEMORY[0x277D07190] pairWithFirst:v24 second:v25];
    [v26 addObject:v27];

    objc_destroyWeak(v31);
    objc_destroyWeak(&buf);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)initWithRequestID:(void *)a3 phraseManager:(void *)a4 suggestionsGenerator:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = _MUISearchSuggestionsOperation;
    v11 = objc_msgSendSuper2(&v20, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 3, a2);
      objc_storeStrong(a1 + 4, a3);
      if (v10)
      {
        v12 = v10[2];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 copy];
      v15 = a1[5];
      a1[5] = v14;

      v16 = [MEMORY[0x277CBEB18] array];
      v17 = a1[6];
      a1[6] = v16;

      objc_storeWeak(a1 + 2, v10);
      if (v10)
      {
        v18 = v10[6];
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(a1 + 7, v18);
    }
  }

  return a1;
}

- (void)start
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(a1[7]);
  v2 = a1;
  v3 = signpostLog();
  v4 = os_signpost_enabled(v3);

  if (v4)
  {
    v5 = [v2[4] phraseKind];
    v6 = signpostLog();
    v7 = [v2[4] signpostID];
    OUTLINED_FUNCTION_5_0();
    if (v5)
    {
      if (!v9 & v8 || !os_signpost_enabled(v6))
      {
        goto LABEL_11;
      }

      v10 = v2[3];
      v11 = v2[4];
      v12 = v10;
      v13 = [v11 phrase];
      OUTLINED_FUNCTION_3_2();
      v14 = "com.apple.mail.search.suggestion.zkw.run";
    }

    else
    {
      if (!v9 & v8 || !os_signpost_enabled(v6))
      {
        goto LABEL_11;
      }

      v15 = v2[3];
      v11 = v2[4];
      v12 = v15;
      v13 = [v11 phrase];
      OUTLINED_FUNCTION_3_2();
      v14 = "com.apple.mail.search.suggestion.ayt.run";
    }

    _os_signpost_emit_with_name_impl(&dword_214A5E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, v14, "id=%{signpost.description:attribute}u text=%{sensitive}@", buf, 0x12u);

LABEL_11:
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v2[5];
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
  v18 = off_278187000;
  if (v17)
  {
    v19 = v17;
    v20 = *v44;
LABEL_14:
    v21 = 0;
    while (1)
    {
      if (*v44 != v20)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v43 + 1) + 8 * v21);
      v23 = atomic_load(v2 + 8);
      if (v23)
      {
        break;
      }

      v24 = v2[4];
      if ([v24 phraseKind])
      {
      }

      else
      {
        v25 = [v22 shouldQueryForAsYouType];

        if ((v25 & 1) == 0)
        {
          v26 = [(__objc2_class *)v18[34] log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = [v22 logIdentifier];
            v28 = v27;
            v29 = v2[3];
            if (v29)
            {
              LODWORD(v29) = v29[1].isa;
            }

            *buf = 138543618;
            *v48 = v27;
            *&v48[8] = 1024;
            *&v48[10] = v29;
            _os_log_debug_impl(&dword_214A5E000, v26, OS_LOG_TYPE_DEBUG, "AsYouType detected. Ignoring suggester '%{public}@' for search #%u", buf, 0x12u);
          }

          goto LABEL_22;
        }
      }

      v26 = [(_MUISearchSuggestionsOperation *)v2 _startQueryForSuggester:v22];
      if (!v26)
      {
        v30 = [(__objc2_class *)v18[34] log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = v2[3];
          if (v31)
          {
            v32 = v31[2];
          }

          else
          {
            v32 = 0;
          }

          v42 = v31;
          v33 = [v22 logIdentifier];
          *buf = 67109378;
          *v48 = v32;
          *&v48[4] = 2114;
          *&v48[6] = v33;
          _os_log_debug_impl(&dword_214A5E000, v30, OS_LOG_TYPE_DEBUG, "Search #%u, suggester '%{public}@' completed synchronously.", buf, 0x12u);

          v18 = off_278187000;
        }

        [(_MUISearchSuggestionsOperation *)v2 _asyncCompleteSuggester:v22];
      }

LABEL_22:

      if (v19 == ++v21)
      {
        v34 = [v16 countByEnumeratingWithState:&v43 objects:v49 count:16];
        v19 = v34;
        if (v34)
        {
          goto LABEL_14;
        }

        break;
      }
    }
  }

  v35 = [(__objc2_class *)v18[34] log];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v36 = v2[3];
    if (v36)
    {
      v37 = v36[2];
    }

    else
    {
      v37 = 0;
    }

    v38 = v2[6];
    v39 = v36;
    v40 = [v38 count];
    v41 = [(_MUISearchSuggestionsOperation *)v2 _runningSuggesterNames];
    *buf = 67109634;
    *v48 = v37;
    *&v48[4] = 1024;
    *&v48[6] = v40;
    *&v48[10] = 2114;
    *&v48[12] = v41;
    _os_log_debug_impl(&dword_214A5E000, v35, OS_LOG_TYPE_DEBUG, "Search #%u, %u suggester(s) ('%{public}@') running async.", buf, 0x18u);
  }
}

- (void)cancel
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1 && (atomic_fetch_or(a1 + 8, 1u) & 1) == 0)
  {
    v1 = a1;
    v2 = signpostLog();
    v3 = os_signpost_enabled(v2);

    if (!v3)
    {
LABEL_17:

      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_6_0();
      v16 = __40___MUISearchSuggestionsOperation_cancel__block_invoke;
      v17 = &unk_278188BB0;
      v18 = v1;
      dispatch_async(v14, block);
      return;
    }

    v4 = [v1[4] phraseKind];
    v5 = signpostLog();
    v6 = [v1[4] signpostID];
    OUTLINED_FUNCTION_5_0();
    if (v4)
    {
      if (!v8 & v7 || !os_signpost_enabled(v5))
      {
        goto LABEL_16;
      }

      v9 = v1[3];
      if (v9)
      {
        v10 = v9[2];
      }

      else
      {
        v10 = 0;
      }

      *buf = 67109120;
      v20 = v10;
      v11 = "com.apple.mail.search.suggestion.zkw.cancel";
    }

    else
    {
      if (!v8 & v7 || !os_signpost_enabled(v5))
      {
        goto LABEL_16;
      }

      v12 = v1[3];
      if (v12)
      {
        v13 = v12[2];
      }

      else
      {
        v13 = 0;
      }

      *buf = 67109120;
      v20 = v13;
      v11 = "com.apple.mail.search.suggestion.ayt.cancel";
    }

    _os_signpost_emit_with_name_impl(&dword_214A5E000, v5, OS_SIGNPOST_EVENT, v6, v11, "Cancelled id=%{signpost.description:attribute}u", buf, 8u);
LABEL_16:

    goto LABEL_17;
  }
}

- (void)_asyncCompleteSuggester:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = a1[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58___MUISearchSuggestionsOperation__asyncCompleteSuggester___block_invoke;
    block[3] = &unk_27818B110;
    v5 = v4;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)_runningSuggesterNames
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[7]);
    v2 = [v1[6] ef_map:&__block_literal_global_136];
    v1 = [v2 componentsJoinedByString:{@", "}];
  }

  return v1;
}

- (void)_suggester:(void *)a3 didCompleteWithSuggestions:
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    if (v6)
    {
      [(_MUISearchSuggestionsOperation *)a1 suggester:v5 producedSuggestions:v6];
    }

    v7 = *(a1 + 48);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_6_0();
    v40 = __72___MUISearchSuggestionsOperation__suggester_didCompleteWithSuggestions___block_invoke;
    v41 = &unk_27818B1F8;
    v8 = v5;
    v42 = v8;
    v9 = [v7 indexOfObjectPassingTest:v39];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (![v6 count])
      {
LABEL_19:

        goto LABEL_20;
      }

      v10 = +[MUISearchSuggestionsGenerator log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 24);
        if (v11)
        {
          v12 = v11[2];
        }

        else
        {
          v12 = 0;
        }

        v13 = v11;
        v14 = [v8 logIdentifier];
        [v6 count];
        *buf = 67109634;
        v44 = v12;
        OUTLINED_FUNCTION_8();
        v45 = v14;
        v46 = 1024;
        LODWORD(v47) = v15;
        _os_log_error_impl(&dword_214A5E000, v10, OS_LOG_TYPE_ERROR, "Search #%u suggester '%{public}@' did produce %u suggestions but it is no longer running. Ignoring.", buf, 0x18u);
      }
    }

    else
    {
      v16 = v9;
      v17 = [*(a1 + 48) objectAtIndexedSubscript:v9];
      v18 = [v17 second];

      if (v18)
      {
        v19 = +[MUISearchSuggestionsGenerator log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 24);
          if (v20)
          {
            v21 = v20[2];
          }

          else
          {
            v21 = 0;
          }

          v38 = v20;
          v22 = [v8 logIdentifier];
          *buf = 67109378;
          v44 = v21;
          OUTLINED_FUNCTION_8();
          v45 = v23;
          _os_log_impl(&dword_214A5E000, v19, OS_LOG_TYPE_DEFAULT, "Search #%u completed async suggester '%{public}@'.", buf, 0x12u);
        }
      }

      [*(a1 + 48) removeObjectAtIndex:v16];
      v24 = [*(a1 + 48) count];
      v10 = +[MUISearchSuggestionsGenerator log];
      v25 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!v24)
      {
        if (v25)
        {
          v26 = *(a1 + 24);
          if (v26)
          {
            v27 = v26[2];
          }

          else
          {
            v27 = 0;
          }

          v28 = v26;
          v29 = [v8 logIdentifier];
          *buf = 67109378;
          v44 = v27;
          OUTLINED_FUNCTION_8();
          v45 = v30;
          _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Search #%u did complete suggester '%{public}@'. All suggesters done.", buf, 0x12u);
        }

        [(_MUISearchSuggestionsOperation *)a1 _didCompleteAllSuggesters];
        goto LABEL_19;
      }

      if (v25)
      {
        v31 = *(a1 + 24);
        if (v31)
        {
          v32 = v31[2];
        }

        else
        {
          v32 = 0;
        }

        v33 = v31;
        v34 = [v8 logIdentifier];
        v35 = [(_MUISearchSuggestionsOperation *)a1 _runningSuggesterNames];
        *buf = 67109890;
        v44 = v32;
        OUTLINED_FUNCTION_8();
        v45 = v34;
        v46 = v36;
        v47 = v37;
        v48 = 1024;
        v49 = v24;
        _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Search #%u did complete suggester '%{public}@'. '%{public}@' (%u) remaining.", buf, 0x22u);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)suggester:(void *)a3 producedSuggestions:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    v7 = +[MUISearchSuggestionsGenerator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = v8[2];
      }

      else
      {
        v9 = 0;
      }

      v10 = v8;
      v11 = [v5 logIdentifier];
      v19[0] = 67109634;
      v19[1] = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 1024;
      v23 = [v6 count];
      _os_log_impl(&dword_214A5E000, v7, OS_LOG_TYPE_DEFAULT, "Search #%u suggester '%{public}@' produced %u suggestions.", v19, 0x18u);
    }

    v12 = [MUISearchResult alloc];
    v13 = [v5 categories];
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = v14;
    v17 = -[MUISearchResult initWithSuggestions:categories:requestID:phraseKind:](&v12->super.isa, v6, v13, v16, [v15 phraseKind]);

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [(MUISearchSuggestionsGenerator *)WeakRetained _didProduceResult:v17];
  }
}

- (void)_didCompleteAllSuggesters
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 56));
    v3 = atomic_load((a1 + 8));
    v4 = +[MUISearchSuggestionsGenerator log];
    v5 = OUTLINED_FUNCTION_10(v4);
    if (v3)
    {
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else if (v5)
    {
LABEL_6:
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_2_3();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
    }

    signpostEndRunInterval(a1);
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [(MUISearchSuggestionsGenerator *)WeakRetained _operationDidComplete:a1];
  }
}

@end