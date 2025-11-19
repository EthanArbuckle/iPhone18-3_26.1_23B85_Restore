@interface DOCContentDimmingOverlay
- (BOOL)active;
- (BOOL)autohideWhenPossibleDropTarget;
- (BOOL)isHidden;
- (DOCContentDimmingOverlay)initWithFrame:(CGRect)a3;
- (id)initForCovering:(id)a3;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)setActive:(BOOL)a3;
- (void)setAutohideWhenPossibleDropTarget:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation DOCContentDimmingOverlay

- (BOOL)autohideWhenPossibleDropTarget
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAutohideWhenPossibleDropTarget:(BOOL)a3
{
  v5 = OBJC_IVAR___DOCContentDimmingOverlay_autohideWhenPossibleDropTarget;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x110);
  v8 = self;
  v9 = v7();
  (*((*v6 & v8->super.super.super.isa) + 0x118))(v9);
}

- (BOOL)active
{
  v3 = OBJC_IVAR___DOCContentDimmingOverlay_active;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setActive:(BOOL)a3
{
  v5 = OBJC_IVAR___DOCContentDimmingOverlay_active;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  v6 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x118);
  v7 = self;
  v6();
}

- (id)initForCovering:(id)a3
{
  swift_unknownObjectRetain();
  v4 = specialized DOCContentDimmingOverlay.init(forCovering:)(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCContentDimmingOverlay();
  return [(DOCContentDimmingOverlay *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCContentDimmingOverlay();
  [(DOCContentDimmingOverlay *)&v4 setHidden:v3];
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v6 = [a4 localDragSession];
  if (v6)
  {
    swift_unknownObjectRelease();
  }

  *(&v7->super.super.super.isa + OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide) = v6 != 0;
  (*((*MEMORY[0x277D85000] & v7->super.super.super.isa) + 0x118))();
  swift_unknownObjectRelease();
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR___DOCContentDimmingOverlay_hasDropTargetRequiringAutohide) = 0;
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x118);
  v5 = self;
  v4();
}

- (DOCContentDimmingOverlay)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end