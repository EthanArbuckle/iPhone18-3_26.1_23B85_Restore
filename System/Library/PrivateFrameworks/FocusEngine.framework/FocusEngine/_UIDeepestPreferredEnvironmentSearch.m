@interface _UIDeepestPreferredEnvironmentSearch
- (id)_overridingPreferredFocusEnvironmentForPreferredEnvironment:(id)a3 visitedFocusEnvironments:(id)a4;
- (id)deepestPreferredFocusEnvironmentForEnvironment:(id)a3;
- (id)deepestPreferredFocusableItemForEnvironment:(id)a3 withRequest:(id)a4;
- (void)_reportDidFindLockedFocusEnvironment:(id)a3;
- (void)_reportDidFindOverridingPreferredFocusEnvironment:(id)a3 source:(id)a4;
- (void)_reportDidFinishEnumeratingPreferencesWithDeepestPreferredFocusableItem:(id)a3;
- (void)_reportFinishedEvaluatingAllPreferencesForEnvironmentInContext:(id)a3 result:(int64_t)a4;
- (void)_reportFoundFocusableItem:(id)a3 inContext:(id)a4;
- (void)_reportStartingSearch;
@end

@implementation _UIDeepestPreferredEnvironmentSearch

- (id)deepestPreferredFocusableItemForEnvironment:(id)a3 withRequest:(id)a4
{
  v7 = a3;
  v25 = a4;
  if (!v7)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:572 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  [(_UIDeepestPreferredEnvironmentSearch *)self _reportStartingSearch];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__2;
  v56 = __Block_byref_object_dispose__2;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__2;
  v44 = __Block_byref_object_dispose__2;
  v45 = 0;
  v24 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  v8 = [v25 focusSystem];
  v9 = [v8 _deepestPreferredFocusableItemCacheForCurrentUpdate];

  if (dyld_program_sdk_at_least())
  {
    v10 = [v25 isMovementRequest] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [[_UIFocusEnvironmentPreferenceEnumerator alloc] initWithEnumerationMode:v10];
  [(_UIFocusEnvironmentPreferenceEnumerator *)v11 setDebugLog:self->_debugLog];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke;
  v35[3] = &unk_279014980;
  v38 = &v46;
  v39 = &v52;
  v12 = v9;
  v36 = v12;
  v37 = self;
  [(_UIFocusEnvironmentPreferenceEnumerator *)v11 setDidVisitAllPreferencesForEnvironmentHandler:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_2;
  v34[3] = &unk_2790149A8;
  v34[4] = &v52;
  [(_UIFocusEnvironmentPreferenceEnumerator *)v11 setShouldInferPreferenceForEnvironmentHandler:v34];
  v13 = [(_UIDeepestPreferredEnvironmentSearch *)self allowsOverridingPreferedFocusEnvironments];
  v23 = v7;
  if (v7)
  {
    v14 = v23;
    do
    {
      v15 = v53[5];
      v53[5] = 0;

      v16 = v47[5];
      v47[5] = 0;

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_3;
      v26[3] = &unk_2790149D0;
      v27 = v12;
      v31 = &v46;
      v17 = v14;
      v28 = v17;
      v32 = &v52;
      v18 = v25;
      v33 = &v40;
      v29 = v18;
      v30 = self;
      [(_UIFocusEnvironmentPreferenceEnumerator *)v11 enumeratePreferencesForEnvironment:v17 usingBlock:v26];
      if (v41[5])
      {
        [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFindLockedFocusEnvironment:?];
      }

      [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFinishEnumeratingPreferencesWithDeepestPreferredFocusableItem:v53[5]];
      if (v41[5] == 0 && v13 && (v19 = v47[5]) != 0)
      {
        v14 = [(_UIDeepestPreferredEnvironmentSearch *)self _overridingPreferredFocusEnvironmentForPreferredEnvironment:v19 visitedFocusEnvironments:v24];
      }

      else
      {
        v14 = 0;
      }
    }

    while (v14);
  }

  v20 = v53[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);

  return v20;
}

- (id)deepestPreferredFocusEnvironmentForEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = [UIFocusSystem focusSystemForEnvironment:v5];
  v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
  v16 = v5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v8 = [[_UIFocusEnvironmentPreferenceEnumerator alloc] initWithEnumerationMode:1];
  [(_UIFocusEnvironmentPreferenceEnumerator *)v8 setAllowsInferringPreferences:0];
  if (v5)
  {
    v9 = v16;
    while (1)
    {
      v10 = v28[5];
      v28[5] = 0;

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __87___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusEnvironmentForEnvironment___block_invoke;
      v17[3] = &unk_2790149F8;
      v19 = &v21;
      v18 = v6;
      v20 = &v27;
      [(_UIFocusEnvironmentPreferenceEnumerator *)v8 enumeratePreferencesForEnvironment:v9 usingBlock:v17];
      if (v22[5])
      {
        [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFindLockedFocusEnvironment:?];
        if (v22[5])
        {
          break;
        }
      }

      v11 = v28[5];
      if (!v11)
      {
        break;
      }

      v12 = [(_UIDeepestPreferredEnvironmentSearch *)self _overridingPreferredFocusEnvironmentForPreferredEnvironment:v11 visitedFocusEnvironments:v7];

      v9 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:
  v13 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (id)_overridingPreferredFocusEnvironmentForPreferredEnvironment:(id)a3 visitedFocusEnvironments:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:745 description:{@"Invalid parameter not satisfying: %@", @"preferredDestinationEnvironment"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"visitedFocusEnvironments"}];

LABEL_3:
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __125___UIDeepestPreferredEnvironmentSearch__overridingPreferredFocusEnvironmentForPreferredEnvironment_visitedFocusEnvironments___block_invoke;
  v17[3] = &unk_279014A20;
  v10 = v9;
  v18 = v10;
  v19 = &v27;
  v20 = &v21;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(v7, v17);
  v11 = v28[5];
  if (v11)
  {
    [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFindOverridingPreferredFocusEnvironment:v11 source:v22[5]];
    v12 = v28[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (void)_reportStartingSearch
{
  v3 = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
  v2 = [MEMORY[0x277D81798] messageWithString:@"Starting preferred focus search."];
  [v3 addMessage:v2];
}

- (void)_reportFoundFocusableItem:(id)a3 inContext:(id)a4
{
  v5 = [a4 debugStack];
  v4 = [MEMORY[0x277D81798] messageWithStyle:2 string:@"It's focusable!"];
  [v5 addMessage:v4];
}

- (void)_reportFinishedEvaluatingAllPreferencesForEnvironmentInContext:(id)a3 result:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 debugStack];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 isPreferredByItself];

    if (a4 != 3 && (v8 & 1) == 0)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v9 = [v5 preferredEnvironments];
      v10 = [v5 environment];
      v11 = [v9 indexOfObject:v10];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [v5 preferredEnvironments];
        v13 = [v12 count];

        v14 = [v5 preferredEnvironments];
        v15 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v11 + 1, v13 - (v11 + 1)}];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __110___UIDeepestPreferredEnvironmentSearch__reportFinishedEvaluatingAllPreferencesForEnvironmentInContext_result___block_invoke;
        v18[3] = &unk_279014A48;
        v19 = v5;
        v20 = &v21;
        [v14 enumerateObjectsAtIndexes:v15 options:0 usingBlock:v18];
      }

      if (*(v22 + 24) == 1)
      {
        v16 = [v5 debugStack];
        v17 = [MEMORY[0x277D81798] messageWithStyle:3 string:@"Found nothing."];
        [v16 addMessage:v17];
      }

      _Block_object_dispose(&v21, 8);
    }
  }
}

- (void)_reportDidFinishEnumeratingPreferencesWithDeepestPreferredFocusableItem:(id)a3
{
  v15 = a3;
  v4 = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];

  if (v4)
  {
    v5 = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
    v6 = MEMORY[0x277D81798];
    v7 = MEMORY[0x277CCACA8];
    v8 = v15;
    if (v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v8];
    }

    else
    {
      v12 = @"(nil)";
    }

    v13 = [v7 stringWithFormat:@"Finished enumerating preferred environments. Preferring %@", v12];
    v14 = [v6 messageWithStyle:2 string:v13];
    [v5 addMessage:v14];
  }
}

- (void)_reportDidFindOverridingPreferredFocusEnvironment:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
  v9 = MEMORY[0x277D81798];
  v10 = MEMORY[0x277CCACA8];
  v11 = v6;
  v23 = v11;
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v23];

    v11 = v23;
  }

  else
  {
    v15 = @"(nil)";
  }

  v16 = v7;
  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"<%@: %p>", v19, v16];
  }

  else
  {
    v20 = @"(nil)";
  }

  v21 = [v10 stringWithFormat:@"Found overide to environment %@. (source: %@)", v15, v20];
  v22 = [v9 messageWithStyle:2 string:v21];
  [v8 addMessage:v22];
}

- (void)_reportDidFindLockedFocusEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
  v6 = MEMORY[0x277D81798];
  v7 = MEMORY[0x277CCACA8];
  v14 = v4;
  if (v14)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v14];
  }

  else
  {
    v11 = @"(nil)";
  }

  v12 = [v7 stringWithFormat:@"Found locked focus environment %@.", v11];
  v13 = [v6 messageWithStyle:3 string:v12];
  [v5 addMessage:v13];
}

@end