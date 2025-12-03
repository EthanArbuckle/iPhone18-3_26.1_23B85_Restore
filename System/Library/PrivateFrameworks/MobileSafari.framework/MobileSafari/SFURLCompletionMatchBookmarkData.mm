@interface SFURLCompletionMatchBookmarkData
- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)bookmark;
- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)bookmark shouldPreload:(BOOL)preload isSynthesizedTopHit:(BOOL)hit;
- (double)lastVisitedTimeInterval;
- (float)_topSitesScoreAtTime:(double)time;
- (id)_userVisibleURLString;
- (id)matchDataByMergingWithMatchData:(id)data;
- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)block;
- (void)enumeratePageTitlesUsingBlock:(id)block;
- (void)enumerateUserVisibleURLsUsingBlock:(id)block;
@end

@implementation SFURLCompletionMatchBookmarkData

- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v10.receiver = self;
  v10.super_class = SFURLCompletionMatchBookmarkData;
  v6 = [(SFURLCompletionMatchBookmarkData *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookmark, bookmark);
    v7->_shouldPreload = [(WebBookmark *)v7->_bookmark isBuiltinBookmark]^ 1;
    v7->_onlyContainsCloudTab = 0;
    v8 = v7;
  }

  return v7;
}

- (SFURLCompletionMatchBookmarkData)initWithBookmark:(id)bookmark shouldPreload:(BOOL)preload isSynthesizedTopHit:(BOOL)hit
{
  v7 = [(SFURLCompletionMatchBookmarkData *)self initWithBookmark:bookmark];
  v8 = v7;
  if (v7)
  {
    v7->_shouldPreload |= preload;
    v7->_isSynthesized = hit;
    v9 = v7;
  }

  return v8;
}

- (id)_userVisibleURLString
{
  address = [(WebBookmark *)self->_bookmark address];
  if ([address _web_isUserVisibleURL])
  {
    _web_userVisibleString = address;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF8] safari_urlWithDataAsString:address];
    _web_userVisibleString = [v4 _web_userVisibleString];
  }

  return _web_userVisibleString;
}

- (double)lastVisitedTimeInterval
{
  if (![(WebBookmark *)self->_bookmark isReadingListItem])
  {
    return 0.0;
  }

  dateLastViewed = [(WebBookmark *)self->_bookmark dateLastViewed];
  [dateLastViewed timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (id)matchDataByMergingWithMatchData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [SFURLCompletionMatchBookmarkListData alloc];
  if (isKindOfClass)
  {
    v7 = [(SFURLCompletionMatchBookmarkListData *)v6 initWithBookmarkData:self andBookmarkData:dataCopy];
  }

  else
  {
    v7 = [(SFURLCompletionMatchBookmarkListData *)v6 initWithBookmarkData:self historyMatchData:dataCopy];
  }

  v8 = v7;

  return v8;
}

- (void)enumeratePageTitlesUsingBlock:(id)block
{
  v7 = 0;
  bookmark = self->_bookmark;
  blockCopy = block;
  title = [(WebBookmark *)bookmark title];
  (*(block + 2))(blockCopy, title, 0, &v7);
}

- (void)enumerateUserVisibleURLsUsingBlock:(id)block
{
  v7 = 0;
  blockCopy = block;
  _userVisibleURLString = [(SFURLCompletionMatchBookmarkData *)self _userVisibleURLString];
  (*(block + 2))(blockCopy, _userVisibleURLString, 0, &v7);
}

- (void)enumeratePageTitlesAndUserVisibleURLsUsingBlock:(id)block
{
  v9 = 0;
  bookmark = self->_bookmark;
  blockCopy = block;
  title = [(WebBookmark *)bookmark title];
  _userVisibleURLString = [(SFURLCompletionMatchBookmarkData *)self _userVisibleURLString];
  (*(block + 2))(blockCopy, title, 0, _userVisibleURLString, 0, &v9);
}

- (float)_topSitesScoreAtTime:(double)time
{
  v4 = 0.0;
  if ([(WebBookmark *)self->_bookmark isReadingListItem])
  {
    dateLastViewed = [(WebBookmark *)self->_bookmark dateLastViewed];
    v6 = dateLastViewed;
    if (dateLastViewed)
    {
      [dateLastViewed timeIntervalSinceReferenceDate];
    }

    else
    {
      dateAdded = [(WebBookmark *)self->_bookmark dateAdded];
      if (!dateAdded)
      {
LABEL_7:

        return v4;
      }

      v8 = dateAdded;
      [dateAdded timeIntervalSinceReferenceDate];
    }

    address = [(WebBookmark *)self->_bookmark address];
    WBSTopSitesScore();
    v4 = v10;

    goto LABEL_7;
  }

  return v4;
}

@end