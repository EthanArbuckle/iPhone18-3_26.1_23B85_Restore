@interface MUTransitDeparturesSectionViewProvider
- (BOOL)needsRebuild;
- (MUTransitDeparturesSectionViewProvider)init;
- (MUTransitDeparturesSectionViewProvider)initWithDataSource:(id)source userInteractionDelegate:(id)delegate;
- (id)sectionViewsForCurrentState;
- (void)filterView:(id)view didChangeSystemSelection:(id)selection;
- (void)setNeedsRebuild:(BOOL)rebuild;
@end

@implementation MUTransitDeparturesSectionViewProvider

- (BOOL)needsRebuild
{
  v3 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNeedsRebuild:(BOOL)rebuild
{
  v5 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  *(&self->super.isa + v5) = rebuild;
}

- (MUTransitDeparturesSectionViewProvider)initWithDataSource:(id)source userInteractionDelegate:(id)delegate
{
  sourceCopy = source;
  swift_unknownObjectRetain();
  v5 = sub_1C5720138(sourceCopy);

  swift_unknownObjectRelease();
  return v5;
}

- (id)sectionViewsForCurrentState
{
  selfCopy = self;
  sub_1C5720700();

  sub_1C57221B8();
  v3 = sub_1C584F750();

  return v3;
}

- (void)filterView:(id)view didChangeSystemSelection:(id)selection
{
  v6 = *(&self->super.isa + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1C57103C4(selection);

  swift_unknownObjectRelease();
}

- (MUTransitDeparturesSectionViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end