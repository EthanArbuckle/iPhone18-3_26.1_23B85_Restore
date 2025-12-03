@interface SearchHomeSectionTitleView
- (_TtC7NewsUI226SearchHomeSectionTitleView)initWithCoder:(id)coder;
@end

@implementation SearchHomeSectionTitleView

- (_TtC7NewsUI226SearchHomeSectionTitleView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_actionButton;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(sub_219BE5D04()) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end