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
  if (!self)
  {
    return 0;
  }

  sectionBundleIdentifier = [self sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:@"com.apple.parsec.news"])
  {
    safari_punchoutURL = [(SFSearchResult *)self safari_punchoutURL];
    scheme = [safari_punchoutURL scheme];
    if (([scheme isEqualToString:@"applenewss"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"applenews"))
    {
      v7 = safari_newsProxy_newsProxy;
      if (!safari_newsProxy_newsProxy)
      {
        v8 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.news"];
        v9 = safari_newsProxy_newsProxy;
        safari_newsProxy_newsProxy = v8;

        v7 = safari_newsProxy_newsProxy;
      }

      appState = [v7 appState];
      isInstalled = [appState isInstalled];
    }

    else
    {
      isInstalled = 0;
    }
  }

  else
  {
    isInstalled = 0;
  }

  return isInstalled;
}

- (id)safari_punchoutURL
{
  if (self)
  {
    inlineCard = [self inlineCard];
    cardSections = [inlineCard cardSections];
    firstObject = [cardSections firstObject];
    punchoutOptions = [firstObject punchoutOptions];
    firstObject2 = [punchoutOptions firstObject];
    preferredOpenableURL = [firstObject2 preferredOpenableURL];
  }

  else
  {
    preferredOpenableURL = 0;
  }

  return preferredOpenableURL;
}

@end