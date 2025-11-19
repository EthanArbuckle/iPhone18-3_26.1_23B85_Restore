@interface DefaultHeaderCollectionReusableView
- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithFrame:(CGRect)a3;
- (void)detailButtonTapped:(id)a3;
@end

@implementation DefaultHeaderCollectionReusableView

- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)detailButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA344EE4();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton) = 0;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DefaultHeaderCollectionReusableView();
  v5 = a3;
  v6 = [(DefaultHeaderCollectionReusableView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end