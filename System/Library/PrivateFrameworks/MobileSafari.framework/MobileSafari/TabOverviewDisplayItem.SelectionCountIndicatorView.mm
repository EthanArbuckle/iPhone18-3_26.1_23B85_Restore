@interface TabOverviewDisplayItem.SelectionCountIndicatorView
- (_TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView)initWithFrame:(CGRect)frame;
@end

@implementation TabOverviewDisplayItem.SelectionCountIndicatorView

- (_TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_selectionCount) = 0;
  v8 = OBJC_IVAR____TtCC12MobileSafari22TabOverviewDisplayItem27SelectionCountIndicatorView_label;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11.receiver = self;
  v11.super_class = _s27SelectionCountIndicatorViewCMa();
  height = [(TabOverviewDisplayItem.SelectionCountIndicatorView *)&v11 initWithFrame:x, y, width, height];
  sub_18BA6688C();

  return height;
}

@end