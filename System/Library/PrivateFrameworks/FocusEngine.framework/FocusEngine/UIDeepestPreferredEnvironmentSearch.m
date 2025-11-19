@interface UIDeepestPreferredEnvironmentSearch
@end

@implementation UIDeepestPreferredEnvironmentSearch

void __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if ([v11 isLeafPreference])
  {
    if ([v11 isPrimaryPreference])
    {
      v5 = [v11 environment];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }

    if (*(*(*(a1 + 56) + 8) + 40))
    {
      *a3 = 3;
      v8 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 32);
    v10 = [v11 environment];
    [v9 setResolvedPreference:v8 forEnvironment:v10];
  }

  [*(a1 + 40) _reportFinishedEvaluatingAllPreferencesForEnvironmentInContext:v11 result:*a3];
}

BOOL __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 environment];
  v4 = v3 != *(*(*(a1 + 32) + 8) + 40);

  return v4;
}

void __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_3(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [v5 environment];
  if (([v5 isPreferredByItself] & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [v5 preferredEnvironments];
    [v7 setPreferredEnvironments:v8 forEnvironment:v6];

    v39 = 0;
    v9 = [*(a1 + 32) preferredEnvironmentsForEnvironment:v6 isFinal:&v39];
    v10 = [v9 firstObject];

    if (v39 == 1)
    {
      v38 = a3;
      if ([v5 isPrimaryPreference])
      {
        v11 = [*(a1 + 32) deepestPrimaryPreferredEnvironmentForEnvironment:*(a1 + 40)];
        v12 = *(*(a1 + 64) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }

      v14 = _UIFocusItemSafeCast(v10);
      v15 = [v5 debugStack];
      v36 = MEMORY[0x277D81798];
      v37 = v15;
      v35 = MEMORY[0x277CCACA8];
      v16 = v6;
      v17 = @"(nil)";
      if (v16)
      {
        v18 = MEMORY[0x277CCACA8];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v17 = [v18 stringWithFormat:@"<%@: %p>", v20, v16];
      }

      v25 = v14;
      if (v25)
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = [v26 stringWithFormat:@"<%@: %p>", v28, v25];

        v30 = [v35 stringWithFormat:@"Using cached result for %@. Preferring %@", v17, v29];
        v31 = [v36 messageWithStyle:2 string:v30];
        [v37 addMessage:v31];

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v14);
        v32 = 3;
      }

      else
      {

        v33 = [v35 stringWithFormat:@"Using cached result for %@. Preferring %@", v17, @"(nil)"];
        v34 = [v36 messageWithStyle:2 string:v33];
        [v37 addMessage:v34];

        v32 = 1;
      }

      *v38 = v32;

      goto LABEL_22;
    }
  }

  v21 = [*(a1 + 48) focusSystem];
  v22 = v21;
  if (!*(*(*(a1 + 80) + 8) + 40) && [v21 _isEnvironmentLocked:v6])
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v6);
  }

  if (([v5 isPreferredByItself] & 1) == 0)
  {
    v23 = _UIFocusItemSafeCast(v6);
    v24 = v23;
    if (v22 && v23 && _UIFocusItemIsFocusedOrFocusableInFocusSystem(v23, v22))
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v24);
      [*(a1 + 56) _reportFoundFocusableItem:*(*(*(a1 + 72) + 8) + 40) inContext:v5];
    }
  }

LABEL_22:
}

void __87___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusEnvironmentForEnvironment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [v6 environment];
  if (!*(*(*(a1 + 40) + 8) + 40) && [*(a1 + 32) _isEnvironmentLocked:v5])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  if ([v6 isLeafPreference])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    *a3 = 3;
  }
}

void __125___UIDeepestPreferredEnvironmentSearch__overridingPreferredFocusEnvironmentForPreferredEnvironment_visitedFocusEnvironments___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    *a3 = 1;
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v6)
    {
      v8 = [v9 _overridingPreferredFocusEnvironment];
      if (v8)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      }

      v7 = v9;
    }

    [*(a1 + 32) addObject:v7];
  }
}

void __110___UIDeepestPreferredEnvironmentSearch__reportFinishedEvaluatingAllPreferencesForEnvironmentInContext_result___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 environment];

  if (v8 != v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end