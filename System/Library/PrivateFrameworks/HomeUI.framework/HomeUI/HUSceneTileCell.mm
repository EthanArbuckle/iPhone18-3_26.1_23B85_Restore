@interface HUSceneTileCell
- (BOOL)isRearranging;
- (BOOL)reorderable;
- (HUSceneTileCell)initWithCoder:(id)coder;
- (HUSceneTileCell)initWithFrame:(CGRect)frame;
- (id)executeActionSetFuture;
- (void)setExecuteActionSetFuture:(id)future;
- (void)setRearranging:(BOOL)rearranging;
- (void)setReorderable:(BOOL)reorderable;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUSceneTileCell

- (id)executeActionSetFuture
{
  v3 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setExecuteActionSetFuture:(id)future
{
  v5 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = future;
  futureCopy = future;
  selfCopy = self;

  sub_20CFFB560();
}

- (BOOL)isRearranging
{
  v3 = OBJC_IVAR___HUTileCell_isRearranging;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setRearranging:(BOOL)rearranging
{
  selfCopy = self;
  sub_20CFFBFA4(rearranging);
}

- (BOOL)reorderable
{
  v3 = OBJC_IVAR___HUTileCell_reorderable;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setReorderable:(BOOL)reorderable
{
  selfCopy = self;
  sub_20CFFC22C(reorderable);
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  selfCopy = self;
  [(HUSceneTileCell *)selfCopy setNeedsUpdateConfiguration];
  sub_20CFFC4AC();
}

- (HUSceneTileCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell__executeActionSetFuture) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_executeActionSetFuture) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SceneTileCell();
  return [(HUTileCell *)&v8 initWithFrame:x, y, width, height];
}

- (HUSceneTileCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell__executeActionSetFuture) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_executeActionSetFuture) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SceneTileCell();
  coderCopy = coder;
  v5 = [(HUTileCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end