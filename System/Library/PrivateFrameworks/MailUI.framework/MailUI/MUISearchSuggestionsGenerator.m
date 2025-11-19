@interface MUISearchSuggestionsGenerator
+ (OS_os_log)log;
- (MUISearchSuggestionsGenerator)initWithSuggesters:(id)a3 delegate:(id)a4;
- (id)startGeneratingSuggestionsUsingPhraseManager:(id)a3;
- (uint64_t)_cancel;
- (uint64_t)_hasActiveOperationsWithRequestID:(uint64_t)a1;
- (void)_appendOperation:(uint64_t)a1;
- (void)_didProduceResult:(uint64_t)a1;
- (void)_operationDidComplete:(uint64_t)a1;
- (void)_stopGeneratingSuggestionsWithIdentifier:(uint64_t)a1;
- (void)cancel;
- (void)startPendingOperationWithID:(uint64_t)a1;
- (void)stopGeneratingSuggestionsWithIdentifier:(id)a3;
@end

@implementation MUISearchSuggestionsGenerator

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MUISearchSuggestionsGenerator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_20 != -1)
  {
    dispatch_once(&log_onceToken_20, block);
  }

  v2 = log_log_20;

  return v2;
}

void __36__MUISearchSuggestionsGenerator_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_20;
  log_log_20 = v2;
}

- (MUISearchSuggestionsGenerator)initWithSuggesters:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = MUISearchSuggestionsGenerator;
  v8 = [(MUISearchSuggestionsGenerator *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = [v6 copy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v9->_suggesters, v12);

    v13 = [MEMORY[0x277CBEB18] array];
    cancelledOperations = v9->_cancelledOperations;
    v9->_cancelledOperations = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    activeOperations = v9->_activeOperations;
    v9->_activeOperations = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INITIATED, 0);

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(v18, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v20 = dispatch_queue_create("com.apple.mobilemail.searchSuggestionsManager", v19);
    queue = v9->_queue;
    v9->_queue = v20;
  }

  return v9;
}

void __78__MUISearchSuggestionsGenerator_startGeneratingSuggestionsUsingPhraseManager___block_invoke(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = [[_MUISearchSuggestionsOperation alloc] initWithRequestID:a1[5] phraseManager:WeakRetained suggestionsGenerator:?];
  [(MUISearchSuggestionsGenerator *)WeakRetained _appendOperation:v2];
}

void __62__MUISearchSuggestionsGenerator__throttleIntervalMilliseconds__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 integerForKey:@"SearchSuggestionGeneratorThrottleInterval"];

  qword_280C7EFA0 = v1 & ~(v1 >> 63);
  v2 = +[MUISearchSuggestionsGenerator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = qword_280C7EFA0;
    _os_log_impl(&dword_214A5E000, v2, OS_LOG_TYPE_DEFAULT, "Throttle interval: %u ms", v3, 8u);
  }
}

void __50__MUISearchSuggestionsGenerator__appendOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(MUISearchSuggestionsGenerator *)WeakRetained startPendingOperationWithID:?];
}

- (void)stopGeneratingSuggestionsWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(MUISearchSuggestionsGenerator *)self stopGeneratingSuggestionsWithIdentifier:v4];
  }
}

void __73__MUISearchSuggestionsGenerator_stopGeneratingSuggestionsWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(MUISearchSuggestionsGenerator *)WeakRetained _stopGeneratingSuggestionsWithIdentifier:?];
}

- (id)startGeneratingSuggestionsUsingPhraseManager:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MUISearchRequestID);
  v6 = v4;
  v7 = v5;
  v8 = signpostLog();
  v9 = os_signpost_enabled(v8);

  if (v9)
  {
    v10 = [v6 phraseKind];
    v11 = signpostLog();
    [v6 signpostID];
    OUTLINED_FUNCTION_5_0();
    if (v10)
    {
      if (!(!v13 & v12) && os_signpost_enabled(v11))
      {
        v14 = [v6 phrase];
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_7(&dword_214A5E000, v15, v16, v17, "com.apple.mail.search.suggestion.zkw.queue", "id=%{signpost.description:attribute}u text=%{sensitive}@", v18, v19, v33, block, v35, v36, v37, v38, v39, v40, location[0]);
      }
    }

    else if (!(!v13 & v12) && os_signpost_enabled(v11))
    {
      v20 = [v6 phrase];
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_7(&dword_214A5E000, v21, v22, v23, "com.apple.mail.search.suggestion.ayt.queue", "id=%{signpost.description:attribute}u text=%{sensitive}@", v24, v25, v33, block, v35, v36, v37, v38, v39, v40, location[0]);
    }
  }

  objc_initWeak(location, self);
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  block = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __78__MUISearchSuggestionsGenerator_startGeneratingSuggestionsUsingPhraseManager___block_invoke;
  v37 = &unk_27818B0E8;
  v27 = queue;
  objc_copyWeak(&v40, location);
  v28 = v7;
  v38 = v28;
  v39 = v6;
  v29 = v6;
  dispatch_async(v27, &block);

  v30 = v39;
  v31 = v28;

  objc_destroyWeak(&v40);
  objc_destroyWeak(location);

  return v31;
}

- (void)_appendOperation:(uint64_t)a1
{
  v74 = *MEMORY[0x277D85DE8];
  v63 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    v4 = (a1 + 24);
    if (*(a1 + 24))
    {
      v5 = +[MUISearchSuggestionsGenerator log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v4;
        v7 = v6;
        if (v6)
        {
          v8 = v6[3];
        }

        else
        {
          v8 = 0;
        }

        v56 = v7;
        v9 = *v4;
        v10 = v9;
        v59 = v8;
        if (v9)
        {
          v11 = *(v9 + 4);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v13 = [v12 phrase];
        v14 = *v4;
        if (*v4)
        {
          v15 = v14[4];
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = v14;
        v18 = [v16 updatedSuggestion];
        OUTLINED_FUNCTION_1_6();
        _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling search #%u, text:'%@', suggestion: '%@'", &buf, 0x1Cu);
      }

      signpostEndEnqueueInterval(*v4, 1);
    }

    objc_storeStrong((a1 + 24), a2);
    v19 = v63;
    if (v63)
    {
      v19 = v63[3];
    }

    v20 = v19;
    v21 = [*(a1 + 40) count];
    v22 = v21;
    if (_MergedGlobals == -1)
    {
      if (v21)
      {
LABEL_16:
        v23 = qword_280C7EFA0;
        v24 = qword_280C7EFA0 == 0;
        v25 = +[MUISearchSuggestionsGenerator log];
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
        if (v24)
        {
          if (v26)
          {
            v40 = *v4;
            v41 = v40;
            if (v40)
            {
              v42 = v40[3];
            }

            else
            {
              v42 = 0;
            }

            v58 = v41;
            v43 = *v4;
            v44 = v43;
            v61 = v42;
            if (v43)
            {
              v45 = *(v43 + 4);
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;
            v47 = [v46 phrase];
            v48 = *v4;
            if (*v4)
            {
              v49 = v48[4];
            }

            else
            {
              v49 = 0;
            }

            v50 = v49;
            v51 = v48;
            v52 = [v50 updatedSuggestion];
            OUTLINED_FUNCTION_1_6();
            _os_log_impl(&dword_214A5E000, v25, OS_LOG_TYPE_INFO, "Enqueueing search #%u (text:'%@', suggestion: '%@').", &buf, 0x1Cu);
          }
        }

        else if (v26)
        {
          v27 = *v4;
          v28 = v27;
          if (v27 && (v29 = v27[3]) != 0)
          {
            v60 = v29;
            v62 = *(v29 + 2);
          }

          else
          {
            v60 = 0;
            v62 = 0;
          }

          v57 = v28;
          v30 = *v4;
          v31 = v30;
          if (v30)
          {
            v32 = *(v30 + 4);
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;
          v34 = [v33 phrase];
          v35 = *v4;
          if (*v4)
          {
            v36 = v35[4];
          }

          else
          {
            v36 = 0;
          }

          v37 = v36;
          v38 = v35;
          v39 = [v37 updatedSuggestion];
          LODWORD(buf) = 67109890;
          HIDWORD(buf) = v62;
          v68 = 1024;
          v69 = v23;
          v70 = 2112;
          v71 = v34;
          v72 = 2112;
          v73 = v39;
          _os_log_impl(&dword_214A5E000, v25, OS_LOG_TYPE_INFO, "Throttling search #%u for %u ms (text:'%@', suggestion: '%@').", &buf, 0x22u);
        }

        v53 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 1000000 * v23);
        objc_initWeak(&buf, a1);
        v54 = *(a1 + 48);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__MUISearchSuggestionsGenerator__appendOperation___block_invoke;
        block[3] = &unk_27818B110;
        v55 = v54;
        objc_copyWeak(&v66, &buf);
        v65 = v20;
        dispatch_after(v53, v55, block);

        objc_destroyWeak(&v66);
        objc_destroyWeak(&buf);
        goto LABEL_37;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global_37);
      if (v22)
      {
        goto LABEL_16;
      }
    }

    [(MUISearchSuggestionsGenerator *)a1 startPendingOperationWithID:v20];
LABEL_37:
  }
}

- (void)startPendingOperationWithID:(uint64_t)a1
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = v4[3];
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    v7 = [v3 isEqualToID:v5];

    if (v7)
    {
      v8 = *(a1 + 24);
      v9 = *(a1 + 24);
      *(a1 + 24) = 0;

      [*(a1 + 40) addObject:v8];
      v10 = +[MUISearchSuggestionsGenerator log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v8)
        {
          v11 = v8[3].isa;
          v37 = v11;
          if (v11)
          {
            v32 = *(v11 + 2);
          }

          else
          {
            v32 = 0;
          }

          isa = v8[4].isa;
        }

        else
        {
          v32 = 0;
          v37 = 0;
          isa = 0;
        }

        v13 = MEMORY[0x277D07198];
        v14 = isa;
        v15 = [(objc_class *)v14 phrase];
        v35 = [v13 partiallyRedactedStringForString:v15];
        if (v8)
        {
          v16 = v8[4].isa;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        [(objc_class *)v17 updatedSuggestion];
        v36 = v14;
        v33 = v17;
        v34 = v15;
        v31 = log = v10;
        if (v8)
        {
          v18 = v8[5].isa;
          v19 = v18;
          v20 = v8[5].isa;
          v29 = v18;
        }

        else
        {
          v19 = 0;
          v29 = 0;
          v20 = 0;
        }

        v21 = v20;
        v22 = [(objc_class *)v21 ef_map:&__block_literal_global_169];
        v23 = [v22 componentsJoinedByString:{@", "}];

        v24 = *(a1 + 40);
        v25 = v23;
        v26 = [v24 count];
        v27 = [*(a1 + 32) count];
        *buf = 67110658;
        v39 = v32;
        v40 = 2112;
        v41 = v35;
        v42 = 2112;
        v43 = v31;
        v44 = 1024;
        v45 = v19;
        v46 = 2114;
        v47 = v23;
        v48 = 1024;
        v49 = v26;
        v50 = 1024;
        v51 = v27;
        v10 = log;
        _os_log_impl(&dword_214A5E000, log, OS_LOG_TYPE_DEFAULT, "Starting search #%u, text '%@', suggestion: '%@', %u suggester(s): '%{public}@'. Now %u active operation(s), %u cancelled operation(s).", buf, 0x38u);
      }

      [(_MUISearchSuggestionsOperation *)v8 start];
    }

    else
    {
      v8 = +[MUISearchSuggestionsGenerator log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        if (v3)
        {
          v28 = v3[2];
        }

        else
        {
          v28 = 0;
        }

        *buf = 67109120;
        v39 = v28;
        _os_log_debug_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEBUG, "Not starting throttled search #%u", buf, 8u);
      }
    }
  }
}

- (void)_stopGeneratingSuggestionsWithIdentifier:(uint64_t)a1
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if (v3)
    {
      v4 = *(a1 + 40);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __74__MUISearchSuggestionsGenerator__stopGeneratingSuggestionsWithIdentifier___block_invoke;
      v20[3] = &unk_27818B138;
      v5 = v3;
      v21 = v5;
      v6 = v4;
      v7 = [v6 ef_firstObjectPassingTest:v20];

      if (v7)
      {
        [(_MUISearchSuggestionsOperation *)v7 cancel];
        [*(a1 + 40) removeObjectIdenticalTo:v7];
        [*(a1 + 32) addObject:v7];
        v8 = +[MUISearchSuggestionsGenerator log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v7 + 24);
          if (v10)
          {
            v18 = v10[2];
          }

          else
          {
            v18 = 0;
          }

          v11 = *(v7 + 32);
          v19 = v10;
          v12 = [v11 phrase];
          v13 = *(v7 + 32);
          v14 = [v13 updatedSuggestion];
          v15 = *(a1 + 40);
          v16 = [v15 count];
          v17 = [*(a1 + 32) count];
          *buf = 67110146;
          v23 = v18;
          v24 = 2112;
          v25 = v12;
          v26 = 2112;
          v27 = v14;
          v28 = 1024;
          v29 = v16;
          v30 = 1024;
          v31 = v17;
          _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "Cancelling search #%u, text:'%@', suggestion: '%@'. Now %u active operation(s), %u cancelled operation(s).", buf, 0x28u);
        }
      }

      else
      {
        v8 = +[MUISearchSuggestionsGenerator log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v5[2];
          *buf = 67109120;
          v23 = v9;
          _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "No active search #%u. Not cancelling.", buf, 8u);
        }
      }
    }
  }
}

BOOL __74__MUISearchSuggestionsGenerator__stopGeneratingSuggestionsWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      v4 = v3[2];
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
LABEL_4:
  v5 = *(a1 + 32);
  if (v5)
  {
    LODWORD(v5) = *(v5 + 8);
  }

  v6 = v4 == v5;

  return v6;
}

- (void)cancel
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_6_0();
  v5 = __39__MUISearchSuggestionsGenerator_cancel__block_invoke;
  v6 = &unk_278188BB0;
  v7 = self;
  dispatch_async(v3, block);
  if (self)
  {
    objc_storeWeak(&self->_delegate, 0);
  }
}

- (uint64_t)_cancel
{
  v30 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(*(result + 48));
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v1;
    v3 = *(v1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      v7 = off_278187000;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v10 = [(__objc2_class *)v7[34] log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            if (v9)
            {
              v11 = *(v9 + 24);
              v12 = v11;
              if (v11)
              {
                v13 = *(v11 + 2);
              }

              else
              {
                v13 = 0;
              }

              v14 = *(v9 + 32);
            }

            else
            {
              v13 = 0;
              v12 = 0;
              v14 = 0;
            }

            v15 = v14;
            v16 = [v15 phrase];
            *buf = 67109378;
            v26 = v13;
            v27 = 2112;
            v28 = v16;
            _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "Cancelling search #%u, text:'%@'.", buf, 0x12u);

            v7 = off_278187000;
          }

          [(_MUISearchSuggestionsOperation *)v9 cancel];
          ++v8;
        }

        while (v5 != v8);
        v17 = [v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
        v5 = v17;
      }

      while (v17);
    }

    v18 = *(v20 + 40);
    v19 = *(v20 + 32);
    [v19 addObjectsFromArray:v18];

    return [*(v20 + 40) removeAllObjects];
  }

  return result;
}

- (void)_didProduceResult:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    v4 = [v3 requestID];
    v5 = [(MUISearchSuggestionsGenerator *)a1 _hasActiveOperationsWithRequestID:v4];

    if (v5)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__MUISearchSuggestionsGenerator__didProduceResult___block_invoke;
      v10[3] = &unk_278188F78;
      v11 = v3;
      v12 = a1;
      dispatch_async(MEMORY[0x277D85CD0], v10);
      a1 = v11;
    }

    else
    {
      v6 = +[MUISearchSuggestionsGenerator log];
      if (OUTLINED_FUNCTION_10(v6))
      {
        v7 = [v3 requestID];
        v8 = v7;
        if (v7)
        {
          v9 = *(v7 + 8);
        }

        else
        {
          v9 = 0;
        }

        *buf = 67109120;
        v14 = v9;
        _os_log_impl(&dword_214A5E000, a1, OS_LOG_TYPE_DEFAULT, "Search #%u did produce result, but it’s no longer active.", buf, 8u);
      }
    }
  }
}

- (uint64_t)_hasActiveOperationsWithRequestID:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_6_0();
    v7 = __67__MUISearchSuggestionsGenerator__hasActiveOperationsWithRequestID___block_invoke;
    v8 = &unk_27818B160;
    v9 = v3;
    a1 = [v4 indexOfObjectPassingTest:v6] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return a1;
}

void __51__MUISearchSuggestionsGenerator__didProduceResult___block_invoke(uint64_t a1)
{
  v3 = +[MUISearchSuggestionsGenerator log];
  if (OUTLINED_FUNCTION_10(v3))
  {
    v4 = [*(a1 + 32) requestID];
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 8);
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1 + 32) suggestions];
    LODWORD(v16) = 67109376;
    HIDWORD(v16) = v6;
    LOWORD(v17) = 1024;
    *(&v17 + 2) = [v7 count];
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0xEu);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained((v13 + 8));
    v15 = *(a1 + 40);
  }

  else
  {
    v15 = 0;
    WeakRetained = 0;
  }

  [WeakRetained suggestionsGenerator:v15 didProduceResult:{*(a1 + 32), v16, v17}];
}

BOOL __67__MUISearchSuggestionsGenerator__hasActiveOperationsWithRequestID___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

- (void)_operationDidComplete:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    if (v3 && (v4 = atomic_load(v3 + 8), (v4 & 1) != 0))
    {
      v5 = +[MUISearchSuggestionsGenerator log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v3 + 3);
        if (v6)
        {
          LODWORD(v6) = *(v6 + 8);
        }

        *buf = 67109120;
        v14 = v6;
        _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "Search #%u did complete, but it’s cancelled.", buf, 8u);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_6_0();
      v8 = __55__MUISearchSuggestionsGenerator__operationDidComplete___block_invoke;
      v9 = &unk_27818B188;
      v10 = v3;
      v11 = a1;
      v12 = 0;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v5 = v10;
    }

    [*(a1 + 32) removeObjectIdenticalTo:v3];
    [*(a1 + 40) removeObjectIdenticalTo:v3];
  }
}

void __55__MUISearchSuggestionsGenerator__operationDidComplete___block_invoke(uint64_t a1)
{
  v3 = +[MUISearchSuggestionsGenerator log];
  if (OUTLINED_FUNCTION_10(v3))
  {
    v4 = *(a1 + 32);
    if (v4 && (v5 = *(v4 + 24)) != 0)
    {
      v6 = v5[2];
    }

    else
    {
      v6 = 0;
    }

    LODWORD(v17) = 67109120;
    HIDWORD(v17) = v6;
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained((v12 + 8));
    v14 = *(a1 + 40);
  }

  else
  {
    v14 = 0;
    WeakRetained = 0;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 24);
  }

  else
  {
    v16 = 0;
  }

  [WeakRetained suggestionsGenerator:v14 didCompleteRequestID:{v16, v17}];

  signpostEndEnqueueInterval(*(a1 + 32), *(a1 + 48));
}

- (void)stopGeneratingSuggestionsWithIdentifier:(void *)a3 .cold.1(id val, id *a2, void *a3)
{
  objc_initWeak(&location, val);
  if (val)
  {
    v6 = *(val + 6);
  }

  else
  {
    v6 = 0;
  }

  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __73__MUISearchSuggestionsGenerator_stopGeneratingSuggestionsWithIdentifier___block_invoke;
  a2[3] = &unk_27818B110;
  v7 = v6;
  objc_copyWeak(a2 + 5, &location);
  a2[4] = a3;
  dispatch_async(v7, a2);

  objc_destroyWeak(a2 + 5);
  objc_destroyWeak(&location);
}

@end