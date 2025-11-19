@interface HostViewCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (_TtC18HealthExperienceUI12HostViewCell)initWithCoder:(id)a3;
- (void)didLongPress:(id)a3;
- (void)prepareForReuse;
@end

@implementation HostViewCell

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v9 = self;
  sub_1B9F78228(&OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView, type metadata accessor for HostViewCell, width, height, a4, a5);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1B9FDD300();
}

- (void)didLongPress:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1B9FDD47C();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI12HostViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange) = 1;
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  v6 = type metadata accessor for SectionContext(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end