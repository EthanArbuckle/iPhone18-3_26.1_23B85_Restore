@interface TagFeedAsyncViewController
- (_TtC7NewsUI226TagFeedAsyncViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI226TagFeedAsyncViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TagFeedAsyncViewController

- (_TtC7NewsUI226TagFeedAsyncViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController) = 0;
  v4 = OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_219BE6C04();
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2194065FC();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2194067B8();
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  contentScrollViewForEdge_ = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController);
  if (contentScrollViewForEdge_)
  {
    contentScrollViewForEdge_ = [contentScrollViewForEdge_ contentScrollViewForEdge_];
    v3 = vars8;
  }

  return contentScrollViewForEdge_;
}

- (_TtC7NewsUI226TagFeedAsyncViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end