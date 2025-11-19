@interface TagFeedAsyncViewController
- (_TtC7NewsUI226TagFeedAsyncViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI226TagFeedAsyncViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TagFeedAsyncViewController

- (_TtC7NewsUI226TagFeedAsyncViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_2194065FC();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2194067B8();
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226TagFeedAsyncViewController_promiseViewController);
  if (v4)
  {
    v4 = [v4 contentScrollViewForEdge_];
    v3 = vars8;
  }

  return v4;
}

- (_TtC7NewsUI226TagFeedAsyncViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end