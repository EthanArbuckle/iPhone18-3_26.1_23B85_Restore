@interface UIViewWithDraggingStuff
- (void)beginColumnDrag;
- (void)singleTapHit;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UIViewWithDraggingStuff

- (void)beginColumnDrag
{
  v2 = self;
  UIViewWithDraggingStuff.beginColumnDrag()();
}

- (void)singleTapHit
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*((*v2 & v7->super.super.super.isa) + 0xA0))();
    (*(v5 + 32))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIViewWithDraggingStuff();
  v4 = v7.receiver;
  v5 = a3;
  v6 = [(UIViewWithDraggingStuff *)&v7 willMoveToWindow:v5];
  if (v5)
  {
  }

  else if ((*((*MEMORY[0x277D85000] & *v4) + 0x100))(v6))
  {
    UIViewWithDraggingStuff.finishedAnimation()();
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  specialized UIViewWithDraggingStuff.touchesEnded(_:with:)();
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v4 = self;
  UIViewWithDraggingStuff.finishedAnimation()();
}

@end