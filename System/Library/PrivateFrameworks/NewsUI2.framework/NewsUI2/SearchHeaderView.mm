@interface SearchHeaderView
- (_TtC7NewsUI216SearchHeaderView)initWithCoder:(id)coder;
@end

@implementation SearchHeaderView

- (_TtC7NewsUI216SearchHeaderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7NewsUI216SearchHeaderView_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC7NewsUI216SearchHeaderView_bottomMarginView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end