@interface DBCarouselViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC9DashBoard24DBCarouselViewController)initWithCoder:(id)a3;
- (_TtC9DashBoard24DBCarouselViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation DBCarouselViewController

- (_TtC9DashBoard24DBCarouselViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard24DBCarouselViewController____lazy_storage____nowPlayingViewController) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (_TtC9DashBoard24DBCarouselViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_248273BD0();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(DBCarouselViewController *)v5 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(DBCarouselViewController *)v5 view];
    [v4 locationInView_];
    v18 = v17;
    v20 = v19;

    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    v22.x = v18;
    v22.y = v20;
    LOBYTE(v16) = CGRectContainsPoint(v23, v22);

    LOBYTE(v6) = v16;
  }

  else
  {
    __break(1u);
  }

  return v6;
}

@end