@interface SFSearchResult(MobileSafariExtras)
- (id)_sf_punchoutURL;
- (uint64_t)_sf_canOpenInBrowser;
- (uint64_t)_sf_isMediaResult;
@end

@implementation SFSearchResult(MobileSafariExtras)

- (id)_sf_punchoutURL
{
  v1 = [a1 inlineCard];
  v2 = [v1 cardSections];
  v3 = [v2 firstObject];

  v4 = [v3 command];
  if (v4)
  {
    v5 = [v3 command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v3 command];
      v8 = [v7 punchout];
      v4 = [v8 preferredOpenableURL];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (uint64_t)_sf_isMediaResult
{
  v1 = [a1 inlineCard];
  v2 = [v1 cardSections];
  v3 = [v2 firstObject];

  v4 = [v3 command];
  if (v4)
  {
    v5 = [v3 command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (uint64_t)_sf_canOpenInBrowser
{
  v1 = [a1 _sf_punchoutURL];
  v2 = [v1 safari_isHTTPFamilyURL];

  return v2;
}

@end