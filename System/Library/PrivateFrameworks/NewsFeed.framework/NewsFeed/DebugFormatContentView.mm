@interface DebugFormatContentView
- (_TtC8NewsFeed22DebugFormatContentView)initWithCoder:(id)coder;
- (_TtC8NewsFeed22DebugFormatContentView)initWithFrame:(CGRect)frame;
- (double)contentScaleFactor;
- (void)setContentScaleFactor:(double)factor;
@end

@implementation DebugFormatContentView

- (double)contentScaleFactor
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(DebugFormatContentView *)&v3 contentScaleFactor];
  return result;
}

- (void)setContentScaleFactor:(double)factor
{
  selfCopy = self;
  sub_1D6CA81F8(factor);
}

- (_TtC8NewsFeed22DebugFormatContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (self + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView;
  *(&self->super.super.super.isa + v10) = [objc_allocWithZone(type metadata accessor for DebugFormatBezelView()) initWithFrame_];
  v11 = (self + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame);
  *v11 = 0u;
  v11[1] = 0u;
  v14.receiver = self;
  v14.super_class = ObjectType;
  height = [(DebugFormatContentView *)&v14 initWithFrame:x, y, width, height];
  [(DebugFormatContentView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView)];
  return height;
}

- (_TtC8NewsFeed22DebugFormatContentView)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for DebugFormatBezelView()) initWithFrame_];
  v6 = (self + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame);
  *v6 = 0u;
  v6[1] = 0u;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end