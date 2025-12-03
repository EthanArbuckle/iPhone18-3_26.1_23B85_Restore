@interface FMFindingSymbolBasedPartPickerView
- (_TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView)initWithCoder:(id)coder;
- (_TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)toggle;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FMFindingSymbolBasedPartPickerView

- (_TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_stackView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = self + OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_value;
  *(v5 + 4) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  result = sub_24A62F444();
  __break(1u);
  return result;
}

- (void)toggle
{
  selfCopy = self;
  sub_24A5B3990();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMFindingSymbolBasedPartPickerView();
  v2 = v5.receiver;
  [(FMFindingSymbolBasedPartPickerView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView;
  layer = [*&v2[OBJC_IVAR____TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView_platterEffectView] layer];
  [*&v2[v3] bounds];
  [layer setCornerRadius_];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMFindingSymbolBasedPartPickerView();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMFindingSymbolBasedPartPickerView *)&v6 traitCollectionDidChange:changeCopy];
  sub_24A5B47A8();
}

- (_TtC11FMFindingUI34FMFindingSymbolBasedPartPickerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end