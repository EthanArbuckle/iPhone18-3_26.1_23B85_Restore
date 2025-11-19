@interface ImageCell
- (_TtC16MagnifierSupport9ImageCell)initWithCoder:(id)a3;
@end

@implementation ImageCell

- (_TtC16MagnifierSupport9ImageCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter) = 12;
  v3 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  result = sub_257ED0410();
  __break(1u);
  return result;
}

@end