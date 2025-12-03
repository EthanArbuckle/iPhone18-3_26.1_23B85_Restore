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
  _favicon = [self _favicon];
  v2 = _favicon;
  if (_favicon)
  {
    v3 = _favicon;
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
  tabUUID = [self tabUUID];
  windowUUID = [self windowUUID];
  tabGroupUUID = [self tabGroupUUID];
  [v4 switchToTabWithUUID:tabUUID inWindowWithUUID:windowUUID forTabGroupWithUUID:tabGroupUUID];
}

- (void)auditAcceptedCompletionWithRank:()SafariCompletionItem
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didAcceptCompletionItemOfType:8 atRank:a3];
}

- (PageTitleAndAddressTableViewCell)completionTableViewCellForCompletionList:()SafariCompletionItem
{
  v2 = [PageTitleAndAddressTableViewCell alloc];
  completionTableViewCellReuseIdentifier = [self completionTableViewCellReuseIdentifier];
  v4 = [(PageTitleAndAddressTableViewCell *)v2 initWithStyle:3 reuseIdentifier:completionTableViewCellReuseIdentifier];

  return v4;
}

- (void)configureCompletionTableViewCell:()SafariCompletionItem forCompletionList:
{
  v20 = a3;
  v6 = a4;
  v7 = [self url];
  v8 = [v7 safari_stringForListDisplayWithAdditionalSimplificationOptions:48];

  alternativeDisplayTextForURL = [self alternativeDisplayTextForURL];
  if ([alternativeDisplayTextForURL length])
  {
    alternativeDisplayTextForURL2 = [self alternativeDisplayTextForURL];
  }

  else
  {
    alternativeDisplayTextForURL2 = v8;
  }

  v11 = alternativeDisplayTextForURL2;

  tabGroupTitle = [self tabGroupTitle];
  if (tabGroupTitle)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = _WBSLocalizedString();
    v15 = [v13 stringWithFormat:v14, tabGroupTitle];
  }

  else
  {
    v15 = _WBSLocalizedString();
  }

  title = [self title];
  query = [v6 query];

  [v20 setTitle:title address:v11 prompt:v15 withQuery:query];
  _favicon = [self _favicon];
  if (_favicon)
  {
    imageView = [v20 imageView];
    [imageView setImage:_favicon];
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
  browserWindowController = [v2 browserWindowController];
  tabUUID = [self tabUUID];
  v5 = [browserWindowController tabWithUUID:tabUUID];

  tabCollectionItem = [v5 tabCollectionItem];
  icon = [tabCollectionItem icon];

  if (icon && ([icon isSymbolImage] & 1) == 0)
  {
    v9 = [MEMORY[0x277D4A780] resizedImage:icon withSize:{24.0, 24.0}];

    [v9 sf_registerFaviconForDarkUserInterfaceStyleWithSize:{24.0, 24.0}];
    v8 = v9;
    icon = v8;
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
    title = [self title];
    title2 = [v5 title];
    v8 = WBSIsEqual();

    if (v8)
    {
      v9 = [self url];
      absoluteString = [v9 absoluteString];
      v11 = [v5 url];
      absoluteString2 = [v11 absoluteString];
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
  alternativeDisplayTextForURL = [self alternativeDisplayTextForURL];
  tabGroupTitle = [self tabGroupTitle];
  title = [self title];
  v5 = [self url];
  absoluteString = [v5 absoluteString];
  v13 = CompletionListTableItemEqualityInfo(4, v6, v7, v8, v9, v10, v11, v12, alternativeDisplayTextForURL);

  return v13;
}

- (id)matchedTextForInputAnalytics
{
  if ([self matchLocationIsInURL])
  {
    v2 = [self url];
    absoluteString = [v2 absoluteString];
  }

  else
  {
    absoluteString = [self title];
  }

  return absoluteString;
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

@end