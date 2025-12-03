@interface PinnedConceptCell
- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithFrame:(CGRect)frame;
@end

@implementation PinnedConceptCell

- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PinnedConceptCell();
  return [(ListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15HealthRecordsUI17PinnedConceptCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PinnedConceptCell();
  coderCopy = coder;
  v5 = [(ListCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end