@interface DebugFormatLayoutTreeViewController
- (_TtC8NewsFeed35DebugFormatLayoutTreeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapOnOverlay:(id)overlay;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatLayoutTreeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6B5D408();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(DebugFormatLayoutTreeViewController *)&v15 viewWillLayoutSubviews];
  v3 = sub_1D6B5BC18();
  view = [v3 view];

  if (view)
  {
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [view setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)didTapOnOverlay:(id)overlay
{
  overlayCopy = overlay;
  selfCopy = self;
  sub_1D6B5DC3C(overlayCopy);
}

- (_TtC8NewsFeed35DebugFormatLayoutTreeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end