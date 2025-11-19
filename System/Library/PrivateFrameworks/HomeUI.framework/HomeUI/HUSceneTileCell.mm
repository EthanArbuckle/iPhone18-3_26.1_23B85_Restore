@interface HUSceneTileCell
- (BOOL)isRearranging;
- (BOOL)reorderable;
- (HUSceneTileCell)initWithCoder:(id)a3;
- (HUSceneTileCell)initWithFrame:(CGRect)a3;
- (id)executeActionSetFuture;
- (void)setExecuteActionSetFuture:(id)a3;
- (void)setRearranging:(BOOL)a3;
- (void)setReorderable:(BOOL)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUSceneTileCell

- (id)executeActionSetFuture
{
  v3 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setExecuteActionSetFuture:(id)a3
{
  v5 = OBJC_IVAR___HUSceneTileCell_executeActionSetFuture;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_20CFFB560();
}

- (BOOL)isRearranging
{
  v3 = OBJC_IVAR___HUTileCell_isRearranging;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setRearranging:(BOOL)a3
{
  v4 = self;
  sub_20CFFBFA4(a3);
}

- (BOOL)reorderable
{
  v3 = OBJC_IVAR___HUTileCell_reorderable;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setReorderable:(BOOL)a3
{
  v4 = self;
  sub_20CFFC22C(a3);
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = self;
  [(HUSceneTileCell *)v3 setNeedsUpdateConfiguration];
  sub_20CFFC4AC();
}

- (HUSceneTileCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell__executeActionSetFuture) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_executeActionSetFuture) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SceneTileCell();
  return [(HUTileCell *)&v8 initWithFrame:x, y, width, height];
}

- (HUSceneTileCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_dimsWhenReorderingAndNotReorderable) = 1;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell__executeActionSetFuture) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___HUSceneTileCell_executeActionSetFuture) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SceneTileCell();
  v4 = a3;
  v5 = [(HUTileCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end