@interface SFBookmarkTouchIconRequest
+ (id)requestWithBookmark:(id)a3 iconGenerationEnabled:(BOOL)a4;
+ (id)requestWithBookmark:(id)a3 iconGenerationEnabled:(BOOL)a4 backgroundColor:(id)a5;
- (BOOL)isEqual:(id)a3;
- (SFBookmarkTouchIconRequest)initWithBookmark:(id)a3 iconGenerationEnabled:(BOOL)a4 backgroundColor:(id)a5;
@end

@implementation SFBookmarkTouchIconRequest

+ (id)requestWithBookmark:(id)a3 iconGenerationEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[a1 alloc] initWithBookmark:v6 iconGenerationEnabled:v4];

  return v7;
}

+ (id)requestWithBookmark:(id)a3 iconGenerationEnabled:(BOOL)a4 backgroundColor:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithBookmark:v9 iconGenerationEnabled:v5 backgroundColor:v8];

  return v10;
}

- (SFBookmarkTouchIconRequest)initWithBookmark:(id)a3 iconGenerationEnabled:(BOOL)a4 backgroundColor:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = MEMORY[0x1E695DFF8];
  v12 = [v9 address];
  v13 = [v11 safari_URLWithUserTypedString:v12];

  v14 = [v9 title];
  +[_SFSiteIcon minimumAcceptableSizeForDownloadedIcon];
  v16 = v15;
  v18 = v17;
  +[_SFSiteIcon defaultSize];
  v24.receiver = self;
  v24.super_class = SFBookmarkTouchIconRequest;
  v21 = [(WBSTouchIconRequest *)&v24 initWithTitle:v14 url:v13 minimumIconSize:0 maximumIconSize:v6 | 2 monogramConfiguration:v16 options:v18, v19, v20];

  if (v21)
  {
    objc_storeStrong(&v21->_bookmark, a3);
    objc_storeStrong(&v21->_backgroundColor, a5);
    v22 = v21;
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFBookmarkTouchIconRequest;
  if ([(WBSTouchIconRequest *)&v9 isEqual:v4])
  {
    bookmark = self->_bookmark;
    v6 = [v4 bookmark];
    v7 = [(WebBookmark *)bookmark isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end