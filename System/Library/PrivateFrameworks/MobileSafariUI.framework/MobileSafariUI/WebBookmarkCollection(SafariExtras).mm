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
    safariBookmarkCollection = [MEMORY[0x277D7B5A8] safariBookmarkCollection];
    v2 = mainBookmarkCollection;
    mainBookmarkCollection = safariBookmarkCollection;

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
  v2 = [bookmarksInFavoritesListCache objectForKey:self];
  v3 = v2;
  if (v2)
  {
    bookmarkArray = v2;
  }

  else
  {
    favoritesFolderList = [self favoritesFolderList];
    v6 = favoritesFolderList;
    if (favoritesFolderList)
    {
      if ([favoritesFolderList bookmarkCount] > 7)
      {
        if (!bookmarksInFavoritesListCache)
        {
          v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
          v8 = bookmarksInFavoritesListCache;
          bookmarksInFavoritesListCache = v7;

          [bookmarksInFavoritesListCache setCountLimit:1];
        }

        bookmarkArray = [self fastFetchBookmarksInBookmarkList:v6];
        [bookmarksInFavoritesListCache setObject:bookmarkArray forKey:self];
      }

      else
      {
        bookmarkArray = [v6 bookmarkArray];
      }
    }

    else
    {
      bookmarkArray = 0;
    }
  }

  return bookmarkArray;
}

@end