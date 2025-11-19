@interface PresentationPublisher
- (_TtC10Blackbeard21PresentationPublisher)init;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation PresentationPublisher

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  if (a4 == -1)
  {
    if (a5)
    {
      swift_unknownObjectRetain();
      v9 = self;
      v7 = [a5 presentationStyle];
    }

    else
    {
      v10 = self;
      v7 = -1;
    }
  }

  else
  {
    v7 = a4;
    swift_unknownObjectRetain();
    v8 = self;
  }

  v11 = *&self->publishPresentationAction[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  if ((v7 & 0xFFFFFFFFFFFFFFF7) != 0)
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

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction);
  v4 = *&self->publishPresentationAction[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  v5 = self;
  v3(32769);
}

- (_TtC10Blackbeard21PresentationPublisher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end