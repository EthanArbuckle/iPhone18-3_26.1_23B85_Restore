@interface MyMagazinesSectionHeaderView
- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithCoder:(id)a3;
- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation MyMagazinesSectionHeaderView

- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MyMagazinesSectionHeaderView *)&v12 initWithFrame:x, y, width, height];
  [(MyMagazinesSectionHeaderView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label)];
  return v10;
}

- (_TtC7NewsUI228MyMagazinesSectionHeaderView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7NewsUI228MyMagazinesSectionHeaderView_label;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end