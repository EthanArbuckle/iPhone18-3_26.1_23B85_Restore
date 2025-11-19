@interface SFURLCompletionMatchBookmarkListData
- (BOOL)lastVisitWasFailure;
- (BOOL)shouldPreload;
- (BOOL)visitWasClientError;
- (NSString)originalURLString;
- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)a3 andBookmarkData:(id)a4;
- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)a3 historyMatchData:(id)a4;
- (double)lastVisitedTimeInterval;
- (float)topSitesScoreForURLStringAtIndex:(unint64_t)a3 atTime:(double)a4;
- (id)_bookmarkUserVisibleURLString;
- (id)matchDataByMergingWithMatchData:(id)a3;
- (id)pageTitleAtIndex:(unint64_t)a3;
- (id)pageTitleForUserVisibleURLStringAtIndex:(unint64_t)a3;
- (id)userVisibleURLStringAtIndex:(unint64_t)a3;
- (id)userVisibleURLStringForPageTitleAtIndex:(unint64_t)a3;
- (int64_t)visitCountScoreForURLStringAtIndex:(unint64_t)a3;
- (void)_extractCloudTabDataFromBookmarkDataIfNeeded:(id)a3;
- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)a3;
- (void)enumeratePageTitlesUsingBlock:(id)a3;
- (void)enumerateUserVisibleURLsUsingBlock:(id)a3;
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
    v6 = [(NSMutableArray *)self->_bookmarks firstObject];
    v7 = [v6 isBuiltinBookmark];

    return v7 ^ 1;
  }
}

- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)a3 historyMatchData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SFURLCompletionMatchBookmarkListData;
  v8 = [(SFURLCompletionMatchBookmarkListData *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = [v6 bookmark];
    v11 = [v9 initWithObjects:{v10, 0}];
    bookmarks = v8->_bookmarks;
    v8->_bookmarks = v11;

    objc_storeStrong(&v8->_historyMatchData, a4);
    v8->_onlyContainsCloudTab = 0;
    v8->_containsBookmark = [v6 onlyContainsCloudTab] ^ 1;
    v8->_containsReadingListItem = [v6 containsReadingListItem];
    [(SFURLCompletionMatchBookmarkListData *)v8 _extractCloudTabDataFromBookmarkDataIfNeeded:v6];
    v13 = v8;
  }

  return v8;
}

- (SFURLCompletionMatchBookmarkListData)initWithBookmarkData:(id)a3 andBookmarkData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SFURLCompletionMatchBookmarkListData;
  v8 = [(SFURLCompletionMatchBookmarkListData *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v10 = [v6 bookmark];
    v11 = [v7 bookmark];
    v12 = [v9 initWithObjects:{v10, v11, 0}];
    bookmarks = v8->_bookmarks;
    v8->_bookmarks = v12;

    v14 = [v6 onlyContainsCloudTab];
    if (v14)
    {
      LOBYTE(v14) = [v7 onlyContainsCloudTab];
    }

    v8->_onlyContainsCloudTab = v14;
    v8->_containsBookmark = v14 ^ 1;
    v8->_containsReadingListItem = [v6 containsReadingListItem];
    v15 = [v6 cloudTabDeviceName];
    cloudTabDeviceName = v8->_cloudTabDeviceName;
    v8->_cloudTabDeviceName = v15;

    [(SFURLCompletionMatchBookmarkListData *)v8 _extractCloudTabDataFromBookmarkDataIfNeeded:v6];
    [(SFURLCompletionMatchBookmarkListData *)v8 _extractCloudTabDataFromBookmarkDataIfNeeded:v7];
    v17 = v8;
  }

  return v8;
}

- (void)_extractCloudTabDataFromBookmarkDataIfNeeded:(id)a3
{
  v13 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v13;
  if (isKindOfClass)
  {
    v6 = v13;
    cloudTabsAndProviders = self->_cloudTabsAndProviders;
    v8 = [v6 cloudTab];
    v9 = [(NSDictionary *)cloudTabsAndProviders objectForKeyedSubscript:v8];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [v6 cloudTab];

      if (!v11)
      {
LABEL_7:

        v5 = v13;
        goto LABEL_8;
      }

      v8 = [(NSDictionary *)self->_cloudTabsAndProviders mutableCopy];
      v10 = [v6 device];
      v12 = [v6 cloudTab];
      [v8 setObject:v10 forKeyedSubscript:v12];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)_bookmarkUserVisibleURLString
{
  v2 = [(NSMutableArray *)self->_bookmarks lastObject];
  v3 = [v2 address];

  if ([v3 _web_isUserVisibleURL])
  {
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] safari_urlWithDataAsString:v3];
    v4 = [v5 _web_userVisibleString];
  }

  return v4;
}

- (NSString)originalURLString
{
  historyMatchData = self->_historyMatchData;
  if (historyMatchData)
  {
    v4 = [(WBSURLCompletionMatchData *)historyMatchData originalURLString];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_bookmarks lastObject];
    v4 = [v5 address];
  }

  return v4;
}

- (id)pageTitleAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5 <= a3)
  {
    if (v5 == a3)
    {
      v7 = [(WBSURLCompletionMatchData *)self->_historyMatchData pageTitleAtIndex:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = [(NSMutableArray *)self->_bookmarks objectAtIndex:a3];
    v7 = [v6 title];
  }

  return v7;
}

- (id)userVisibleURLStringForPageTitleAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5 <= a3)
  {
    if (v5 == a3 && self->_historyMatchData)
    {
      v6 = [(SFURLCompletionMatchBookmarkListData *)self _historyItemUserVisibleURLString];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
  }

  return v6;
}

- (id)userVisibleURLStringAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (a3)
  {
    historyMatchData = self->_historyMatchData;
LABEL_3:
    v7 = [(WBSURLCompletionMatchData *)historyMatchData userVisibleURLStringAtIndex:a3];
    goto LABEL_8;
  }

  if (v5)
  {
    v7 = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
  }

  else
  {
    if (!self->_historyMatchData)
    {
      historyMatchData = 0;
      goto LABEL_3;
    }

    v7 = [(SFURLCompletionMatchBookmarkListData *)self _historyItemUserVisibleURLString];
  }

LABEL_8:

  return v7;
}

- (id)pageTitleForUserVisibleURLStringAtIndex:(unint64_t)a3
{
  if (a3 || ![(NSMutableArray *)self->_bookmarks count])
  {
    v4 = [(WBSURLCompletionMatchData *)self->_historyMatchData pageTitleAtIndex:0];
  }

  else
  {
    v5 = [(NSMutableArray *)self->_bookmarks firstObject];
    v4 = [v5 title];
  }

  return v4;
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

- (id)matchDataByMergingWithMatchData:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    bookmarks = self->_bookmarks;
    v8 = [v6 bookmark];
    [(NSMutableArray *)bookmarks addObject:v8];

    if (self->_containsBookmark)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v6 containsBookmark];
    }

    self->_containsBookmark = v9;
    if (self->_onlyContainsCloudTab)
    {
      v11 = [v6 onlyContainsCloudTab];
    }

    else
    {
      v11 = 0;
    }

    self->_onlyContainsCloudTab = v11;
    self->_containsReadingListItem = [v6 containsReadingListItem];
    v12 = self;
  }

  else
  {
    if (!self->_historyMatchData)
    {
      objc_storeStrong(&self->_historyMatchData, a3);
      self->_onlyContainsCloudTab = 0;
    }

    v10 = self;
  }

  return self;
}

- (void)enumeratePageTitlesUsingBlock:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_bookmarks objectAtIndex:v6];
      v8 = [v7 title];
      v4[2](v4, v8, v6, &v10);

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
      v4[2](v4, v9, v5, &v10);
    }
  }
}

- (void)enumerateUserVisibleURLsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_bookmarks count];
  v8 = 0;
  if (v5)
  {
    v6 = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
  }

  else
  {
    if (!self->_historyMatchData)
    {
      goto LABEL_6;
    }

    v6 = [(SFURLCompletionMatchBookmarkListData *)self _historyItemUserVisibleURLString];
  }

  v7 = v6;
  v4[2](v4, v6, 0, &v8);

LABEL_6:
  if ((v8 & 1) == 0)
  {
    [(WBSURLCompletionMatchData *)self->_historyMatchData enumerateUserVisibleURLsUsingBlock:v4];
  }
}

- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [(NSMutableArray *)self->_bookmarks count];
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSMutableArray *)self->_bookmarks objectAtIndexedSubscript:v6];
      v8 = [v7 title];
      v9 = [(SFURLCompletionMatchBookmarkListData *)self _bookmarkUserVisibleURLString];
      v4[2](v4, v8, v6, v9, 0, &v14);

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
    v12 = v4;
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

- (float)topSitesScoreForURLStringAtIndex:(unint64_t)a3 atTime:(double)a4
{
  historyMatchData = self->_historyMatchData;
  if (a3)
  {
    v5 = a3 - 1;
LABEL_3:
    [(WBSURLCompletionMatchData *)historyMatchData topSitesScoreForURLStringAtIndex:v5 atTime:a4];
    return result;
  }

  if (historyMatchData)
  {
    v5 = 0;
    goto LABEL_3;
  }

  return 0.0;
}

- (int64_t)visitCountScoreForURLStringAtIndex:(unint64_t)a3
{
  historyMatchData = self->_historyMatchData;
  if (a3)
  {
    v4 = a3 - 1;
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