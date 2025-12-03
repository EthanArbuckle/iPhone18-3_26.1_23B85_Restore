@interface WBSBookmarkAndHistoryCompletionMatch(SafariCompletionItem)
- (uint64_t)isEquivalentTo:()SafariCompletionItem;
- (uint64_t)shouldPrefetchWithMatchLength:()SafariCompletionItem;
@end

@implementation WBSBookmarkAndHistoryCompletionMatch(SafariCompletionItem)

- (uint64_t)shouldPrefetchWithMatchLength:()SafariCompletionItem
{
  shouldPreload = [self shouldPreload];
  if (shouldPreload)
  {
    [self weight];
  }

  return shouldPreload;
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

@end