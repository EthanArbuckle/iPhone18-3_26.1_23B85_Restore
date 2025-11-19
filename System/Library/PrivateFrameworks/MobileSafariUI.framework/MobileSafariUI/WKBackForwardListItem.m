@interface WKBackForwardListItem
- (id)safari_urlForDisplay;
- (uint64_t)safari_bookmarkID;
- (uint64_t)safari_navigationSnapshotRequiresBars;
- (void)safari_setBookmarkID:(void *)a1;
- (void)safari_setNavigationSnapshotRequiresBars:(void *)a1;
@end

@implementation WKBackForwardListItem

- (uint64_t)safari_bookmarkID
{
  if (!a1)
  {
    return 0;
  }

  v1 = objc_getAssociatedObject(a1, bookmarkIDKey);
  v2 = [v1 intValue];

  return v2;
}

- (void)safari_setBookmarkID:(void *)a1
{
  if (a1)
  {
    v3 = bookmarkIDKey;
    v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    objc_setAssociatedObject(a1, v3, v4, 1);
  }
}

- (uint64_t)safari_navigationSnapshotRequiresBars
{
  if (!a1)
  {
    return 0;
  }

  v1 = objc_getAssociatedObject(a1, navigationSnapshotRequiresBarsKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)safari_setNavigationSnapshotRequiresBars:(void *)a1
{
  if (a1)
  {
    v3 = navigationSnapshotRequiresBarsKey;
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    objc_setAssociatedObject(a1, v3, v4, 3);
  }
}

- (id)safari_urlForDisplay
{
  if (a1)
  {
    v2 = [a1 URL];
    if ([v2 isFileURL])
    {
      v3 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v4 = [v3 bookmarkWithID:-[WKBackForwardListItem safari_bookmarkID](a1)];

      if ([v4 isReadingListItem])
      {
        v5 = [v4 nextPageURLs];
        v6 = [v2 resourceSpecifier];
        v7 = [v5 allKeysForObject:v6];

        if ([v7 count])
        {
          [v7 firstObject];
        }

        else
        {
          [v4 address];
        }
        v8 = ;
        v9 = [v8 safari_bestURLForUserTypedString];

        v2 = v9;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end