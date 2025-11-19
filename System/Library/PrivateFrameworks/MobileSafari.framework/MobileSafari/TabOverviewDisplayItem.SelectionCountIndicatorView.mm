@interface TabOverviewDisplayItem.SelectionCountIndicatorView
- (_TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView)initWithFrame:(CGRect)a3;
@end

@implementation TabOverviewDisplayItem.SelectionCountIndicatorView

- (_TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount) = 0;
  v8 = OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_label;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11.receiver = self;
  v11.super_class = _s27SelectionCountIndicatorViewCMa();
  v9 = [(TabOverviewDisplayItem.SelectionCountIndicatorView *)&v11 initWithFrame:x, y, width, height];
  sub_18BA6688C();

  return v9;
}

@end