@interface DebugFormatUploadHiddenContainerController
- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithCoder:(id)a3;
- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatUploadHiddenContainerController

- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithCoder:(id)a3
{
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6EFB4C4();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(DebugFormatUploadHiddenContainerController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC8NewsFeed42DebugFormatUploadHiddenContainerController_rootViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
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

- (_TtC8NewsFeed42DebugFormatUploadHiddenContainerController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end