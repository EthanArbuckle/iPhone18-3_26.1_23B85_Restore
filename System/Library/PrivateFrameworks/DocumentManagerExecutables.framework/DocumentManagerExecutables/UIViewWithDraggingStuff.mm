@interface UIViewWithDraggingStuff
- (void)beginColumnDrag;
- (void)singleTapHit;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIViewWithDraggingStuff

- (void)beginColumnDrag
{
  selfCopy = self;
  UIViewWithDraggingStuff.beginColumnDrag()();
}

- (void)singleTapHit
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  selfCopy = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*((*v2 & selfCopy->super.super.super.isa) + 0xA0))();
    (*(v5 + 32))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIViewWithDraggingStuff();
  v4 = v7.receiver;
  windowCopy = window;
  v6 = [(UIViewWithDraggingStuff *)&v7 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
  }

  else if ((*((*MEMORY[0x277D85000] & *v4) + 0x100))(v6))
  {
    UIViewWithDraggingStuff.finishedAnimation()();
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  specialized UIViewWithDraggingStuff.touchesEnded(_:with:)();
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  selfCopy = self;
  UIViewWithDraggingStuff.finishedAnimation()();
}

@end