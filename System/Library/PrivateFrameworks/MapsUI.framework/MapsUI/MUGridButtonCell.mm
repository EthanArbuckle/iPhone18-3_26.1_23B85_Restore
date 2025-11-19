@interface MUGridButtonCell
- (MUDynamicButtonCellModel)viewModel;
- (MUGridButtonCell)initWithCoder:(id)a3;
- (void)dynamicButtonCellModelDidChange:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MUGridButtonCell

- (MUDynamicButtonCellModel)viewModel
{
  v3 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setViewModel:(id)a3
{
  v5 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain_n();
  v7 = self;
  swift_unknownObjectRelease();
  if (a3)
  {
    [(UIView *)v7 _mapsui_registerButtonCellModel:a3];
  }

  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
  swift_unknownObjectRelease();
}

- (MUGridButtonCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___MUGridButtonCell_hostingView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MUGridButtonCell_menuButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MUGridButtonCell_viewModel) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)dynamicButtonCellModelDidChange:(id)a3
{
  v3 = self;
  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
}

@end