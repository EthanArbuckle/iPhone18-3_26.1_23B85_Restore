@interface CategoryViewController
- (NSString)sidebarSelectionIdentifier;
- (_TtC18HealthExperienceUI22CategoryViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI22CategoryViewController)initWithCollectionViewLayout:(id)a3;
- (void)observedTraitsDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
- (void)restoreUserActivityState:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CategoryViewController

- (NSString)sidebarSelectionIdentifier
{
  v7 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v8 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v9 = *(&self->super.super.super._overrideTransitioningDelegate + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v10 = *(&self->super.super.super._tabBarItem + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v2 = self;
  v3 = HKTypeGroup.displayCategory.getter();
  v4 = [v3 categoryID];

  HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter(v4);
  v5 = sub_1BA4A6758();

  return v5;
}

- (_TtC18HealthExperienceUI22CategoryViewController)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView);
  type metadata accessor for CategoryGradientView();
  *v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[1] = &protocol witness table for CategoryGradientView;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA2F7534();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1BA2F773C(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BA2F7968();
}

- (void)observedTraitsDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1B9F46930(a3, v7);
  swift_unknownObjectRelease();
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA2F8384(v4);
}

- (_TtC18HealthExperienceUI22CategoryViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end