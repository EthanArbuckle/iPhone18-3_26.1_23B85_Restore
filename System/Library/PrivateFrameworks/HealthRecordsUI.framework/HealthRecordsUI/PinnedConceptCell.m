@interface PinnedConceptCell
- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithFrame:(CGRect)a3;
@end

@implementation PinnedConceptCell

- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PinnedConceptCell();
  return [(ListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PinnedConceptCell();
  v4 = a3;
  v5 = [(ListCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end