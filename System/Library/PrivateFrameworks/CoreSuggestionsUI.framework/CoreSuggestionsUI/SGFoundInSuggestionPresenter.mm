@interface SGFoundInSuggestionPresenter
- (NSArray)realtimeSuggestions;
- (SGFoundInSuggestionPresenter)init;
- (id)formatMixedCategoriesTitle:(id)title;
- (void)_loadSuggestionsForTheFirstTime:(BOOL)time;
- (void)_loadedRealtimeSuggestions:(id)suggestions fromHostApp:(int64_t)app fromExtractionSource:(int)source;
- (void)_setNeedsToReloadSuggestionsAfter:(double)after;
- (void)addSuggestionsFromSearchableItems:(id)items existingSuggestions:(id)suggestions mailService:(id)service messageService:(id)messageService options:(unint64_t)options filter:(id)filter;
- (void)addSuggestionsFromSearchableItems:(id)items existingSuggestions:(id)suggestions options:(unint64_t)options filter:(id)filter;
- (void)addSuggestionsFromSearchableItems:(id)items options:(unint64_t)options filter:(id)filter;
- (void)dealloc;
- (void)setMailService:(id)service messageService:(id)messageService;
- (void)setRealtimeSuggestions:(id)suggestions fromHostApp:(int64_t)app fromExtractionSource:(int)source;
@end

@implementation SGFoundInSuggestionPresenter

- (id)formatMixedCategoriesTitle:(id)title
{
  titleCopy = title;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
  v6 = [v5 localizedStringForKey:@"SuggestionsBannerMultipleSuggestionsTitleFormat" value:&stru_1F3012140 table:0];

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (void)_loadedRealtimeSuggestions:(id)suggestions fromHostApp:(int64_t)app fromExtractionSource:(int)source
{
  suggestionsCopy = suggestions;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__SGFoundInSuggestionPresenter__loadedRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke;
  v10[3] = &unk_1E7CD9428;
  v10[4] = self;
  v11 = suggestionsCopy;
  appCopy = app;
  sourceCopy = source;
  v9 = suggestionsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __92__SGFoundInSuggestionPresenter__loadedRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[18];
  if (v3)
  {
    if ([v3 count])
    {
      v4 = 0;
      do
      {
        v5 = [*(*(a1 + 32) + 144) objectAtIndex:v4];
        if ([v5 conformsToProtocol:&unk_1F3018DF8])
        {
          [*(a1 + 32) addSuggestion:v5];
        }

        ++v4;
      }

      while ([*(*(a1 + 32) + 144) count] > v4);
    }
  }

  else
  {
    v6 = v2[13];
    if (v6)
    {
      v7 = (*(v6 + 16))(v6, *(a1 + 40));
      [v2 setRealtimeSuggestions:v7 fromHostApp:*(a1 + 48) fromExtractionSource:*(a1 + 56)];
    }

    else
    {
      [v2 setRealtimeSuggestions:*(a1 + 40) fromHostApp:*(a1 + 48) fromExtractionSource:*(a1 + 56)];
    }

    if (*(a1 + 40))
    {
      objc_initWeak(&location, *(a1 + 32));
      if (!*(*(a1 + 32) + 128))
      {
        v8 = [MEMORY[0x1E696AD88] defaultCenter];
        v9 = *MEMORY[0x1E695C3D8];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __92__SGFoundInSuggestionPresenter__loadedRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke_2;
        v13[3] = &unk_1E7CD95B8;
        objc_copyWeak(&v14, &location);
        v10 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v13];
        v11 = *(a1 + 32);
        v12 = *(v11 + 128);
        *(v11 + 128) = v10;

        objc_destroyWeak(&v14);
      }

      objc_destroyWeak(&location);
    }
  }
}

void __92__SGFoundInSuggestionPresenter__loadedRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setNeedsToReloadSuggestionsAfter:1.0];
}

- (void)_loadSuggestionsForTheFirstTime:(BOOL)time
{
  timeCopy = time;
  self->_loadScheduled = 0;
  firstObject = [(NSArray *)self->_searchableItems firstObject];
  attributeSet = [firstObject attributeSet];
  emailHeaders = [attributeSet emailHeaders];
  v8 = [emailHeaders count];

  bundleID = [firstObject bundleID];
  v10 = bundleID;
  if (v8)
  {

    if (!v10)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      [firstObject setBundleID:bundleIdentifier];
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy_;
    v52 = __Block_byref_object_dispose_;
    v53 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy_;
    v46 = __Block_byref_object_dispose_;
    v47 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy_;
    lock = self->_lock;
    v40 = __Block_byref_object_dispose_;
    v41 = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke;
    v35[3] = &unk_1E7CD94A0;
    v35[4] = &v48;
    v35[5] = &v42;
    v35[6] = &v36;
    [(_PASLock *)lock runWithLockAcquired:v35];
    contentOptions = self->_contentOptions;
    if (_os_feature_enabled_impl())
    {
      v15 = self->_contentOptions;
      v16 = v43[5];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_2;
      v31[3] = &unk_1E7CD94F0;
      selfCopy = self;
      v34 = &v48;
      v32 = firstObject;
      [v16 suggestionsFrom:v32 persistResults:timeCopy completionHandler:v31];
      v17 = v15 | 1;
    }

    else
    {
      v17 = contentOptions | 3;
    }

    v19 = v49[5];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_71;
    v30[3] = &unk_1E7CD9518;
    v30[4] = self;
    [v19 suggestionsFromSearchableItem:firstObject options:v17 processingType:0 withCompletion:v30];
    objc_initWeak(&location, self);
    v20 = v37[5];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_72;
    v27[3] = &unk_1E7CD9540;
    objc_copyWeak(&v28, &location);
    [v20 suggestionsFrom:firstObject completionHandler:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v36, 8);

    _Block_object_dispose(&v42, 8);
    goto LABEL_10;
  }

  v18 = [@"com.apple.MobileSMS" caseInsensitiveCompare:bundleID];

  if (!v18)
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy_;
    v52 = __Block_byref_object_dispose_;
    v53 = 0;
    v21 = self->_lock;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_2_73;
    v26[3] = &unk_1E7CD9568;
    v26[4] = &v48;
    [(_PASLock *)v21 runWithLockAcquired:v26];
    searchableItems = self->_searchableItems;
    v23 = v49[5];
    v24 = self->_contentOptions;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_3;
    v25[3] = &unk_1E7CD9590;
    v25[4] = self;
    [v23 harvestedSuggestionsFromMessages:searchableItems options:v24 | 3 completionHandler:v25];
LABEL_10:
    _Block_object_dispose(&v48, 8);

    goto LABEL_11;
  }

  [(SGFoundInSuggestionPresenter *)self _loadedRealtimeSuggestions:0 fromHostApp:2 fromExtractionSource:0];
LABEL_11:
}

void __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke(void *a1, void *a2)
{
  v12 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), v12[1]);
  if (!*(*(a1[4] + 8) + 40))
  {
    v3 = [MEMORY[0x1E69992A0] serviceForMail];
    v4 = *(a1[4] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    objc_storeStrong(v12 + 1, *(*(a1[4] + 8) + 40));
  }

  if (_os_feature_enabled_impl())
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v12[3]);
    if (!*(*(a1[5] + 8) + 40))
    {
      v6 = objc_opt_new();
      v7 = *(a1[5] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      objc_storeStrong(v12 + 3, *(*(a1[5] + 8) + 40));
    }
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = objc_opt_new();
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    objc_storeStrong(v12 + 4, *(*(a1[6] + 8) + 40));
  }
}

void __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v29 = [v3 count];
    _os_log_impl(&dword_1B8182000, v4, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Found %{public}lu extractions from TextUnderstanding", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v5;
        }

        else
        {
          v13 = v6;
        }

        [v13 addObject:v12];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x1E6999248] originForMailSearchableItem:*(a1 + 32)];
  if (v14 && [v5 count])
  {
    v15 = *(*(*(a1 + 48) + 8) + 40);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_68;
    v20[3] = &unk_1E7CD94C8;
    v16 = v6;
    v17 = *(a1 + 40);
    v21 = v16;
    v22 = v17;
    [v15 filteredSuggestionsFromExtractions:v5 origin:v14 options:0 withCompletion:v20];
  }

  else
  {
    v18 = sgEventsLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 count];
      *buf = 134349056;
      v29 = v19;
      _os_log_impl(&dword_1B8182000, v18, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Load %{public}lu extractions (no filtering)", buf, 0xCu);
    }

    [*(a1 + 40) _loadedRealtimeSuggestions:v6 fromHostApp:0 fromExtractionSource:1];
  }
}

void __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_71(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sgLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134349056;
    v6 = [v3 count];
    _os_log_impl(&dword_1B8182000, v4, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Found %{public}lu suggestion(s)", &v5, 0xCu);
  }

  [*(a1 + 32) _loadedRealtimeSuggestions:v3 fromHostApp:0 fromExtractionSource:2];
}

void __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadedRealtimeSuggestions:v3 fromHostApp:0 fromExtractionSource:3];
}

void __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_2_73(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6[2]);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = [MEMORY[0x1E69992A0] serviceForMessages];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    objc_storeStrong(v6 + 2, *(*(*(a1 + 32) + 8) + 40));
  }
}

void __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = sgLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134349568;
    v14 = [v9 count];
    v15 = 2050;
    v16 = [v8 count];
    v17 = 2050;
    v18 = [v10 count];
    _os_log_impl(&dword_1B8182000, v12, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Post Harvest, found %{public}lu events, %{public}lu contacts and %{public}lu reminders", &v13, 0x20u);
  }

  if ([v8 count])
  {
    [v11 addObjectsFromArray:v8];
  }

  if ([v9 count])
  {
    [v11 addObjectsFromArray:v9];
  }

  if ([v10 count])
  {
    [v11 addObjectsFromArray:v10];
  }

  [*(a1 + 32) _loadedRealtimeSuggestions:v11 fromHostApp:1 fromExtractionSource:2];
}

void __64__SGFoundInSuggestionPresenter__loadSuggestionsForTheFirstTime___block_invoke_68(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v6 = 134349056;
    v7 = v5;
    _os_log_impl(&dword_1B8182000, v4, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Load %{public}lu extractions (after filtering)", &v6, 0xCu);
  }

  [*(a1 + 40) _loadedRealtimeSuggestions:*(a1 + 32) fromHostApp:0 fromExtractionSource:1];
}

- (void)_setNeedsToReloadSuggestionsAfter:(double)after
{
  v5 = serialQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__SGFoundInSuggestionPresenter__setNeedsToReloadSuggestionsAfter___block_invoke;
  v6[3] = &unk_1E7CD9478;
  *&v6[5] = after;
  v6[4] = self;
  dispatch_async(v5, v6);
}

void __66__SGFoundInSuggestionPresenter__setNeedsToReloadSuggestionsAfter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 0.0)
  {

    [v3 _loadSuggestionsForTheFirstTime:0];
  }

  else if ((v3[136] & 1) == 0)
  {
    v3[136] = 1;
    v4 = dispatch_time(0, (v2 * 1000000000.0));
    v5 = serialQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__SGFoundInSuggestionPresenter__setNeedsToReloadSuggestionsAfter___block_invoke_2;
    block[3] = &unk_1E7CD96B8;
    block[4] = *(a1 + 32);
    dispatch_after(v4, v5, block);
  }
}

_BYTE *__66__SGFoundInSuggestionPresenter__setNeedsToReloadSuggestionsAfter___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[136] == 1)
  {
    return [result _loadSuggestionsForTheFirstTime:0];
  }

  return result;
}

- (void)addSuggestionsFromSearchableItems:(id)items existingSuggestions:(id)suggestions mailService:(id)service messageService:(id)messageService options:(unint64_t)options filter:(id)filter
{
  itemsCopy = items;
  suggestionsCopy = suggestions;
  serviceCopy = service;
  messageServiceCopy = messageService;
  filterCopy = filter;
  if ([itemsCopy count])
  {
    [(SGFoundInSuggestionPresenter *)self setMailService:serviceCopy messageService:messageServiceCopy];
    v19 = serialQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __128__SGFoundInSuggestionPresenter_addSuggestionsFromSearchableItems_existingSuggestions_mailService_messageService_options_filter___block_invoke;
    block[3] = &unk_1E7CD9450;
    block[4] = self;
    v21 = itemsCopy;
    optionsCopy = options;
    v23 = filterCopy;
    v22 = suggestionsCopy;
    dispatch_async(v19, block);
  }
}

uint64_t __128__SGFoundInSuggestionPresenter_addSuggestionsFromSearchableItems_existingSuggestions_mailService_messageService_options_filter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  *(*(a1 + 32) + 120) = *(a1 + 64);
  v5 = _Block_copy(*(a1 + 56));
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;

  v8 = *(a1 + 48);
  if (v8)
  {
    v8 = [v8 copy];
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 144);
  *(v9 + 144) = v8;

  v11 = *(a1 + 32);

  return [v11 _loadSuggestionsForTheFirstTime:1];
}

- (void)addSuggestionsFromSearchableItems:(id)items existingSuggestions:(id)suggestions options:(unint64_t)options filter:(id)filter
{
  itemsCopy = items;
  suggestionsCopy = suggestions;
  filterCopy = filter;
  if ([itemsCopy count])
  {
    [(SGFoundInSuggestionPresenter *)self addSuggestionsFromSearchableItems:itemsCopy existingSuggestions:suggestionsCopy mailService:0 messageService:0 options:options filter:filterCopy];
  }
}

- (void)addSuggestionsFromSearchableItems:(id)items options:(unint64_t)options filter:(id)filter
{
  itemsCopy = items;
  filterCopy = filter;
  if ([itemsCopy count])
  {
    [(SGFoundInSuggestionPresenter *)self addSuggestionsFromSearchableItems:itemsCopy existingSuggestions:0 mailService:0 messageService:0 options:options filter:filterCopy];
  }
}

- (NSArray)realtimeSuggestions
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__SGFoundInSuggestionPresenter_realtimeSuggestions__block_invoke;
  v10 = &unk_1E7CD9668;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  runOnMainThreadSync(&v7);
  v5 = [v4 copy];

  return v5;
}

void __51__SGFoundInSuggestionPresenter_realtimeSuggestions__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) suggestions];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = getRealtimeSuggestion(*(*(&v8 + 1) + 8 * v6));
        if (v7)
        {
          [*(a1 + 40) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)setRealtimeSuggestions:(id)suggestions fromHostApp:(int64_t)app fromExtractionSource:(int)source
{
  suggestionsCopy = suggestions;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__SGFoundInSuggestionPresenter_setRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke;
  v10[3] = &unk_1E7CD9428;
  v11 = suggestionsCopy;
  appCopy = app;
  v10[4] = self;
  sourceCopy = source;
  v9 = suggestionsCopy;
  runOnMainThread(v10);
}

void __88__SGFoundInSuggestionPresenter_setRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) suggestionStore];
  [v2 setHostApp:*(a1 + 48)];

  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = [*(a1 + 32) realtimeSuggestions];
  v6 = [v4 initWithArray:v5];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        if ([v6 containsObject:v12])
        {
          [v6 removeObject:v12];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v12 setExtractionSource:*(a1 + 56)];
          }

          [v3 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __88__SGFoundInSuggestionPresenter_setRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke_2;
  v35[3] = &__block_descriptor_36_e57_B24__0___SGRealtimeSuggestion_Private__8__NSDictionary_16l;
  v36 = *(a1 + 56);
  v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v35];
  v14 = [v6 filteredSetUsingPredicate:v13];

  v15 = [v3 count];
  v16 = [v14 count] + v15;
  if (v16 >= 2)
  {
    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8182000, v17, OS_LOG_TYPE_DEBUG, "SGFoundInSuggestionPresenter - Lock notifications for batch update.", buf, 2u);
    }

    v18 = [*(a1 + 32) suggestionStore];
    [v18 lockNotifications];
  }

  if ([v14 count])
  {
    v28 = v16;
    v19 = [*(a1 + 32) suggestions];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * j);
          v25 = getRealtimeSuggestion(v24);
          if (v25 && [v14 containsObject:v25])
          {
            [*(a1 + 32) removeSuggestion:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v21);
    }

    v16 = v28;
  }

  if ([v3 count])
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __88__SGFoundInSuggestionPresenter_setRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke_40;
    v29[3] = &unk_1E7CD9400;
    v29[4] = *(a1 + 32);
    [v3 enumerateObjectsUsingBlock:v29];
  }

  if (v16 >= 2)
  {
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8182000, v26, OS_LOG_TYPE_DEBUG, "SGFoundInSuggestionPresenter - Unlock notifications for batch update.", buf, 2u);
    }

    v27 = [*(a1 + 32) suggestionStore];
    [v27 unlockNotifications];
  }
}

BOOL __88__SGFoundInSuggestionPresenter_setRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [v3 extractionSource] == *(a1 + 32);

  return v4;
}

void __88__SGFoundInSuggestionPresenter_setRealtimeSuggestions_fromHostApp_fromExtractionSource___block_invoke_40(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = sgEventsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SGWalletOrderSuggestion *)v4 event];
      v7 = [v6 loggingIdentifier];
      v33 = 138543362;
      v34 = v7;
      _os_log_impl(&dword_1B8182000, v5, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Adding RealtimeEvent %{public}@ to UI", &v33, 0xCu);
    }

    if ([(SGWalletOrderSuggestion *)v4 state]== 6 && os_variant_has_internal_diagnostics())
    {
      v8 = *(a1 + 32);
      v9 = [SGRadarSuggestion alloc];
      v10 = [(SGWalletOrderSuggestion *)v4 sourceMessageId];
      v11 = [(SGRadarSuggestionBase *)v9 initWithSourceMessageId:v10];
      [v8 addSuggestion:v11];
    }

    else
    {
      v16 = *(a1 + 32);
      v10 = [(SGEventSuggestionBase *)[SGEventSuggestion alloc] initWithRealtimeEvent:v4];
      [v16 addSuggestion:v10];
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1B8182000, v12, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Adding RealtimeContact to UI", &v33, 2u);
    }

    v13 = *(a1 + 32);
    v14 = [[_TtC17CoreSuggestionsUI19SGContactSuggestion alloc] initWithSgContact:v3];
LABEL_11:
    v4 = v14;
LABEL_12:
    v15 = v13;
LABEL_13:
    [v15 addSuggestion:v4];
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v17 = sgRemindersLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(SGWalletOrderSuggestion *)v4 reminder];
      v19 = [v18 loggingIdentifier];
      v33 = 138543362;
      v34 = v19;
      _os_log_impl(&dword_1B8182000, v17, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Adding RealtimeReminder %{public}@ to UI", &v33, 0xCu);
    }

    v20 = *(a1 + 32);
    v21 = [[_TtC17CoreSuggestionsUI20SGReminderSuggestion alloc] initWithRealtimeReminder:v4];
    [v20 addSuggestion:v21];

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v3;
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1B8182000, v23, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Adding RealtimeWalletOrder to UI", &v33, 2u);
    }

    v13 = *(a1 + 32);
    v4 = [[_TtC17CoreSuggestionsUI23SGWalletOrderSuggestion alloc] initWithRealtimeWalletOrder:v22];

    goto LABEL_12;
  }

  if (+[SGBannerUtility supportsWalletPassFeature])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = sgLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v33) = 0;
        _os_log_debug_impl(&dword_1B8182000, v24, OS_LOG_TYPE_DEBUG, "SGFoundInSuggestionPresenter - Adding RealtimeWalletPass to UI", &v33, 2u);
      }

      v13 = *(a1 + 32);
      v14 = [[_TtC17CoreSuggestionsUI22SGWalletPassSuggestion alloc] initWithRealtimeWalletPass:v3];
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = sgLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1B8182000, v25, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Adding RealtimeWalletOrderExtraction to UI", &v33, 2u);
    }

    v26 = v3;
    v4 = [[_TtC17CoreSuggestionsUI41SGRealtimeWalletOrderExtractionSuggestion alloc] initWithExtraction:v26];

    v15 = *(a1 + 32);
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v27 = sgLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_1B8182000, v27, OS_LOG_TYPE_DEFAULT, "SGFoundInSuggestionPresenter - Faield to add RealtimeWalletOrderExtraction to UI", &v33, 2u);
  }

  v4 = v3;
  if (os_variant_has_internal_diagnostics())
  {
    v28 = *(a1 + 32);
    v29 = [SGOrderExtractionRadarSuggestion alloc];
    v30 = [(SGWalletOrderSuggestion *)v4 messageID];
    v31 = [(SGWalletOrderSuggestion *)v4 localizedDescription];
    v32 = [(SGOrderExtractionRadarSuggestion *)v29 initWithSourceMessageId:v30 localizedDescription:v31];
    [v28 addSuggestion:v32];
  }

LABEL_16:

LABEL_17:
}

- (void)setMailService:(id)service messageService:(id)messageService
{
  serviceCopy = service;
  messageServiceCopy = messageService;
  v8 = messageServiceCopy;
  if (serviceCopy)
  {
    lock = self->_lock;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__SGFoundInSuggestionPresenter_setMailService_messageService___block_invoke;
    v15[3] = &unk_1E7CD93B8;
    v16 = serviceCopy;
    [(_PASLock *)lock runWithLockAcquired:v15];
    v10 = v16;
  }

  else if (messageServiceCopy)
  {
    v11 = self->_lock;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__SGFoundInSuggestionPresenter_setMailService_messageService___block_invoke_2;
    v13[3] = &unk_1E7CD93B8;
    v14 = messageServiceCopy;
    [(_PASLock *)v11 runWithLockAcquired:v13];
    v10 = v14;
  }

  else
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_debug_impl(&dword_1B8182000, v10, OS_LOG_TYPE_DEBUG, "SGFoundInSuggestionPresenter - No Mail/Message service specified. Will retrieve service", v12, 2u);
    }
  }
}

- (void)dealloc
{
  if (self->_contactStoreObserverToken)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_contactStoreObserverToken];
  }

  v4.receiver = self;
  v4.super_class = SGFoundInSuggestionPresenter;
  [(SGSuggestionPresenter *)&v4 dealloc];
}

- (SGFoundInSuggestionPresenter)init
{
  v9.receiver = self;
  v9.super_class = SGFoundInSuggestionPresenter;
  v2 = [(SGSuggestionPresenter *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_contentOptions = 0;
    v2->_loadScheduled = 0;
    v4 = objc_opt_new();
    v5 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v4];
    lock = v3->_lock;
    v3->_lock = v5;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__reloadSuggestionsForNotification_ name:@"com.apple.coresuggestions.SGDissectOrderSuggestion" object:0];
  }

  return v3;
}

@end