@interface TagFeedViewerTitleView
- (_TtC7NewsUI222TagFeedViewerTitleView)initWithCoder:(id)a3;
- (_TtC7NewsUI222TagFeedViewerTitleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TagFeedViewerTitleView

- (_TtC7NewsUI222TagFeedViewerTitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TagFeedViewerTitleView *)&v12 initWithFrame:x, y, width, height];
  [(TagFeedViewerTitleView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC7NewsUI222TagFeedViewerTitleView_titleView)];
  return v10;
}

- (_TtC7NewsUI222TagFeedViewerTitleView)initWithCoder:(id)a3
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