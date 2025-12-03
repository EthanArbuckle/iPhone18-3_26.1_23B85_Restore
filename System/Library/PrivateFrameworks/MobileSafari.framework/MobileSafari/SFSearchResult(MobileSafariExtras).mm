@interface SFSearchResult(MobileSafariExtras)
- (id)_sf_punchoutURL;
- (uint64_t)_sf_canOpenInBrowser;
- (uint64_t)_sf_isMediaResult;
@end

@implementation SFSearchResult(MobileSafariExtras)

- (id)_sf_punchoutURL
{
  inlineCard = [self inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];

  command = [firstObject command];
  if (command)
  {
    command2 = [firstObject command];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      command3 = [firstObject command];
      punchout = [command3 punchout];
      command = [punchout preferredOpenableURL];
    }

    else
    {
      command = 0;
    }
  }

  return command;
}

- (uint64_t)_sf_isMediaResult
{
  inlineCard = [self inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];

  command = [firstObject command];
  if (command)
  {
    command2 = [firstObject command];
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
  _sf_punchoutURL = [self _sf_punchoutURL];
  safari_isHTTPFamilyURL = [_sf_punchoutURL safari_isHTTPFamilyURL];

  return safari_isHTTPFamilyURL;
}

@end