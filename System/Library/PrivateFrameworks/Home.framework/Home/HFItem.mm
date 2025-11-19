@interface HFItem
- (BOOL)resultsContainRequiredProperties:(id)a3;
- (HFItemManager)_debug_owningItemManager;
- (NAFuture)cancellableInFlightUpdateFuture;
- (id)_finalOutcomeForSubclassOutcome:(id)a3 previousResults:(id)a4 updateOptions:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)updateWithOptions:(id)a3;
- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)a3;
- (void)copyLatestResultsFromItem:(id)a3;
@end

@implementation HFItem

- (id)updateWithOptions:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:HFItemUpdateOptionLogger];
  v7 = [(HFItem *)self cancellableInFlightUpdateFuture];
  if (v7)
  {
    v8 = [(HFItem *)self cancellableInFlightUpdateFuture];
    v9 = [v8 isFinished];

    if ((v9 & 1) == 0)
    {
      v10 = [v5 objectForKeyedSubscript:HFItemUpdateOptionAllowInFlightResults];
      v11 = [v10 BOOLValue];

      if (v11)
      {
        v12 = [(HFItem *)self cancellableInFlightUpdateFuture];
        goto LABEL_16;
      }

      if (v6)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v13 = [v6 loggerActivity];
        os_activity_scope_enter(v13, &state);

        v14 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(HFItem *)self description];
          *buf = 138412290;
          v49 = v15;
          _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "Asked to update item [%@] with an in-flight update. Cancelling the in-flight update before starting the new update.", buf, 0xCu);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v33 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [(HFItem *)self description];
          LODWORD(state.opaque[0]) = 138412290;
          *(state.opaque + 4) = v34;
          _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Asked to update item [%@] with an in-flight update. Cancelling the in-flight update before starting the new update.", &state, 0xCu);
        }
      }

      v16 = [(HFItem *)self cancellableInFlightUpdateFuture];
      [v16 cancel];

      [(HFItem *)self setCancellableInFlightUpdateFuture:0];
    }
  }

  v17 = HFLogForCategory(0x35uLL);
  v18 = os_signpost_id_generate(v17);

  v19 = HFLogForCategory(0x36uLL);
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = objc_opt_class();
    LODWORD(state.opaque[0]) = 138412290;
    *(state.opaque + 4) = v21;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "HFItemUpdate", "%@", &state, 0xCu);
  }

  v22 = [(HFItem *)self latestResults];
  v23 = [v22 copy];

  v24 = [(HFItem *)self _subclass_updateWithOptions:v5];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __28__HFItem_updateWithOptions___block_invoke;
  v43[3] = &unk_277DF9190;
  v46 = a2;
  v43[4] = self;
  v25 = v23;
  v44 = v25;
  v45 = v5;
  v47 = v18;
  v12 = [v24 flatMap:v43];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __28__HFItem_updateWithOptions___block_invoke_37;
  v42[3] = &unk_277DF6718;
  v42[4] = self;
  v42[5] = v18;
  v26 = [v12 addFailureBlock:v42];
  if (v6)
  {
    objc_initWeak(&state, v6);
    v27 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __28__HFItem_updateWithOptions___block_invoke_40;
    v40[3] = &unk_277DF3A68;
    objc_copyWeak(&v41, &state);
    v40[4] = self;
    v28 = [v27 afterDelay:v40 performBlock:10.0];

    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __28__HFItem_updateWithOptions___block_invoke_42;
    v38 = &unk_277DF91B8;
    v29 = v28;
    v39 = v29;
    v30 = [v12 addCompletionBlock:&v35];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&state);
  }

  [(HFItem *)self setCancellableInFlightUpdateFuture:v24, v35, v36, v37, v38];

LABEL_16:
  v31 = *MEMORY[0x277D85DE8];

  return v12;
}

id __28__HFItem_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HFItem.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"subclassOutcome != nil"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HFItem.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"[subclassOutcome isKindOfClass:[HFItemUpdateOutcome class]]"}];
  }

  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = [*(a1 + 32) _finalOutcomeForSubclassOutcome:v3 previousResults:*(a1 + 40) updateOptions:*(a1 + 48)];
  v6 = [v5 results];
  [*(a1 + 32) setLatestResults:v6];

  v7 = HFLogForCategory(0x36uLL);
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 32);
    *buf = 138412290;
    v16 = objc_opt_class();
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v8, OS_SIGNPOST_INTERVAL_END, v9, "HFItemUpdate", "%@", buf, 0xCu);
  }

  [v4 finishWithResult:v5];
  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

void __28__HFItem_updateWithOptions___block_invoke_37(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x36uLL);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = v3;
    _os_signpost_emit_with_name_impl(&dword_20D9BF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HFItemUpdate", "%@ -error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __28__HFItem_updateWithOptions___block_invoke_40(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v4 = [WeakRetained loggerActivity];
    os_activity_scope_enter(v4, &state);

    v5 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Update for item has taken more than 10 seconds: %@", &v10, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v9;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Update for item has taken more than 10 seconds: %@", &state, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)copyLatestResultsFromItem:(id)a3
{
  v5 = a3;
  v6 = [(HFItem *)self latestResults];

  if (v6)
  {
    NSLog(&cfstr_AlreadyHasResu.isa, self);
  }

  if (([v5 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    NSLog(&cfstr_MismatchedItem.isa, self, v5);
  }

  v7 = [v5 latestResults];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKeyedSubscript:@"childItems"];
  if ([v9 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __36__HFItem_copyLatestResultsFromItem___block_invoke;
    v11[3] = &unk_277DF91E0;
    v13 = a2;
    v11[4] = self;
    v12 = v5;
    v10 = [v9 na_map:v11];
    [v8 setObject:v10 forKeyedSubscript:@"childItems"];
  }

  [(HFItem *)self setLatestResults:v8];
}

id __36__HFItem_copyLatestResultsFromItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_28252AC90] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = [v3 debugDescription];
    v10 = [*(a1 + 40) debugDescription];
    [v6 handleFailureInMethod:v7 object:v8 file:@"HFItem.m" lineNumber:141 description:{@"Found a child item that does not conform to NSCopying. Child items must be copyable! Child: %@, parent: %@", v9, v10}];
  }

  v4 = [v3 copy];

  return v4;
}

- (unint64_t)_effectiveLoadingStateForSuggestedLoadingState:(unint64_t)a3
{
  v4 = [(HFItem *)self latestResults];
  v5 = [v4 objectForKeyedSubscript:@"isInStateTransition"];

  if ([v5 BOOLValue])
  {
    a3 |= 2uLL;
  }

  return a3;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFItem.m" lineNumber:159 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItem _subclass_updateWithOptions:]", objc_opt_class()}];

  v6 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
  v8 = [v6 futureWithError:v7];

  return v8;
}

- (BOOL)resultsContainRequiredProperties:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(HFItem *)self latestResults];
        v11 = [v10 objectForKey:v9];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFItem *)self latestResults];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];

  return v7;
}

- (id)description
{
  v3 = [(HFItem *)self latestResults];
  v4 = [v3 objectForKeyedSubscript:@"state"];
  v5 = [v4 integerValue];

  v6 = @"NotSet";
  if (v5 == 1)
  {
    v6 = @"Normal";
  }

  if (v5 == 2)
  {
    v7 = @"Abnormal";
  }

  else
  {
    v7 = v6;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [(HFItem *)self latestResults];
  v12 = [v11 objectForKeyedSubscript:@"title"];
  v13 = v12;
  if (v12)
  {
    v14 = [v8 stringWithFormat:@"<%@: %p> %@ state:%@", v10, self, v12, v7];
  }

  else
  {
    v15 = [(HFItem *)self latestResults];
    v16 = [v15 objectForKeyedSubscript:@"description"];
    v14 = [v8 stringWithFormat:@"<%@: %p> %@ state:%@", v10, self, v16, v7];
  }

  return v14;
}

- (id)_finalOutcomeForSubclassOutcome:(id)a3 previousResults:(id)a4 updateOptions:(id)a5
{
  v6 = a3;
  v7 = [v6 mutableCopy];
  if ([(HFItem *)self conformsToProtocol:&unk_28252A8F8])
  {
    v8 = [(HFItem *)self homeKitObject];
    if (v8)
    {
      v9 = [v6 objectForKeyedSubscript:@"dependentHomeKitObjects"];
      v10 = [v9 mutableCopy];

      if (!v10)
      {
        v10 = [MEMORY[0x277CBEB58] set];
      }

      [v10 addObject:v8];
      [v7 setObject:v10 forKeyedSubscript:@"dependentHomeKitObjects"];
    }
  }

  return v7;
}

- (NAFuture)cancellableInFlightUpdateFuture
{
  WeakRetained = objc_loadWeakRetained(&self->_cancellableInFlightUpdateFuture);

  return WeakRetained;
}

- (HFItemManager)_debug_owningItemManager
{
  WeakRetained = objc_loadWeakRetained(&self->__debug_owningItemManager);

  return WeakRetained;
}

@end