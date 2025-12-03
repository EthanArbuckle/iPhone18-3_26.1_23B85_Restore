@interface LiveActivitySceneDelegate
- (_TtC7NotesUI25LiveActivitySceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)setWindow:(id)window;
@end

@implementation LiveActivitySceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1D4319E88(sceneCopy);
}

- (_TtC7NotesUI25LiveActivitySceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_systemApertureElementProvider) = 0;
  sub_1D4418134();
  v4.receiver = self;
  v4.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return [(LiveActivitySceneDelegate *)&v4 init];
}

@end