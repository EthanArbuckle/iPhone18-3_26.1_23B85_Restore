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
  v4 = [a3 faviconCache];
  v5 = [a1 originalURLString];
  v6 = [v4 objectForKey:v5];

  v7 = [a1 isTopHit];
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277D755B8];
    v10 = systemImageNameForCompletionIcon([a1 _completionIcon]);
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
  v8 = [v7 rewrittenQuery];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 query];
  }

  v11 = v10;

  v12 = [a1 title];
  v13 = [a1 _addressString];
  v14 = [a1 _promptString];
  [v6 setTitle:v12 address:v13 prompt:v14 withQuery:v11];

  v15 = [v7 faviconCache];
  v16 = [a1 originalURLString];
  v17 = [v15 objectForKey:v16];

  v18 = [a1 isTopHit];
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == 1)
  {
    v20 = [v6 imageView];
    [v20 setImage:v17];
  }

  else
  {
    -[UITableViewCell safari_setCompletionIcon:](v6, [a1 _completionIcon]);
  }

  if (([a1 onlyContainsCloudTab] & 1) == 0)
  {
    [a1 containsBookmark];
  }

  v25 = @"isTopHit";
  v21 = [a1 isTopHit];
  v22 = @"false";
  if (v21)
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
  v2 = [a1 isTopHit];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [a1 userVisibleURLString];
  v5 = [v3 safari_URLWithUserTypedString:v4];
  if (v2)
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
  if ([a1 isTopHit] & 1) != 0 || (objc_msgSend(a1, "containsBookmark"))
  {
    goto LABEL_3;
  }

  if ([a1 onlyContainsCloudTab])
  {
    v4 = [a1 cloudTabDeviceName];

    if (v4)
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = _WBSLocalizedString();
      v7 = [a1 cloudTabDeviceName];
      v2 = [v5 stringWithFormat:v6, v7];

      goto LABEL_4;
    }

    v18 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = [a1 userVisibleURLString];
      [(WBSURLCompletionMatch(SafariCompletionItem) *)v20 _promptString];
    }

LABEL_15:

LABEL_3:
    v2 = &stru_2827BF158;
    goto LABEL_4;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  [a1 lastVisitTimeInterval];
  v11 = v10;
  [a1 lastVisitTimeInterval];
  if (v12 == 0.0 || (v13 = v9 - v11, v13 < 0.0))
  {
    v18 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [a1 userVisibleURLString];
      [(WBSURLCompletionMatch(SafariCompletionItem) *)v19 _promptString];
    }

    goto LABEL_15;
  }

  v14 = [MEMORY[0x277D4A0B0] _relativeDateTimeFormatter];
  v15 = [v14 localizedStringFromTimeInterval:-v13];

  v16 = MEMORY[0x277CCACA8];
  v17 = _WBSLocalizedString();
  v2 = [v16 stringWithFormat:v17, v15];

LABEL_4:

  return v2;
}

- (uint64_t)_completionIcon
{
  if ([a1 isTopHit])
  {
    return 7;
  }

  if ([a1 containsReadingListItem])
  {
    return 2;
  }

  if ([a1 containsBookmark])
  {
    return 0;
  }

  if ([a1 onlyContainsCloudTab])
  {
    return 1;
  }

  return 3;
}

- (void)acceptCompletionWithActionHandler:()SafariCompletionItem
{
  v5 = a3;
  v4 = [a1 userVisibleURLString];
  [v5 goToURLString:v4];
}

- (PageTitleAndAddressTableViewCell)completionTableViewCellForCompletionList:()SafariCompletionItem
{
  v2 = [PageTitleAndAddressTableViewCell alloc];
  v3 = [a1 completionTableViewCellReuseIdentifier];
  v4 = [(PageTitleAndAddressTableViewCell *)v2 initWithStyle:3 reuseIdentifier:v3];

  return v4;
}

- (void)auditAcceptedCompletionWithRank:()SafariCompletionItem
{
  if ([a1 isTopHit])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277D499B8] sharedLogger];
  [v5 didAcceptCompletionItemOfType:v4 atRank:a3];
}

- (id)reflectedStringForUserTypedString:()SafariCompletionItem
{
  v1 = [a1 matchingStringWithUserTypedPrefix:?];

  return v1;
}

- (id)subtextForHistoryServiceCompletionList
{
  v1 = [a1 _promptString];
  v2 = [@" · " stringByAppendingString:v1];

  return v2;
}

- (uint64_t)isEquivalentTo:()SafariCompletionItem
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [a1 title];
    v7 = [v5 title];
    v8 = WBSIsEqual();

    if (v8)
    {
      v9 = [a1 userVisibleURLString];
      v10 = [v5 userVisibleURLString];
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
  v2 = [a1 cloudTabDeviceName];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "containsBookmark")}];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "onlyContainsCloudTab")}];
  v5 = [a1 title];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isTopHit")}];
  v16 = [a1 userVisibleURLString];
  v14 = CompletionListTableItemEqualityInfo(6, v7, v8, v9, v10, v11, v12, v13, v2);

  return v14;
}

- (id)matchedTextForInputAnalytics
{
  if ([a1 matchLocationIsInURL])
  {
    [a1 userVisibleURLString];
  }

  else
  {
    [a1 title];
  }
  v2 = ;

  return v2;
}

- (uint64_t)matchTypeForInputAnalytics
{
  if ([a1 matchLocationIsInURL])
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
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_215819000, log, OS_LOG_TYPE_ERROR, "Missing device name for cloud tab: %{sensitive}@", buf, 0xCu);
}

@end