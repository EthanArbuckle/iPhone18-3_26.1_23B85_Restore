@interface MUGridButtonCell
- (MUDynamicButtonCellModel)viewModel;
- (MUGridButtonCell)initWithCoder:(id)coder;
- (void)dynamicButtonCellModelDidChange:(id)change;
- (void)setViewModel:(id)model;
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

- (void)setViewModel:(id)model
{
  v5 = OBJC_IVAR___MUGridButtonCell_viewModel;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = model;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  if (model)
  {
    [(UIView *)selfCopy _mapsui_registerButtonCellModel:model];
  }

  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
  swift_unknownObjectRelease();
}

- (MUGridButtonCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___MUGridButtonCell_hostingView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MUGridButtonCell_menuButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MUGridButtonCell_viewModel) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)dynamicButtonCellModelDidChange:(id)change
{
  selfCopy = self;
  _s6MapsUI14GridButtonCellC07dynamicdE14ModelDidChangeyySo09MUDynamicdeG0_pF_0();
}

@end