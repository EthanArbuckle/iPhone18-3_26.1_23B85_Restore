@interface MiniPlayerAnimationController
- (_TtC11NotesEditor29MiniPlayerAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)a3;
@end

@implementation MiniPlayerAnimationController

- (id)interruptibleAnimatorForTransition:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_2153C0360(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (_TtC11NotesEditor29MiniPlayerAnimationController)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC11NotesEditor29MiniPlayerAnimationController_didPrepareAnimations) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MiniPlayerAnimationController();
  return [(_UISheetAnimationController *)&v3 init];
}

@end