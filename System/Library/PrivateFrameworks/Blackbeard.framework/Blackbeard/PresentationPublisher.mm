@interface PresentationPublisher
- (_TtC10Blackbeard21PresentationPublisher)init;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation PresentationPublisher

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  if (style == -1)
  {
    if (coordinator)
    {
      swift_unknownObjectRetain();
      selfCopy = self;
      styleCopy = [coordinator presentationStyle];
    }

    else
    {
      selfCopy2 = self;
      styleCopy = -1;
    }
  }

  else
  {
    styleCopy = style;
    swift_unknownObjectRetain();
    selfCopy3 = self;
  }

  v11 = *&self->publishPresentationAction[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  if ((styleCopy & 0xFFFFFFFFFFFFFFF7) != 0)
  {
    v12 = 256;
  }

  else
  {
    v12 = 257;
  }

  (*(&self->super.isa + OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction))(v12);

  swift_unknownObjectRelease();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction);
  v4 = *&self->publishPresentationAction[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  selfCopy = self;
  v3(32769);
}

- (_TtC10Blackbeard21PresentationPublisher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end