@interface TagFeedViewerSportsEventBackgroundView
- (_TtC7NewsUI238TagFeedViewerSportsEventBackgroundView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation TagFeedViewerSportsEventBackgroundView

- (_TtC7NewsUI238TagFeedViewerSportsEventBackgroundView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7NewsUI238TagFeedViewerSportsEventBackgroundView_splitView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(sub_219BEB584()) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI238TagFeedViewerSportsEventBackgroundView_gradientView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(sub_219BE5DF4()) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(TagFeedViewerSportsEventBackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7NewsUI238TagFeedViewerSportsEventBackgroundView_splitView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtC7NewsUI238TagFeedViewerSportsEventBackgroundView_gradientView];
  [v2 bounds];
  [v4 setFrame_];
}

@end