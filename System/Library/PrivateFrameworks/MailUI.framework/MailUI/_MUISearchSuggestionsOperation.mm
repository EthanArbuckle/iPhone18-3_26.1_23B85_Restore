@interface _MUISearchSuggestionsOperation
- (id)_runningSuggesterNames;
- (id)_startQueryForSuggester:(dispatch_queue_t *)suggester;
- (id)initWithRequestID:(void *)d phraseManager:(void *)manager suggestionsGenerator:;
- (void)_asyncCompleteSuggester:(void *)suggester;
- (void)_didCompleteAllSuggesters;
- (void)_suggester:(void *)_suggester didCompleteWithSuggestions:;
- (void)cancel;
- (void)start;
- (void)suggester:(void *)suggester producedSuggestions:;
@end

@implementation _MUISearchSuggestionsOperation

- (id)_startQueryForSuggester:(dispatch_queue_t *)suggester
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (suggester)
  {
    dispatch_assert_queue_V2(suggester[7]);
    v4 = suggester[7];
    suggesterCopy = suggester;
    v6 = v3;
    v7 = signpostLog();
    v8 = os_signpost_enabled(v7);

    if (v8)
    {
      v9 = signpostLog();
      v10 = os_signpost_id_generate(v9);

      phraseKind = [suggesterCopy[4] phraseKind];
      v12 = signpostLog();
      v13 = v12;
      if (phraseKind)
      {
        if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
        {
          v14 = suggesterCopy[3];
          if (v14)
          {
            v15 = v14[2];
          }

          else
          {
            v15 = 0;
          }

          v16 = v14;
          logIdentifier = [v6 logIdentifier];
          LODWORD(buf) = 67109378;
          HIDWORD(buf) = v15;
          v33 = 2114;
          v34 = logIdentifier;
          _os_signpost_emit_with_name_impl(&dword_214A5E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "com.apple.mail.search.suggestion.zkw.suggester", "id=%{signpost.description:attribute}u suggester=%{signpost.description:attribute,public}@", &buf, 0x12u);
        }
      }

      else if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v19 = suggesterCopy[3];
        if (v19)
        {
          v20 = v19[2];
        }

        else
        {
          v20 = 0;
        }

        v21 = v19;
        logIdentifier2 = [v6 logIdentifier];
        LODWORD(buf) = 67109378;
        HIDWORD(buf) = v20;
        v33 = 2114;
        v34 = logIdentifier2;
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "com.apple.mail.search.suggestion.ayt.suggester", "id=%{signpost.description:attribute}u suggester=%{signpost.description:attribute,public}@", &buf, 0x12u);
      }

      phraseKind2 = [suggesterCopy[4] phraseKind];
    }

    else
    {
      phraseKind2 = 0;
      v10 = 0;
    }

    objc_initWeak(&buf, suggesterCopy);
    v23 = suggesterCopy[4];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58___MUISearchSuggestionsOperation__startQueryForSuggester___block_invoke;
    v29[3] = &unk_27818B1B0;
    v31[1] = phraseKind2;
    v31[2] = v10;
    v29[4] = v4;
    objc_copyWeak(v31, &buf);
    v24 = v6;
    v30 = v24;
    v25 = [v24 generateSuggestionsUsingPhraseManager:v23 handler:v29];

    v26 = suggesterCopy[6];
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

- (id)initWithRequestID:(void *)d phraseManager:(void *)manager suggestionsGenerator:
{
  v8 = a2;
  dCopy = d;
  managerCopy = manager;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = _MUISearchSuggestionsOperation;
    v11 = objc_msgSendSuper2(&v20, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 3, a2);
      objc_storeStrong(self + 4, d);
      if (managerCopy)
      {
        v12 = managerCopy[2];
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 copy];
      v15 = self[5];
      self[5] = v14;

      array = [MEMORY[0x277CBEB18] array];
      v17 = self[6];
      self[6] = array;

      objc_storeWeak(self + 2, managerCopy);
      if (managerCopy)
      {
        v18 = managerCopy[6];
      }

      else
      {
        v18 = 0;
      }

      objc_storeStrong(self + 7, v18);
    }
  }

  return self;
}

- (void)start
{
  v50 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  dispatch_assert_queue_V2(self[7]);
  selfCopy = self;
  v3 = signpostLog();
  v4 = os_signpost_enabled(v3);

  if (v4)
  {
    phraseKind = [selfCopy[4] phraseKind];
    v6 = signpostLog();
    signpostID = [selfCopy[4] signpostID];
    OUTLINED_FUNCTION_5_0();
    if (phraseKind)
    {
      if (!v9 & v8 || !os_signpost_enabled(v6))
      {
        goto LABEL_11;
      }

      v10 = selfCopy[3];
      v11 = selfCopy[4];
      v12 = v10;
      phrase = [v11 phrase];
      OUTLINED_FUNCTION_3_2();
      v14 = "com.apple.mail.search.suggestion.zkw.run";
    }

    else
    {
      if (!v9 & v8 || !os_signpost_enabled(v6))
      {
        goto LABEL_11;
      }

      v15 = selfCopy[3];
      v11 = selfCopy[4];
      v12 = v15;
      phrase = [v11 phrase];
      OUTLINED_FUNCTION_3_2();
      v14 = "com.apple.mail.search.suggestion.ayt.run";
    }

    _os_signpost_emit_with_name_impl(&dword_214A5E000, v6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, v14, "id=%{signpost.description:attribute}u text=%{sensitive}@", buf, 0x12u);

LABEL_11:
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = selfCopy[5];
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
      v23 = atomic_load(selfCopy + 8);
      if (v23)
      {
        break;
      }

      v24 = selfCopy[4];
      if ([v24 phraseKind])
      {
      }

      else
      {
        shouldQueryForAsYouType = [v22 shouldQueryForAsYouType];

        if ((shouldQueryForAsYouType & 1) == 0)
        {
          v26 = [(__objc2_class *)v18[34] log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            logIdentifier = [v22 logIdentifier];
            v28 = logIdentifier;
            v29 = selfCopy[3];
            if (v29)
            {
              LODWORD(v29) = v29[1].isa;
            }

            *buf = 138543618;
            *v48 = logIdentifier;
            *&v48[8] = 1024;
            *&v48[10] = v29;
            _os_log_debug_impl(&dword_214A5E000, v26, OS_LOG_TYPE_DEBUG, "AsYouType detected. Ignoring suggester '%{public}@' for search #%u", buf, 0x12u);
          }

          goto LABEL_22;
        }
      }

      v26 = [(_MUISearchSuggestionsOperation *)selfCopy _startQueryForSuggester:v22];
      if (!v26)
      {
        v30 = [(__objc2_class *)v18[34] log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = selfCopy[3];
          if (v31)
          {
            v32 = v31[2];
          }

          else
          {
            v32 = 0;
          }

          v42 = v31;
          logIdentifier2 = [v22 logIdentifier];
          *buf = 67109378;
          *v48 = v32;
          *&v48[4] = 2114;
          *&v48[6] = logIdentifier2;
          _os_log_debug_impl(&dword_214A5E000, v30, OS_LOG_TYPE_DEBUG, "Search #%u, suggester '%{public}@' completed synchronously.", buf, 0x12u);

          v18 = off_278187000;
        }

        [(_MUISearchSuggestionsOperation *)selfCopy _asyncCompleteSuggester:v22];
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
    v36 = selfCopy[3];
    if (v36)
    {
      v37 = v36[2];
    }

    else
    {
      v37 = 0;
    }

    v38 = selfCopy[6];
    v39 = v36;
    v40 = [v38 count];
    _runningSuggesterNames = [(_MUISearchSuggestionsOperation *)selfCopy _runningSuggesterNames];
    *buf = 67109634;
    *v48 = v37;
    *&v48[4] = 1024;
    *&v48[6] = v40;
    *&v48[10] = 2114;
    *&v48[12] = _runningSuggesterNames;
    _os_log_debug_impl(&dword_214A5E000, v35, OS_LOG_TYPE_DEBUG, "Search #%u, %u suggester(s) ('%{public}@') running async.", buf, 0x18u);
  }
}

- (void)cancel
{
  v21 = *MEMORY[0x277D85DE8];
  if (self && (atomic_fetch_or(self + 8, 1u) & 1) == 0)
  {
    selfCopy = self;
    v2 = signpostLog();
    v3 = os_signpost_enabled(v2);

    if (!v3)
    {
LABEL_17:

      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_6_0();
      v16 = __40___MUISearchSuggestionsOperation_cancel__block_invoke;
      v17 = &unk_278188BB0;
      v18 = selfCopy;
      dispatch_async(v14, block);
      return;
    }

    phraseKind = [selfCopy[4] phraseKind];
    v5 = signpostLog();
    signpostID = [selfCopy[4] signpostID];
    OUTLINED_FUNCTION_5_0();
    if (phraseKind)
    {
      if (!v8 & v7 || !os_signpost_enabled(v5))
      {
        goto LABEL_16;
      }

      v9 = selfCopy[3];
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

      v12 = selfCopy[3];
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

    _os_signpost_emit_with_name_impl(&dword_214A5E000, v5, OS_SIGNPOST_EVENT, signpostID, v11, "Cancelled id=%{signpost.description:attribute}u", buf, 8u);
LABEL_16:

    goto LABEL_17;
  }
}

- (void)_asyncCompleteSuggester:(void *)suggester
{
  v3 = a2;
  if (suggester)
  {
    objc_initWeak(&location, suggester);
    v4 = suggester[7];
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
  selfCopy = self;
  if (self)
  {
    dispatch_assert_queue_V2(self[7]);
    v2 = [selfCopy[6] ef_map:&__block_literal_global_136];
    selfCopy = [v2 componentsJoinedByString:{@", "}];
  }

  return selfCopy;
}

- (void)_suggester:(void *)_suggester didCompleteWithSuggestions:
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  _suggesterCopy = _suggester;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    if (_suggesterCopy)
    {
      [(_MUISearchSuggestionsOperation *)self suggester:v5 producedSuggestions:_suggesterCopy];
    }

    v7 = *(self + 48);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_6_0();
    v40 = __72___MUISearchSuggestionsOperation__suggester_didCompleteWithSuggestions___block_invoke;
    v41 = &unk_27818B1F8;
    v8 = v5;
    v42 = v8;
    v9 = [v7 indexOfObjectPassingTest:v39];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (![_suggesterCopy count])
      {
LABEL_19:

        goto LABEL_20;
      }

      v10 = +[MUISearchSuggestionsGenerator log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(self + 24);
        if (v11)
        {
          v12 = v11[2];
        }

        else
        {
          v12 = 0;
        }

        v13 = v11;
        logIdentifier = [v8 logIdentifier];
        [_suggesterCopy count];
        *buf = 67109634;
        v44 = v12;
        OUTLINED_FUNCTION_8();
        v45 = logIdentifier;
        v46 = 1024;
        LODWORD(v47) = v15;
        _os_log_error_impl(&dword_214A5E000, v10, OS_LOG_TYPE_ERROR, "Search #%u suggester '%{public}@' did produce %u suggestions but it is no longer running. Ignoring.", buf, 0x18u);
      }
    }

    else
    {
      v16 = v9;
      v17 = [*(self + 48) objectAtIndexedSubscript:v9];
      second = [v17 second];

      if (second)
      {
        v19 = +[MUISearchSuggestionsGenerator log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(self + 24);
          if (v20)
          {
            v21 = v20[2];
          }

          else
          {
            v21 = 0;
          }

          v38 = v20;
          logIdentifier2 = [v8 logIdentifier];
          *buf = 67109378;
          v44 = v21;
          OUTLINED_FUNCTION_8();
          v45 = v23;
          _os_log_impl(&dword_214A5E000, v19, OS_LOG_TYPE_DEFAULT, "Search #%u completed async suggester '%{public}@'.", buf, 0x12u);
        }
      }

      [*(self + 48) removeObjectAtIndex:v16];
      v24 = [*(self + 48) count];
      v10 = +[MUISearchSuggestionsGenerator log];
      v25 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (!v24)
      {
        if (v25)
        {
          v26 = *(self + 24);
          if (v26)
          {
            v27 = v26[2];
          }

          else
          {
            v27 = 0;
          }

          v28 = v26;
          logIdentifier3 = [v8 logIdentifier];
          *buf = 67109378;
          v44 = v27;
          OUTLINED_FUNCTION_8();
          v45 = v30;
          _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Search #%u did complete suggester '%{public}@'. All suggesters done.", buf, 0x12u);
        }

        [(_MUISearchSuggestionsOperation *)self _didCompleteAllSuggesters];
        goto LABEL_19;
      }

      if (v25)
      {
        v31 = *(self + 24);
        if (v31)
        {
          v32 = v31[2];
        }

        else
        {
          v32 = 0;
        }

        v33 = v31;
        logIdentifier4 = [v8 logIdentifier];
        _runningSuggesterNames = [(_MUISearchSuggestionsOperation *)self _runningSuggesterNames];
        *buf = 67109890;
        v44 = v32;
        OUTLINED_FUNCTION_8();
        v45 = logIdentifier4;
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

- (void)suggester:(void *)suggester producedSuggestions:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  suggesterCopy = suggester;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    v7 = +[MUISearchSuggestionsGenerator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(self + 24);
      if (v8)
      {
        v9 = v8[2];
      }

      else
      {
        v9 = 0;
      }

      v10 = v8;
      logIdentifier = [v5 logIdentifier];
      v19[0] = 67109634;
      v19[1] = v9;
      v20 = 2114;
      v21 = logIdentifier;
      v22 = 1024;
      v23 = [suggesterCopy count];
      _os_log_impl(&dword_214A5E000, v7, OS_LOG_TYPE_DEFAULT, "Search #%u suggester '%{public}@' produced %u suggestions.", v19, 0x18u);
    }

    v12 = [MUISearchResult alloc];
    categories = [v5 categories];
    v14 = *(self + 24);
    v15 = *(self + 32);
    v16 = v14;
    v17 = -[MUISearchResult initWithSuggestions:categories:requestID:phraseKind:](&v12->super.isa, suggesterCopy, categories, v16, [v15 phraseKind]);

    WeakRetained = objc_loadWeakRetained((self + 16));
    [(MUISearchSuggestionsGenerator *)WeakRetained _didProduceResult:v17];
  }
}

- (void)_didCompleteAllSuggesters
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 56));
    v3 = atomic_load((self + 8));
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

    signpostEndRunInterval(self);
    WeakRetained = objc_loadWeakRetained((self + 16));
    [(MUISearchSuggestionsGenerator *)WeakRetained _operationDidComplete:self];
  }
}

@end