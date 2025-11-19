@interface WBSBrowserTabCompletionMatch(SafariCompletionItem)
- (PageTitleAndAddressTableViewCell)completionTableViewCellForCompletionList:()SafariCompletionItem;
- (id)_favicon;
- (id)matchedTextForInputAnalytics;
- (id)searchFieldIconForCompletionList:()SafariCompletionItem;
- (id)tableItemEqualityInfo;
- (uint64_t)isEquivalentTo:()SafariCompletionItem;
- (uint64_t)matchTypeForInputAnalytics;
- (void)acceptCompletionWithActionHandler:()SafariCompletionItem;
- (void)auditAcceptedCompletionWithRank:()SafariCompletionItem;
- (void)configureCompletionTableViewCell:()SafariCompletionItem forCompletionList:;
@end

@implementation WBSBrowserTabCompletionMatch(SafariCompletionItem)

- (id)searchFieldIconForCompletionList:()SafariCompletionItem
{
  v1 = [a1 _favicon];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = MEMORY[0x277D755B8];
    v5 = systemImageNameForCompletionIcon(6);
    v3 = [v4 systemImageNamed:v5];
  }

  return v3;
}

- (void)acceptCompletionWithActionHandler:()SafariCompletionItem
{
  v4 = a3;
  v7 = [a1 tabUUID];
  v5 = [a1 windowUUID];
  v6 = [a1 tabGroupUUID];
  [v4 switchToTabWithUUID:v7 inWindowWithUUID:v5 forTabGroupWithUUID:v6];
}

- (void)auditAcceptedCompletionWithRank:()SafariCompletionItem
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didAcceptCompletionItemOfType:8 atRank:a3];
}

- (PageTitleAndAddressTableViewCell)completionTableViewCellForCompletionList:()SafariCompletionItem
{
  v2 = [PageTitleAndAddressTableViewCell alloc];
  v3 = [a1 completionTableViewCellReuseIdentifier];
  v4 = [(PageTitleAndAddressTableViewCell *)v2 initWithStyle:3 reuseIdentifier:v3];

  return v4;
}

- (void)configureCompletionTableViewCell:()SafariCompletionItem forCompletionList:
{
  v20 = a3;
  v6 = a4;
  v7 = [a1 url];
  v8 = [v7 safari_stringForListDisplayWithAdditionalSimplificationOptions:48];

  v9 = [a1 alternativeDisplayTextForURL];
  if ([v9 length])
  {
    v10 = [a1 alternativeDisplayTextForURL];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [a1 tabGroupTitle];
  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = _WBSLocalizedString();
    v15 = [v13 stringWithFormat:v14, v12];
  }

  else
  {
    v15 = _WBSLocalizedString();
  }

  v16 = [a1 title];
  v17 = [v6 query];

  [v20 setTitle:v16 address:v11 prompt:v15 withQuery:v17];
  v18 = [a1 _favicon];
  if (v18)
  {
    v19 = [v20 imageView];
    [v19 setImage:v18];
  }

  else
  {
    [(UITableViewCell *)v20 safari_setCompletionIcon:?];
  }

  [v20 setAccessibilityIdentifier:@"SwitchToTab"];
}

- (id)_favicon
{
  v2 = +[Application sharedApplication];
  v3 = [v2 browserWindowController];
  v4 = [a1 tabUUID];
  v5 = [v3 tabWithUUID:v4];

  v6 = [v5 tabCollectionItem];
  v7 = [v6 icon];

  if (v7 && ([v7 isSymbolImage] & 1) == 0)
  {
    v9 = [MEMORY[0x277D4A780] resizedImage:v7 withSize:{24.0, 24.0}];

    [v9 sf_registerFaviconForDarkUserInterfaceStyleWithSize:{24.0, 24.0}];
    v8 = v9;
    v7 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
      v9 = [a1 url];
      v10 = [v9 absoluteString];
      v11 = [v5 url];
      v12 = [v11 absoluteString];
      v13 = WBSIsEqual();
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)tableItemEqualityInfo
{
  v2 = [a1 alternativeDisplayTextForURL];
  v3 = [a1 tabGroupTitle];
  v4 = [a1 title];
  v5 = [a1 url];
  v15 = [v5 absoluteString];
  v13 = CompletionListTableItemEqualityInfo(4, v6, v7, v8, v9, v10, v11, v12, v2);

  return v13;
}

- (id)matchedTextForInputAnalytics
{
  if ([a1 matchLocationIsInURL])
  {
    v2 = [a1 url];
    v3 = [v2 absoluteString];
  }

  else
  {
    v3 = [a1 title];
  }

  return v3;
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

@end