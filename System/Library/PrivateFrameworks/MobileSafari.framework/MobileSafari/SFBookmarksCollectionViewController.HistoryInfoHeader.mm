@interface SFBookmarksCollectionViewController.HistoryInfoHeader
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader)initWithCoder:(id)coder;
- (_TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation SFBookmarksCollectionViewController.HistoryInfoHeader

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  selfCopy = self;
  sub_18BBE0700();

  (*(v5 + 8))(v7, v4);
}

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_icon) = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_title);
  v9 = _s17HistoryInfoHeaderCMa();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(SFBookmarksCollectionViewController.HistoryInfoHeader *)&v11 initWithFrame:x, y, width, height];
}

- (_TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_icon) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController17HistoryInfoHeader_title);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = _s17HistoryInfoHeaderCMa();
  coderCopy = coder;
  v6 = [(SFBookmarksCollectionViewController.HistoryInfoHeader *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end