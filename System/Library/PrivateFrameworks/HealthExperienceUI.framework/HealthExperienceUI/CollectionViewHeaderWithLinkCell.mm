@interface CollectionViewHeaderWithLinkCell
- (_TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell)initWithFrame:(CGRect)frame;
- (void)linkWasTapped;
@end

@implementation CollectionViewHeaderWithLinkCell

- (void)linkWasTapped
{
  v2 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink);
  if (v2)
  {
    selfCopy = self;
    sub_1B9F0F1B8(v2);
    viewController = [(UIView *)selfCopy viewController];
    v2();

    sub_1B9F0E310(v2);
  }
}

- (_TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink);
  v9 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(CollectionViewHeaderCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewHeaderWithLinkCell_didTapLink);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollectionViewHeaderWithLinkCell();
  coderCopy = coder;
  v6 = [(CollectionViewHeaderCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end