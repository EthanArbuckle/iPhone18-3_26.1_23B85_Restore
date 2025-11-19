@interface SessionHapticController
- (_TtC13MediaControls23SessionHapticController)init;
@end

@implementation SessionHapticController

- (_TtC13MediaControls23SessionHapticController)init
{
  v3 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession;
  v4 = sub_1A22E5C88();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = (&self->super.super.isa + OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SessionHapticController();
  return [(MRUHapticController *)&v7 init];
}

@end