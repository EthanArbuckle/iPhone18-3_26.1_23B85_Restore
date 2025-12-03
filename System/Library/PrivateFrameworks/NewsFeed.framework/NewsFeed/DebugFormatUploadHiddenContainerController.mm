@interface DebugFormatUploadHiddenContainerController
- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithCoder:(id)coder;
- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatUploadHiddenContainerController

- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithCoder:(id)coder
{
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6EFB4C4();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(DebugFormatUploadHiddenContainerController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC8NewsFeed42DebugFormatUploadHiddenContainerController_rootViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end