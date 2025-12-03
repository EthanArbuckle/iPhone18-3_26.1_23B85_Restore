@interface RemoteViewController
- (_TtC15DeviceSharingUI20RemoteViewController)initWithCoder:(id)coder;
- (_TtC15DeviceSharingUI20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)clientIsReady;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation RemoteViewController

- (_TtC15DeviceSharingUI20RemoteViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15DeviceSharingUI20RemoteViewController_hostingController) = 0;
  result = sub_248AA3C8C();
  __break(1u);
  return result;
}

- (void)clientIsReady
{
  selfCopy = self;
  sub_248A9AB34();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  [container preferredContentSize];
  [(RemoteViewController *)selfCopy setPreferredContentSize:?];
  _hostedWindowScene = [(RemoteViewController *)selfCopy _hostedWindowScene];
  if (_hostedWindowScene)
  {
    v6 = _hostedWindowScene;
    [container preferredContentSize];
    [v6 _setPreferredContentSize_];
  }

  swift_unknownObjectRelease();
}

- (_TtC15DeviceSharingUI20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end