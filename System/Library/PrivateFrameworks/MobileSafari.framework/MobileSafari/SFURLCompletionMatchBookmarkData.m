@interface SFURLCompletionMatchBookmarkData
- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)a3;
- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)a3 shouldPreload:(BOOL)a4 isSynthesizedTopHit:(BOOL)a5;
- (double)lastVisitedTimeInterval;
- (float)_topSitesScoreAtTime:(double)a3;
- (id)_userVisibleURLString;
- (id)matchDataByMergingWithMatchData:(id)a3;
- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)a3;
- (void)enumeratePageTitlesUsingBlock:(id)a3;
- (void)enumerateUserVisibleURLsUsingBlock:(id)a3;
@end

@implementation SFURLCompletionMatchBookmarkData

- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFURLCompletionMatchBookmarkData;
  v6 = [(SFURLCompletionMatchBookmarkData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookmark, a3);
    v7->_shouldPreload = [(WebBookmark *)v7->_bookmark isBuiltinBookmark]^ 1;
    v7->_onlyContainsCloudTab = 0;
    v8 = v7;
  }

  return v7;
}

- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)a3 shouldPreload:(BOOL)a4 isSynthesizedTopHit:(BOOL)a5
{
  v7 = [(SFURLCompletionMatchBookmarkData *)self initWithBookmark:a3];
  v8 = v7;
  if (v7)
  {
    v7->_shouldPreload |= a4;
    v7->_isSynthesized = a5;
    v9 = v7;
  }

  return v8;
}

- (id)_userVisibleURLString
{
  v2 = [(WebBookmark *)self->_bookmark address];
  if ([v2 _web_isUserVisibleURL])
  {
    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF8] safari_urlWithDataAsString:v2];
    v3 = [v4 _web_userVisibleString];
  }

  return v3;
}

- (double)lastVisitedTimeInterval
{
  if (![(WebBookmark *)self->_bookmark isReadingListItem])
  {
    return 0.0;
  }

  v3 = [(WebBookmark *)self->_bookmark dateLastViewed];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (id)matchDataByMergingWithMatchData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [SFURLCompletionMatchBookmarkListData alloc];
  if (isKindOfClass)
  {
    v7 = [(SFURLCompletionMatchBookmarkListData *)v6 initWithBookmarkData:self andBookmarkData:v4];
  }

  else
  {
    v7 = [(SFURLCompletionMatchBookmarkListData *)v6 initWithBookmarkData:self historyMatchData:v4];
  }

  v8 = v7;

  return v8;
}

- (void)enumeratePageTitlesUsingBlock:(id)a3
{
  v7 = 0;
  bookmark = self->_bookmark;
  v5 = a3;
  v6 = [(WebBookmark *)bookmark title];
  (*(a3 + 2))(v5, v6, 0, &v7);
}

- (void)enumerateUserVisibleURLsUsingBlock:(id)a3
{
  v7 = 0;
  v5 = a3;
  v6 = [(SFURLCompletionMatchBookmarkData *)self _userVisibleURLString];
  (*(a3 + 2))(v5, v6, 0, &v7);
}

- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)a3
{
  v9 = 0;
  bookmark = self->_bookmark;
  v6 = a3;
  v7 = [(WebBookmark *)bookmark title];
  v8 = [(SFURLCompletionMatchBookmarkData *)self _userVisibleURLString];
  (*(a3 + 2))(v6, v7, 0, v8, 0, &v9);
}

- (float)_topSitesScoreAtTime:(double)a3
{
  v4 = 0.0;
  if ([(WebBookmark *)self->_bookmark isReadingListItem])
  {
    v5 = [(WebBookmark *)self->_bookmark dateLastViewed];
    v6 = v5;
    if (v5)
    {
      [v5 timeIntervalSinceReferenceDate];
    }

    else
    {
      v7 = [(WebBookmark *)self->_bookmark dateAdded];
      if (!v7)
      {
LABEL_7:

        return v4;
      }

      v8 = v7;
      [v7 timeIntervalSinceReferenceDate];
    }

    v9 = [(WebBookmark *)self->_bookmark address];
    WBSTopSitesScore();
    v4 = v10;

    goto LABEL_7;
  }

  return v4;
}

@end