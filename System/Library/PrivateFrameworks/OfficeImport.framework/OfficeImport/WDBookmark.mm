@interface WDBookmark
- (WDBookmark)initWithParagraph:(id)a3 name:(id)a4 type:(int)a5;
- (id)description;
@end

@implementation WDBookmark

- (WDBookmark)initWithParagraph:(id)a3 name:(id)a4 type:(int)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = WDBookmark;
  v10 = [(WDRun *)&v13 initWithParagraph:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->mName, a4);
    v11->mBookmarkType = a5;
  }

  return v11;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDBookmark;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end