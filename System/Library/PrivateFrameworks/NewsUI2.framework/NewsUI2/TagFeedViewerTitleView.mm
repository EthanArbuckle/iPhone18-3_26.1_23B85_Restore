@interface TagFeedViewerTitleView
- (_TtC7NewsUI222TagFeedViewerTitleView)initWithCoder:(id)coder;
- (_TtC7NewsUI222TagFeedViewerTitleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TagFeedViewerTitleView

- (_TtC7NewsUI222TagFeedViewerTitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(TagFeedViewerTitleView *)&v12 initWithFrame:x, y, width, height];
  [(TagFeedViewerTitleView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView)];
  return height;
}

- (_TtC7NewsUI222TagFeedViewerTitleView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(TagFeedViewerTitleView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView];
  [v2 bounds];
  [v3 setFrame_];
}

@end