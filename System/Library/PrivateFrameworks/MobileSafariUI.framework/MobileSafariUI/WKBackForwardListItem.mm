@interface WKBackForwardListItem
- (id)safari_urlForDisplay;
- (uint64_t)safari_bookmarkID;
- (uint64_t)safari_navigationSnapshotRequiresBars;
- (void)safari_setBookmarkID:(void *)d;
- (void)safari_setNavigationSnapshotRequiresBars:(void *)bars;
@end

@implementation WKBackForwardListItem

- (uint64_t)safari_bookmarkID
{
  if (!self)
  {
    return 0;
  }

  v1 = objc_getAssociatedObject(self, bookmarkIDKey);
  intValue = [v1 intValue];

  return intValue;
}

- (void)safari_setBookmarkID:(void *)d
{
  if (d)
  {
    v3 = bookmarkIDKey;
    v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    objc_setAssociatedObject(d, v3, v4, 1);
  }
}

- (uint64_t)safari_navigationSnapshotRequiresBars
{
  if (!self)
  {
    return 0;
  }

  v1 = objc_getAssociatedObject(self, navigationSnapshotRequiresBarsKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)safari_setNavigationSnapshotRequiresBars:(void *)bars
{
  if (bars)
  {
    v3 = navigationSnapshotRequiresBarsKey;
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    objc_setAssociatedObject(bars, v3, v4, 3);
  }
}

- (id)safari_urlForDisplay
{
  if (self)
  {
    v2 = [self URL];
    if ([v2 isFileURL])
    {
      mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
      v4 = [mainBookmarkCollection bookmarkWithID:-[WKBackForwardListItem safari_bookmarkID](self)];

      if ([v4 isReadingListItem])
      {
        nextPageURLs = [v4 nextPageURLs];
        resourceSpecifier = [v2 resourceSpecifier];
        v7 = [nextPageURLs allKeysForObject:resourceSpecifier];

        if ([v7 count])
        {
          [v7 firstObject];
        }

        else
        {
          [v4 address];
        }
        v8 = ;
        safari_bestURLForUserTypedString = [v8 safari_bestURLForUserTypedString];

        v2 = safari_bestURLForUserTypedString;
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