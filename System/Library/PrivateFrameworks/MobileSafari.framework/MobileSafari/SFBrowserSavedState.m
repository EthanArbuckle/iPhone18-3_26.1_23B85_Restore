@interface SFBrowserSavedState
@end

@implementation SFBrowserSavedState

void __47___SFBrowserSavedState_sharedBrowserSavedState__block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47___SFBrowserSavedState_sharedBrowserSavedState__block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e27____SFBrowserSavedState_8__0l;
  aBlock[4] = *(a1 + 32);
  v1 = _Block_copy(aBlock);
  v2 = v1[2]();
  v3 = sharedBrowserSavedStateInstance;
  sharedBrowserSavedStateInstance = v2;
}

uint64_t __71___SFBrowserSavedState_loadSessionStateDataAndRemoveRecentlyClosedTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 UUIDString];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

uint64_t __72___SFBrowserSavedState_clearRecentlyClosedTabsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 profileIdentifier];
  if ([v4 length])
  {
    v5 = [v3 profileIdentifier];
  }

  else
  {
    v5 = *MEMORY[0x1E69C8B58];
  }

  v6 = v5;

  v7 = [v6 isEqualToString:*(a1 + 32)];
  return v7;
}

uint64_t __67___SFBrowserSavedState_recentlyClosedTabsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 profileIdentifier];
  if ([v4 length])
  {
    v5 = [v3 profileIdentifier];
  }

  else
  {
    v5 = *MEMORY[0x1E69C8B58];
  }

  v6 = v5;

  v7 = [v6 isEqualToString:*(a1 + 32)];
  return v7;
}

id __48___SFBrowserSavedState_historyItemsWereRemoved___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];

  return v2;
}

uint64_t __48___SFBrowserSavedState_historyItemsWereRemoved___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 UUIDString];
  [v4 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v3 url];
  v8 = [v7 safari_bestURLForUserTypedString];
  v9 = [v6 containsObject:v8];

  return v9;
}

@end