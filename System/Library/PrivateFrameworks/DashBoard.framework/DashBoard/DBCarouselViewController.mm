@interface DBCarouselViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC9DashBoard24DBCarouselViewController)initWithCoder:(id)coder;
- (_TtC9DashBoard24DBCarouselViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation DBCarouselViewController

- (_TtC9DashBoard24DBCarouselViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (_TtC9DashBoard24DBCarouselViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_248273BD0();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  view = [(DBCarouselViewController *)selfCopy view];
  if (view)
  {
    v7 = view;
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    view2 = [(DBCarouselViewController *)selfCopy view];
    [beginCopy locationInView_];
    v18 = v17;
    v20 = v19;

    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    v22.x = v18;
    v22.y = v20;
    LOBYTE(view2) = CGRectContainsPoint(v23, v22);

    LOBYTE(view) = view2;
  }

  else
  {
    __break(1u);
  }

  return view;
}

@end