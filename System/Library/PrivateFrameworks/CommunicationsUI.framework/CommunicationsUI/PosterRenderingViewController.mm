@interface PosterRenderingViewController
- (_TtC16CommunicationsUI29PosterRenderingViewController)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI29PosterRenderingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
@end

@implementation PosterRenderingViewController

- (_TtC16CommunicationsUI29PosterRenderingViewController)initWithCoder:(id)coder
{
  *(&self->super.super + OBJC_IVAR____TtC16CommunicationsUI29PosterRenderingViewController_renderSize) = xmmword_1C2E87EC0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI29PosterRenderingViewController_viewController) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1C2D994E0();
}

- (_TtC16CommunicationsUI29PosterRenderingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end