@interface DefaultHeaderCollectionReusableView
- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithFrame:(CGRect)frame;
- (void)detailButtonTapped:(id)tapped;
@end

@implementation DefaultHeaderCollectionReusableView

- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton) = 0;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  v9 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(DefaultHeaderCollectionReusableView *)&v11 initWithFrame:x, y, width, height];
}

- (void)detailButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA344EE4();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton) = 0;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DefaultHeaderCollectionReusableView();
  coderCopy = coder;
  v6 = [(DefaultHeaderCollectionReusableView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end