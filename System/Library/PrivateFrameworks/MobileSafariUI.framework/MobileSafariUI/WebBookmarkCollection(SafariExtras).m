@interface WebBookmarkCollection(SafariExtras)
+ (id)mainBookmarkCollection;
- (id)bookmarksInFavoritesList;
@end

@implementation WebBookmarkCollection(SafariExtras)

+ (id)mainBookmarkCollection
{
  v0 = mainBookmarkCollection;
  if (!mainBookmarkCollection)
  {
    v1 = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
    v2 = mainBookmarkCollection;
    mainBookmarkCollection = v1;

    if (!mainBookmarkCollection || ([MEMORY[0x277CCAB98] defaultCenter], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "addObserver:selector:name:object:", mainBookmarkCollection, sel_receivedBookmarksDidChangeNotification_, *MEMORY[0x277D7B608], 0), objc_msgSend(v3, "addObserver:selector:name:object:", mainBookmarkCollection, sel_receivedBookmarksDidChangeNotification_, *MEMORY[0x277D7B618], 0), v3, (v0 = mainBookmarkCollection) == 0))
    {
      +[WebBookmarkCollection _startBookmarkCollectionOpenRetryTimer];
      v0 = mainBookmarkCollection;
    }
  }

  return v0;
}

- (id)bookmarksInFavoritesList
{
  v2 = [bookmarksInFavoritesListCache objectForKey:a1];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 favoritesFolderList];
    v6 = v5;
    if (v5)
    {
      if ([v5 bookmarkCount] > 7)
      {
        if (!bookmarksInFavoritesListCache)
        {
          v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
          v8 = bookmarksInFavoritesListCache;
          bookmarksInFavoritesListCache = v7;

          [bookmarksInFavoritesListCache setCountLimit:1];
        }

        v4 = [a1 fastFetchBookmarksInBookmarkList:v6];
        [bookmarksInFavoritesListCache setObject:v4 forKey:a1];
      }

      else
      {
        v4 = [v6 bookmarkArray];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end