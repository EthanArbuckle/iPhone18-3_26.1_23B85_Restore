@interface MUTransitDeparturesSectionViewProvider
- (BOOL)needsRebuild;
- (MUTransitDeparturesSectionViewProvider)init;
- (MUTransitDeparturesSectionViewProvider)initWithDataSource:(id)a3 userInteractionDelegate:(id)a4;
- (id)sectionViewsForCurrentState;
- (void)filterView:(id)a3 didChangeSystemSelection:(id)a4;
- (void)setNeedsRebuild:(BOOL)a3;
@end

@implementation MUTransitDeparturesSectionViewProvider

- (BOOL)needsRebuild
{
  v3 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setNeedsRebuild:(BOOL)a3
{
  v5 = OBJC_IVAR___MUTransitDeparturesSectionViewProvider_needsRebuild;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (MUTransitDeparturesSectionViewProvider)initWithDataSource:(id)a3 userInteractionDelegate:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = sub_1C5720138(v4);

  swift_unknownObjectRelease();
  return v5;
}

- (id)sectionViewsForCurrentState
{
  v2 = self;
  sub_1C5720700();

  sub_1C57221B8();
  v3 = sub_1C584F750();

  return v3;
}

- (void)filterView:(id)a3 didChangeSystemSelection:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR___MUTransitDeparturesSectionViewProvider_dataSource);
  swift_unknownObjectRetain_n();
  v7 = self;
  sub_1C57103C4(a4);

  swift_unknownObjectRelease();
}

- (MUTransitDeparturesSectionViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end