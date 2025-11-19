@interface LiveActivitySceneDelegate
- (_TtC7NotesUI25LiveActivitySceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation LiveActivitySceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1D4319E88(v8);
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