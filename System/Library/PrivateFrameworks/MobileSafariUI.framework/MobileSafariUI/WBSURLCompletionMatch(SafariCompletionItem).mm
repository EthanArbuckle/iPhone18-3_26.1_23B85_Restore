@interface WBSURLCompletionMatch(SafariCompletionItem)
+ (id)_relativeDateTimeFormatter;
- (PageTitleAndAddressTableViewCell)completionTableViewCellForCompletionList:()SafariCompletionItem;
- (__CFString)_promptString;
- (id)_addressString;
- (id)matchedTextForInputAnalytics;
- (id)reflectedStringForUserTypedString:()SafariCompletionItem;
- (id)searchFieldIconForCompletionList:()SafariCompletionItem;
- (id)subtextForHistoryServiceCompletionList;
- (id)tableItemEqualityInfo;
- (uint64_t)_completionIcon;
- (uint64_t)isEquivalentTo:()SafariCompletionItem;
- (uint64_t)matchTypeForInputAnalytics;
- (void)_promptString;
- (void)acceptCompletionWithActionHandler:()SafariCompletionItem;
- (void)auditAcceptedCompletionWithRank:()SafariCompletionItem;
- (void)configureCompletionTableViewCell:()SafariCompletionItem forCompletionList:;
@end

@implementation WBSURLCompletionMatch(SafariCompletionItem)

- (id)searchFieldIconForCompletionList:()SafariCompletionItem
{
  faviconCache = [a3 faviconCache];
  originalURLString = [self originalURLString];
  v6 = [faviconCache objectForKey:originalURLString];

  isTopHit = [self isTopHit];
  if (v6)
  {
    v8 = isTopHit;
  }

  else
  {
    v8 = 0;
  }

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277D755B8];
    v10 = systemImageNameForCompletionIcon([self _completionIcon]);
    v11 = [v9 systemImageNamed:v10];

    v6 = v11;
  }

  return v6;
}

+ (id)_relativeDateTimeFormatter
{
  if (+[WBSURLCompletionMatch(SafariCompletionItem) _relativeDateTimeFormatter]::onceToken != -1)
  {
    +[WBSURLCompletionMatch(SafariCompletionItem) _relativeDateTimeFormatter];
  }

  v1 = +[WBSURLCompletionMatch(SafariCompletionItem) _relativeDateTimeFormatter]::formatter;

  return v1;
}

- (void)configureCompletionTableViewCell:()SafariCompletionItem forCompletionList:
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  rewrittenQuery = [v7 rewrittenQuery];
  v9 = rewrittenQuery;
  if (rewrittenQuery)
  {
    query = rewrittenQuery;
  }

  else
  {
    query = [v7 query];
  }

  v11 = query;

  title = [self title];
  _addressString = [self _addressString];
  _promptString = [self _promptString];
  [v6 setTitle:title address:_addressString prompt:_promptString withQuery:v11];

  faviconCache = [v7 faviconCache];
  originalURLString = [self originalURLString];
  v17 = [faviconCache objectForKey:originalURLString];

  isTopHit = [self isTopHit];
  if (v17)
  {
    v19 = isTopHit;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == 1)
  {
    imageView = [v6 imageView];
    [imageView setImage:v17];
  }

  else
  {
    -[UITableViewCell safari_setCompletionIcon:](v6, [self _completionIcon]);
  }

  if (([self onlyContainsCloudTab] & 1) == 0)
  {
    [self containsBookmark];
  }

  v25 = @"isTopHit";
  isTopHit2 = [self isTopHit];
  v22 = @"false";
  if (isTopHit2)
  {
    v22 = @"true";
  }

  v26[0] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v24 = WBSMakeAccessibilityIdentifier();
  [v6 setAccessibilityIdentifier:v24];
}

- (id)_addressString
{
  isTopHit = [self isTopHit];
  v3 = MEMORY[0x277CBEBC0];
  userVisibleURLString = [self userVisibleURLString];
  v5 = [v3 safari_URLWithUserTypedString:userVisibleURLString];
  if (isTopHit)
  {
    v6 = 0;
  }

  else
  {
    v6 = 48;
  }

  v7 = [v5 safari_stringForListDisplayWithAdditionalSimplificationOptions:v6];

  return v7;
}

- (__CFString)_promptString
{
  v22 = *MEMORY[0x277D85DE8];
  if ([self isTopHit] & 1) != 0 || (objc_msgSend(self, "containsBookmark"))
  {
    goto LABEL_3;
  }

  if ([self onlyContainsCloudTab])
  {
    cloudTabDeviceName = [self cloudTabDeviceName];

    if (cloudTabDeviceName)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = _WBSLocalizedString();
      cloudTabDeviceName2 = [self cloudTabDeviceName];
      v2 = [v5 stringWithFormat:v6, cloudTabDeviceName2];

      goto LABEL_4;
    }

    v18 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      userVisibleURLString = [self userVisibleURLString];
      [(WBSURLCompletionMatch(SafariCompletionItem) *)userVisibleURLString _promptString];
    }

LABEL_15:

LABEL_3:
    v2 = &stru_2827BF158;
    goto LABEL_4;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  [self lastVisitTimeInterval];
  v11 = v10;
  [self lastVisitTimeInterval];
  if (v12 == 0.0 || (v13 = v9 - v11, v13 < 0.0))
  {
    v18 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      userVisibleURLString2 = [self userVisibleURLString];
      [(WBSURLCompletionMatch(SafariCompletionItem) *)userVisibleURLString2 _promptString];
    }

    goto LABEL_15;
  }

  _relativeDateTimeFormatter = [MEMORY[0x277D4A0B0] _relativeDateTimeFormatter];
  v15 = [_relativeDateTimeFormatter localizedStringFromTimeInterval:-v13];

  v16 = MEMORY[0x277CCACA8];
  v17 = _WBSLocalizedString();
  v2 = [v16 stringWithFormat:v17, v15];

LABEL_4:

  return v2;
}

- (uint64_t)_completionIcon
{
  if ([self isTopHit])
  {
    return 7;
  }

  if ([self containsReadingListItem])
  {
    return 2;
  }

  if ([self containsBookmark])
  {
    return 0;
  }

  if ([self onlyContainsCloudTab])
  {
    return 1;
  }

  return 3;
}

- (void)acceptCompletionWithActionHandler:()SafariCompletionItem
{
  v5 = a3;
  userVisibleURLString = [self userVisibleURLString];
  [v5 goToURLString:userVisibleURLString];
}

- (PageTitleAndAddressTableViewCell)completionTableViewCellForCompletionList:()SafariCompletionItem
{
  v2 = [PageTitleAndAddressTableViewCell alloc];
  completionTableViewCellReuseIdentifier = [self completionTableViewCellReuseIdentifier];
  v4 = [(PageTitleAndAddressTableViewCell *)v2 initWithStyle:3 reuseIdentifier:completionTableViewCellReuseIdentifier];

  return v4;
}

- (void)auditAcceptedCompletionWithRank:()SafariCompletionItem
{
  if ([self isTopHit])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:v4 atRank:a3];
}

- (id)reflectedStringForUserTypedString:()SafariCompletionItem
{
  v1 = [self matchingStringWithUserTypedPrefix:?];

  return v1;
}

- (id)subtextForHistoryServiceCompletionList
{
  _promptString = [self _promptString];
  v2 = [@" · " stringByAppendingString:_promptString];

  return v2;
}

- (uint64_t)isEquivalentTo:()SafariCompletionItem
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    title = [self title];
    title2 = [v5 title];
    v8 = WBSIsEqual();

    if (v8)
    {
      userVisibleURLString = [self userVisibleURLString];
      userVisibleURLString2 = [v5 userVisibleURLString];
      v11 = WBSIsEqual();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tableItemEqualityInfo
{
  cloudTabDeviceName = [self cloudTabDeviceName];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "containsBookmark")}];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "onlyContainsCloudTab")}];
  title = [self title];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isTopHit")}];
  userVisibleURLString = [self userVisibleURLString];
  v14 = CompletionListTableItemEqualityInfo(6, v7, v8, v9, v10, v11, v12, v13, cloudTabDeviceName);

  return v14;
}

- (id)matchedTextForInputAnalytics
{
  if ([self matchLocationIsInURL])
  {
    [self userVisibleURLString];
  }

  else
  {
    [self title];
  }
  v2 = ;

  return v2;
}

- (uint64_t)matchTypeForInputAnalytics
{
  if ([self matchLocationIsInURL])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_promptString
{
  *buf = 138739971;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Missing device name for cloud tab: %{sensitive}@", buf, 0xCu);
}

@end