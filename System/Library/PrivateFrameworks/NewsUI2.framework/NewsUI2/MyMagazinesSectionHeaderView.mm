@interface MyMagazinesSectionHeaderView
- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithCoder:(id)coder;
- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation MyMagazinesSectionHeaderView

- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(MyMagazinesSectionHeaderView *)&v12 initWithFrame:x, y, width, height];
  [(MyMagazinesSectionHeaderView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label)];
  return height;
}

- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end