@interface SFURLCompletionMatchBookmarkListData
- (BOOL)lastVisitWasFailure;
- (BOOL)shouldPreload;
- (BOOL)visitWasClientError;
- (NSString)originalURLString;
- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)data andBookmarkData:(id)bookmarkData;
- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)data historyMatchData:(id)matchData;
- (double)lastVisitedTimeInterval;
- (float)topSitesScoreForURLStringAtIndex:(unint64_t)index atTime:(double)time;
- (id)_bookmarkUserVisibleURLString;
- (id)matchDataByMergingWithMatchData:(id)data;
- (id)pageTitleAtIndex:(unint64_t)index;
- (id)pageTitleForUserVisibleURLStringAtIndex:(unint64_t)index;
- (id)userVisibleURLStringAtIndex:(unint64_t)index;
- (id)userVisibleURLStringForPageTitleAtIndex:(unint64_t)index;
- (int64_t)visitCountScoreForURLStringAtIndex:(unint64_t)index;
- (void)_extractCloudTabDataFromBookmarkDataIfNeeded:(id)needed;
- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)block;
- (void)enumeratePageTitlesUsingBlock:(id)block;
- (void)enumerateUserVisibleURLsUsingBlock:(id)block;
@end

@implementation SFURLCompletionMatchBookmarkListData

- (BOOL)shouldPreload
{
  historyMatchData = self->_historyMatchData;
  if (historyMatchData)
  {

    return [(WBSURLCompletionMatchData *)historyMatchData shouldPreload];
  }

  else
  {
    firstObject = [(NSMutableArray *)self->_bookmarks firstObject];
    isBuiltinBookmark = [firstObject isBuiltinBookmark];

    return isBuiltinBookmark ^ 1;
  }
}

- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)data historyMatchData:(id)matchData
{
  dataCopy = data;
  matchDataCopy = matchData;
  v15.receiver = self;
  v15.super_class = SFURLCompletionMatchBookmarkListData;
  v8 = [(SFURLCompletionMatchBookmarkListData *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    bookmark = [dataCopy bookmark];
    v11 = [v9 initWithObjects:{bookmark, 0}];
    bookmarks = v8->_bookmarks;
    v8->_bookmarks = v11;

    objc_storeStrong(&v8->_historyMatchData, matchData);
    v8->_onlyContainsCloudTab = 0;
    v8->_containsBookmark = [dataCopy onlyContainsCloudTab] ^ 1;
    v8->_containsReadingListItem = [dataCopy containsReadingListItem];
    [(SFURLCompletionMatchBookmarkListData *)v8 _extractCloudTabDataFromBookmarkDataIfNeeded:dataCopy];
    v13 = v8;
  }

  return v8;
}

- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)data andBookmarkData:(id)bookmarkData
{
  dataCopy = data;
  bookmarkDataCopy = bookmarkData;
  v19.receiver = self;
  v19.super_class = SFURLCompletionMatchBookmarkListData;
  v8 = [(SFURLCompletionMatchBookmarkListData *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    bookmark = [dataCopy bookmark];
    bookmark2 = [bookmarkDataCopy bookmark];
    v12 = [v9 initWithObjects:{bookmark, bookmark2, 0}];
    bookmarks = v8->_bookmarks;
    v8->_bookmarks = v12;

    onlyContainsCloudTab = [dataCopy onlyContainsCloudTab];
    if (onlyContainsCloudTab)
    {
      LOBYTE(onlyContainsCloudTab) = [bookmarkDataCopy onlyContainsCloudTab];
    }

    v8->_onlyContainsCloudTab = onlyContainsCloudTab;
    v8->_containsBookmark = onlyContainsCloudTab ^ 1;
    v8->_containsReadingListItem = [dataCopy containsReadingListItem];
    cloudTabDeviceName = [dataCopy cloudTabDeviceName];
    cloudTabDeviceName = v8->_cloudTabDeviceName;
    v8->_cloudTabDeviceName = cloudTabDeviceName;

    [(SFURLCompletionMatchBookmarkListData *)v8 _extractCloudTabDataFromBookmarkDataIfNeeded:dataCopy];
    [(SFURLCompletionMatchBookmarkListData *)v8 _extractCloudTabDataFromBookmarkDataIfNeeded:bookmarkDataCopy];
    v17 = v8;
  }

  return v8;
}

- (void)_extractCloudTabDataFromBookmarkDataIfNeeded:(id)needed
{
  neededCopy = needed;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = neededCopy;
  if (isKindOfClass)
  {
    v6 = neededCopy;
    cloudTabsAndProviders = self->_cloudTabsAndProviders;
    cloudTab = [v6 cloudTab];
    v9 = [(NSDictionary *)cloudTabsAndProviders objectForKeyedSubscript:cloudTab];
    if (v9)
    {
      device = v9;
    }

    else
    {
      cloudTab2 = [v6 cloudTab];

      if (!cloudTab2)
      {
LABEL_7:

        v5 = neededCopy;
        goto LABEL_8;
      }

      cloudTab = [(NSDictionary *)self->_cloudTabsAndProviders mutableCopy];
      device = [v6 device];
      cloudTab3 = [v6 cloudTab];
      [cloudTab setObject:device forKeyedSubscript:cloudTab3];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)_bookmarkUserVisibleURLString
{
  lastObject = [(NSMutableArray *)self->_bookmarks lastObject];
  address = [lastObject address];

  if ([address _web_isUserVisibleURL])
  {
    _web_userVisibleString = address;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] safari_urlWithDataAsString:address];
    _web_userVisibleString = [v5 _web_userVisibleString];
  }

  return _web_userVisibleString;
}

- (NSString)originalURLString
{
  historyMatchData = self->_historyMatchData;
  if (historyMatchData)
  {
    originalURLString = [(WBSURLCompletionMatchData *)historyMatchData originalURLString];
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_bookmarks lastObject];
    originalURLString = [lastObject address];
  }

  return originalURLString;
}

- (id)pageTitleAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5 <= index)
  {
    if (v5 == index)
    {
      title = [(WBSURLCompletionMatchData *)self->_historyMatchData pageTitleAtIndex:0];
    }

    else
    {
      title = 0;
    }
  }

  else
  {
    v6 = [(NSMutableArray *)self->_bookmarks objectAtIndex:index];
    title = [v6 title];
  }

  return title;
}

- (id)userVisibleURLStringForPageTitleAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5 <= index)
  {
    if (v5 == index && self->_historyMatchData)
    {
      _historyItemUserVisibleURLString = [(SFURLCompletionMatchBookmarkListData *)self _historyItemUserVisibleURLString];
    }

    else
    {
      _historyItemUserVisibleURLString = 0;
    }
  }

  else
  {
    _historyItemUserVisibleURLString = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
  }

  return _historyItemUserVisibleURLString;
}

- (id)userVisibleURLStringAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (index)
  {
    historyMatchData = self->_historyMatchData;
LABEL_3:
    _bookmarkUserVisibleURLString = [(WBSURLCompletionMatchData *)historyMatchData userVisibleURLStringAtIndex:index];
    goto LABEL_8;
  }

  if (v5)
  {
    _bookmarkUserVisibleURLString = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
  }

  else
  {
    if (!self->_historyMatchData)
    {
      historyMatchData = 0;
      goto LABEL_3;
    }

    _bookmarkUserVisibleURLString = [(SFURLCompletionMatchBookmarkListData *)self _historyItemUserVisibleURLString];
  }

LABEL_8:

  return _bookmarkUserVisibleURLString;
}

- (id)pageTitleForUserVisibleURLStringAtIndex:(unint64_t)index
{
  if (index || ![(NSMutableArray *)self->_bookmarks count])
  {
    title = [(WBSURLCompletionMatchData *)self->_historyMatchData pageTitleAtIndex:0];
  }

  else
  {
    firstObject = [(NSMutableArray *)self->_bookmarks firstObject];
    title = [firstObject title];
  }

  return title;
}

- (double)lastVisitedTimeInterval
{
  historyMatchData = self->_historyMatchData;
  if (!historyMatchData)
  {
    return 0.0;
  }

  [(WBSURLCompletionMatchData *)historyMatchData lastVisitedTimeInterval];
  return result;
}

- (BOOL)lastVisitWasFailure
{
  historyMatchData = self->_historyMatchData;
  if (historyMatchData)
  {
    LOBYTE(historyMatchData) = [(WBSURLCompletionMatchData *)historyMatchData lastVisitWasFailure];
  }

  return historyMatchData;
}

- (BOOL)visitWasClientError
{
  historyMatchData = self->_historyMatchData;
  if (historyMatchData)
  {
    LOBYTE(historyMatchData) = [(WBSURLCompletionMatchData *)historyMatchData visitWasClientError];
  }

  return historyMatchData;
}

- (id)matchDataByMergingWithMatchData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = dataCopy;
    bookmarks = self->_bookmarks;
    bookmark = [v6 bookmark];
    [(NSMutableArray *)bookmarks addObject:bookmark];

    if (self->_containsBookmark)
    {
      containsBookmark = 1;
    }

    else
    {
      containsBookmark = [v6 containsBookmark];
    }

    self->_containsBookmark = containsBookmark;
    if (self->_onlyContainsCloudTab)
    {
      onlyContainsCloudTab = [v6 onlyContainsCloudTab];
    }

    else
    {
      onlyContainsCloudTab = 0;
    }

    self->_onlyContainsCloudTab = onlyContainsCloudTab;
    self->_containsReadingListItem = [v6 containsReadingListItem];
    selfCopy = self;
  }

  else
  {
    if (!self->_historyMatchData)
    {
      objc_storeStrong(&self->_historyMatchData, data);
      self->_onlyContainsCloudTab = 0;
    }

    selfCopy2 = self;
  }

  return self;
}

- (void)enumeratePageTitlesUsingBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_bookmarks objectAtIndex:v6];
      title = [v7 title];
      blockCopy[2](blockCopy, title, v6, &v10);

      if (v10)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = [(WBSURLCompletionMatchData *)self->_historyMatchData pageTitleAtIndex:0];
    if (v9)
    {
      blockCopy[2](blockCopy, v9, v5, &v10);
    }
  }
}

- (void)enumerateUserVisibleURLsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableArray *)self->_bookmarks count];
  v8 = 0;
  if (v5)
  {
    _bookmarkUserVisibleURLString = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
  }

  else
  {
    if (!self->_historyMatchData)
    {
      goto LABEL_6;
    }

    _bookmarkUserVisibleURLString = [(SFURLCompletionMatchBookmarkListData *)self _historyItemUserVisibleURLString];
  }

  v7 = _bookmarkUserVisibleURLString;
  blockCopy[2](blockCopy, _bookmarkUserVisibleURLString, 0, &v8);

LABEL_6:
  if ((v8 & 1) == 0)
  {
    [(WBSURLCompletionMatchData *)self->_historyMatchData enumerateUserVisibleURLsUsingBlock:blockCopy];
  }
}

- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_bookmarks objectAtIndexedSubscript:v6];
      title = [v7 title];
      _bookmarkUserVisibleURLString = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
      blockCopy[2](blockCopy, title, v6, _bookmarkUserVisibleURLString, 0, &v14);

      if (v14)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    historyMatchData = self->_historyMatchData;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__SFURLCompletionMatchBookmarkListData_enumeratePageTitlesAndUserVisibleURLsUsingBlock___block_invoke;
    v11[3] = &unk_1E721CA90;
    v11[4] = self;
    v12 = blockCopy;
    v13 = v5;
    [(WBSURLCompletionMatchData *)historyMatchData enumeratePageTitlesAndUserVisibleURLsUsingBlock:v11];
  }
}

void __88__SFURLCompletionMatchBookmarkListData_enumeratePageTitlesAndUserVisibleURLsUsingBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[5];
  v10 = *(a1[4] + 16);
  v11 = a4;
  v12 = [v10 pageTitleAtIndex:0];
  (*(v9 + 16))(v9, v12, a1[6], v11, a5, a6);
}

- (float)topSitesScoreForURLStringAtIndex:(unint64_t)index atTime:(double)time
{
  historyMatchData = self->_historyMatchData;
  if (index)
  {
    v5 = index - 1;
LABEL_3:
    [(WBSURLCompletionMatchData *)historyMatchData topSitesScoreForURLStringAtIndex:v5 atTime:time];
    return result;
  }

  if (historyMatchData)
  {
    v5 = 0;
    goto LABEL_3;
  }

  return 0.0;
}

- (int64_t)visitCountScoreForURLStringAtIndex:(unint64_t)index
{
  historyMatchData = self->_historyMatchData;
  if (index)
  {
    v4 = index - 1;
    return [(WBSURLCompletionMatchData *)historyMatchData visitCountScoreForURLStringAtIndex:v4];
  }

  if (historyMatchData)
  {
    v4 = 0;
    return [(WBSURLCompletionMatchData *)historyMatchData visitCountScoreForURLStringAtIndex:v4];
  }

  return -1;
}

@end