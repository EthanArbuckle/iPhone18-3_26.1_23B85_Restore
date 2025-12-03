@interface ICOutlineRenderer
- (BOOL)selectionVisibilityRequiresEditing;
- (ICOutlineController)outlineController;
- (ICOutlineRenderer)init;
- (int64_t)collapsibleSectionAffordanceExposures;
- (int64_t)collapsibleSectionAffordanceUsages;
- (void)accessibilityStatusDidChange;
- (void)resetCollapsibleSectionsAffordanceExposures;
- (void)resetCollapsibleSectionsAffordanceUsageData;
- (void)resetCollapsibleSectionsAffordanceUsages;
- (void)setSelectionVisibilityRequiresEditing:(BOOL)editing;
- (void)textViewLayoutDidChangeWithNotification:(id)notification;
@end

@implementation ICOutlineRenderer

- (void)textViewLayoutDidChangeWithNotification:(id)notification
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  selfCopy = self;
  sub_2151BFD10();

  (*(v5 + 8))(v7, v4);
}

- (ICOutlineController)outlineController
{
  selfCopy = self;
  v3 = OutlineRenderer.outlineController.getter();

  return v3;
}

- (BOOL)selectionVisibilityRequiresEditing
{
  v3 = OBJC_IVAR___ICOutlineRenderer_selectionVisibilityRequiresEditing;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSelectionVisibilityRequiresEditing:(BOOL)editing
{
  v5 = OBJC_IVAR___ICOutlineRenderer_selectionVisibilityRequiresEditing;
  swift_beginAccess();
  *(&self->super.isa + v5) = editing;
}

- (int64_t)collapsibleSectionAffordanceExposures
{
  v3 = OBJC_IVAR___ICOutlineRenderer_affordanceShownUUIDs;
  swift_beginAccess();
  return (*(&self->super.isa + v3))[2];
}

- (void)resetCollapsibleSectionsAffordanceExposures
{
  v3 = OBJC_IVAR___ICOutlineRenderer_affordanceShownUUIDs;
  swift_beginAccess();
  *(&self->super.isa + v3) = MEMORY[0x277D84FA0];
}

- (int64_t)collapsibleSectionAffordanceUsages
{
  selfCopy = self;
  v3 = OutlineRenderer.collapsibleSectionAffordanceUsages.getter();

  return v3;
}

- (void)resetCollapsibleSectionsAffordanceUsages
{
  selfCopy = self;
  v2 = OutlineRenderer.outlineController.getter();
  [v2 resetCollapsibleSectionAffordanceUsages];
}

- (void)resetCollapsibleSectionsAffordanceUsageData
{
  v3 = OBJC_IVAR___ICOutlineRenderer_affordanceShownUUIDs;
  swift_beginAccess();
  *(&self->super.isa + v3) = MEMORY[0x277D84FA0];
  selfCopy = self;

  v5 = OutlineRenderer.outlineController.getter();
  [v5 resetCollapsibleSectionAffordanceUsages];
}

- (void)accessibilityStatusDidChange
{
  selfCopy = self;
  sub_2151BFD10();
}

- (ICOutlineRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end