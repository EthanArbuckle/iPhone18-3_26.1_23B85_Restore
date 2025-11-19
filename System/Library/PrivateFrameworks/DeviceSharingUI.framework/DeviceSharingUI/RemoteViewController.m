@interface RemoteViewController
- (_TtC15DeviceSharingUI20RemoteViewController)initWithCoder:(id)a3;
- (_TtC15DeviceSharingUI20RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)clientIsReady;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation RemoteViewController

- (_TtC15DeviceSharingUI20RemoteViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15DeviceSharingUI20RemoteViewController_hostingController) = 0;
  result = sub_248AA3C8C();
  __break(1u);
  return result;
}

- (void)clientIsReady
{
  v2 = self;
  sub_248A9AB34();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v7 = self;
  [a3 preferredContentSize];
  [(RemoteViewController *)v7 setPreferredContentSize:?];
  v5 = [(RemoteViewController *)v7 _hostedWindowScene];
  if (v5)
  {
    v6 = v5;
    [a3 preferredContentSize];
    [v6 _setPreferredContentSize_];
  }

  swift_unknownObjectRelease();
}

- (_TtC15DeviceSharingUI20RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end