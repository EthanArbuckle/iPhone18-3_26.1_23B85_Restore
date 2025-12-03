@interface DOCContentDimmingOverlay
- (BOOL)active;
- (BOOL)autohideWhenPossibleDropTarget;
- (BOOL)isHidden;
- (DOCContentDimmingOverlay)initWithFrame:(CGRect)frame;
- (id)initForCovering:(id)covering;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)setActive:(BOOL)active;
- (void)setAutohideWhenPossibleDropTarget:(BOOL)target;
- (void)setHidden:(BOOL)hidden;
@end

@implementation DOCContentDimmingOverlay

- (BOOL)autohideWhenPossibleDropTarget
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAutohideWhenPossibleDropTarget:(BOOL)target
{
  v5 = OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = target;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x110);
  selfCopy = self;
  v9 = v7();
  (*((*v6 & selfCopy->super.super.super.isa) + 0x118))(v9);
}

- (BOOL)active
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_active;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setActive:(BOOL)active
{
  v5 = OBJC_IVAR___DOCContentDimmingOverlay_active;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = active;
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x118);
  selfCopy = self;
  v6();
}

- (id)initForCovering:(id)covering
{
  swift_unknownObjectRetain();
  v4 = specialized DOCContentDimmingOverlay.init(forCovering:)(covering);
  swift_unknownObjectRelease();
  return v4;
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCContentDimmingOverlay();
  return [(DOCContentDimmingOverlay *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCContentDimmingOverlay();
  [(DOCContentDimmingOverlay *)&v4 setHidden:hiddenCopy];
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  swift_unknownObjectRetain();
  selfCopy = self;
  localDragSession = [enter localDragSession];
  if (localDragSession)
  {
    swift_unknownObjectRelease();
  }

  *(&selfCopy->super.super.super.isa + OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide) = localDragSession != 0;
  (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0x118))();
  swift_unknownObjectRelease();
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  *(&self->super.super.super.isa + OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide) = 0;
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x118);
  selfCopy = self;
  v4();
}

- (DOCContentDimmingOverlay)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end