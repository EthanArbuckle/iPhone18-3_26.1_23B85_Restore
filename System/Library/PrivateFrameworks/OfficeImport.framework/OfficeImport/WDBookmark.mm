@interface WDBookmark
- (WDBookmark)initWithParagraph:(id)paragraph name:(id)name type:(int)type;
- (id)description;
@end

@implementation WDBookmark

- (WDBookmark)initWithParagraph:(id)paragraph name:(id)name type:(int)type
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = WDBookmark;
  v10 = [(WDRun *)&v13 initWithParagraph:paragraph];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->mName, name);
    v11->mBookmarkType = type;
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