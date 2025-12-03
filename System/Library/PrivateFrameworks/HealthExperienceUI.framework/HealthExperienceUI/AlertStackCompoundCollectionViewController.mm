@interface AlertStackCompoundCollectionViewController
- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AlertStackCompoundCollectionViewController

- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(AlertStackCompoundCollectionViewController *)&v5 viewWillAppear:appearCopy];
  UICollectionViewController.clearSelection()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:appearingCopy];
  collectionView = [v4 collectionView];
  if (collectionView)
  {
    v6 = collectionView;
    clearColor = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18HealthExperienceUI42AlertStackCompoundCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end