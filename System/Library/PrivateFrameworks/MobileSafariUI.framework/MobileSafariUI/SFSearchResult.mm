@interface SFSearchResult
- (id)safari_punchoutURL;
- (uint64_t)safari_willShowNewsHeader;
@end

@implementation SFSearchResult

void __56__SFSearchResult_CompletionItem__safari_prewarmSearchUI__block_invoke()
{
  v0 = dispatch_get_global_queue(21, 0);
  dispatch_async(v0, &__block_literal_global_21);
}

BOOL __74__SFSearchResult_CompletionItem__completionCellBackgroundModeInTopSection__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 backgroundColor];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)safari_willShowNewsHeader
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 sectionBundleIdentifier];
  if ([v2 isEqualToString:@"com.apple.parsec.news"])
  {
    v5 = [(SFSearchResult *)a1 safari_punchoutURL];
    v6 = [v5 scheme];
    if (([v6 isEqualToString:@"applenewss"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"applenews"))
    {
      v7 = safari_newsProxy_newsProxy;
      if (!safari_newsProxy_newsProxy)
      {
        v8 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.news"];
        v9 = safari_newsProxy_newsProxy;
        safari_newsProxy_newsProxy = v8;

        v7 = safari_newsProxy_newsProxy;
      }

      v10 = [v7 appState];
      v3 = [v10 isInstalled];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)safari_punchoutURL
{
  if (a1)
  {
    v1 = [a1 inlineCard];
    v2 = [v1 cardSections];
    v3 = [v2 firstObject];
    v4 = [v3 punchoutOptions];
    v5 = [v4 firstObject];
    v6 = [v5 preferredOpenableURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end