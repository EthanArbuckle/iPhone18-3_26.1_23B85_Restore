@interface WMBookmarkMapper
- (WMBookmarkMapper)initWithWDBookmark:(id)bookmark parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation WMBookmarkMapper

- (WMBookmarkMapper)initWithWDBookmark:(id)bookmark parent:(id)parent
{
  bookmarkCopy = bookmark;
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = WMBookmarkMapper;
  v8 = [(CMMapper *)&v12 initWithParent:parentCopy];
  if (v8)
  {
    v8->mBookmarkType = [bookmarkCopy bookmarkType];
    name = [bookmarkCopy name];
    mName = v8->mName;
    v8->mName = name;
  }

  return v8;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  if (!self->mBookmarkType)
  {
    v7 = atCopy;
    v6 = [OIXMLElement elementWithType:0];
    [v7 addChild:v6];
    [(CMMapper *)self addAttribute:0x286EF0590 toNode:v6 value:self->mName];

    atCopy = v7;
  }
}

@end