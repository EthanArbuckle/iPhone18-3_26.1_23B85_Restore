@interface SFBookmarkTouchIconRequest
+ (id)requestWithBookmark:(id)bookmark iconGenerationEnabled:(BOOL)enabled;
+ (id)requestWithBookmark:(id)bookmark iconGenerationEnabled:(BOOL)enabled backgroundColor:(id)color;
- (BOOL)isEqual:(id)equal;
- (SFBookmarkTouchIconRequest)initWithBookmark:(id)bookmark iconGenerationEnabled:(BOOL)enabled backgroundColor:(id)color;
@end

@implementation SFBookmarkTouchIconRequest

+ (id)requestWithBookmark:(id)bookmark iconGenerationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  bookmarkCopy = bookmark;
  v7 = [[self alloc] initWithBookmark:bookmarkCopy iconGenerationEnabled:enabledCopy];

  return v7;
}

+ (id)requestWithBookmark:(id)bookmark iconGenerationEnabled:(BOOL)enabled backgroundColor:(id)color
{
  enabledCopy = enabled;
  colorCopy = color;
  bookmarkCopy = bookmark;
  v10 = [[self alloc] initWithBookmark:bookmarkCopy iconGenerationEnabled:enabledCopy backgroundColor:colorCopy];

  return v10;
}

- (SFBookmarkTouchIconRequest)initWithBookmark:(id)bookmark iconGenerationEnabled:(BOOL)enabled backgroundColor:(id)color
{
  enabledCopy = enabled;
  bookmarkCopy = bookmark;
  colorCopy = color;
  v11 = MEMORY[0x1E695DFF8];
  address = [bookmarkCopy address];
  v13 = [v11 safari_URLWithUserTypedString:address];

  title = [bookmarkCopy title];
  +[_SFSiteIcon minimumAcceptableSizeForDownloadedIcon];
  v16 = v15;
  v18 = v17;
  +[_SFSiteIcon defaultSize];
  v24.receiver = self;
  v24.super_class = SFBookmarkTouchIconRequest;
  v21 = [(WBSTouchIconRequest *)&v24 initWithTitle:title url:v13 minimumIconSize:0 maximumIconSize:enabledCopy | 2 monogramConfiguration:v16 options:v18, v19, v20];

  if (v21)
  {
    objc_storeStrong(&v21->_bookmark, bookmark);
    objc_storeStrong(&v21->_backgroundColor, color);
    v22 = v21;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = SFBookmarkTouchIconRequest;
  if ([(WBSTouchIconRequest *)&v9 isEqual:equalCopy])
  {
    bookmark = self->_bookmark;
    bookmark = [equalCopy bookmark];
    v7 = [(WebBookmark *)bookmark isEqual:bookmark];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end