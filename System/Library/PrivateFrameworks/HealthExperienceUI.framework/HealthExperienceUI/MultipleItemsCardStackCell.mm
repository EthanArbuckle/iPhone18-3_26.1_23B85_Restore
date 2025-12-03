@interface MultipleItemsCardStackCell
- (_TtC18HealthExperienceUI26MultipleItemsCardStackCell)initWithFrame:(CGRect)frame;
@end

@implementation MultipleItemsCardStackCell

- (_TtC18HealthExperienceUI26MultipleItemsCardStackCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI26MultipleItemsCardStackCell_cardStackView) = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for MultipleItemsCardStackCell();
  height = [(MultipleItemsCardStackCell *)&v12 initWithFrame:x, y, width, height];
  sub_1BA1A7B94();

  return height;
}

@end