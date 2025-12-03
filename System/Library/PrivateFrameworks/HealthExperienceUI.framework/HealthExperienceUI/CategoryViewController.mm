@interface CategoryViewController
- (NSString)sidebarSelectionIdentifier;
- (_TtC18HealthExperienceUI22CategoryViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI22CategoryViewController)initWithCollectionViewLayout:(id)layout;
- (void)observedTraitsDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)restoreUserActivityState:(id)state;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation CategoryViewController

- (NSString)sidebarSelectionIdentifier
{
  v7 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v8 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v9 = *(&self->super.super.super._overrideTransitioningDelegate + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v10 = *(&self->super.super.super._tabBarItem + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  selfCopy = self;
  v3 = HKTypeGroup.displayCategory.getter();
  categoryID = [v3 categoryID];

  HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter(categoryID);
  v5 = sub_1BA4A6758();

  return v5;
}

- (_TtC18HealthExperienceUI22CategoryViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1BA2F7534();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1BA2F773C(appearing);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BA2F7968();
}

- (void)observedTraitsDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1B9F46930(environment, collectionCopy);
  swift_unknownObjectRelease();
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1BA2F8384(stateCopy);
}

- (_TtC18HealthExperienceUI22CategoryViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end